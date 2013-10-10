$(document).ready(function() {

	Product = Backbone.Model.extend({
		url : function() {
			return '/videos/' + this.get('id') + '.json'
		}
	});

	var Products = Backbone.Collection.extend({
		model : Product
	});

	var products = new Products();

	products.url = "/products.json";

	products.fetch({
		success : function(){
			products_view = new ProductsView({});
			_.each(products.models, function(model){
				products_view.addOne(model);
			});
		}
	});

	var ProductView = Backbone.View.extend({
		tagName : "div",
		render  : function() {
			var html = '<h2>' + this.model.get('name') + '</h2>'
						+'<h3 class="lead">' 
							+ this.model.get('description')
							+' <span class="label label-primary">' 
								+ '$' + this.model.get('price').toFixed(2)
							+'</span>'
						+ '</h3>'
						+ '<div class="btn-group">'
							+ '<a class="btn btn-default modify" href="#"><span class="glyphicon glyphicon-pencil"></span> Modify</a>'
							+ '<a class="btn btn-danger delete" href="#"><span class="glyphicon glyphicon-trash"></span> Delete</a>'
						+ '</div>'
						+'<hr>'
			return $(this.el).append(html);
		}
	});

	var ProductsView = Backbone.View.extend({
		el : "#products",
		addOne : function(model){

			view = new ProductView({ model : model });
			$('#products').append(view.render());
		}
	});





});

const cds = require('@sap/cds');

module.exports = cds.service.impl(async function() {
	const { Products, Products2, ProductsX } = this.entities;
	const service = await cds.connect.to('NorthWind');
	this.on('READ', Products, request => {
		return service.tx(request).run(request.query);
	});
	this.on('READ', Products2, request => {
		return service.tx(request).run(request.query);
	});	
	this.on('READ', ProductsX, request => {
		return service.tx(request).run(request.query);
	});		
});
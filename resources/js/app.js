import './bootstrap';

window.Vue = require('vue');

require('@fortawesome/fontawesome-free/js/all.js');
require('bootstrap-table/dist/bootstrap-table.min.css');
require('bootstrap-table/dist/bootstrap-table.js');

require('tableexport.jquery.plugin');
require('bootstrap-table/dist/extensions/export/bootstrap-table-export.min.js');
require('bootstrap-table/dist/extensions/print/bootstrap-table-print.min.js');

require('bootstrap-table/dist/extensions/filter-control/bootstrap-table-filter-control.min.css');
require('bootstrap-table/dist/extensions/filter-control/bootstrap-table-filter-control.min.js');

Vue.component('example-component', require('./components/ExampleComponent.vue').default);
Vue.component('bootstrap-table-component', require('./components/BootstrapTableComponent.vue').default);

const app = new Vue({
    el: '#app',
});

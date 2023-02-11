// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import * as bootstrap from "bootstrap"


railsEnv.start()
Turbolinks.start()
ActiveStorage.start()

import "css/application";

import $ from 'jquery';
global.$ = jQuery;

import "bootstrap";


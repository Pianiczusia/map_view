# frozen_string_literal: true

# Pin npm packages by running ./bin/importmap

pin 'application', preload: true
pin '@hotwired/turbo-rails', to: 'https://ga.jspm.io/npm:@hotwired/turbo-rails@7.2.5/app/javascript/turbo/index.js'
pin '@hotwired/turbo', to: 'https://ga.jspm.io/npm:@hotwired/turbo@7.2.5/dist/turbo.es2017-esm.js'
pin '@rails/actioncable/src', to: 'https://ga.jspm.io/npm:@rails/actioncable@7.0.4/src/index.js'
pin '@hotwired/turbo-rails', to: 'https://ga.jspm.io/npm:@hotwired/turbo-rails@7.2.5/app/javascript/turbo/index.js'
pin '@hotwired/turbo-rails', to: 'turbo.min.js', preload: true

pin_all_from '/javascript'
pin 'map_for_forms'
pin 'map_for_index'

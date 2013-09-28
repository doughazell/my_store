Deface::Override.new(:virtual_path => 'spree/shared/_products',
                     :name => 'tweak_product_list_item',
                     :replace => '[data-hook="products_list_item"]',
                     :text => %q{ <li id="product_<%= product.id %>" data-hook="products_list_item">
                                    <%= link_to(product, :class => 'info') do %>
                                      <%= product.name %>
<span class="price selling" itemprop="price"><%= display_price(product) %></span>
<%= (Spree::Taxon.find_by_name(product.name)) ? "Yea baby!" : "Shit happens!" %>
                                    <% end %>
                                    <%= link_to small_image(product), product %>
                                  </li> })

# <span class="price selling"><%= number_to_currency product.price, unit: "&pound;" %></span>

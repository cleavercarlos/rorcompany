<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
<% if user_signed_in? %>
<li><%= button_to 'Cerrar sesión', destroy_user_session_path, class:
'dropdown-item', method: :delete %></li>
<% else %>
<li><%= link_to 'Iniciar sesión', new_user_session_path, class:
'dropdown-item'%></li>
<li><hr class="dropdown-divider"></li>
<li><%= link_to 'Registro', new_user_registration_path, class:
'dropdown-item'%></li>
<% end %>
</ul>
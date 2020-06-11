<div id="navWrap" role="navigation" name="main-nav" aria-label="primarynavigation">
    <div class="container">
        <div id="mainNav" class="twelve columns clearFix">
            <ul>
                <% loop Menu(1) %>
                <li>
                    <a href="$Link" title="$Title" class="$LinkingMode">$MenuTitle</a>

                </li>
                <% end_loop %>
            </ul>
        </div>
    </div>
</div>
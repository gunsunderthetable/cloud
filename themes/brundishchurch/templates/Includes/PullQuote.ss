<% if SideBarHeader || SideBarQuote %>
<img class="quotes" src="$ThemeDir/images/quote.png" />
<div id="pullQuote">


    <% if SideBarHeader %>
        <h2>$SideBarHeader</h2>
    <% end_if %>

    <p class="quote">$SideBarQuote</p>
    <img class="endquotes" src="$ThemeDir/images/quote_end.png" />
    
    <% if SideBarSource %><p class="quoteSource">$SideBarSource</p><% end_if %>
    
</div>
<% end_if %>
<% if Children %>
<div class="col col-6 box" id="ArticleCol"> 
    $Content

</div>

<div class="col col-2 col-right box" id="MainArticle">

    <h3>Related Pages</h3>
    <ul class="ChildPages">
        <% loop Menu(2) %>
        <li><a href="$Link" title="Go to the $Title.XML page" class="$LinkingMode">$MenuTitle.XML</a></li>
        <% end_loop %>
    </ul>
</div>
<% else %>
<div class="col col-7 box" id="FullPage"> 
    $Content

</div>

<% end_if %>

        

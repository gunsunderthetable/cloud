
<div class="twelve columns">
    <div class="row">
     $Breadcrumbs 
    </div>
    <div class="row">
    
        <div id="standardPage" <% if $FullWidthPage %>class="fullWidthLayout"<% end_if %>>
            <div class="pageContent">
                <h1>$Title</h1>
                $Content
                <% include DocSearch %>

                <% if $Query %>
                    <p class="searchQuery">Your search for &quot;{$Query}&quot; returned $QueryCount results.</p>
                <% end_if %>

                <% if $Results %>
                <ul id="SearchResults" class="documentSearch">
                    <% loop $Results %>
                    <li>
                        <h2>
                                $Title
                        </h2>
                        <p><strong>Filename:</strong> $Name <br><strong>Created: </strong>$Created.Nice</p>
                        <a class="readMoreLink" href="$Link" title="Download or open this file" target="_blank">Download or open this file</a>
                    </li>
                    <% end_loop %>
                </ul>
                <% else %>
                <p>Sorry, your search query did not return any results.</p>
                <% end_if %>

                <% if $Results.MoreThanOnePage %>
                <div id="PageNumbers">
                    <div class="pagination">
                        <% if $Results.NotFirstPage %>
                        <a class="prev" href="$Results.PrevLink" title="View the previous page">&larr;</a>
                        <% end_if %>
                        <span>
                            <% loop $Results.Pages %>
                                <% if $CurrentBool %>
                                $PageNum
                                <% else %>
                                <a href="$Link" title="View page number $PageNum" class="go-to-page">$PageNum</a>
                                <% end_if %>
                            <% end_loop %>
                        </span>
                        <% if $Results.NotLastPage %>
                        <a class="next" href="$Results.NextLink" title="View the next page">&rarr;</a>
                        <% end_if %>
                    </div>
                    <p>Page $Results.CurrentPage of $Results.TotalPages</p>
                </div>
                <% end_if %>   
                $Form
                $PageComments
            </div>
        </div>
    </div>
</div>

<% require css("doc_search/css/documentsearch.css") %>




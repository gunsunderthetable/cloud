<div class="twelve columns">

    <div class="row">
    
        <div id="standardPage">
            <div class="pageContent">
                <h1>$Title</h1>

                <% if $Query %>
                    <p class="searchQuery">You searched for &quot;{$Query}&quot;</p>
                <% end_if %>

                <% if $Results %>
                <ul id="SearchResults">
                    <% loop $Results %>
                    <li>
                        <h2>
                            <a href="$Link">
                                <% if $MenuTitle %>
                                $MenuTitle
                                <% else %>
                                $Title
                                <% end_if %>
                            </a>
                        </h2>
                        <% if $Content %>
                            <p>$Content.LimitWordCountXML</p>
                        <% end_if %>
                        <a class="readMoreLink" href="$Link" title="Read more about &quot;{$Title}&quot;">Read more about &quot;{$Title}&quot;...</a>
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
                        <a class="prev" href="$Results.PrevLink" title="View the previous page">&larr; prev</a>
                        <% end_if %>
                        <span>
                            <% loop $Results.Pages %>
                                <% if $CurrentBool %>
                                <a href="#" title="" class="thisPage" >$PageNum</a>
                                <% else %>
                                <a href="$Link" title="View page number $PageNum" class="go-to-page">$PageNum</a>
                                <% end_if %>
                            <% end_loop %>
                        </span>
                        <% if $Results.NotLastPage %>
                        <a class="next" href="$Results.NextLink" title="View the next page">next &rarr;</a>
                        <% end_if %>
                    </div>
                    <p class="resultsTotal">Page $Results.CurrentPage of $Results.TotalPages</p>
                </div>
                <% end_if %>                
                </div>
            </div>

        </div>

    </div>




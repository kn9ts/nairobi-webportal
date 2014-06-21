<% if $PaginatedPages.MoreThanOnePage %>
<div class="col-xs-12">
    <ul class="pager">
        <% if $PaginatedPages.NotFirstPage %>
        <li class="previous">
            <a href="$PaginatedPages.PrevLink">&larr; Older</a>
        </li>
        <% else %>
        <li class="previous disabled">
            <a href="$PaginatedPages.PrevLink">&larr; Older</a>
        </li>
        <% end_if %>
        
        <% if $PaginatedPages.NotLastPage %>
        <li class="next">
            <a class="next" href="$PaginatedPages.NextLink">Newer &rarr;</a>
        </li>
        <% else %>
        <li class="next disabled">
            <a class="next" href="$PaginatedPages.NextLink">Newer &rarr;</a>
        </li>
        <% end_if %>
    </ul>
</div>
<% end_if %>
<ul>
    <% loop $PaginatedPages %>
        <li><a href="$Link">$Title</a></li>
    <% end_loop %>
</ul>

<% if $PaginatedPages.MoreThanOnePage %>
    <% if $PaginatedPages.NotFirstPage %>
        <a class="prev" href="$PaginatedPages.PrevLink">Prev</a>
    <% end_if %>
    <% loop $PaginatedPages.Pages %>
        <% if $CurrentBool %>
            $PageNum
        <% else %>
            <% if $Link %>
                <a href="$Link">$PageNum</a>
            <% else %>
                ...
            <% end_if %>
        <% end_if %>
        <% end_loop %>
    <% if $PaginatedPages.NotLastPage %>
        <a class="next" href="$PaginatedPages.NextLink">Next</a>
    <% end_if %>
<% end_if %>

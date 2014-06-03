<% if $Results.MoreThanOnePage %>
<div id="PageNumbers" class="col-xs-12">
    <ul class="pagination">
        <% if $Results.NotFirstPage %>
        <li><a class="prev" href="$Results.PrevLink" title="View the previous page">&larr;</a></li>
        <% end_if %>
        <% loop $Results.Pages %>
            <% if $CurrentBool %>
            <li class="disabled">$PageNum</li>
            <% else %>
            <li><a href="$Link" title="View page number $PageNum" class="go-to-page">$PageNum</a></li>
            <% end_if %>
        <% end_loop %>
        <% if $Results.NotLastPage %>
        <li><a class="next" href="$Results.NextLink" title="View the next page">&rarr;</a></li>
        <% end_if %>
    </div>
</div>
<div class="col-xs-12">
    <p>Viewing page $Results.CurrentPage of $Results.TotalPages</p>
</div>
<% end_if %>
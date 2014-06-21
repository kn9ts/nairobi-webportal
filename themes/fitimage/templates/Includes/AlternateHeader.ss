<style type="text/css">
    .section-header {
        <% if $backgroundImage %>
        background: url("$backgroundImage.getAbsoluteURL()");
        <% end_if %>
        background-position: center 30%;
    }
    body{
        background: none
    }
</style>

<!-- Others: Blog header, replacing NCC header and bg image -->
<div class="col-xs-12 no-margin section-header">
    <div class="row text-center header-row">
        <h3 class="white"><strong>$MenuTitle</strong></h3>
        <% if $ClassName = BlogEntry %>
        <h5 class="no-padding no-margin green">
            <% _t('BlogEntry_ss.POSTEDBY', 'Posted by') %> $Author.XML
        </h5>
        <small class="green"><% _t('BlogEntry_ss.POSTEDON', 'on') %> $Date.Long</small>
        <% else_if $ClassName = SectionPage %>
        <h3 class="green">{$Description}</h3>
        <% end_if %>
        <div class="addthis_sharing_toolbox text-center padding-sm"></div>
    </div>
</div>

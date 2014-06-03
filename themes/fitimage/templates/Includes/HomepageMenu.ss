<div class="row">
    <% if $Children %>
        <% loop $Children %>
        <% if $ClassName = SectionHolder %>
        <div class="col-xs-6 col-sm-6 $ClassName">
            <a href="$Link">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <h4><i class="fa {$IconType} fa-4x {$IconColor}">&nbsp;</i>$MenuTitle.XML</h4>
                        <div class="sr-only">
                            <p>$Description</p>
                        </div>
                    </div>
                </div>
            </a>
        </div>
        <% end_if %>
        <% end_loop %>
    <% end_if %>
</div>
<div id="mini-menu" class="row miscellinious $ClassName">
    <% if $Children %>
        <% loop $Children %>
        <% if $ClassName = MiniSection %>
        <a href="$Link">
            <div class="col-xs-6 col-sm-6 col-md-3">
                <div class="panel panel-default {$bgColor}-bg">
                    <div class="panel-body">
                        <h4><i class="fa {$IconType} fa-2x white"></i>$MenuTitle</h4>
                    </div>
                </div>
            </div>
        </a>
        <% end_if %>
        <% end_loop %>
    <% end_if %>
</div>
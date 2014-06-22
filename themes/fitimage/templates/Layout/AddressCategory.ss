<div class="blog-container fitimage white-bg">
    <div class="row">
        <div class="col-sm-12">
            <% if $Addresses %>
            <h1 class="uppercase red">$Title
                <small class="green lowercase">&nbsp;Emergency Services</small>
            </h1>
            <h2 class="grey-bg yellow padding-xs">Key Service Points
                <small class="white">Who to contact and where to find them.</small>
            </h2>

            <%-- LISTING STARTS HERE --%>
            <div class="row">
            <% loop $Addresses %>
                <div class="col-xs-12 col-md-6">
                    <p class="serv">
                        <strong>$Name</strong>
                        <br>
                        <em>$StreetAddress</em>
                        <br>$MailingAddress
                        <br>$TelephoneNo
                        <br>$FaxNo
                        <br>
                        <span class+ "green">$EmailAddress</span>
                    </p>
                </div>
            <% end_loop %>
            </div>
            <% else %>
            <div class="col-xs-12">
                <div class="jumbotron">
                    <h1 class="text-success"><i class="fa fa-meh-o">&nbsp;</i>Nothing populated yet!!!</h1>
                    <h3 class="yellow text-muted">Please bare with us, as we get things up and running.</h3>
                    <hr />
                    <a class="btn btn-lg btn-success" href="$BaseHref">
                        <i class="fa fa-home">&nbsp;</i>Check something else?
                    </a>
                </div>
            </div>
            <% end_if %>
        </div>
    </div>
</div>
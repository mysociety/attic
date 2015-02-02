#!/usr/bin/perl -p -i

use strict;
use warnings;

BEGIN { undef $/; }

# Fix site search
s{<input type=hidden name=domains value="http://www.notapathetic.com"><br>\n}{};
s{(<input type=hidden name=sitesearch value=")http://www.(notapathetic.com">)}{$1$2};

# Add banner font/CSS
unless (/Source\+Sans\+Pro/) {
    s{</title>}{$&
<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Source+Sans+Pro:400,600">
<link rel="stylesheet" type="text/css" media="all" href="/assets/css/banner.css">};
}

# Remove old closed text and other bits
s{\s*<p>(<b>)?Not Apathetic is now closed.*?</form>\s*</p>}{}s;
s{<div id="notice">\s*</div>}{};
s{<li><a href="mailto:[^"]*"><span>c</span>ontact us</a></li>}{};
s{<!--\s*<form method="get" action="/cgi-bin/search.cgi".*?</form>\s*-->}{}s;

# Add new banner
unless (/retirement-banner/) {
    s{<body>}{<body>

<div class="retirement-banner retirement-banner--notapathetic">
    <div class="retirement-banner__inner">
        <a class="retirement-banner__logo" href="https://mysociety.org">mySociety</a>
        <p class="retirement-banner__description">
            NotApathetic is closed to new submissions. The site is available as an
            archive for you to browse. <a href="/closed">Find out more...</a>
        </p>
    </div>
</div>};
}

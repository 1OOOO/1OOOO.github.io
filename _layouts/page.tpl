<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8" />
<meta name="author" content="{{ site.meta.author.name }}" />
<meta name="keywords" content="{{ page.tags | join: ',' }}" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="shortcut icon" href="/favicon.ico" />
<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "https://hm.baidu.com/hm.js?f92774e76f33ab855aa053fe23826a78";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>
<title>{{ site.name }}{% if page.title %} / {{ page.title }}{% endif %}</title>
<link href="http://{{ site.host }}/feed.xml" rel="alternate" title="{{ site.name }}" type="application/atom+xml" />
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" />
<link rel="stylesheet" type="text/css" href="/assets/css/site.css" />
<link rel="stylesheet" type="text/css" href="/assets/css/code/monokai-sublime.css" />
<link rel="stylesheet" type="text/css" href="/assets/tipuesearch/css/tipuesearch.css">
{% for style in page.styles %}<link rel="stylesheet" type="text/css" href="{{ style }}" />
{% endfor %}

{% if page.tipue_search_active or layout.tipue_search_active %}
<link rel="stylesheet" href="{{ "/assets/tipuesearch/css/normalize.css" | relative_url }}">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="{{ "/assets/tipuesearch/tipuesearch_content.js" | relative_url }}"></script>
<link rel="stylesheet" href="{{ "/assets/tipuesearch/css/tipuesearch.css" | relative_url }}">
<script src="{{ "/assets/tipuesearch/tipuesearch_set.js" | relative_url }}"></script>
<script src="{{ "/assets/tipuesearch/tipuesearch.min.js" | relative_url }}"></script>
{% endif %}

</head>

<body class="{{ layout.class }}">

<div class="main">
	{{ content }}

	<footer>
		<p>&copy; Since 2017</p>
	</footer>
</div>

<aside>
	<h2><a href="/">{{ site.name }}</a></h2>

	<nav class="block">
		<ul>
		{% for category in site.custom.categories %}<li class="{{ category.name }}"><a href="/category/{{ category.name }}/">{{ category.title }}</a></li>
		{% endfor %}
		</ul>
	</nav>

	<div class="block block-about">
		<h3>About</h3>
		<figure>
			{% if site.meta.author.gravatar %}<img src="{{ site.meta.gravatar}}{{ site.meta.author.gravatar }}?s=80" />{% endif %}
			<figcaption><strong>{{ site.meta.author.name }}</strong></figcaption>
		</figure>
		<p>一个程序猿的博客</p>
	</div>

	<div class="block block-search">
		<h3>Search</h3>
		<form action="/search/">
			<div class="tipue_search_right"><input type="text" name="q" id="tipue_search_input" pattern=".{3,}" title="At least 3 characters" required></div>
			<div style="clear: both;"></div>
		</form>
	</div>

	<div class="block block-thank">
		<h3>Powered by</h3>
		<p>
			<a href="http://elfjs.com/" target="_blank">elf+js</a>,
			<a href="https://github.com/" target="_blank">GitHub</a>,
			<a href="http://en.gravatar.com/" target="_blank">Gravatar</a>,
			<a href="http://softwaremaniacs.org/soft/highlight/en/">HighlightJS</a>,
			<a href="https://github.com/mojombo/jekyll" target="_blank">jekyll</a>,
			<a href="https://github.com/mytharcher/SimpleGray" target="_blank">SimpleGray</a>,
			<a href="https://github.com/jekylltools/jekyll-tipue-search" target="_blank">TipueSearch</a>
		</p>
	</div>
</aside>

<script src="http://elfjs.qiniudn.com/code/elf-0.5.1.min.js"></script>
<script src="/assets/js/highlight.pack.js"></script>
<script>hljs.initHighlightingOnLoad();</script>

<script src="/assets/js/site.js"></script>
{% for script in page.scripts %}<script src="{{ script }}"></script>
{% endfor %}
<script>
site.VAR_SITE_NAME = "{{ site.name | replace:'"','\"' }}";
site.VAR_AUTO_LOAD_ON_SCROLL = {{ site.custom.scrollingLoadCount }};
</script>
</body>
</html>

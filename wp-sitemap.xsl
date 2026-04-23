<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/REC-html40/loose.dtd">
<html><body><stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9" exclude-result-prefixes="sitemap">

	<output method="html" encoding="UTF-8" indent="yes"></output>

	<!--
	  Set variables for whether lastmod, changefreq or priority occur for any url in the sitemap.
	  We do this up front because it can be expensive in a large sitemap.
	  -->
	<variable name="has-lastmod" select="count( /sitemap:urlset/sitemap:url/sitemap:lastmod )"></variable>
	<variable name="has-changefreq" select="count( /sitemap:urlset/sitemap:url/sitemap:changefreq )"></variable>
	<variable name="has-priority" select="count( /sitemap:urlset/sitemap:url/sitemap:priority )"></variable>

	<template match="/">
		
			
				<title>XML site haritas&#305;</title>
				<style>
					
					body {
						font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen-Sans, Ubuntu, Cantarell, "Helvetica Neue", sans-serif;
						color: #444;
					}

					#sitemap {
						max-width: 980px;
						margin: 0 auto;
					}

					#sitemap__table {
						width: 100%;
						border: solid 1px #ccc;
						border-collapse: collapse;
					}

			 		#sitemap__table tr td.loc {
						/*
						 * URLs should always be LTR.
						 * See https://core.trac.wordpress.org/ticket/16834
						 * and https://core.trac.wordpress.org/ticket/49949
						 */
						direction: ltr;
					}

					#sitemap__table tr th {
						text-align: left;
					}

					#sitemap__table tr td,
					#sitemap__table tr th {
						padding: 10px;
					}

					#sitemap__table tr:nth-child(odd) td {
						background-color: #eee;
					}

					a:hover {
						text-decoration: none;
					}

				</style>
			
			
				<div id="sitemap">
					<div id="sitemap__header">
						<h1>XML site haritas&#305;</h1>
						<p>Bu XML site haritas&#305;, i&ccedil;eri&#287;inizi arama motorlar&#305; i&ccedil;in daha g&ouml;r&uuml;n&uuml;r k&#305;lmak amac&#305;yla WordPress taraf&#305;ndan olu&#351;turulur.</p>
						<p><a href="https://www.sitemaps.org/">Site haritalar&#305; hakk&#305;nda ayr&#305;nt&#305;l&#305; bilgi al&#305;n.</a></p>
					</div>
					<div id="sitemap__content">
						<p class="text">Bu XML site haritas&#305;ndaki site adresi say&#305;s&#305;: <value-of select="count( sitemap:urlset/sitemap:url )"></value-of>.</p>
						<table id="sitemap__table">
							<thead>
								<tr>
									<th class="loc">Adres</th>
									<if test="$has-lastmod">
										<th class="lastmod">Son de&#287;i&#351;tirilme</th>
									</if>
									<if test="$has-changefreq">
										<th class="changefreq">S&#305;kl&#305;&#287;&#305; de&#287;i&#351;tir</th>
									</if>
									<if test="$has-priority">
										<th class="priority">&Ouml;ncelik</th>
									</if>
								</tr>
							</thead>
							<tbody>
								<for-each select="sitemap:urlset/sitemap:url">
									<tr>
										<td class="loc"><a href="/%7Bsitemap:loc%7D"><value-of select="sitemap:loc"></value-of></a></td>
										<if test="$has-lastmod">
											<td class="lastmod"><value-of select="sitemap:lastmod"></value-of></td>
										</if>
										<if test="$has-changefreq">
											<td class="changefreq"><value-of select="sitemap:changefreq"></value-of></td>
										</if>
										<if test="$has-priority">
											<td class="priority"><value-of select="sitemap:priority"></value-of></td>
										</if>
									</tr>
								</for-each>
							</tbody>
						</table>
					</div>
				</div>
			
		
	</template>
</stylesheet>
</body></html>
<!-- Powered by Staatic (https://staatic.com/) -->
<!DOCTYPE html>
<!-- saved from url=(0072)https://www.gnu.org/software/emacs/manual/html_node/elisp/nil-and-t.html -->
<html><!-- Created by GNU Texinfo 7.0.3, https://www.gnu.org/software/texinfo/ --><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>nil and t (GNU Emacs Lisp Reference Manual)</title>

<meta name="description" content="nil and t (GNU Emacs Lisp Reference Manual)">
<meta name="keywords" content="nil and t (GNU Emacs Lisp Reference Manual)">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="Generator" content="makeinfo">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link rev="made" href="mailto:bug-gnu-emacs@gnu.org">
<link rel="icon" type="image/png" href="https://www.gnu.org/graphics/gnu-head-mini.png">
<meta name="ICBM" content="42.256233,-71.006581">
<meta name="DC.title" content="gnu.org">
<style type="text/css">
@import url('/software/emacs/manual.css');
</style>
</head>

<body lang="en">
<div class="subsection-level-extent" id="nil-and-t">
<div class="nav-panel">
<p>
Next: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Evaluation-Notation.html" accesskey="n" rel="next">Evaluation Notation</a>, Previous: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Some-Terms.html" accesskey="p" rel="prev">Some Terms</a>, Up: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Conventions.html" accesskey="u" rel="up">Conventions</a> &nbsp; [<a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/index.html#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Index.html" title="Index" rel="index">Index</a>]</p>
</div>
<hr>
<h4 class="subsection" id="nil-and-t-1">1.3.2 <code class="code">nil</code> and <code class="code">t</code></h4>
<a class="index-entry-id" id="index-truth-value"></a>
<a class="index-entry-id" id="index-boolean"></a>

<a class="index-entry-id" id="index-nil"></a>
<a class="index-entry-id" id="index-false"></a>
<p>In Emacs Lisp, the symbol <code class="code">nil</code> has three separate meanings: it
is a symbol with the name ‘<samp class="samp">nil</samp>’; it is the logical truth value
<var class="var">false</var>; and it is the empty list—the list of zero elements.
When used as a variable, <code class="code">nil</code> always has the value <code class="code">nil</code>.
</p>
<p>As far as the Lisp reader is concerned, ‘<samp class="samp">()</samp>’ and ‘<samp class="samp">nil</samp>’ are
identical: they stand for the same object, the symbol <code class="code">nil</code>.  The
different ways of writing the symbol are intended entirely for human
readers.  After the Lisp reader has read either ‘<samp class="samp">()</samp>’ or ‘<samp class="samp">nil</samp>’,
there is no way to determine which representation was actually written
by the programmer.
</p>
<p>In this manual, we write <code class="code">()</code> when we wish to emphasize that it
means the empty list, and we write <code class="code">nil</code> when we wish to emphasize
that it means the truth value <var class="var">false</var>.  That is a good convention to use
in Lisp programs also.
</p>
<div class="example">
<pre class="example-preformatted">(cons 'foo ())                ; <span class="r">Emphasize the empty list</span>
(setq foo-flag nil)           ; <span class="r">Emphasize the truth value <var class="var">false</var></span>
</pre></div>

<a class="index-entry-id" id="index-t"></a>
<a class="index-entry-id" id="index-true"></a>
<p>In contexts where a truth value is expected, any non-<code class="code">nil</code> value
is considered to be <var class="var">true</var>.  However, <code class="code">t</code> is the preferred way
to represent the truth value <var class="var">true</var>.  When you need to choose a
value that represents <var class="var">true</var>, and there is no other basis for
choosing, use <code class="code">t</code>.  The symbol <code class="code">t</code> always has the value
<code class="code">t</code>.
</p>
<p>In Emacs Lisp, <code class="code">nil</code> and <code class="code">t</code> are special symbols that always
evaluate to themselves.  This is so that you do not need to quote them
to use them as constants in a program.  An attempt to change their
values results in a <code class="code">setting-constant</code> error.  See <a class="xref" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Constant-Variables.html">Variables that Never Change</a>.
</p>
<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-booleanp"><span class="category-def">Function: </span><span><strong class="def-name">booleanp</strong> <var class="def-var-arguments">object</var><a class="copiable-link" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/nil-and-t.html#index-booleanp"> ¶</a></span></dt>
<dd><p>Return non-<code class="code">nil</code> if <var class="var">object</var> is one of the two canonical
boolean values: <code class="code">t</code> or <code class="code">nil</code>.
</p></dd></dl>

</div>
<hr>
<div class="nav-panel">
<p>
Next: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Evaluation-Notation.html">Evaluation Notation</a>, Previous: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Some-Terms.html">Some Terms</a>, Up: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Conventions.html">Conventions</a> &nbsp; [<a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/index.html#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Index.html" title="Index" rel="index">Index</a>]</p>
</div>





</body></html>
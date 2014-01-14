CGRectDivideNull
================

Allow `NULL` parameters to `CGRectDivide()`. Avoid unnecessary local variables when slicing.

##Motivation

Are you tired of writing:

	CGRect source = someView.frame;
	CGRect slice = CGRectZero;
	CGRectDivide(source, &source, &slice, 10, CGRectMinXEdge);
	
...when all you need to do is slice the original frame? Well how about:

	CGRect source = someView.frame;
	CGRectDivideNull(source, &source, NULL, 10, CGRectMinXEdge);
	
...or:

	CGRect source = someView.frame;
	CGRectDivideNull(source, NULL, &source, 10, CGRectMinXEdge);
	
Well now you can. Just a convenience wrapper for `CGRectDivide()` that allows either the `slice` or `remainder` parameters to be `NULL`. This prevents you from having to declare local variables just to satisfy this limitation on `CGRectDivide()` when you don't need to use those slices.

That is all!

##Version history

**v0.0.2**

* Essential podspec fix

**v0.0.1**

* Initial release.

Have fun!
---------

[MIT Licensed](http://jc.mit-license.org/) >> [jon.crooke@gmail.com](mailto:jon.crooke@gmail.com)



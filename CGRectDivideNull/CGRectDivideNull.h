//
//  CGRectDivideNull.h
//  CGRectDivideNull
//
//  Created by Jonathan Crooke on 14/01/2014.
//  Copyright (c) 2014 Jonathan Crooke. All rights reserved.
//

#import <CoreGraphics/CoreGraphics.h>

/**
 *  A wrapper around CGRectDivide() that allows the slice or
 *  remainder parameters to be NULL, removing the need to define
 *  extraneous local variables.
 *
 *  @param rect      Source CGRect
 *  @param slice     Slice CGRect (or NULL)
 *  @param remainder Remainder CGRect (or NULL)
 *  @param amount    Amount of slice
 *  @param edge      Edge from which to perform the operation
 */
CG_EXTERN void CGRectDivideNull(CGRect rect, CGRect *slice, CGRect *remainder,
                                CGFloat amount, CGRectEdge edge)
CG_AVAILABLE_STARTING(__MAC_10_0, __IPHONE_2_0);

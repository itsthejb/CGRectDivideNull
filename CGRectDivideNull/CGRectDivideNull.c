//
//  CGRectDivideNull.m
//  CGRectDivideNull
//
//  Created by Jonathan Crooke on 14/01/2014.
//  Copyright (c) 2014 Jonathan Crooke. All rights reserved.
//

#import "CGRectDivideNull.h"

void CGRectDivideNull(CGRect rect, CGRect *slice, CGRect *remainder,
                      CGFloat amount, CGRectEdge edge)
{
  CGRect sliceInternal = CGRectZero;
  CGRect remainderInternal = CGRectZero;
  CGRectDivide(rect, &sliceInternal, &remainderInternal, amount, edge);
  if (slice) *slice = sliceInternal;
  if (remainder) *remainder = remainderInternal;
}

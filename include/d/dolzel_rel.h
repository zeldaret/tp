#ifndef DOLZEL_REL_H
#define DOLZEL_REL_H

// PCH breaks debug build for RELs right now
#if __MWERKS__
#include "d/dolzel_rel.mch"
#else
#include "d/dolzel_rel.pch"
#endif

#endif // DOLZEL_REL_H

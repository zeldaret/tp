lbl_8023BFC4:
/* 8023BFC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023BFC8  7C 08 02 A6 */	mflr r0
/* 8023BFCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023BFD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8023BFD4  7C 7F 1B 78 */	mr r31, r3
/* 8023BFD8  80 63 00 18 */	lwz r3, 0x18(r3)
/* 8023BFDC  48 01 96 2D */	bl hide__13CPaneMgrAlphaFv
/* 8023BFE0  C0 02 B1 98 */	lfs f0, lit_3662(r2)
/* 8023BFE4  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 8023BFE8  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8023BFEC  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8023BFF0  D0 03 00 08 */	stfs f0, 8(r3)
/* 8023BFF4  80 7F 00 04 */	lwz r3, 4(r31)
/* 8023BFF8  48 0B D6 99 */	bl animation__9J2DScreenFv
/* 8023BFFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8023C000  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023C004  7C 08 03 A6 */	mtlr r0
/* 8023C008  38 21 00 10 */	addi r1, r1, 0x10
/* 8023C00C  4E 80 00 20 */	blr 

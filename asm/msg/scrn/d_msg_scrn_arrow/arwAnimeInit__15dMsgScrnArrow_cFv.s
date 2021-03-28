lbl_8023BE34:
/* 8023BE34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023BE38  7C 08 02 A6 */	mflr r0
/* 8023BE3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023BE40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8023BE44  7C 7F 1B 78 */	mr r31, r3
/* 8023BE48  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8023BE4C  48 01 97 BD */	bl hide__13CPaneMgrAlphaFv
/* 8023BE50  C0 22 B1 98 */	lfs f1, lit_3662(r2)
/* 8023BE54  D0 3F 00 1C */	stfs f1, 0x1c(r31)
/* 8023BE58  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8023BE5C  80 7F 00 08 */	lwz r3, 8(r31)
/* 8023BE60  D0 03 00 08 */	stfs f0, 8(r3)
/* 8023BE64  D0 3F 00 20 */	stfs f1, 0x20(r31)
/* 8023BE68  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8023BE6C  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8023BE70  D0 03 00 08 */	stfs f0, 8(r3)
/* 8023BE74  80 7F 00 04 */	lwz r3, 4(r31)
/* 8023BE78  48 0B D8 19 */	bl animation__9J2DScreenFv
/* 8023BE7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8023BE80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023BE84  7C 08 03 A6 */	mtlr r0
/* 8023BE88  38 21 00 10 */	addi r1, r1, 0x10
/* 8023BE8C  4E 80 00 20 */	blr 

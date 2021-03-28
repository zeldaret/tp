lbl_80180BA0:
/* 80180BA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80180BA4  7C 08 02 A6 */	mflr r0
/* 80180BA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80180BAC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80180BB0  7C 7F 1B 78 */	mr r31, r3
/* 80180BB4  C0 04 00 00 */	lfs f0, 0(r4)
/* 80180BB8  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 80180BBC  C0 04 00 04 */	lfs f0, 4(r4)
/* 80180BC0  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 80180BC4  C0 04 00 08 */	lfs f0, 8(r4)
/* 80180BC8  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 80180BCC  C0 05 00 00 */	lfs f0, 0(r5)
/* 80180BD0  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 80180BD4  C0 05 00 04 */	lfs f0, 4(r5)
/* 80180BD8  D0 03 00 40 */	stfs f0, 0x40(r3)
/* 80180BDC  C0 05 00 08 */	lfs f0, 8(r5)
/* 80180BE0  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 80180BE4  D0 23 00 58 */	stfs f1, 0x58(r3)
/* 80180BE8  38 61 00 08 */	addi r3, r1, 8
/* 80180BEC  7C C4 33 78 */	mr r4, r6
/* 80180BF0  48 0F 03 A9 */	bl __ct__7cSAngleFs
/* 80180BF4  A8 01 00 08 */	lha r0, 8(r1)
/* 80180BF8  B0 1F 00 54 */	sth r0, 0x54(r31)
/* 80180BFC  7F E3 FB 78 */	mr r3, r31
/* 80180C00  48 00 00 69 */	bl Reset__9dCamera_cFv
/* 80180C04  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80180C08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80180C0C  7C 08 03 A6 */	mtlr r0
/* 80180C10  38 21 00 20 */	addi r1, r1, 0x20
/* 80180C14  4E 80 00 20 */	blr 

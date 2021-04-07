lbl_800B3358:
/* 800B3358  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B335C  7C 08 02 A6 */	mflr r0
/* 800B3360  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B3364  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B3368  7C 7F 1B 78 */	mr r31, r3
/* 800B336C  7C 83 23 78 */	mr r3, r4
/* 800B3370  C0 22 93 1C */	lfs f1, lit_7448(r2)
/* 800B3374  48 27 50 B9 */	bl checkPass__12J3DFrameCtrlFf
/* 800B3378  2C 03 00 00 */	cmpwi r3, 0
/* 800B337C  41 82 00 54 */	beq lbl_800B33D0
/* 800B3380  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800B3384  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800B3388  A0 03 00 02 */	lhz r0, 2(r3)
/* 800B338C  28 00 00 02 */	cmplwi r0, 2
/* 800B3390  41 81 00 24 */	bgt lbl_800B33B4
/* 800B3394  7F E3 FB 78 */	mr r3, r31
/* 800B3398  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010015@ha */
/* 800B339C  38 84 00 15 */	addi r4, r4, 0x0015 /* 0x00010015@l */
/* 800B33A0  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800B33A4  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800B33A8  7D 89 03 A6 */	mtctr r12
/* 800B33AC  4E 80 04 21 */	bctrl 
/* 800B33B0  48 00 00 20 */	b lbl_800B33D0
lbl_800B33B4:
/* 800B33B4  7F E3 FB 78 */	mr r3, r31
/* 800B33B8  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010014@ha */
/* 800B33BC  38 84 00 14 */	addi r4, r4, 0x0014 /* 0x00010014@l */
/* 800B33C0  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800B33C4  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800B33C8  7D 89 03 A6 */	mtctr r12
/* 800B33CC  4E 80 04 21 */	bctrl 
lbl_800B33D0:
/* 800B33D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B33D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B33D8  7C 08 03 A6 */	mtlr r0
/* 800B33DC  38 21 00 10 */	addi r1, r1, 0x10
/* 800B33E0  4E 80 00 20 */	blr 

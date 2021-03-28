lbl_806A9A84:
/* 806A9A84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A9A88  7C 08 02 A6 */	mflr r0
/* 806A9A8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A9A90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806A9A94  7C 7F 1B 79 */	or. r31, r3, r3
/* 806A9A98  41 82 00 1C */	beq lbl_806A9AB4
/* 806A9A9C  3C A0 80 6B */	lis r5, __vt__12daE_DF_HIO_c@ha
/* 806A9AA0  38 05 A0 BC */	addi r0, r5, __vt__12daE_DF_HIO_c@l
/* 806A9AA4  90 1F 00 00 */	stw r0, 0(r31)
/* 806A9AA8  7C 80 07 35 */	extsh. r0, r4
/* 806A9AAC  40 81 00 08 */	ble lbl_806A9AB4
/* 806A9AB0  4B C2 52 8C */	b __dl__FPv
lbl_806A9AB4:
/* 806A9AB4  7F E3 FB 78 */	mr r3, r31
/* 806A9AB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806A9ABC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A9AC0  7C 08 03 A6 */	mtlr r0
/* 806A9AC4  38 21 00 10 */	addi r1, r1, 0x10
/* 806A9AC8  4E 80 00 20 */	blr 

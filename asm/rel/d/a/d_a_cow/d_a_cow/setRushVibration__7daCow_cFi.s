lbl_80658D3C:
/* 80658D3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80658D40  7C 08 02 A6 */	mflr r0
/* 80658D44  90 01 00 24 */	stw r0, 0x24(r1)
/* 80658D48  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80658D4C  7C 9F 23 78 */	mr r31, r4
/* 80658D50  80 63 05 74 */	lwz r3, 0x574(r3)
/* 80658D54  38 63 00 0C */	addi r3, r3, 0xc
/* 80658D58  3C 80 80 66 */	lis r4, lit_3989@ha
/* 80658D5C  C0 24 2D B8 */	lfs f1, lit_3989@l(r4)
/* 80658D60  4B CC F6 CC */	b checkPass__12J3DFrameCtrlFf
/* 80658D64  2C 03 00 00 */	cmpwi r3, 0
/* 80658D68  41 82 00 3C */	beq lbl_80658DA4
/* 80658D6C  3C 60 80 66 */	lis r3, lit_3998@ha
/* 80658D70  C0 23 2D C8 */	lfs f1, lit_3998@l(r3)
/* 80658D74  D0 21 00 08 */	stfs f1, 8(r1)
/* 80658D78  3C 60 80 66 */	lis r3, lit_3989@ha
/* 80658D7C  C0 03 2D B8 */	lfs f0, lit_3989@l(r3)
/* 80658D80  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80658D84  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80658D88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80658D8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80658D90  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80658D94  7F E4 FB 78 */	mr r4, r31
/* 80658D98  38 A0 00 1F */	li r5, 0x1f
/* 80658D9C  38 C1 00 08 */	addi r6, r1, 8
/* 80658DA0  4B A1 6C 84 */	b StartShock__12dVibration_cFii4cXyz
lbl_80658DA4:
/* 80658DA4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80658DA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80658DAC  7C 08 03 A6 */	mtlr r0
/* 80658DB0  38 21 00 20 */	addi r1, r1, 0x20
/* 80658DB4  4E 80 00 20 */	blr 

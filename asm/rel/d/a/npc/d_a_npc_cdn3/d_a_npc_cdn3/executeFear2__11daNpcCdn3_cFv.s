lbl_8097A6AC:
/* 8097A6AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8097A6B0  7C 08 02 A6 */	mflr r0
/* 8097A6B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8097A6B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8097A6BC  7C 7F 1B 78 */	mr r31, r3
/* 8097A6C0  80 63 05 8C */	lwz r3, 0x58c(r3)
/* 8097A6C4  38 63 00 0C */	addi r3, r3, 0xc
/* 8097A6C8  3C 80 80 98 */	lis r4, lit_4091@ha /* 0x8097F544@ha */
/* 8097A6CC  C0 24 F5 44 */	lfs f1, lit_4091@l(r4)  /* 0x8097F544@l */
/* 8097A6D0  4B 9A DD 5D */	bl checkPass__12J3DFrameCtrlFf
/* 8097A6D4  2C 03 00 00 */	cmpwi r3, 0
/* 8097A6D8  41 82 00 10 */	beq lbl_8097A6E8
/* 8097A6DC  38 7F 05 94 */	addi r3, r31, 0x594
/* 8097A6E0  38 80 00 02 */	li r4, 2
/* 8097A6E4  4B 94 67 35 */	bl playVoice__17Z2CreatureCitizenFi
lbl_8097A6E8:
/* 8097A6E8  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8097A6EC  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8097A6F0  41 82 00 0C */	beq lbl_8097A6FC
/* 8097A6F4  7F E3 FB 78 */	mr r3, r31
/* 8097A6F8  4B 69 F5 85 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_8097A6FC:
/* 8097A6FC  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 8097A700  A8 9F 0B 92 */	lha r4, 0xb92(r31)
/* 8097A704  38 A0 00 03 */	li r5, 3
/* 8097A708  38 C0 06 00 */	li r6, 0x600
/* 8097A70C  4B 8F 5E FD */	bl cLib_addCalcAngleS2__FPssss
/* 8097A710  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8097A714  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8097A718  7C 08 03 A6 */	mtlr r0
/* 8097A71C  38 21 00 10 */	addi r1, r1, 0x10
/* 8097A720  4E 80 00 20 */	blr 

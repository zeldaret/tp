lbl_80AA3DE4:
/* 80AA3DE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA3DE8  7C 08 02 A6 */	mflr r0
/* 80AA3DEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA3DF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA3DF4  7C 7F 1B 78 */	mr r31, r3
/* 80AA3DF8  80 63 05 8C */	lwz r3, 0x58c(r3)
/* 80AA3DFC  38 63 00 0C */	addi r3, r3, 0xc
/* 80AA3E00  3C 80 80 AA */	lis r4, lit_4189@ha
/* 80AA3E04  C0 24 69 98 */	lfs f1, lit_4189@l(r4)
/* 80AA3E08  4B 88 46 24 */	b checkPass__12J3DFrameCtrlFf
/* 80AA3E0C  2C 03 00 00 */	cmpwi r3, 0
/* 80AA3E10  41 82 00 10 */	beq lbl_80AA3E20
/* 80AA3E14  38 7F 05 94 */	addi r3, r31, 0x594
/* 80AA3E18  38 80 00 02 */	li r4, 2
/* 80AA3E1C  4B 81 CF FC */	b playVoice__17Z2CreatureCitizenFi
lbl_80AA3E20:
/* 80AA3E20  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80AA3E24  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80AA3E28  41 82 00 0C */	beq lbl_80AA3E34
/* 80AA3E2C  7F E3 FB 78 */	mr r3, r31
/* 80AA3E30  4B 57 5E 4C */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80AA3E34:
/* 80AA3E34  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 80AA3E38  A8 9F 0B 20 */	lha r4, 0xb20(r31)
/* 80AA3E3C  38 A0 00 03 */	li r5, 3
/* 80AA3E40  38 C0 06 00 */	li r6, 0x600
/* 80AA3E44  4B 7C C7 C4 */	b cLib_addCalcAngleS2__FPssss
/* 80AA3E48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA3E4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA3E50  7C 08 03 A6 */	mtlr r0
/* 80AA3E54  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA3E58  4E 80 00 20 */	blr 

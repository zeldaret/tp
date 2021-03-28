lbl_804FEB48:
/* 804FEB48  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804FEB4C  7C 08 02 A6 */	mflr r0
/* 804FEB50  90 01 00 34 */	stw r0, 0x34(r1)
/* 804FEB54  39 61 00 30 */	addi r11, r1, 0x30
/* 804FEB58  4B E6 36 74 */	b _savegpr_25
/* 804FEB5C  7C 7C 1B 78 */	mr r28, r3
/* 804FEB60  3B FC 06 A0 */	addi r31, r28, 0x6a0
/* 804FEB64  3B DC 07 30 */	addi r30, r28, 0x730
/* 804FEB68  3B A0 00 00 */	li r29, 0
/* 804FEB6C  3B 60 00 00 */	li r27, 0
/* 804FEB70  3B 40 00 00 */	li r26, 0
lbl_804FEB74:
/* 804FEB74  2C 1D 00 00 */	cmpwi r29, 0
/* 804FEB78  40 81 00 88 */	ble lbl_804FEC00
/* 804FEB7C  2C 1D 00 0B */	cmpwi r29, 0xb
/* 804FEB80  40 80 00 80 */	bge lbl_804FEC00
/* 804FEB84  7F 3C D2 14 */	add r25, r28, r26
/* 804FEB88  80 19 07 78 */	lwz r0, 0x778(r25)
/* 804FEB8C  28 00 00 00 */	cmplwi r0, 0
/* 804FEB90  41 82 00 70 */	beq lbl_804FEC00
/* 804FEB94  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804FEB98  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804FEB9C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 804FEBA0  C0 5F 00 04 */	lfs f2, 4(r31)
/* 804FEBA4  C0 7F 00 08 */	lfs f3, 8(r31)
/* 804FEBA8  4B E4 7D 40 */	b PSMTXTrans
/* 804FEBAC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804FEBB0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804FEBB4  A8 9E 00 02 */	lha r4, 2(r30)
/* 804FEBB8  4B B0 D8 7C */	b mDoMtx_YrotM__FPA4_fs
/* 804FEBBC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804FEBC0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804FEBC4  A8 9E 00 00 */	lha r4, 0(r30)
/* 804FEBC8  4B B0 D7 D4 */	b mDoMtx_XrotM__FPA4_fs
/* 804FEBCC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804FEBD0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804FEBD4  7F 64 07 34 */	extsh r4, r27
/* 804FEBD8  4B B0 D8 F4 */	b mDoMtx_ZrotM__FPA4_fs
/* 804FEBDC  C0 39 07 D8 */	lfs f1, 0x7d8(r25)
/* 804FEBE0  FC 40 08 90 */	fmr f2, f1
/* 804FEBE4  FC 60 08 90 */	fmr f3, f1
/* 804FEBE8  4B B0 E2 50 */	b scaleM__14mDoMtx_stack_cFfff
/* 804FEBEC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804FEBF0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804FEBF4  80 99 07 78 */	lwz r4, 0x778(r25)
/* 804FEBF8  38 84 00 24 */	addi r4, r4, 0x24
/* 804FEBFC  4B E4 78 B4 */	b PSMTXCopy
lbl_804FEC00:
/* 804FEC00  3B BD 00 01 */	addi r29, r29, 1
/* 804FEC04  2C 1D 00 0C */	cmpwi r29, 0xc
/* 804FEC08  3B 7B 20 00 */	addi r27, r27, 0x2000
/* 804FEC0C  3B 5A 00 04 */	addi r26, r26, 4
/* 804FEC10  3B FF 00 0C */	addi r31, r31, 0xc
/* 804FEC14  3B DE 00 06 */	addi r30, r30, 6
/* 804FEC18  41 80 FF 5C */	blt lbl_804FEB74
/* 804FEC1C  39 61 00 30 */	addi r11, r1, 0x30
/* 804FEC20  4B E6 35 F8 */	b _restgpr_25
/* 804FEC24  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804FEC28  7C 08 03 A6 */	mtlr r0
/* 804FEC2C  38 21 00 30 */	addi r1, r1, 0x30
/* 804FEC30  4E 80 00 20 */	blr 

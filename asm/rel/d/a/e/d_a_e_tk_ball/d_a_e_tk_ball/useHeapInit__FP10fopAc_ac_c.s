lbl_807BD13C:
/* 807BD13C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807BD140  7C 08 02 A6 */	mflr r0
/* 807BD144  90 01 00 14 */	stw r0, 0x14(r1)
/* 807BD148  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807BD14C  7C 7F 1B 78 */	mr r31, r3
/* 807BD150  88 03 05 B4 */	lbz r0, 0x5b4(r3)
/* 807BD154  28 00 00 00 */	cmplwi r0, 0
/* 807BD158  40 82 00 2C */	bne lbl_807BD184
/* 807BD15C  3C 60 80 7C */	lis r3, stringBase0@ha
/* 807BD160  38 63 D5 C4 */	addi r3, r3, stringBase0@l
/* 807BD164  38 80 00 0D */	li r4, 0xd
/* 807BD168  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 807BD16C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 807BD170  3C A5 00 02 */	addis r5, r5, 2
/* 807BD174  38 C0 00 80 */	li r6, 0x80
/* 807BD178  38 A5 C2 F8 */	addi r5, r5, -15624
/* 807BD17C  4B 87 F1 70 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807BD180  48 00 00 2C */	b lbl_807BD1AC
lbl_807BD184:
/* 807BD184  3C 60 80 7C */	lis r3, stringBase0@ha
/* 807BD188  38 63 D5 C4 */	addi r3, r3, stringBase0@l
/* 807BD18C  38 63 00 05 */	addi r3, r3, 5
/* 807BD190  38 80 00 0D */	li r4, 0xd
/* 807BD194  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 807BD198  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 807BD19C  3C A5 00 02 */	addis r5, r5, 2
/* 807BD1A0  38 C0 00 80 */	li r6, 0x80
/* 807BD1A4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 807BD1A8  4B 87 F1 44 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
lbl_807BD1AC:
/* 807BD1AC  3C 80 00 08 */	lis r4, 8
/* 807BD1B0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 807BD1B4  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 807BD1B8  4B 85 7A 9C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 807BD1BC  90 7F 05 B8 */	stw r3, 0x5b8(r31)
/* 807BD1C0  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 807BD1C4  28 00 00 00 */	cmplwi r0, 0
/* 807BD1C8  40 82 00 0C */	bne lbl_807BD1D4
/* 807BD1CC  38 60 00 00 */	li r3, 0
/* 807BD1D0  48 00 00 08 */	b lbl_807BD1D8
lbl_807BD1D4:
/* 807BD1D4  38 60 00 01 */	li r3, 1
lbl_807BD1D8:
/* 807BD1D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807BD1DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807BD1E0  7C 08 03 A6 */	mtlr r0
/* 807BD1E4  38 21 00 10 */	addi r1, r1, 0x10
/* 807BD1E8  4E 80 00 20 */	blr 

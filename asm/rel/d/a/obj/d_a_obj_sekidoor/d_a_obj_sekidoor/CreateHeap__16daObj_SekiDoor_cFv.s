lbl_80CCD154:
/* 80CCD154  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCD158  7C 08 02 A6 */	mflr r0
/* 80CCD15C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCD160  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CCD164  7C 7F 1B 78 */	mr r31, r3
/* 80CCD168  88 03 05 D6 */	lbz r0, 0x5d6(r3)
/* 80CCD16C  54 05 18 38 */	slwi r5, r0, 3
/* 80CCD170  3C 60 80 CD */	lis r3, l_bmdData@ha /* 0x80CCDA5C@ha */
/* 80CCD174  38 83 DA 5C */	addi r4, r3, l_bmdData@l /* 0x80CCDA5C@l */
/* 80CCD178  7C 64 2A 14 */	add r3, r4, r5
/* 80CCD17C  80 03 00 04 */	lwz r0, 4(r3)
/* 80CCD180  54 00 10 3A */	slwi r0, r0, 2
/* 80CCD184  3C 60 80 CD */	lis r3, l_resNameList@ha /* 0x80CCDA6C@ha */
/* 80CCD188  38 63 DA 6C */	addi r3, r3, l_resNameList@l /* 0x80CCDA6C@l */
/* 80CCD18C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80CCD190  7C 84 28 2E */	lwzx r4, r4, r5
/* 80CCD194  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CCD198  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CCD19C  3C A5 00 02 */	addis r5, r5, 2
/* 80CCD1A0  38 C0 00 80 */	li r6, 0x80
/* 80CCD1A4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80CCD1A8  4B 36 F1 45 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CCD1AC  28 03 00 00 */	cmplwi r3, 0
/* 80CCD1B0  40 82 00 0C */	bne lbl_80CCD1BC
/* 80CCD1B4  38 60 00 00 */	li r3, 0
/* 80CCD1B8  48 00 00 24 */	b lbl_80CCD1DC
lbl_80CCD1BC:
/* 80CCD1BC  3C 80 00 08 */	lis r4, 8
/* 80CCD1C0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CCD1C4  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CCD1C8  4B 34 7A 8D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CCD1CC  90 7F 05 AC */	stw r3, 0x5ac(r31)
/* 80CCD1D0  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80CCD1D4  30 03 FF FF */	addic r0, r3, -1
/* 80CCD1D8  7C 60 19 10 */	subfe r3, r0, r3
lbl_80CCD1DC:
/* 80CCD1DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CCD1E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCD1E4  7C 08 03 A6 */	mtlr r0
/* 80CCD1E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCD1EC  4E 80 00 20 */	blr 

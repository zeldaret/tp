lbl_80C855A4:
/* 80C855A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C855A8  7C 08 02 A6 */	mflr r0
/* 80C855AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C855B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C855B4  7C 7F 1B 78 */	mr r31, r3
/* 80C855B8  88 03 05 AF */	lbz r0, 0x5af(r3)
/* 80C855BC  54 00 10 3A */	slwi r0, r0, 2
/* 80C855C0  3C 60 80 C8 */	lis r3, l_type@ha
/* 80C855C4  38 63 61 94 */	addi r3, r3, l_type@l
/* 80C855C8  7C 63 00 2E */	lwzx r3, r3, r0
/* 80C855CC  3C 80 80 C8 */	lis r4, l_bmdIdx@ha
/* 80C855D0  38 84 61 9C */	addi r4, r4, l_bmdIdx@l
/* 80C855D4  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C855D8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C855DC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C855E0  3C A5 00 02 */	addis r5, r5, 2
/* 80C855E4  38 C0 00 80 */	li r6, 0x80
/* 80C855E8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C855EC  4B 3B 6D 00 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C855F0  3C 80 00 08 */	lis r4, 8
/* 80C855F4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C855F8  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C855FC  4B 38 F6 58 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C85600  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80C85604  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C85608  30 03 FF FF */	addic r0, r3, -1
/* 80C8560C  7C 60 19 10 */	subfe r3, r0, r3
/* 80C85610  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C85614  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C85618  7C 08 03 A6 */	mtlr r0
/* 80C8561C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C85620  4E 80 00 20 */	blr 

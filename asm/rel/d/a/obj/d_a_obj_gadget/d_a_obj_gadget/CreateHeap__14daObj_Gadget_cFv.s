lbl_80BF3478:
/* 80BF3478  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF347C  7C 08 02 A6 */	mflr r0
/* 80BF3480  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF3484  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF3488  7C 7F 1B 78 */	mr r31, r3
/* 80BF348C  88 03 09 D0 */	lbz r0, 0x9d0(r3)
/* 80BF3490  54 05 18 38 */	slwi r5, r0, 3
/* 80BF3494  3C 60 80 BF */	lis r3, l_bmdData@ha
/* 80BF3498  38 83 4A 4C */	addi r4, r3, l_bmdData@l
/* 80BF349C  7C 64 2A 14 */	add r3, r4, r5
/* 80BF34A0  80 03 00 04 */	lwz r0, 4(r3)
/* 80BF34A4  54 00 10 3A */	slwi r0, r0, 2
/* 80BF34A8  3C 60 80 BF */	lis r3, l_resNameList@ha
/* 80BF34AC  38 63 4A 5C */	addi r3, r3, l_resNameList@l
/* 80BF34B0  7C 63 00 2E */	lwzx r3, r3, r0
/* 80BF34B4  7C 84 28 2E */	lwzx r4, r4, r5
/* 80BF34B8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80BF34BC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80BF34C0  3C A5 00 02 */	addis r5, r5, 2
/* 80BF34C4  38 C0 00 80 */	li r6, 0x80
/* 80BF34C8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BF34CC  4B 44 8E 20 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BF34D0  3C 80 00 08 */	lis r4, 8
/* 80BF34D4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BF34D8  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BF34DC  4B 42 17 78 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BF34E0  90 7F 05 74 */	stw r3, 0x574(r31)
/* 80BF34E4  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80BF34E8  30 03 FF FF */	addic r0, r3, -1
/* 80BF34EC  7C 60 19 10 */	subfe r3, r0, r3
/* 80BF34F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF34F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF34F8  7C 08 03 A6 */	mtlr r0
/* 80BF34FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF3500  4E 80 00 20 */	blr 

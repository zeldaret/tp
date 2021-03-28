lbl_80598344:
/* 80598344  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80598348  7C 08 02 A6 */	mflr r0
/* 8059834C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80598350  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80598354  7C 7F 1B 78 */	mr r31, r3
/* 80598358  88 03 05 AC */	lbz r0, 0x5ac(r3)
/* 8059835C  54 00 10 3A */	slwi r0, r0, 2
/* 80598360  3C 60 80 5A */	lis r3, l_resNameIdx@ha
/* 80598364  38 63 8F E8 */	addi r3, r3, l_resNameIdx@l
/* 80598368  7C 63 00 2E */	lwzx r3, r3, r0
/* 8059836C  3C 80 80 5A */	lis r4, l_bmdIdx@ha
/* 80598370  38 84 8F 98 */	addi r4, r4, l_bmdIdx@l
/* 80598374  7C 84 00 2E */	lwzx r4, r4, r0
/* 80598378  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8059837C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80598380  3C A5 00 02 */	addis r5, r5, 2
/* 80598384  38 C0 00 80 */	li r6, 0x80
/* 80598388  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8059838C  4B AA 3F 60 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80598390  3C 80 00 08 */	lis r4, 8
/* 80598394  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80598398  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8059839C  4B A7 C8 B8 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 805983A0  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 805983A4  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 805983A8  30 03 FF FF */	addic r0, r3, -1
/* 805983AC  7C 60 19 10 */	subfe r3, r0, r3
/* 805983B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805983B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805983B8  7C 08 03 A6 */	mtlr r0
/* 805983BC  38 21 00 10 */	addi r1, r1, 0x10
/* 805983C0  4E 80 00 20 */	blr 

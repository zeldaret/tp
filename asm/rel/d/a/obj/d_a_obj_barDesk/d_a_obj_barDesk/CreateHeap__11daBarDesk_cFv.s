lbl_80BA9288:
/* 80BA9288  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA928C  7C 08 02 A6 */	mflr r0
/* 80BA9290  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA9294  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA9298  7C 7F 1B 78 */	mr r31, r3
/* 80BA929C  3C 60 80 BB */	lis r3, stringBase0@ha
/* 80BA92A0  38 63 9B B4 */	addi r3, r3, stringBase0@l
/* 80BA92A4  38 80 00 04 */	li r4, 4
/* 80BA92A8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80BA92AC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80BA92B0  3C A5 00 02 */	addis r5, r5, 2
/* 80BA92B4  38 C0 00 80 */	li r6, 0x80
/* 80BA92B8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BA92BC  4B 49 30 30 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BA92C0  3C 80 00 08 */	lis r4, 8
/* 80BA92C4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BA92C8  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BA92CC  4B 46 B9 88 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BA92D0  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80BA92D4  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80BA92D8  30 03 FF FF */	addic r0, r3, -1
/* 80BA92DC  7C 60 19 10 */	subfe r3, r0, r3
/* 80BA92E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA92E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA92E8  7C 08 03 A6 */	mtlr r0
/* 80BA92EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA92F0  4E 80 00 20 */	blr 

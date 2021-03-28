lbl_80BCC8C4:
/* 80BCC8C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCC8C8  7C 08 02 A6 */	mflr r0
/* 80BCC8CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCC8D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BCC8D4  7C 7F 1B 78 */	mr r31, r3
/* 80BCC8D8  3C 60 80 BD */	lis r3, l_arcName@ha
/* 80BCC8DC  38 63 CB DC */	addi r3, r3, l_arcName@l
/* 80BCC8E0  80 63 00 00 */	lwz r3, 0(r3)
/* 80BCC8E4  3C 80 80 BD */	lis r4, l_bmdName@ha
/* 80BCC8E8  38 84 CB E0 */	addi r4, r4, l_bmdName@l
/* 80BCC8EC  80 84 00 00 */	lwz r4, 0(r4)
/* 80BCC8F0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80BCC8F4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80BCC8F8  3C A5 00 02 */	addis r5, r5, 2
/* 80BCC8FC  38 C0 00 80 */	li r6, 0x80
/* 80BCC900  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BCC904  4B 46 FA 78 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80BCC908  3C 80 00 08 */	lis r4, 8
/* 80BCC90C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BCC910  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BCC914  4B 44 83 40 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BCC918  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80BCC91C  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80BCC920  30 03 FF FF */	addic r0, r3, -1
/* 80BCC924  7C 60 19 10 */	subfe r3, r0, r3
/* 80BCC928  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BCC92C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCC930  7C 08 03 A6 */	mtlr r0
/* 80BCC934  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCC938  4E 80 00 20 */	blr 

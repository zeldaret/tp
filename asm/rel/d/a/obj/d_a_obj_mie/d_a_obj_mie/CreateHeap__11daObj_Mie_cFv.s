lbl_80C945E8:
/* 80C945E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C945EC  7C 08 02 A6 */	mflr r0
/* 80C945F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C945F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C945F8  7C 7F 1B 78 */	mr r31, r3
/* 80C945FC  88 03 09 D0 */	lbz r0, 0x9d0(r3)
/* 80C94600  54 05 18 38 */	slwi r5, r0, 3
/* 80C94604  3C 60 80 C9 */	lis r3, l_bmdData@ha
/* 80C94608  38 83 5B 88 */	addi r4, r3, l_bmdData@l
/* 80C9460C  7C 64 2A 14 */	add r3, r4, r5
/* 80C94610  80 03 00 04 */	lwz r0, 4(r3)
/* 80C94614  54 00 10 3A */	slwi r0, r0, 2
/* 80C94618  3C 60 80 C9 */	lis r3, l_resNameList@ha
/* 80C9461C  38 63 5B 90 */	addi r3, r3, l_resNameList@l
/* 80C94620  7C 63 00 2E */	lwzx r3, r3, r0
/* 80C94624  7C 84 28 2E */	lwzx r4, r4, r5
/* 80C94628  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C9462C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C94630  3C A5 00 02 */	addis r5, r5, 2
/* 80C94634  38 C0 00 80 */	li r6, 0x80
/* 80C94638  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C9463C  4B 3A 7C B0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C94640  38 80 00 00 */	li r4, 0
/* 80C94644  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C94648  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C9464C  4B 38 06 08 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C94650  90 7F 05 74 */	stw r3, 0x574(r31)
/* 80C94654  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80C94658  30 03 FF FF */	addic r0, r3, -1
/* 80C9465C  7C 60 19 10 */	subfe r3, r0, r3
/* 80C94660  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C94664  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C94668  7C 08 03 A6 */	mtlr r0
/* 80C9466C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C94670  4E 80 00 20 */	blr 

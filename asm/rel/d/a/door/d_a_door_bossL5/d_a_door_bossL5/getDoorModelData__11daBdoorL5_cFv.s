lbl_80670C94:
/* 80670C94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80670C98  7C 08 02 A6 */	mflr r0
/* 80670C9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80670CA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80670CA4  93 C1 00 08 */	stw r30, 8(r1)
/* 80670CA8  7C 7E 1B 78 */	mr r30, r3
/* 80670CAC  4B FF FF A9 */	bl getBmd__11daBdoorL5_cFv
/* 80670CB0  7C 7F 1B 78 */	mr r31, r3
/* 80670CB4  7F C3 F3 78 */	mr r3, r30
/* 80670CB8  4B FF FF 81 */	bl getArcName__11daBdoorL5_cFv
/* 80670CBC  7F E4 FB 78 */	mr r4, r31
/* 80670CC0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80670CC4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80670CC8  3C A5 00 02 */	addis r5, r5, 2
/* 80670CCC  38 C0 00 80 */	li r6, 0x80
/* 80670CD0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80670CD4  4B 9C B6 A8 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80670CD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80670CDC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80670CE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80670CE4  7C 08 03 A6 */	mtlr r0
/* 80670CE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80670CEC  4E 80 00 20 */	blr 

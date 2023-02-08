lbl_80849798:
/* 80849798  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8084979C  7C 08 02 A6 */	mflr r0
/* 808497A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 808497A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 808497A8  7C 7F 1B 78 */	mr r31, r3
/* 808497AC  4B FF FE B5 */	bl getBckName__8daKago_cFi
/* 808497B0  7C 64 1B 78 */	mr r4, r3
/* 808497B4  80 7F 07 5C */	lwz r3, 0x75c(r31)
/* 808497B8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 808497BC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 808497C0  3C A5 00 02 */	addis r5, r5, 2
/* 808497C4  38 C0 00 80 */	li r6, 0x80
/* 808497C8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 808497CC  4B 7F 2B 21 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 808497D0  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 808497D4  80 04 00 08 */	lwz r0, 8(r4)
/* 808497D8  7C 00 18 50 */	subf r0, r0, r3
/* 808497DC  7C 00 00 34 */	cntlzw r0, r0
/* 808497E0  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 808497E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 808497E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 808497EC  7C 08 03 A6 */	mtlr r0
/* 808497F0  38 21 00 10 */	addi r1, r1, 0x10
/* 808497F4  4E 80 00 20 */	blr 

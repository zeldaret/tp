lbl_80C736C0:
/* 80C736C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C736C4  7C 08 02 A6 */	mflr r0
/* 80C736C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C736CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C736D0  7C 7F 1B 78 */	mr r31, r3
/* 80C736D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C736D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C736DC  88 9F 05 AE */	lbz r4, 0x5ae(r31)
/* 80C736E0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C736E4  7C 05 07 74 */	extsb r5, r0
/* 80C736E8  4B 3C 1C 78 */	b isSwitch__10dSv_info_cCFii
/* 80C736EC  88 1F 05 AD */	lbz r0, 0x5ad(r31)
/* 80C736F0  7C 00 1A 78 */	xor r0, r0, r3
/* 80C736F4  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80C736F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C736FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C73700  7C 08 03 A6 */	mtlr r0
/* 80C73704  38 21 00 10 */	addi r1, r1, 0x10
/* 80C73708  4E 80 00 20 */	blr 

lbl_80470840:
/* 80470840  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80470844  7C 08 02 A6 */	mflr r0
/* 80470848  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047084C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80470850  7C 7F 1B 78 */	mr r31, r3
/* 80470854  48 00 2B 95 */	bl mode_init_wait__12daObjCarry_cFv
/* 80470858  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8047085C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80470860  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80470864  54 04 D6 3E */	rlwinm r4, r0, 0x1a, 0x18, 0x1f
/* 80470868  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8047086C  7C 05 07 74 */	extsb r5, r0
/* 80470870  4B BC 4A F0 */	b isSwitch__10dSv_info_cCFii
/* 80470874  7C 60 00 34 */	cntlzw r0, r3
/* 80470878  54 03 D9 7E */	srwi r3, r0, 5
/* 8047087C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80470880  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80470884  7C 08 03 A6 */	mtlr r0
/* 80470888  38 21 00 10 */	addi r1, r1, 0x10
/* 8047088C  4E 80 00 20 */	blr 

lbl_80467A80:
/* 80467A80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80467A84  7C 08 02 A6 */	mflr r0
/* 80467A88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80467A8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80467A90  7C 7F 1B 78 */	mr r31, r3
/* 80467A94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80467A98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80467A9C  88 9F 05 BA */	lbz r4, 0x5ba(r31)
/* 80467AA0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80467AA4  7C 05 07 74 */	extsb r5, r0
/* 80467AA8  4B BC D8 B8 */	b isSwitch__10dSv_info_cCFii
/* 80467AAC  2C 03 00 00 */	cmpwi r3, 0
/* 80467AB0  40 82 00 14 */	bne lbl_80467AC4
/* 80467AB4  7F E3 FB 78 */	mr r3, r31
/* 80467AB8  3C 80 80 47 */	lis r4, l_closeAction@ha
/* 80467ABC  38 84 80 F8 */	addi r4, r4, l_closeAction@l
/* 80467AC0  4B FF FC 49 */	bl setAction__7daDsh_cFPQ27daDsh_c8action_c
lbl_80467AC4:
/* 80467AC4  38 60 00 01 */	li r3, 1
/* 80467AC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80467ACC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80467AD0  7C 08 03 A6 */	mtlr r0
/* 80467AD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80467AD8  4E 80 00 20 */	blr 

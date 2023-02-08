lbl_8023826C:
/* 8023826C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80238270  7C 08 02 A6 */	mflr r0
/* 80238274  90 01 00 14 */	stw r0, 0x14(r1)
/* 80238278  7C 64 1B 78 */	mr r4, r3
/* 8023827C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80238280  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80238284  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 80238288  4B FF FC 89 */	bl setTalkActorLocal__12dMsgObject_cFP10fopAc_ac_c
/* 8023828C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80238290  7C 08 03 A6 */	mtlr r0
/* 80238294  38 21 00 10 */	addi r1, r1, 0x10
/* 80238298  4E 80 00 20 */	blr 

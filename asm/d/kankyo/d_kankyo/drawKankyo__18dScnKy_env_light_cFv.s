lbl_801A56DC:
/* 801A56DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A56E0  7C 08 02 A6 */	mflr r0
/* 801A56E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A56E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801A56EC  7C 7F 1B 78 */	mr r31, r3
/* 801A56F0  4B FF A0 99 */	bl setSunpos__18dScnKy_env_light_cFv
/* 801A56F4  7F E3 FB 78 */	mr r3, r31
/* 801A56F8  4B FF FA 75 */	bl SetBaseLight__18dScnKy_env_light_cFv
/* 801A56FC  7F E3 FB 78 */	mr r3, r31
/* 801A5700  4B FF AD 0D */	bl setLight__18dScnKy_env_light_cFv
/* 801A5704  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A5708  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A570C  88 03 12 C6 */	lbz r0, 0x12c6(r3)
/* 801A5710  7C 03 07 74 */	extsb r3, r0
/* 801A5714  48 00 15 0D */	bl dKy_setLight_nowroom__Fc
/* 801A5718  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801A571C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A5720  7C 08 03 A6 */	mtlr r0
/* 801A5724  38 21 00 10 */	addi r1, r1, 0x10
/* 801A5728  4E 80 00 20 */	blr 

lbl_80BA6634:
/* 80BA6634  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA6638  7C 08 02 A6 */	mflr r0
/* 80BA663C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA6640  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA6644  93 C1 00 08 */	stw r30, 8(r1)
/* 80BA6648  7C 7E 1B 78 */	mr r30, r3
/* 80BA664C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA6650  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA6654  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80BA6658  7F E3 FB 78 */	mr r3, r31
/* 80BA665C  38 9E 08 88 */	addi r4, r30, 0x888
/* 80BA6660  4B 4C E5 89 */	bl GetPolyColor__4dBgSFRC13cBgS_PolyInfo
/* 80BA6664  98 7E 04 8D */	stb r3, 0x48d(r30)
/* 80BA6668  7F E3 FB 78 */	mr r3, r31
/* 80BA666C  38 9E 08 88 */	addi r4, r30, 0x888
/* 80BA6670  4B 4C EA 91 */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80BA6674  98 7E 04 8C */	stb r3, 0x48c(r30)
/* 80BA6678  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA667C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BA6680  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA6684  7C 08 03 A6 */	mtlr r0
/* 80BA6688  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA668C  4E 80 00 20 */	blr 

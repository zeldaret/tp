lbl_80BE05DC:
/* 80BE05DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE05E0  7C 08 02 A6 */	mflr r0
/* 80BE05E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE05E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE05EC  93 C1 00 08 */	stw r30, 8(r1)
/* 80BE05F0  7C 7E 1B 78 */	mr r30, r3
/* 80BE05F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BE05F8  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80BE05FC  8B E4 5E A1 */	lbz r31, 0x5ea1(r4)
/* 80BE0600  38 64 01 14 */	addi r3, r4, 0x114
/* 80BE0604  88 84 4E 0C */	lbz r4, 0x4e0c(r4)
/* 80BE0608  4B 45 3D 38 */	b getLightDropNum__16dSv_light_drop_cCFUc
/* 80BE060C  38 9F FF FF */	addi r4, r31, -1
/* 80BE0610  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80BE0614  7C 04 00 00 */	cmpw r4, r0
/* 80BE0618  40 82 00 18 */	bne lbl_80BE0630
/* 80BE061C  38 00 FF FF */	li r0, -1
/* 80BE0620  90 1E 06 AC */	stw r0, 0x6ac(r30)
/* 80BE0624  38 00 00 01 */	li r0, 1
/* 80BE0628  98 1E 06 BA */	stb r0, 0x6ba(r30)
/* 80BE062C  48 00 00 14 */	b lbl_80BE0640
lbl_80BE0630:
/* 80BE0630  38 00 00 01 */	li r0, 1
/* 80BE0634  98 1E 06 B9 */	stb r0, 0x6b9(r30)
/* 80BE0638  7F C3 F3 78 */	mr r3, r30
/* 80BE063C  4B FF FD 1D */	bl dropGet__11daObjDrop_cFv
lbl_80BE0640:
/* 80BE0640  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE0644  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BE0648  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE064C  7C 08 03 A6 */	mtlr r0
/* 80BE0650  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE0654  4E 80 00 20 */	blr 

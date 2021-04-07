lbl_80A2C4FC:
/* 80A2C4FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A2C500  7C 08 02 A6 */	mflr r0
/* 80A2C504  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A2C508  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A2C50C  93 C1 00 08 */	stw r30, 8(r1)
/* 80A2C510  7C 7E 1B 78 */	mr r30, r3
/* 80A2C514  3C 60 80 A4 */	lis r3, lit_4205@ha /* 0x80A40904@ha */
/* 80A2C518  C0 23 09 04 */	lfs f1, lit_4205@l(r3)  /* 0x80A40904@l */
/* 80A2C51C  C0 1E 0E 14 */	lfs f0, 0xe14(r30)
/* 80A2C520  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A2C524  41 82 00 30 */	beq lbl_80A2C554
/* 80A2C528  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A2C52C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A2C530  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80A2C534  7F E3 FB 78 */	mr r3, r31
/* 80A2C538  38 9E 09 78 */	addi r4, r30, 0x978
/* 80A2C53C  4B 64 86 AD */	bl GetPolyColor__4dBgSFRC13cBgS_PolyInfo
/* 80A2C540  98 7E 11 D1 */	stb r3, 0x11d1(r30)
/* 80A2C544  7F E3 FB 78 */	mr r3, r31
/* 80A2C548  38 9E 09 78 */	addi r4, r30, 0x978
/* 80A2C54C  4B 64 8B B5 */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80A2C550  98 7E 11 D0 */	stb r3, 0x11d0(r30)
lbl_80A2C554:
/* 80A2C554  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A2C558  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A2C55C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A2C560  7C 08 03 A6 */	mtlr r0
/* 80A2C564  38 21 00 10 */	addi r1, r1, 0x10
/* 80A2C568  4E 80 00 20 */	blr 

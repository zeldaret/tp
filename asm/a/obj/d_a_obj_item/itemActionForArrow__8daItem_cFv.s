lbl_8015D688:
/* 8015D688  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015D68C  7C 08 02 A6 */	mflr r0
/* 8015D690  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015D694  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015D698  7C 7F 1B 78 */	mr r31, r3
/* 8015D69C  38 7F 05 8C */	addi r3, r31, 0x58c
/* 8015D6A0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8015D6A4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8015D6A8  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8015D6AC  4B F1 94 01 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 8015D6B0  7F E3 FB 78 */	mr r3, r31
/* 8015D6B4  48 00 00 81 */	bl bg_check__8daItem_cFv
/* 8015D6B8  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 8015D6BC  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 8015D6C0  41 82 00 28 */	beq lbl_8015D6E8
/* 8015D6C4  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 8015D6C8  40 82 00 20 */	bne lbl_8015D6E8
/* 8015D6CC  C0 02 9B 50 */	lfs f0, lit_3857(r2)
/* 8015D6D0  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8015D6D4  7F E3 FB 78 */	mr r3, r31
/* 8015D6D8  81 9F 05 68 */	lwz r12, 0x568(r31)
/* 8015D6DC  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8015D6E0  7D 89 03 A6 */	mtctr r12
/* 8015D6E4  4E 80 04 21 */	bctrl 
lbl_8015D6E8:
/* 8015D6E8  38 60 00 01 */	li r3, 1
/* 8015D6EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015D6F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015D6F4  7C 08 03 A6 */	mtlr r0
/* 8015D6F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8015D6FC  4E 80 00 20 */	blr 

lbl_8065F6E0:
/* 8065F6E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8065F6E4  7C 08 02 A6 */	mflr r0
/* 8065F6E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8065F6EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8065F6F0  7C 7F 1B 78 */	mr r31, r3
/* 8065F6F4  38 7F 08 20 */	addi r3, r31, 0x820
/* 8065F6F8  3C 80 80 66 */	lis r4, lit_3998@ha
/* 8065F6FC  C0 24 2D C8 */	lfs f1, lit_3998@l(r4)
/* 8065F700  FC 40 08 90 */	fmr f2, f1
/* 8065F704  4B A1 68 54 */	b SetWall__12dBgS_AcchCirFff
/* 8065F708  38 00 00 01 */	li r0, 1
/* 8065F70C  98 1F 0C A6 */	stb r0, 0xca6(r31)
/* 8065F710  38 00 00 00 */	li r0, 0
/* 8065F714  B0 1F 0C 5C */	sth r0, 0xc5c(r31)
/* 8065F718  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8065F71C  54 03 C6 3E */	rlwinm r3, r0, 0x18, 0x18, 0x1f
/* 8065F720  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8065F724  7C 04 07 74 */	extsb r4, r0
/* 8065F728  4B 9F 20 C4 */	b dPath_GetRoomPath__Fii
/* 8065F72C  90 7F 0C 0C */	stw r3, 0xc0c(r31)
/* 8065F730  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8065F734  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8065F738  7C 08 03 A6 */	mtlr r0
/* 8065F73C  38 21 00 10 */	addi r1, r1, 0x10
/* 8065F740  4E 80 00 20 */	blr 

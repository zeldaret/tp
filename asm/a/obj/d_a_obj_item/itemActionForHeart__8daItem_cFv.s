lbl_8015D56C:
/* 8015D56C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8015D570  7C 08 02 A6 */	mflr r0
/* 8015D574  90 01 00 24 */	stw r0, 0x24(r1)
/* 8015D578  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8015D57C  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 8015D580  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015D584  7C 7F 1B 78 */	mr r31, r3
/* 8015D588  C3 E3 04 FC */	lfs f31, 0x4fc(r3)
/* 8015D58C  C0 02 9B 50 */	lfs f0, lit_3857(r2)
/* 8015D590  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8015D594  4C 40 13 82 */	cror 2, 0, 2
/* 8015D598  40 82 00 20 */	bne lbl_8015D5B8
/* 8015D59C  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 8015D5A0  4B FF DB 19 */	bl getData__12daItemBase_cFv
/* 8015D5A4  C0 23 00 20 */	lfs f1, 0x20(r3)
/* 8015D5A8  C0 02 9B 50 */	lfs f0, lit_3857(r2)
/* 8015D5AC  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 8015D5B0  D0 3F 04 FC */	stfs f1, 0x4fc(r31)
/* 8015D5B4  D0 1F 05 00 */	stfs f0, 0x500(r31)
lbl_8015D5B8:
/* 8015D5B8  38 7F 05 8C */	addi r3, r31, 0x58c
/* 8015D5BC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8015D5C0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8015D5C4  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8015D5C8  4B F1 94 E5 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 8015D5CC  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 8015D5D0  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 8015D5D4  40 82 00 0C */	bne lbl_8015D5E0
/* 8015D5D8  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 8015D5DC  41 82 00 34 */	beq lbl_8015D610
lbl_8015D5E0:
/* 8015D5E0  88 1F 09 48 */	lbz r0, 0x948(r31)
/* 8015D5E4  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8015D5E8  98 1F 09 48 */	stb r0, 0x948(r31)
/* 8015D5EC  38 00 00 00 */	li r0, 0
/* 8015D5F0  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 8015D5F4  C0 22 9B 50 */	lfs f1, lit_3857(r2)
/* 8015D5F8  D0 3F 04 F8 */	stfs f1, 0x4f8(r31)
/* 8015D5FC  C0 02 9B BC */	lfs f0, lit_4923(r2)
/* 8015D600  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8015D604  D0 3F 05 00 */	stfs f1, 0x500(r31)
/* 8015D608  D0 3F 05 2C */	stfs f1, 0x52c(r31)
/* 8015D60C  48 00 00 48 */	b lbl_8015D654
lbl_8015D610:
/* 8015D610  C0 02 9B 50 */	lfs f0, lit_3857(r2)
/* 8015D614  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8015D618  40 80 00 3C */	bge lbl_8015D654
/* 8015D61C  7F E3 FB 78 */	mr r3, r31
/* 8015D620  4B FF DA 99 */	bl getData__12daItemBase_cFv
/* 8015D624  C3 E3 00 24 */	lfs f31, 0x24(r3)
/* 8015D628  7F E3 FB 78 */	mr r3, r31
/* 8015D62C  4B FF DA 8D */	bl getData__12daItemBase_cFv
/* 8015D630  A8 63 00 28 */	lha r3, 0x28(r3)
/* 8015D634  80 1F 09 24 */	lwz r0, 0x924(r31)
/* 8015D638  7C 00 19 D6 */	mullw r0, r0, r3
/* 8015D63C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8015D640  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8015D644  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8015D648  7C 03 04 2E */	lfsx f0, r3, r0
/* 8015D64C  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8015D650  D0 1F 05 2C */	stfs f0, 0x52c(r31)
lbl_8015D654:
/* 8015D654  7F E3 FB 78 */	mr r3, r31
/* 8015D658  81 9F 05 68 */	lwz r12, 0x568(r31)
/* 8015D65C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8015D660  7D 89 03 A6 */	mtctr r12
/* 8015D664  4E 80 04 21 */	bctrl 
/* 8015D668  38 60 00 01 */	li r3, 1
/* 8015D66C  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 8015D670  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8015D674  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015D678  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8015D67C  7C 08 03 A6 */	mtlr r0
/* 8015D680  38 21 00 20 */	addi r1, r1, 0x20
/* 8015D684  4E 80 00 20 */	blr 

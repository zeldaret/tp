lbl_80A2B9E0:
/* 80A2B9E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A2B9E4  7C 08 02 A6 */	mflr r0
/* 80A2B9E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A2B9EC  39 61 00 20 */	addi r11, r1, 0x20
/* 80A2B9F0  4B 93 67 E9 */	bl _savegpr_28
/* 80A2B9F4  7C 7F 1B 78 */	mr r31, r3
/* 80A2B9F8  38 7F 0D 58 */	addi r3, r31, 0xd58
/* 80A2B9FC  38 80 00 00 */	li r4, 0
/* 80A2BA00  38 1F 0E 3C */	addi r0, r31, 0xe3c
/* 80A2BA04  7C A3 00 50 */	subf r5, r3, r0
/* 80A2BA08  4B 5D 7A 51 */	bl memset
/* 80A2BA0C  38 7F 0B 84 */	addi r3, r31, 0xb84
/* 80A2BA10  4B 71 9E 89 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2BA14  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A2BA18  4B 71 9E 81 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2BA1C  38 7F 0B CC */	addi r3, r31, 0xbcc
/* 80A2BA20  4B 71 9C B5 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A2BA24  38 7F 0B D4 */	addi r3, r31, 0xbd4
/* 80A2BA28  4B 71 9C AD */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A2BA2C  38 7F 0B DC */	addi r3, r31, 0xbdc
/* 80A2BA30  4B 71 B2 69 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80A2BA34  38 60 00 00 */	li r3, 0
/* 80A2BA38  38 80 00 00 */	li r4, 0
/* 80A2BA3C  7C 88 23 78 */	mr r8, r4
/* 80A2BA40  7C 87 23 78 */	mr r7, r4
/* 80A2BA44  7C 86 23 78 */	mr r6, r4
/* 80A2BA48  3C A0 80 A4 */	lis r5, lit_4204@ha /* 0x80A40900@ha */
/* 80A2BA4C  C0 05 09 00 */	lfs f0, lit_4204@l(r5)  /* 0x80A40900@l */
/* 80A2BA50  38 00 00 02 */	li r0, 2
/* 80A2BA54  7C 09 03 A6 */	mtctr r0
lbl_80A2BA58:
/* 80A2BA58  7C BF 22 14 */	add r5, r31, r4
/* 80A2BA5C  B1 05 0D 3C */	sth r8, 0xd3c(r5)
/* 80A2BA60  B0 E5 0D 3E */	sth r7, 0xd3e(r5)
/* 80A2BA64  B0 C5 0D 40 */	sth r6, 0xd40(r5)
/* 80A2BA68  38 03 0D 48 */	addi r0, r3, 0xd48
/* 80A2BA6C  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80A2BA70  38 63 00 04 */	addi r3, r3, 4
/* 80A2BA74  38 84 00 06 */	addi r4, r4, 6
/* 80A2BA78  42 00 FF E0 */	bdnz lbl_80A2BA58
/* 80A2BA7C  38 60 00 00 */	li r3, 0
/* 80A2BA80  B0 7F 0D 50 */	sth r3, 0xd50(r31)
/* 80A2BA84  B0 7F 0D 52 */	sth r3, 0xd52(r31)
/* 80A2BA88  98 7F 0D 54 */	stb r3, 0xd54(r31)
/* 80A2BA8C  38 00 FF FF */	li r0, -1
/* 80A2BA90  90 1F 0D C4 */	stw r0, 0xdc4(r31)
/* 80A2BA94  38 00 00 01 */	li r0, 1
/* 80A2BA98  98 1F 0E 2D */	stb r0, 0xe2d(r31)
/* 80A2BA9C  90 7F 15 A4 */	stw r3, 0x15a4(r31)
/* 80A2BAA0  38 7F 17 14 */	addi r3, r31, 0x1714
/* 80A2BAA4  38 80 00 00 */	li r4, 0
/* 80A2BAA8  38 1F 17 54 */	addi r0, r31, 0x1754
/* 80A2BAAC  7C A3 00 50 */	subf r5, r3, r0
/* 80A2BAB0  4B 5D 79 A9 */	bl memset
/* 80A2BAB4  80 7F 09 A0 */	lwz r3, 0x9a0(r31)
/* 80A2BAB8  28 03 00 00 */	cmplwi r3, 0
/* 80A2BABC  41 82 00 08 */	beq lbl_80A2BAC4
/* 80A2BAC0  4B 71 9C A5 */	bl initialize__15daNpcT_MatAnm_cFv
lbl_80A2BAC4:
/* 80A2BAC4  7F E3 FB 78 */	mr r3, r31
/* 80A2BAC8  4B FF FD A5 */	bl getPath__10daNpc_Kn_cFv
/* 80A2BACC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80A2BAD0  28 00 00 FF */	cmplwi r0, 0xff
/* 80A2BAD4  41 82 00 2C */	beq lbl_80A2BB00
/* 80A2BAD8  38 7F 17 2C */	addi r3, r31, 0x172c
/* 80A2BADC  4B 71 A1 65 */	bl initialize__13daNpcT_Path_cFv
/* 80A2BAE0  7F E3 FB 78 */	mr r3, r31
/* 80A2BAE4  4B FF FD 89 */	bl getPath__10daNpc_Kn_cFv
/* 80A2BAE8  7C 64 1B 78 */	mr r4, r3
/* 80A2BAEC  38 7F 17 2C */	addi r3, r31, 0x172c
/* 80A2BAF0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A2BAF4  7C 05 07 74 */	extsb r5, r0
/* 80A2BAF8  38 C0 00 00 */	li r6, 0
/* 80A2BAFC  4B 71 A1 79 */	bl setPathInfo__13daNpcT_Path_cFUcScUc
lbl_80A2BB00:
/* 80A2BB00  38 00 FF FF */	li r0, -1
/* 80A2BB04  90 1F 0D D4 */	stw r0, 0xdd4(r31)
/* 80A2BB08  7F E3 FB 78 */	mr r3, r31
/* 80A2BB0C  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80A2BB10  48 00 EF E1 */	bl setAngle__10daNpc_Kn_cFs
/* 80A2BB14  38 00 00 00 */	li r0, 0
/* 80A2BB18  98 1F 15 BD */	stb r0, 0x15bd(r31)
/* 80A2BB1C  B0 1F 15 BE */	sth r0, 0x15be(r31)
/* 80A2BB20  98 1F 15 CC */	stb r0, 0x15cc(r31)
/* 80A2BB24  98 1F 15 CD */	stb r0, 0x15cd(r31)
/* 80A2BB28  98 1F 15 CE */	stb r0, 0x15ce(r31)
/* 80A2BB2C  98 1F 15 BC */	stb r0, 0x15bc(r31)
/* 80A2BB30  38 00 00 01 */	li r0, 1
/* 80A2BB34  98 1F 15 AF */	stb r0, 0x15af(r31)
/* 80A2BB38  3B 80 00 00 */	li r28, 0
/* 80A2BB3C  3B C0 00 00 */	li r30, 0
/* 80A2BB40  3C 60 80 A4 */	lis r3, lit_4204@ha /* 0x80A40900@ha */
/* 80A2BB44  3B A3 09 00 */	addi r29, r3, lit_4204@l /* 0x80A40900@l */
lbl_80A2BB48:
/* 80A2BB48  38 7E 16 04 */	addi r3, r30, 0x1604
/* 80A2BB4C  7C 7F 1A 14 */	add r3, r31, r3
/* 80A2BB50  38 9F 06 D0 */	addi r4, r31, 0x6d0
/* 80A2BB54  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80A2BB58  FC 40 08 90 */	fmr f2, f1
/* 80A2BB5C  4B 62 51 41 */	bl init__7dPaPo_cFP9dBgS_Acchff
/* 80A2BB60  3B 9C 00 01 */	addi r28, r28, 1
/* 80A2BB64  2C 1C 00 03 */	cmpwi r28, 3
/* 80A2BB68  3B DE 00 5C */	addi r30, r30, 0x5c
/* 80A2BB6C  41 80 FF DC */	blt lbl_80A2BB48
/* 80A2BB70  38 60 00 00 */	li r3, 0
/* 80A2BB74  38 80 FF FF */	li r4, -1
/* 80A2BB78  38 00 00 03 */	li r0, 3
/* 80A2BB7C  7C 09 03 A6 */	mtctr r0
lbl_80A2BB80:
/* 80A2BB80  38 03 15 D4 */	addi r0, r3, 0x15d4
/* 80A2BB84  7C 9F 01 2E */	stwx r4, r31, r0
/* 80A2BB88  38 63 00 04 */	addi r3, r3, 4
/* 80A2BB8C  42 00 FF F4 */	bdnz lbl_80A2BB80
/* 80A2BB90  38 80 00 00 */	li r4, 0
/* 80A2BB94  98 9F 17 0C */	stb r4, 0x170c(r31)
/* 80A2BB98  3C 60 80 A4 */	lis r3, lit_4327@ha /* 0x80A4090C@ha */
/* 80A2BB9C  C0 03 09 0C */	lfs f0, lit_4327@l(r3)  /* 0x80A4090C@l */
/* 80A2BBA0  D0 1F 16 F4 */	stfs f0, 0x16f4(r31)
/* 80A2BBA4  D0 1F 16 F8 */	stfs f0, 0x16f8(r31)
/* 80A2BBA8  D0 1F 16 FC */	stfs f0, 0x16fc(r31)
/* 80A2BBAC  38 00 00 01 */	li r0, 1
/* 80A2BBB0  98 1F 17 0D */	stb r0, 0x170d(r31)
/* 80A2BBB4  98 9F 17 0E */	stb r4, 0x170e(r31)
/* 80A2BBB8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80A2BBBC  D0 1F 15 C0 */	stfs f0, 0x15c0(r31)
/* 80A2BBC0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80A2BBC4  D0 1F 15 C4 */	stfs f0, 0x15c4(r31)
/* 80A2BBC8  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80A2BBCC  D0 1F 15 C8 */	stfs f0, 0x15c8(r31)
/* 80A2BBD0  88 1F 15 AC */	lbz r0, 0x15ac(r31)
/* 80A2BBD4  28 00 00 06 */	cmplwi r0, 6
/* 80A2BBD8  41 81 00 64 */	bgt lbl_80A2BC3C
/* 80A2BBDC  88 1F 15 AD */	lbz r0, 0x15ad(r31)
/* 80A2BBE0  28 00 00 00 */	cmplwi r0, 0
/* 80A2BBE4  41 82 00 0C */	beq lbl_80A2BBF0
/* 80A2BBE8  28 00 00 02 */	cmplwi r0, 2
/* 80A2BBEC  40 81 00 50 */	ble lbl_80A2BC3C
lbl_80A2BBF0:
/* 80A2BBF0  38 00 00 01 */	li r0, 1
/* 80A2BBF4  98 1F 0E 2C */	stb r0, 0xe2c(r31)
/* 80A2BBF8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A2BBFC  7C 07 07 74 */	extsb r7, r0
/* 80A2BC00  38 00 00 00 */	li r0, 0
/* 80A2BC04  90 01 00 08 */	stw r0, 8(r1)
/* 80A2BC08  38 60 02 4F */	li r3, 0x24f
/* 80A2BC0C  28 1F 00 00 */	cmplwi r31, 0
/* 80A2BC10  41 82 00 0C */	beq lbl_80A2BC1C
/* 80A2BC14  80 9F 00 04 */	lwz r4, 4(r31)
/* 80A2BC18  48 00 00 08 */	b lbl_80A2BC20
lbl_80A2BC1C:
/* 80A2BC1C  38 80 FF FF */	li r4, -1
lbl_80A2BC20:
/* 80A2BC20  38 A0 FF 02 */	li r5, -254
/* 80A2BC24  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80A2BC28  39 1F 04 DC */	addi r8, r31, 0x4dc
/* 80A2BC2C  39 20 00 00 */	li r9, 0
/* 80A2BC30  39 40 FF FF */	li r10, -1
/* 80A2BC34  4B 5E E2 BD */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80A2BC38  90 7F 04 A4 */	stw r3, 0x4a4(r31)
lbl_80A2BC3C:
/* 80A2BC3C  7F E3 FB 78 */	mr r3, r31
/* 80A2BC40  48 00 00 1D */	bl resetType__10daNpc_Kn_cFv
/* 80A2BC44  39 61 00 20 */	addi r11, r1, 0x20
/* 80A2BC48  4B 93 65 DD */	bl _restgpr_28
/* 80A2BC4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A2BC50  7C 08 03 A6 */	mtlr r0
/* 80A2BC54  38 21 00 20 */	addi r1, r1, 0x20
/* 80A2BC58  4E 80 00 20 */	blr 

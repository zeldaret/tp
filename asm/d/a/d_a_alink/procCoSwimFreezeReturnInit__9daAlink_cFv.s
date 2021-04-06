lbl_800DC278:
/* 800DC278  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800DC27C  7C 08 02 A6 */	mflr r0
/* 800DC280  90 01 00 34 */	stw r0, 0x34(r1)
/* 800DC284  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 800DC288  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 800DC28C  39 61 00 20 */	addi r11, r1, 0x20
/* 800DC290  48 28 5F 49 */	bl _savegpr_28
/* 800DC294  7C 7F 1B 78 */	mr r31, r3
/* 800DC298  3C 60 80 39 */	lis r3, lit_3757@ha /* 0x8038D658@ha */
/* 800DC29C  3B C3 D6 58 */	addi r30, r3, lit_3757@l /* 0x8038D658@l */
/* 800DC2A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800DC2A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800DC2A8  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 800DC2AC  7F E4 FB 78 */	mr r4, r31
/* 800DC2B0  38 A0 00 00 */	li r5, 0
/* 800DC2B4  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 800DC2B8  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 800DC2BC  4B F6 6E B1 */	bl compulsory__14dEvt_control_cFPvPCcUs
/* 800DC2C0  2C 03 00 00 */	cmpwi r3, 0
/* 800DC2C4  40 82 00 0C */	bne lbl_800DC2D0
/* 800DC2C8  38 60 00 00 */	li r3, 0
/* 800DC2CC  48 00 01 88 */	b lbl_800DC454
lbl_800DC2D0:
/* 800DC2D0  38 00 00 05 */	li r0, 5
/* 800DC2D4  B0 1F 06 04 */	sth r0, 0x604(r31)
/* 800DC2D8  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800DC2DC  54 1D 03 5A */	rlwinm r29, r0, 0, 0xd, 0xd
/* 800DC2E0  7F E3 FB 78 */	mr r3, r31
/* 800DC2E4  38 80 01 56 */	li r4, 0x156
/* 800DC2E8  4B FE 6A BD */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800DC2EC  2C 03 00 00 */	cmpwi r3, 0
/* 800DC2F0  40 82 00 0C */	bne lbl_800DC2FC
/* 800DC2F4  38 60 00 01 */	li r3, 1
/* 800DC2F8  48 00 01 5C */	b lbl_800DC454
lbl_800DC2FC:
/* 800DC2FC  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800DC300  60 00 01 00 */	ori r0, r0, 0x100
/* 800DC304  90 1F 05 70 */	stw r0, 0x570(r31)
/* 800DC308  80 7F 20 60 */	lwz r3, 0x2060(r31)
/* 800DC30C  83 83 00 1C */	lwz r28, 0x1c(r3)
/* 800DC310  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800DC314  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800DC318  41 82 00 4C */	beq lbl_800DC364
/* 800DC31C  7F E3 FB 78 */	mr r3, r31
/* 800DC320  38 80 00 37 */	li r4, 0x37
/* 800DC324  38 BE 1B E4 */	addi r5, r30, 0x1be4
/* 800DC328  C0 25 00 5C */	lfs f1, 0x5c(r5)
/* 800DC32C  C0 42 93 30 */	lfs f2, lit_7625(r2)
/* 800DC330  48 04 D3 A9 */	bl setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
/* 800DC334  38 00 00 03 */	li r0, 3
/* 800DC338  B0 1F 1F D8 */	sth r0, 0x1fd8(r31)
/* 800DC33C  38 00 00 00 */	li r0, 0
/* 800DC340  98 1F 1F D4 */	stb r0, 0x1fd4(r31)
/* 800DC344  7F E3 FB 78 */	mr r3, r31
/* 800DC348  38 80 00 90 */	li r4, 0x90
/* 800DC34C  4B FD 35 55 */	bl setFaceBasicTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 800DC350  38 00 00 01 */	li r0, 1
/* 800DC354  98 1F 2F 9B */	stb r0, 0x2f9b(r31)
/* 800DC358  38 7E 22 5C */	addi r3, r30, 0x225c
/* 800DC35C  C3 E3 00 48 */	lfs f31, 0x48(r3)
/* 800DC360  48 00 00 48 */	b lbl_800DC3A8
lbl_800DC364:
/* 800DC364  7F E3 FB 78 */	mr r3, r31
/* 800DC368  38 80 00 CE */	li r4, 0xce
/* 800DC36C  38 BE 0B F4 */	addi r5, r30, 0xbf4
/* 800DC370  C0 25 00 60 */	lfs f1, 0x60(r5)
/* 800DC374  C0 42 92 C0 */	lfs f2, lit_6108(r2)
/* 800DC378  38 A0 00 05 */	li r5, 5
/* 800DC37C  C0 62 93 30 */	lfs f3, lit_7625(r2)
/* 800DC380  4B FD 0C 8D */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 800DC384  7F E3 FB 78 */	mr r3, r31
/* 800DC388  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010053@ha */
/* 800DC38C  38 84 00 53 */	addi r4, r4, 0x0053 /* 0x00010053@l */
/* 800DC390  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800DC394  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800DC398  7D 89 03 A6 */	mtctr r12
/* 800DC39C  4E 80 04 21 */	bctrl 
/* 800DC3A0  38 7E 16 D4 */	addi r3, r30, 0x16d4
/* 800DC3A4  C3 E3 00 60 */	lfs f31, 0x60(r3)
lbl_800DC3A8:
/* 800DC3A8  7F E3 FB 78 */	mr r3, r31
/* 800DC3AC  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002004C@ha */
/* 800DC3B0  38 84 00 4C */	addi r4, r4, 0x004C /* 0x0002004C@l */
/* 800DC3B4  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800DC3B8  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 800DC3BC  7D 89 03 A6 */	mtctr r12
/* 800DC3C0  4E 80 04 21 */	bctrl 
/* 800DC3C4  28 1D 00 00 */	cmplwi r29, 0
/* 800DC3C8  40 82 00 18 */	bne lbl_800DC3E0
/* 800DC3CC  C0 1C 00 18 */	lfs f0, 0x18(r28)
/* 800DC3D0  EC 00 F8 28 */	fsubs f0, f0, f31
/* 800DC3D4  D0 1C 00 18 */	stfs f0, 0x18(r28)
/* 800DC3D8  C0 1F 33 B4 */	lfs f0, 0x33b4(r31)
/* 800DC3DC  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
lbl_800DC3E0:
/* 800DC3E0  38 00 00 00 */	li r0, 0
/* 800DC3E4  B0 1F 30 80 */	sth r0, 0x3080(r31)
/* 800DC3E8  B0 1F 05 6C */	sth r0, 0x56c(r31)
/* 800DC3EC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800DC3F0  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800DC3F4  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800DC3F8  64 00 40 00 */	oris r0, r0, 0x4000
/* 800DC3FC  90 1F 05 74 */	stw r0, 0x574(r31)
/* 800DC400  38 00 00 01 */	li r0, 1
/* 800DC404  90 1F 31 94 */	stw r0, 0x3194(r31)
/* 800DC408  28 1F 00 00 */	cmplwi r31, 0
/* 800DC40C  41 82 00 0C */	beq lbl_800DC418
/* 800DC410  83 9F 00 04 */	lwz r28, 4(r31)
/* 800DC414  48 00 00 08 */	b lbl_800DC41C
lbl_800DC418:
/* 800DC418  3B 80 FF FF */	li r28, -1
lbl_800DC41C:
/* 800DC41C  48 0A 52 25 */	bl dCam_getBody__Fv
/* 800DC420  38 80 00 09 */	li r4, 9
/* 800DC424  7F 85 E3 78 */	mr r5, r28
/* 800DC428  3C C0 80 39 */	lis r6, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800DC42C  38 C6 20 94 */	addi r6, r6, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800DC430  38 C6 00 43 */	addi r6, r6, 0x43
/* 800DC434  38 E0 00 01 */	li r7, 1
/* 800DC438  39 1F 31 94 */	addi r8, r31, 0x3194
/* 800DC43C  39 20 00 00 */	li r9, 0
/* 800DC440  4C C6 31 82 */	crclr 6
/* 800DC444  4B FA C6 39 */	bl StartEventCamera__9dCamera_cFiie
/* 800DC448  38 00 00 2D */	li r0, 0x2d
/* 800DC44C  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800DC450  38 60 00 01 */	li r3, 1
lbl_800DC454:
/* 800DC454  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 800DC458  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 800DC45C  39 61 00 20 */	addi r11, r1, 0x20
/* 800DC460  48 28 5D C5 */	bl _restgpr_28
/* 800DC464  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800DC468  7C 08 03 A6 */	mtlr r0
/* 800DC46C  38 21 00 30 */	addi r1, r1, 0x30
/* 800DC470  4E 80 00 20 */	blr 

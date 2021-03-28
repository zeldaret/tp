lbl_8011A214:
/* 8011A214  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8011A218  7C 08 02 A6 */	mflr r0
/* 8011A21C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8011A220  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8011A224  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 8011A228  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011A22C  93 C1 00 08 */	stw r30, 8(r1)
/* 8011A230  7C 7F 1B 78 */	mr r31, r3
/* 8011A234  38 80 01 46 */	li r4, 0x146
/* 8011A238  4B FA 8B 6D */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8011A23C  2C 03 00 00 */	cmpwi r3, 0
/* 8011A240  40 82 00 0C */	bne lbl_8011A24C
/* 8011A244  38 60 00 01 */	li r3, 1
/* 8011A248  48 00 01 C4 */	b lbl_8011A40C
lbl_8011A24C:
/* 8011A24C  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 8011A250  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8011A254  41 82 00 48 */	beq lbl_8011A29C
/* 8011A258  7F E3 FB 78 */	mr r3, r31
/* 8011A25C  38 80 00 0F */	li r4, 0xf
/* 8011A260  48 00 F4 19 */	bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
/* 8011A264  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 8011A268  2C 00 00 01 */	cmpwi r0, 1
/* 8011A26C  41 82 00 0C */	beq lbl_8011A278
/* 8011A270  38 00 00 15 */	li r0, 0x15
/* 8011A274  B0 1F 1F D8 */	sth r0, 0x1fd8(r31)
lbl_8011A278:
/* 8011A278  C3 E2 93 04 */	lfs f31, lit_6896(r2)
/* 8011A27C  3C 60 80 42 */	lis r3, l_wolfBaseAnime@ha
/* 8011A280  C4 03 56 1C */	lfsu f0, l_wolfBaseAnime@l(r3)
/* 8011A284  D0 1F 35 88 */	stfs f0, 0x3588(r31)
/* 8011A288  C0 03 00 04 */	lfs f0, 4(r3)
/* 8011A28C  D0 1F 35 8C */	stfs f0, 0x358c(r31)
/* 8011A290  C0 03 00 08 */	lfs f0, 8(r3)
/* 8011A294  D0 1F 35 90 */	stfs f0, 0x3590(r31)
/* 8011A298  48 00 00 70 */	b lbl_8011A308
lbl_8011A29C:
/* 8011A29C  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 8011A2A0  2C 00 00 02 */	cmpwi r0, 2
/* 8011A2A4  40 82 00 24 */	bne lbl_8011A2C8
/* 8011A2A8  3B C0 00 D1 */	li r30, 0xd1
/* 8011A2AC  C3 E2 96 5C */	lfs f31, lit_37322(r2)
/* 8011A2B0  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8011A2B4  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8011A2B8  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000012@ha */
/* 8011A2BC  38 84 00 12 */	addi r4, r4, 0x0012 /* 0x01000012@l */
/* 8011A2C0  48 19 51 DD */	bl subBgmStart__8Z2SeqMgrFUl
/* 8011A2C4  48 00 00 1C */	b lbl_8011A2E0
lbl_8011A2C8:
/* 8011A2C8  C3 E2 96 60 */	lfs f31, lit_37323(r2)
/* 8011A2CC  2C 00 00 01 */	cmpwi r0, 1
/* 8011A2D0  40 82 00 0C */	bne lbl_8011A2DC
/* 8011A2D4  3B C0 00 D0 */	li r30, 0xd0
/* 8011A2D8  48 00 00 08 */	b lbl_8011A2E0
lbl_8011A2DC:
/* 8011A2DC  3B C0 00 CF */	li r30, 0xcf
lbl_8011A2E0:
/* 8011A2E0  7F E3 FB 78 */	mr r3, r31
/* 8011A2E4  7F C4 F3 78 */	mr r4, r30
/* 8011A2E8  4B F9 2C 99 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 8011A2EC  3C 60 80 42 */	lis r3, l_waitBaseAnime@ha
/* 8011A2F0  C4 03 55 14 */	lfsu f0, l_waitBaseAnime@l(r3)
/* 8011A2F4  D0 1F 35 88 */	stfs f0, 0x3588(r31)
/* 8011A2F8  C0 03 00 04 */	lfs f0, 4(r3)
/* 8011A2FC  D0 1F 35 8C */	stfs f0, 0x358c(r31)
/* 8011A300  C0 03 00 08 */	lfs f0, 8(r3)
/* 8011A304  D0 1F 35 90 */	stfs f0, 0x3590(r31)
lbl_8011A308:
/* 8011A308  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8011A30C  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8011A310  7F E3 FB 78 */	mr r3, r31
/* 8011A314  4B F0 18 61 */	bl fopAcM_getEventPartner__FPC10fopAc_ac_c
/* 8011A318  28 03 00 00 */	cmplwi r3, 0
/* 8011A31C  41 82 00 68 */	beq lbl_8011A384
/* 8011A320  A8 83 04 E6 */	lha r4, 0x4e6(r3)
/* 8011A324  3C 84 00 01 */	addis r4, r4, 1
/* 8011A328  38 04 80 00 */	addi r0, r4, -32768
/* 8011A32C  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 8011A330  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8011A334  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8011A338  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8011A33C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8011A340  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha
/* 8011A344  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l
/* 8011A348  7C 04 04 2E */	lfsx f0, r4, r0
/* 8011A34C  C0 23 04 D0 */	lfs f1, 0x4d0(r3)
/* 8011A350  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8011A354  EC 01 00 28 */	fsubs f0, f1, f0
/* 8011A358  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 8011A35C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8011A360  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8011A364  7C 84 02 14 */	add r4, r4, r0
/* 8011A368  C0 04 00 04 */	lfs f0, 4(r4)
/* 8011A36C  C0 23 04 D8 */	lfs f1, 0x4d8(r3)
/* 8011A370  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8011A374  EC 01 00 28 */	fsubs f0, f1, f0
/* 8011A378  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 8011A37C  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8011A380  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
lbl_8011A384:
/* 8011A384  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 8011A388  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8011A38C  40 82 00 50 */	bne lbl_8011A3DC
/* 8011A390  7F E3 FB 78 */	mr r3, r31
/* 8011A394  38 80 00 00 */	li r4, 0
/* 8011A398  38 A0 00 00 */	li r5, 0
/* 8011A39C  4B FA 6F 41 */	bl deleteEquipItem__9daAlink_cFii
/* 8011A3A0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8011A3A4  4B EF 29 C1 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8011A3A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8011A3AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8011A3B0  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8011A3B4  4B EF 20 81 */	bl mDoMtx_YrotM__FPA4_fs
/* 8011A3B8  C0 22 93 B4 */	lfs f1, lit_10040(r2)
/* 8011A3BC  C0 42 95 30 */	lfs f2, lit_21736(r2)
/* 8011A3C0  C0 62 92 E0 */	lfs f3, lit_6845(r2)
/* 8011A3C4  4B EF 29 D9 */	bl transM__14mDoMtx_stack_cFfff
/* 8011A3C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8011A3CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8011A3D0  80 9F 06 FC */	lwz r4, 0x6fc(r31)
/* 8011A3D4  38 84 00 24 */	addi r4, r4, 0x24
/* 8011A3D8  48 22 C0 D9 */	bl PSMTXCopy
lbl_8011A3DC:
/* 8011A3DC  38 00 00 00 */	li r0, 0
/* 8011A3E0  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8011A3E4  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 8011A3E8  60 00 00 04 */	ori r0, r0, 4
/* 8011A3EC  90 1F 19 9C */	stw r0, 0x199c(r31)
/* 8011A3F0  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 8011A3F4  54 00 04 E2 */	rlwinm r0, r0, 0, 0x13, 0x11
/* 8011A3F8  90 1F 19 9C */	stw r0, 0x199c(r31)
/* 8011A3FC  80 1F 05 8C */	lwz r0, 0x58c(r31)
/* 8011A400  60 00 00 08 */	ori r0, r0, 8
/* 8011A404  90 1F 05 8C */	stw r0, 0x58c(r31)
/* 8011A408  38 60 00 01 */	li r3, 1
lbl_8011A40C:
/* 8011A40C  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 8011A410  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8011A414  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011A418  83 C1 00 08 */	lwz r30, 8(r1)
/* 8011A41C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8011A420  7C 08 03 A6 */	mtlr r0
/* 8011A424  38 21 00 20 */	addi r1, r1, 0x20
/* 8011A428  4E 80 00 20 */	blr 

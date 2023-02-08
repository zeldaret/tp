lbl_8013D930:
/* 8013D930  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013D934  7C 08 02 A6 */	mflr r0
/* 8013D938  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013D93C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013D940  7C 7F 1B 78 */	mr r31, r3
/* 8013D944  38 80 01 2F */	li r4, 0x12f
/* 8013D948  4B F8 46 25 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8013D94C  38 00 00 12 */	li r0, 0x12
/* 8013D950  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 8013D954  80 7F 27 F4 */	lwz r3, 0x27f4(r31)
/* 8013D958  88 03 04 9A */	lbz r0, 0x49a(r3)
/* 8013D95C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8013D960  41 82 00 14 */	beq lbl_8013D974
/* 8013D964  38 00 00 01 */	li r0, 1
/* 8013D968  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8013D96C  38 A0 00 18 */	li r5, 0x18
/* 8013D970  48 00 00 10 */	b lbl_8013D980
lbl_8013D974:
/* 8013D974  38 00 00 00 */	li r0, 0
/* 8013D978  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8013D97C  A8 BF 30 0E */	lha r5, 0x300e(r31)
lbl_8013D980:
/* 8013D980  7F E3 FB 78 */	mr r3, r31
/* 8013D984  38 80 00 08 */	li r4, 8
/* 8013D988  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 8013D98C  C0 42 92 C0 */	lfs f2, lit_6108(r2)
/* 8013D990  C0 62 92 C4 */	lfs f3, lit_6109(r2)
/* 8013D994  4B FE BD 71 */	bl setSingleAnimeWolf__9daAlink_cFQ29daAlink_c12daAlink_WANMffsf
/* 8013D998  38 00 00 00 */	li r0, 0
/* 8013D99C  98 1F 1F D4 */	stb r0, 0x1fd4(r31)
/* 8013D9A0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8013D9A4  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8013D9A8  7F E3 FB 78 */	mr r3, r31
/* 8013D9AC  80 9F 27 F4 */	lwz r4, 0x27f4(r31)
/* 8013D9B0  4B ED CD 61 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8013D9B4  B0 7F 04 E6 */	sth r3, 0x4e6(r31)
/* 8013D9B8  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8013D9BC  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8013D9C0  3C 60 80 42 */	lis r3, l_wolfBaseAnime@ha /* 0x8042561C@ha */
/* 8013D9C4  C4 03 56 1C */	lfsu f0, l_wolfBaseAnime@l(r3)  /* 0x8042561C@l */
/* 8013D9C8  D0 1F 35 88 */	stfs f0, 0x3588(r31)
/* 8013D9CC  C0 03 00 04 */	lfs f0, 4(r3)
/* 8013D9D0  D0 1F 35 8C */	stfs f0, 0x358c(r31)
/* 8013D9D4  C0 03 00 08 */	lfs f0, 8(r3)
/* 8013D9D8  D0 1F 35 90 */	stfs f0, 0x3590(r31)
/* 8013D9DC  38 00 00 0C */	li r0, 0xc
/* 8013D9E0  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 8013D9E4  C0 03 00 00 */	lfs f0, 0(r3)
/* 8013D9E8  D0 1F 34 D4 */	stfs f0, 0x34d4(r31)
/* 8013D9EC  C0 03 00 04 */	lfs f0, 4(r3)
/* 8013D9F0  D0 1F 34 D8 */	stfs f0, 0x34d8(r31)
/* 8013D9F4  C0 03 00 08 */	lfs f0, 8(r3)
/* 8013D9F8  D0 1F 34 DC */	stfs f0, 0x34dc(r31)
/* 8013D9FC  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8013DA00  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8013DA04  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8013DA08  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8013DA0C  7C 03 04 2E */	lfsx f0, r3, r0
/* 8013DA10  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8013DA14  C0 42 93 00 */	lfs f2, lit_6895(r2)
/* 8013DA18  EC 02 00 32 */	fmuls f0, f2, f0
/* 8013DA1C  EC 01 00 2A */	fadds f0, f1, f0
/* 8013DA20  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 8013DA24  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8013DA28  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8013DA2C  7C 63 02 14 */	add r3, r3, r0
/* 8013DA30  C0 03 00 04 */	lfs f0, 4(r3)
/* 8013DA34  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 8013DA38  EC 02 00 32 */	fmuls f0, f2, f0
/* 8013DA3C  EC 01 00 2A */	fadds f0, f1, f0
/* 8013DA40  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 8013DA44  80 7F 27 F4 */	lwz r3, 0x27f4(r31)
/* 8013DA48  88 03 04 9A */	lbz r0, 0x49a(r3)
/* 8013DA4C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8013DA50  41 82 00 10 */	beq lbl_8013DA60
/* 8013DA54  38 00 00 01 */	li r0, 1
/* 8013DA58  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8013DA5C  48 00 00 0C */	b lbl_8013DA68
lbl_8013DA60:
/* 8013DA60  38 00 00 00 */	li r0, 0
/* 8013DA64  B0 1F 30 0C */	sth r0, 0x300c(r31)
lbl_8013DA68:
/* 8013DA68  38 7F 28 0C */	addi r3, r31, 0x280c
/* 8013DA6C  80 9F 27 F4 */	lwz r4, 0x27f4(r31)
/* 8013DA70  48 02 12 49 */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 8013DA74  38 60 00 01 */	li r3, 1
/* 8013DA78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013DA7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013DA80  7C 08 03 A6 */	mtlr r0
/* 8013DA84  38 21 00 10 */	addi r1, r1, 0x10
/* 8013DA88  4E 80 00 20 */	blr 

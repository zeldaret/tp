lbl_800FF818:
/* 800FF818  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FF81C  7C 08 02 A6 */	mflr r0
/* 800FF820  90 01 00 14 */	stw r0, 0x14(r1)
/* 800FF824  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800FF828  93 C1 00 08 */	stw r30, 8(r1)
/* 800FF82C  7C 7E 1B 78 */	mr r30, r3
/* 800FF830  7C 9F 23 78 */	mr r31, r4
/* 800FF834  80 03 05 7C */	lwz r0, 0x57c(r3)
/* 800FF838  64 00 00 40 */	oris r0, r0, 0x40
/* 800FF83C  90 03 05 7C */	stw r0, 0x57c(r3)
/* 800FF840  38 80 00 81 */	li r4, 0x81
/* 800FF844  4B FC 27 29 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800FF848  7F C3 F3 78 */	mr r3, r30
/* 800FF84C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800FF850  C0 5E 05 34 */	lfs f2, 0x534(r30)
/* 800FF854  38 80 00 00 */	li r4, 0
/* 800FF858  4B FB BF 19 */	bl setSpecialGravity__9daAlink_cFffi
/* 800FF85C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800FF860  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 800FF864  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 800FF868  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 800FF86C  7F C3 F3 78 */	mr r3, r30
/* 800FF870  38 80 00 01 */	li r4, 1
/* 800FF874  38 A0 00 00 */	li r5, 0
/* 800FF878  4B FC 1A 65 */	bl deleteEquipItem__9daAlink_cFii
/* 800FF87C  48 16 7F F1 */	bl cM_rnd__Fv
/* 800FF880  C0 02 93 A8 */	lfs f0, lit_9652(r2)
/* 800FF884  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FF888  40 80 00 34 */	bge lbl_800FF8BC
/* 800FF88C  7F C3 F3 78 */	mr r3, r30
/* 800FF890  38 80 00 A1 */	li r4, 0xa1
/* 800FF894  3C A0 80 39 */	lis r5, m__20daAlinkHIO_ladder_c0@ha
/* 800FF898  38 A5 EB 8C */	addi r5, r5, m__20daAlinkHIO_ladder_c0@l
/* 800FF89C  4B FA D8 59 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800FF8A0  3C 60 80 39 */	lis r3, m__20daAlinkHIO_ladder_c0@ha
/* 800FF8A4  38 63 EB 8C */	addi r3, r3, m__20daAlinkHIO_ladder_c0@l
/* 800FF8A8  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 800FF8AC  D0 1E 34 78 */	stfs f0, 0x3478(r30)
/* 800FF8B0  38 00 00 00 */	li r0, 0
/* 800FF8B4  B0 1E 30 08 */	sth r0, 0x3008(r30)
/* 800FF8B8  48 00 00 50 */	b lbl_800FF908
lbl_800FF8BC:
/* 800FF8BC  7F C3 F3 78 */	mr r3, r30
/* 800FF8C0  38 80 00 A7 */	li r4, 0xa7
/* 800FF8C4  3C A0 80 39 */	lis r5, m__20daAlinkHIO_ladder_c0@ha
/* 800FF8C8  38 A5 EB 8C */	addi r5, r5, m__20daAlinkHIO_ladder_c0@l
/* 800FF8CC  38 A5 00 14 */	addi r5, r5, 0x14
/* 800FF8D0  4B FA D8 25 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800FF8D4  3C 60 80 39 */	lis r3, m__20daAlinkHIO_ladder_c0@ha
/* 800FF8D8  38 63 EB 8C */	addi r3, r3, m__20daAlinkHIO_ladder_c0@l
/* 800FF8DC  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 800FF8E0  D0 1E 34 78 */	stfs f0, 0x3478(r30)
/* 800FF8E4  38 00 00 01 */	li r0, 1
/* 800FF8E8  B0 1E 30 08 */	sth r0, 0x3008(r30)
/* 800FF8EC  7F C3 F3 78 */	mr r3, r30
/* 800FF8F0  3C 80 00 01 */	lis r4, 0x0001 /* 0x0001000B@ha */
/* 800FF8F4  38 84 00 0B */	addi r4, r4, 0x000B /* 0x0001000B@l */
/* 800FF8F8  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800FF8FC  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800FF900  7D 89 03 A6 */	mtctr r12
/* 800FF904  4E 80 04 21 */	bctrl 
lbl_800FF908:
/* 800FF908  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800FF90C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800FF910  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800FF914  60 00 00 08 */	ori r0, r0, 8
/* 800FF918  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 800FF91C  7F C3 F3 78 */	mr r3, r30
/* 800FF920  38 80 00 00 */	li r4, 0
/* 800FF924  38 A0 80 00 */	li r5, -32768
/* 800FF928  38 C0 00 00 */	li r6, 0
/* 800FF92C  4B FA E2 4D */	bl setOldRootQuaternion__9daAlink_cFsss
/* 800FF930  3C 7F 00 01 */	addis r3, r31, 1
/* 800FF934  38 03 80 00 */	addi r0, r3, -32768
/* 800FF938  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 800FF93C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800FF940  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 800FF944  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 800FF948  C0 02 95 98 */	lfs f0, lit_25684(r2)
/* 800FF94C  EC 01 00 28 */	fsubs f0, f1, f0
/* 800FF950  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 800FF954  3C 60 80 42 */	lis r3, l_waitBaseAnime@ha
/* 800FF958  C4 03 55 14 */	lfsu f0, l_waitBaseAnime@l(r3)
/* 800FF95C  D0 1E 35 88 */	stfs f0, 0x3588(r30)
/* 800FF960  C0 03 00 04 */	lfs f0, 4(r3)
/* 800FF964  D0 1E 35 8C */	stfs f0, 0x358c(r30)
/* 800FF968  C0 03 00 08 */	lfs f0, 8(r3)
/* 800FF96C  D0 1E 35 90 */	stfs f0, 0x3590(r30)
/* 800FF970  C0 0D 81 18 */	lfs f0, l_ladderAnmBaseTransY(r13)
/* 800FF974  D0 1E 33 B0 */	stfs f0, 0x33b0(r30)
/* 800FF978  38 00 00 01 */	li r0, 1
/* 800FF97C  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 800FF980  38 00 00 00 */	li r0, 0
/* 800FF984  B0 1E 30 10 */	sth r0, 0x3010(r30)
/* 800FF988  B0 1E 30 0E */	sth r0, 0x300e(r30)
/* 800FF98C  38 60 00 01 */	li r3, 1
/* 800FF990  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800FF994  83 C1 00 08 */	lwz r30, 8(r1)
/* 800FF998  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FF99C  7C 08 03 A6 */	mtlr r0
/* 800FF9A0  38 21 00 10 */	addi r1, r1, 0x10
/* 800FF9A4  4E 80 00 20 */	blr 

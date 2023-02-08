lbl_8013FA14:
/* 8013FA14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013FA18  7C 08 02 A6 */	mflr r0
/* 8013FA1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013FA20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013FA24  7C 7F 1B 78 */	mr r31, r3
/* 8013FA28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8013FA2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8013FA30  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8013FA34  7F E4 FB 78 */	mr r4, r31
/* 8013FA38  38 A0 00 00 */	li r5, 0
/* 8013FA3C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8013FA40  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8013FA44  4B F0 37 29 */	bl compulsory__14dEvt_control_cFPvPCcUs
/* 8013FA48  2C 03 00 00 */	cmpwi r3, 0
/* 8013FA4C  40 82 00 0C */	bne lbl_8013FA58
/* 8013FA50  38 60 00 00 */	li r3, 0
/* 8013FA54  48 00 01 BC */	b lbl_8013FC10
lbl_8013FA58:
/* 8013FA58  38 00 00 05 */	li r0, 5
/* 8013FA5C  B0 1F 06 04 */	sth r0, 0x604(r31)
/* 8013FA60  7F E3 FB 78 */	mr r3, r31
/* 8013FA64  38 80 01 39 */	li r4, 0x139
/* 8013FA68  4B F8 25 05 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8013FA6C  7F E3 FB 78 */	mr r3, r31
/* 8013FA70  38 80 00 72 */	li r4, 0x72
/* 8013FA74  3C A0 80 39 */	lis r5, m__21daAlinkHIO_wlChain_c0@ha /* 0x8038F858@ha */
/* 8013FA78  38 A5 F8 58 */	addi r5, r5, m__21daAlinkHIO_wlChain_c0@l /* 0x8038F858@l */
/* 8013FA7C  C0 25 00 54 */	lfs f1, 0x54(r5)
/* 8013FA80  C0 45 00 58 */	lfs f2, 0x58(r5)
/* 8013FA84  4B FE 9C 55 */	bl setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
/* 8013FA88  7F E3 FB 78 */	mr r3, r31
/* 8013FA8C  3C 80 00 01 */	lis r4, 0x0001 /* 0x0001003E@ha */
/* 8013FA90  38 84 00 3E */	addi r4, r4, 0x003E /* 0x0001003E@l */
/* 8013FA94  4B F7 F6 25 */	bl voiceStartLevel__9daAlink_cFUl
/* 8013FA98  7F E3 FB 78 */	mr r3, r31
/* 8013FA9C  80 9F 27 F4 */	lwz r4, 0x27f4(r31)
/* 8013FAA0  4B ED AC 71 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8013FAA4  B0 7F 04 E6 */	sth r3, 0x4e6(r31)
/* 8013FAA8  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8013FAAC  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8013FAB0  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8013FAB4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8013FAB8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8013FABC  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8013FAC0  7C 04 04 2E */	lfsx f0, r4, r0
/* 8013FAC4  80 7F 27 F4 */	lwz r3, 0x27f4(r31)
/* 8013FAC8  C0 23 04 D0 */	lfs f1, 0x4d0(r3)
/* 8013FACC  C0 42 93 50 */	lfs f2, lit_8247(r2)
/* 8013FAD0  EC 02 00 32 */	fmuls f0, f2, f0
/* 8013FAD4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8013FAD8  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 8013FADC  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8013FAE0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8013FAE4  7C 64 02 14 */	add r3, r4, r0
/* 8013FAE8  C0 03 00 04 */	lfs f0, 4(r3)
/* 8013FAEC  80 7F 27 F4 */	lwz r3, 0x27f4(r31)
/* 8013FAF0  C0 23 04 D8 */	lfs f1, 0x4d8(r3)
/* 8013FAF4  EC 02 00 32 */	fmuls f0, f2, f0
/* 8013FAF8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8013FAFC  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 8013FB00  38 7F 28 0C */	addi r3, r31, 0x280c
/* 8013FB04  80 9F 27 F4 */	lwz r4, 0x27f4(r31)
/* 8013FB08  48 01 F1 B1 */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 8013FB0C  38 00 00 01 */	li r0, 1
/* 8013FB10  80 7F 27 F4 */	lwz r3, 0x27f4(r31)
/* 8013FB14  98 03 05 88 */	stb r0, 0x588(r3)
/* 8013FB18  38 80 00 00 */	li r4, 0
/* 8013FB1C  80 7F 27 F4 */	lwz r3, 0x27f4(r31)
/* 8013FB20  98 83 05 87 */	stb r4, 0x587(r3)
/* 8013FB24  80 7F 27 F4 */	lwz r3, 0x27f4(r31)
/* 8013FB28  88 03 05 89 */	lbz r0, 0x589(r3)
/* 8013FB2C  B0 1F 30 12 */	sth r0, 0x3012(r31)
/* 8013FB30  80 7F 27 F4 */	lwz r3, 0x27f4(r31)
/* 8013FB34  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 8013FB38  60 00 08 00 */	ori r0, r0, 0x800
/* 8013FB3C  90 03 04 9C */	stw r0, 0x49c(r3)
/* 8013FB40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8013FB44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8013FB48  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 8013FB4C  64 00 04 00 */	oris r0, r0, 0x400
/* 8013FB50  90 03 5F 1C */	stw r0, 0x5f1c(r3)
/* 8013FB54  B0 9F 30 0C */	sth r4, 0x300c(r31)
/* 8013FB58  88 03 00 16 */	lbz r0, 0x16(r3)
/* 8013FB5C  28 00 00 FF */	cmplwi r0, 0xff
/* 8013FB60  40 82 00 10 */	bne lbl_8013FB70
/* 8013FB64  38 00 0B BC */	li r0, 0xbbc
/* 8013FB68  90 1F 31 98 */	stw r0, 0x3198(r31)
/* 8013FB6C  48 00 00 0C */	b lbl_8013FB78
lbl_8013FB70:
/* 8013FB70  38 00 0B BB */	li r0, 0xbbb
/* 8013FB74  90 1F 31 98 */	stw r0, 0x3198(r31)
lbl_8013FB78:
/* 8013FB78  38 00 FF FF */	li r0, -1
/* 8013FB7C  90 1F 31 9C */	stw r0, 0x319c(r31)
/* 8013FB80  A8 1F 30 12 */	lha r0, 0x3012(r31)
/* 8013FB84  2C 00 00 B0 */	cmpwi r0, 0xb0
/* 8013FB88  40 82 00 10 */	bne lbl_8013FB98
/* 8013FB8C  38 00 22 20 */	li r0, 0x2220
/* 8013FB90  90 1F 31 9C */	stw r0, 0x319c(r31)
/* 8013FB94  48 00 00 14 */	b lbl_8013FBA8
lbl_8013FB98:
/* 8013FB98  2C 00 00 B4 */	cmpwi r0, 0xb4
/* 8013FB9C  40 82 00 0C */	bne lbl_8013FBA8
/* 8013FBA0  38 00 22 40 */	li r0, 0x2240
/* 8013FBA4  90 1F 31 9C */	stw r0, 0x319c(r31)
lbl_8013FBA8:
/* 8013FBA8  80 1F 31 9C */	lwz r0, 0x319c(r31)
/* 8013FBAC  2C 00 00 00 */	cmpwi r0, 0
/* 8013FBB0  41 80 00 20 */	blt lbl_8013FBD0
/* 8013FBB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8013FBB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8013FBBC  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8013FBC0  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 8013FBC4  4B EF 4D F9 */	bl isEventBit__11dSv_event_cCFUs
/* 8013FBC8  2C 03 00 00 */	cmpwi r3, 0
/* 8013FBCC  41 82 00 0C */	beq lbl_8013FBD8
lbl_8013FBD0:
/* 8013FBD0  38 00 FF FF */	li r0, -1
/* 8013FBD4  90 1F 31 9C */	stw r0, 0x319c(r31)
lbl_8013FBD8:
/* 8013FBD8  38 00 00 00 */	li r0, 0
/* 8013FBDC  B0 1F 30 10 */	sth r0, 0x3010(r31)
/* 8013FBE0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8013FBE4  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8013FBE8  3C 60 80 42 */	lis r3, l_wolfBaseAnime@ha /* 0x8042561C@ha */
/* 8013FBEC  C4 03 56 1C */	lfsu f0, l_wolfBaseAnime@l(r3)  /* 0x8042561C@l */
/* 8013FBF0  D0 1F 35 88 */	stfs f0, 0x3588(r31)
/* 8013FBF4  C0 03 00 04 */	lfs f0, 4(r3)
/* 8013FBF8  D0 1F 35 8C */	stfs f0, 0x358c(r31)
/* 8013FBFC  C0 03 00 08 */	lfs f0, 8(r3)
/* 8013FC00  D0 1F 35 90 */	stfs f0, 0x3590(r31)
/* 8013FC04  7F E3 FB 78 */	mr r3, r31
/* 8013FC08  4B FE 80 4D */	bl onWolfEyeUp__9daAlink_cFv
/* 8013FC0C  38 60 00 01 */	li r3, 1
lbl_8013FC10:
/* 8013FC10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013FC14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013FC18  7C 08 03 A6 */	mtlr r0
/* 8013FC1C  38 21 00 10 */	addi r1, r1, 0x10
/* 8013FC20  4E 80 00 20 */	blr 

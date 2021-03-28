lbl_800E8428:
/* 800E8428  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E842C  7C 08 02 A6 */	mflr r0
/* 800E8430  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E8434  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E8438  93 C1 00 08 */	stw r30, 8(r1)
/* 800E843C  7C 7F 1B 78 */	mr r31, r3
/* 800E8440  7C 9E 23 78 */	mr r30, r4
/* 800E8444  A0 03 2F DC */	lhz r0, 0x2fdc(r3)
/* 800E8448  28 00 00 FF */	cmplwi r0, 0xff
/* 800E844C  41 82 00 14 */	beq lbl_800E8460
/* 800E8450  38 80 01 43 */	li r4, 0x143
/* 800E8454  38 A0 00 00 */	li r5, 0
/* 800E8458  4B FD A9 85 */	bl procPreActionUnequipInit__9daAlink_cFiP10fopAc_ac_c
/* 800E845C  48 00 01 08 */	b lbl_800E8564
lbl_800E8460:
/* 800E8460  38 80 01 43 */	li r4, 0x143
/* 800E8464  4B FD 9B 09 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800E8468  38 00 00 00 */	li r0, 0
/* 800E846C  B0 1F 30 10 */	sth r0, 0x3010(r31)
/* 800E8470  93 DF 31 98 */	stw r30, 0x3198(r31)
/* 800E8474  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E8478  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800E847C  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800E8480  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800E8484  41 82 00 24 */	beq lbl_800E84A8
/* 800E8488  7F E3 FB 78 */	mr r3, r31
/* 800E848C  38 80 00 07 */	li r4, 7
/* 800E8490  3C A0 80 39 */	lis r5, m__20daAlinkHIO_wlPush_c0@ha
/* 800E8494  C4 25 F1 24 */	lfsu f1, m__20daAlinkHIO_wlPush_c0@l(r5)
/* 800E8498  C0 45 00 04 */	lfs f2, 4(r5)
/* 800E849C  48 04 12 3D */	bl setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
/* 800E84A0  C0 42 93 00 */	lfs f2, lit_6895(r2)
/* 800E84A4  48 00 00 44 */	b lbl_800E84E8
lbl_800E84A8:
/* 800E84A8  7F E3 FB 78 */	mr r3, r31
/* 800E84AC  4B FD 0E 95 */	bl checkEquipAnime__9daAlink_cCFv
/* 800E84B0  2C 03 00 00 */	cmpwi r3, 0
/* 800E84B4  41 82 00 14 */	beq lbl_800E84C8
/* 800E84B8  7F E3 FB 78 */	mr r3, r31
/* 800E84BC  38 80 00 02 */	li r4, 2
/* 800E84C0  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800E84C4  4B FC 52 61 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
lbl_800E84C8:
/* 800E84C8  7F E3 FB 78 */	mr r3, r31
/* 800E84CC  38 80 00 36 */	li r4, 0x36
/* 800E84D0  3C A0 80 39 */	lis r5, m__22daAlinkHIO_pushpull_c0@ha
/* 800E84D4  38 A5 E2 10 */	addi r5, r5, m__22daAlinkHIO_pushpull_c0@l
/* 800E84D8  C0 25 00 10 */	lfs f1, 0x10(r5)
/* 800E84DC  C0 45 00 14 */	lfs f2, 0x14(r5)
/* 800E84E0  4B FC 4B 01 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 800E84E4  C0 42 93 00 */	lfs f2, lit_6895(r2)
lbl_800E84E8:
/* 800E84E8  2C 1E 00 00 */	cmpwi r30, 0
/* 800E84EC  41 82 00 60 */	beq lbl_800E854C
/* 800E84F0  A8 7F 30 6E */	lha r3, 0x306e(r31)
/* 800E84F4  3C 63 00 01 */	addis r3, r3, 1
/* 800E84F8  38 03 80 00 */	addi r0, r3, -32768
/* 800E84FC  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800E8500  A8 1F 30 6E */	lha r0, 0x306e(r31)
/* 800E8504  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800E8508  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 800E850C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 800E8510  7C 03 04 2E */	lfsx f0, r3, r0
/* 800E8514  C0 3F 34 EC */	lfs f1, 0x34ec(r31)
/* 800E8518  EC 02 00 32 */	fmuls f0, f2, f0
/* 800E851C  EC 01 00 2A */	fadds f0, f1, f0
/* 800E8520  D0 1F 37 C8 */	stfs f0, 0x37c8(r31)
/* 800E8524  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800E8528  D0 1F 37 CC */	stfs f0, 0x37cc(r31)
/* 800E852C  A8 1F 30 6E */	lha r0, 0x306e(r31)
/* 800E8530  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800E8534  7C 63 02 14 */	add r3, r3, r0
/* 800E8538  C0 03 00 04 */	lfs f0, 4(r3)
/* 800E853C  C0 3F 34 F4 */	lfs f1, 0x34f4(r31)
/* 800E8540  EC 02 00 32 */	fmuls f0, f2, f0
/* 800E8544  EC 01 00 2A */	fadds f0, f1, f0
/* 800E8548  D0 1F 37 D0 */	stfs f0, 0x37d0(r31)
lbl_800E854C:
/* 800E854C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800E8550  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800E8554  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800E8558  64 00 04 00 */	oris r0, r0, 0x400
/* 800E855C  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 800E8560  38 60 00 01 */	li r3, 1
lbl_800E8564:
/* 800E8564  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E8568  83 C1 00 08 */	lwz r30, 8(r1)
/* 800E856C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E8570  7C 08 03 A6 */	mtlr r0
/* 800E8574  38 21 00 10 */	addi r1, r1, 0x10
/* 800E8578  4E 80 00 20 */	blr 

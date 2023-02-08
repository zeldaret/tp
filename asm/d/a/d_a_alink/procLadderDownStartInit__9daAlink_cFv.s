lbl_800FD9CC:
/* 800FD9CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FD9D0  7C 08 02 A6 */	mflr r0
/* 800FD9D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800FD9D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800FD9DC  7C 7F 1B 78 */	mr r31, r3
/* 800FD9E0  80 03 05 7C */	lwz r0, 0x57c(r3)
/* 800FD9E4  64 00 00 40 */	oris r0, r0, 0x40
/* 800FD9E8  90 03 05 7C */	stw r0, 0x57c(r3)
/* 800FD9EC  A0 03 2F DC */	lhz r0, 0x2fdc(r3)
/* 800FD9F0  28 00 00 FF */	cmplwi r0, 0xff
/* 800FD9F4  41 82 00 14 */	beq lbl_800FDA08
/* 800FD9F8  38 80 00 69 */	li r4, 0x69
/* 800FD9FC  38 A0 00 00 */	li r5, 0
/* 800FDA00  4B FC 53 DD */	bl procPreActionUnequipInit__9daAlink_cFiP10fopAc_ac_c
/* 800FDA04  48 00 01 5C */	b lbl_800FDB60
lbl_800FDA08:
/* 800FDA08  38 80 00 69 */	li r4, 0x69
/* 800FDA0C  4B FC 45 61 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800FDA10  7F E3 FB 78 */	mr r3, r31
/* 800FDA14  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800FDA18  C0 5F 05 34 */	lfs f2, 0x534(r31)
/* 800FDA1C  38 80 00 00 */	li r4, 0
/* 800FDA20  4B FB DD 51 */	bl setSpecialGravity__9daAlink_cFffi
/* 800FDA24  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800FDA28  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 800FDA2C  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800FDA30  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 800FDA34  A8 7F 30 6E */	lha r3, 0x306e(r31)
/* 800FDA38  3C 63 00 01 */	addis r3, r3, 1
/* 800FDA3C  38 03 80 00 */	addi r0, r3, -32768
/* 800FDA40  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 800FDA44  A8 1F 30 6E */	lha r0, 0x306e(r31)
/* 800FDA48  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800FDA4C  7F E3 FB 78 */	mr r3, r31
/* 800FDA50  38 80 00 9C */	li r4, 0x9c
/* 800FDA54  3C A0 80 39 */	lis r5, m__20daAlinkHIO_ladder_c0@ha /* 0x8038EB8C@ha */
/* 800FDA58  38 A5 EB 8C */	addi r5, r5, m__20daAlinkHIO_ladder_c0@l /* 0x8038EB8C@l */
/* 800FDA5C  C0 25 00 38 */	lfs f1, 0x38(r5)
/* 800FDA60  C0 45 00 3C */	lfs f2, 0x3c(r5)
/* 800FDA64  4B FA F5 7D */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 800FDA68  38 00 00 10 */	li r0, 0x10
/* 800FDA6C  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 800FDA70  3C 60 80 42 */	lis r3, l_waitBaseAnime@ha /* 0x80425514@ha */
/* 800FDA74  C4 03 55 14 */	lfsu f0, l_waitBaseAnime@l(r3)  /* 0x80425514@l */
/* 800FDA78  D0 1F 35 88 */	stfs f0, 0x3588(r31)
/* 800FDA7C  C0 03 00 04 */	lfs f0, 4(r3)
/* 800FDA80  D0 1F 35 8C */	stfs f0, 0x358c(r31)
/* 800FDA84  C0 03 00 08 */	lfs f0, 8(r3)
/* 800FDA88  D0 1F 35 90 */	stfs f0, 0x3590(r31)
/* 800FDA8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800FDA90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800FDA94  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800FDA98  64 00 02 00 */	oris r0, r0, 0x200
/* 800FDA9C  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 800FDAA0  7F E3 FB 78 */	mr r3, r31
/* 800FDAA4  38 80 00 00 */	li r4, 0
/* 800FDAA8  38 A0 80 00 */	li r5, -32768
/* 800FDAAC  38 C0 00 00 */	li r6, 0
/* 800FDAB0  4B FB 00 C9 */	bl setOldRootQuaternion__9daAlink_cFsss
/* 800FDAB4  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 800FDAB8  3C 63 00 01 */	addis r3, r3, 1
/* 800FDABC  38 03 80 00 */	addi r0, r3, -32768
/* 800FDAC0  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 800FDAC4  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800FDAC8  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800FDACC  A8 1F 30 6E */	lha r0, 0x306e(r31)
/* 800FDAD0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800FDAD4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800FDAD8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800FDADC  7C 83 04 2E */	lfsx f4, r3, r0
/* 800FDAE0  7C 63 02 14 */	add r3, r3, r0
/* 800FDAE4  C0 A3 00 04 */	lfs f5, 4(r3)
/* 800FDAE8  C0 3F 34 EC */	lfs f1, 0x34ec(r31)
/* 800FDAEC  C0 42 93 D4 */	lfs f2, lit_11442(r2)
/* 800FDAF0  EC 02 01 32 */	fmuls f0, f2, f4
/* 800FDAF4  EC 01 00 2A */	fadds f0, f1, f0
/* 800FDAF8  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 800FDAFC  C0 1F 34 F0 */	lfs f0, 0x34f0(r31)
/* 800FDB00  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 800FDB04  C0 3F 34 F4 */	lfs f1, 0x34f4(r31)
/* 800FDB08  EC 02 01 72 */	fmuls f0, f2, f5
/* 800FDB0C  EC 01 00 2A */	fadds f0, f1, f0
/* 800FDB10  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 800FDB14  C0 3F 34 EC */	lfs f1, 0x34ec(r31)
/* 800FDB18  C0 62 93 98 */	lfs f3, lit_8786(r2)
/* 800FDB1C  EC 03 01 32 */	fmuls f0, f3, f4
/* 800FDB20  EC 01 00 28 */	fsubs f0, f1, f0
/* 800FDB24  D0 1F 37 C8 */	stfs f0, 0x37c8(r31)
/* 800FDB28  C0 42 94 28 */	lfs f2, lit_14621(r2)
/* 800FDB2C  C0 3F 34 F0 */	lfs f1, 0x34f0(r31)
/* 800FDB30  C0 02 95 8C */	lfs f0, lit_24852(r2)
/* 800FDB34  EC 01 00 28 */	fsubs f0, f1, f0
/* 800FDB38  EC 02 00 2A */	fadds f0, f2, f0
/* 800FDB3C  D0 1F 37 CC */	stfs f0, 0x37cc(r31)
/* 800FDB40  C0 3F 34 F4 */	lfs f1, 0x34f4(r31)
/* 800FDB44  EC 03 01 72 */	fmuls f0, f3, f5
/* 800FDB48  EC 01 00 28 */	fsubs f0, f1, f0
/* 800FDB4C  D0 1F 37 D0 */	stfs f0, 0x37d0(r31)
/* 800FDB50  38 00 00 00 */	li r0, 0
/* 800FDB54  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800FDB58  B0 1F 30 10 */	sth r0, 0x3010(r31)
/* 800FDB5C  38 60 00 01 */	li r3, 1
lbl_800FDB60:
/* 800FDB60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800FDB64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FDB68  7C 08 03 A6 */	mtlr r0
/* 800FDB6C  38 21 00 10 */	addi r1, r1, 0x10
/* 800FDB70  4E 80 00 20 */	blr 

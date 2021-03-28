lbl_800FD648:
/* 800FD648  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FD64C  7C 08 02 A6 */	mflr r0
/* 800FD650  90 01 00 14 */	stw r0, 0x14(r1)
/* 800FD654  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800FD658  7C 7F 1B 78 */	mr r31, r3
/* 800FD65C  A0 03 2F DC */	lhz r0, 0x2fdc(r3)
/* 800FD660  28 00 00 FF */	cmplwi r0, 0xff
/* 800FD664  41 82 00 14 */	beq lbl_800FD678
/* 800FD668  38 80 00 67 */	li r4, 0x67
/* 800FD66C  38 A0 00 00 */	li r5, 0
/* 800FD670  4B FC 57 6D */	bl procPreActionUnequipInit__9daAlink_cFiP10fopAc_ac_c
/* 800FD674  48 00 01 28 */	b lbl_800FD79C
lbl_800FD678:
/* 800FD678  38 80 00 67 */	li r4, 0x67
/* 800FD67C  4B FC 48 F1 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800FD680  7F E3 FB 78 */	mr r3, r31
/* 800FD684  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800FD688  C0 5F 05 34 */	lfs f2, 0x534(r31)
/* 800FD68C  38 80 00 00 */	li r4, 0
/* 800FD690  4B FB E0 E1 */	bl setSpecialGravity__9daAlink_cFffi
/* 800FD694  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800FD698  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 800FD69C  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800FD6A0  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 800FD6A4  7F E3 FB 78 */	mr r3, r31
/* 800FD6A8  38 80 00 99 */	li r4, 0x99
/* 800FD6AC  3C A0 80 39 */	lis r5, m__20daAlinkHIO_ladder_c0@ha
/* 800FD6B0  38 A5 EB 8C */	addi r5, r5, m__20daAlinkHIO_ladder_c0@l
/* 800FD6B4  C0 25 00 28 */	lfs f1, 0x28(r5)
/* 800FD6B8  C0 45 00 2C */	lfs f2, 0x2c(r5)
/* 800FD6BC  4B FA F9 25 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 800FD6C0  38 00 00 10 */	li r0, 0x10
/* 800FD6C4  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 800FD6C8  3C 60 80 42 */	lis r3, l_waitBaseAnime@ha
/* 800FD6CC  C4 03 55 14 */	lfsu f0, l_waitBaseAnime@l(r3)
/* 800FD6D0  D0 1F 35 88 */	stfs f0, 0x3588(r31)
/* 800FD6D4  C0 03 00 04 */	lfs f0, 4(r3)
/* 800FD6D8  D0 1F 35 8C */	stfs f0, 0x358c(r31)
/* 800FD6DC  C0 03 00 08 */	lfs f0, 8(r3)
/* 800FD6E0  D0 1F 35 90 */	stfs f0, 0x3590(r31)
/* 800FD6E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800FD6E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800FD6EC  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800FD6F0  64 00 02 00 */	oris r0, r0, 0x200
/* 800FD6F4  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 800FD6F8  A8 1F 30 6E */	lha r0, 0x306e(r31)
/* 800FD6FC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800FD700  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 800FD704  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 800FD708  7C 63 04 2E */	lfsx f3, r3, r0
/* 800FD70C  7C 63 02 14 */	add r3, r3, r0
/* 800FD710  C0 83 00 04 */	lfs f4, 4(r3)
/* 800FD714  C0 3F 34 EC */	lfs f1, 0x34ec(r31)
/* 800FD718  C0 42 93 D4 */	lfs f2, lit_11442(r2)
/* 800FD71C  EC 02 00 F2 */	fmuls f0, f2, f3
/* 800FD720  EC 01 00 2A */	fadds f0, f1, f0
/* 800FD724  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 800FD728  C0 1F 34 F0 */	lfs f0, 0x34f0(r31)
/* 800FD72C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 800FD730  C0 3F 34 F4 */	lfs f1, 0x34f4(r31)
/* 800FD734  EC 02 01 32 */	fmuls f0, f2, f4
/* 800FD738  EC 01 00 2A */	fadds f0, f1, f0
/* 800FD73C  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 800FD740  A8 7F 30 6E */	lha r3, 0x306e(r31)
/* 800FD744  3C 63 00 01 */	addis r3, r3, 1
/* 800FD748  38 03 80 00 */	addi r0, r3, -32768
/* 800FD74C  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 800FD750  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800FD754  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800FD758  C0 3F 34 EC */	lfs f1, 0x34ec(r31)
/* 800FD75C  C0 42 93 94 */	lfs f2, lit_8785(r2)
/* 800FD760  EC 02 00 F2 */	fmuls f0, f2, f3
/* 800FD764  EC 01 00 2A */	fadds f0, f1, f0
/* 800FD768  D0 1F 37 C8 */	stfs f0, 0x37c8(r31)
/* 800FD76C  C0 22 94 28 */	lfs f1, lit_14621(r2)
/* 800FD770  C0 1F 34 F0 */	lfs f0, 0x34f0(r31)
/* 800FD774  EC 01 00 2A */	fadds f0, f1, f0
/* 800FD778  D0 1F 37 CC */	stfs f0, 0x37cc(r31)
/* 800FD77C  C0 3F 34 F4 */	lfs f1, 0x34f4(r31)
/* 800FD780  EC 02 01 32 */	fmuls f0, f2, f4
/* 800FD784  EC 01 00 2A */	fadds f0, f1, f0
/* 800FD788  D0 1F 37 D0 */	stfs f0, 0x37d0(r31)
/* 800FD78C  38 00 00 01 */	li r0, 1
/* 800FD790  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800FD794  B0 1F 30 10 */	sth r0, 0x3010(r31)
/* 800FD798  38 60 00 01 */	li r3, 1
lbl_800FD79C:
/* 800FD79C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800FD7A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FD7A4  7C 08 03 A6 */	mtlr r0
/* 800FD7A8  38 21 00 10 */	addi r1, r1, 0x10
/* 800FD7AC  4E 80 00 20 */	blr 

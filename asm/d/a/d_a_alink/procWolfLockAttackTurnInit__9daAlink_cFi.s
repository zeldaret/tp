lbl_8013C630:
/* 8013C630  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013C634  7C 08 02 A6 */	mflr r0
/* 8013C638  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013C63C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013C640  93 C1 00 08 */	stw r30, 8(r1)
/* 8013C644  7C 7E 1B 78 */	mr r30, r3
/* 8013C648  7C 9F 23 78 */	mr r31, r4
/* 8013C64C  38 80 01 26 */	li r4, 0x126
/* 8013C650  4B F8 59 1D */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8013C654  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8013C658  80 9E 07 C8 */	lwz r4, 0x7c8(r30)
/* 8013C65C  38 84 05 38 */	addi r4, r4, 0x538
/* 8013C660  48 13 45 A5 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8013C664  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8013C668  7C 00 18 50 */	subf r0, r0, r3
/* 8013C66C  7C 03 07 34 */	extsh r3, r0
/* 8013C670  48 22 8A 61 */	bl abs
/* 8013C674  2C 03 40 00 */	cmpwi r3, 0x4000
/* 8013C678  40 81 00 50 */	ble lbl_8013C6C8
/* 8013C67C  7F C3 F3 78 */	mr r3, r30
/* 8013C680  38 80 00 54 */	li r4, 0x54
/* 8013C684  3C A0 80 39 */	lis r5, m__22daAlinkHIO_wlAtLock_c0@ha
/* 8013C688  38 A5 F6 F4 */	addi r5, r5, m__22daAlinkHIO_wlAtLock_c0@l
/* 8013C68C  38 A5 00 14 */	addi r5, r5, 0x14
/* 8013C690  4B FE D1 B9 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 8013C694  38 00 00 01 */	li r0, 1
/* 8013C698  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 8013C69C  3C 60 80 42 */	lis r3, l_wolfBaseAnime@ha
/* 8013C6A0  38 63 56 1C */	addi r3, r3, l_wolfBaseAnime@l
/* 8013C6A4  C0 03 00 08 */	lfs f0, 8(r3)
/* 8013C6A8  FC 40 00 50 */	fneg f2, f0
/* 8013C6AC  C0 23 00 04 */	lfs f1, 4(r3)
/* 8013C6B0  C0 03 00 00 */	lfs f0, 0(r3)
/* 8013C6B4  FC 00 00 50 */	fneg f0, f0
/* 8013C6B8  D0 1E 35 88 */	stfs f0, 0x3588(r30)
/* 8013C6BC  D0 3E 35 8C */	stfs f1, 0x358c(r30)
/* 8013C6C0  D0 5E 35 90 */	stfs f2, 0x3590(r30)
/* 8013C6C4  48 00 00 3C */	b lbl_8013C700
lbl_8013C6C8:
/* 8013C6C8  7F C3 F3 78 */	mr r3, r30
/* 8013C6CC  38 80 00 53 */	li r4, 0x53
/* 8013C6D0  3C A0 80 39 */	lis r5, m__22daAlinkHIO_wlAtLock_c0@ha
/* 8013C6D4  38 A5 F6 F4 */	addi r5, r5, m__22daAlinkHIO_wlAtLock_c0@l
/* 8013C6D8  4B FE D1 71 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 8013C6DC  38 00 00 00 */	li r0, 0
/* 8013C6E0  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 8013C6E4  3C 60 80 42 */	lis r3, l_wolfBaseAnime@ha
/* 8013C6E8  C4 03 56 1C */	lfsu f0, l_wolfBaseAnime@l(r3)
/* 8013C6EC  D0 1E 35 88 */	stfs f0, 0x3588(r30)
/* 8013C6F0  C0 03 00 04 */	lfs f0, 4(r3)
/* 8013C6F4  D0 1E 35 8C */	stfs f0, 0x358c(r30)
/* 8013C6F8  C0 03 00 08 */	lfs f0, 8(r3)
/* 8013C6FC  D0 1E 35 90 */	stfs f0, 0x3590(r30)
lbl_8013C700:
/* 8013C700  80 7E 07 C8 */	lwz r3, 0x7c8(r30)
/* 8013C704  28 03 00 00 */	cmplwi r3, 0
/* 8013C708  41 82 00 1C */	beq lbl_8013C724
/* 8013C70C  A8 03 00 08 */	lha r0, 8(r3)
/* 8013C710  2C 00 01 F6 */	cmpwi r0, 0x1f6
/* 8013C714  40 82 00 10 */	bne lbl_8013C724
/* 8013C718  38 00 00 01 */	li r0, 1
/* 8013C71C  B0 1E 30 12 */	sth r0, 0x3012(r30)
/* 8013C720  48 00 00 0C */	b lbl_8013C72C
lbl_8013C724:
/* 8013C724  38 00 00 00 */	li r0, 0
/* 8013C728  B0 1E 30 12 */	sth r0, 0x3012(r30)
lbl_8013C72C:
/* 8013C72C  38 00 00 04 */	li r0, 4
/* 8013C730  98 1E 2F 9D */	stb r0, 0x2f9d(r30)
/* 8013C734  7F C3 F3 78 */	mr r3, r30
/* 8013C738  38 80 00 01 */	li r4, 1
/* 8013C73C  4B FE 4A 85 */	bl setFootEffectProcType__9daAlink_cFi
/* 8013C740  C0 3E 33 98 */	lfs f1, 0x3398(r30)
/* 8013C744  C0 02 92 98 */	lfs f0, lit_5943(r2)
/* 8013C748  EC 01 00 32 */	fmuls f0, f1, f0
/* 8013C74C  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 8013C750  38 00 00 04 */	li r0, 4
/* 8013C754  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 8013C758  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8013C75C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8013C760  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 8013C764  64 00 01 00 */	oris r0, r0, 0x100
/* 8013C768  90 03 5F 1C */	stw r0, 0x5f1c(r3)
/* 8013C76C  80 1E 05 80 */	lwz r0, 0x580(r30)
/* 8013C770  54 00 01 46 */	rlwinm r0, r0, 0, 5, 3
/* 8013C774  90 1E 05 80 */	stw r0, 0x580(r30)
/* 8013C778  88 7E 05 69 */	lbz r3, 0x569(r30)
/* 8013C77C  38 03 00 01 */	addi r0, r3, 1
/* 8013C780  98 1E 05 69 */	stb r0, 0x569(r30)
/* 8013C784  B3 FE 30 0A */	sth r31, 0x300a(r30)
/* 8013C788  38 60 00 01 */	li r3, 1
/* 8013C78C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013C790  83 C1 00 08 */	lwz r30, 8(r1)
/* 8013C794  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013C798  7C 08 03 A6 */	mtlr r0
/* 8013C79C  38 21 00 10 */	addi r1, r1, 0x10
/* 8013C7A0  4E 80 00 20 */	blr 

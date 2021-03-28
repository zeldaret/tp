lbl_8013E6C0:
/* 8013E6C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013E6C4  7C 08 02 A6 */	mflr r0
/* 8013E6C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013E6CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013E6D0  93 C1 00 08 */	stw r30, 8(r1)
/* 8013E6D4  7C 7E 1B 78 */	mr r30, r3
/* 8013E6D8  83 E3 28 10 */	lwz r31, 0x2810(r3)
/* 8013E6DC  38 80 01 31 */	li r4, 0x131
/* 8013E6E0  4B F8 38 8D */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8013E6E4  7F C3 F3 78 */	mr r3, r30
/* 8013E6E8  38 80 00 57 */	li r4, 0x57
/* 8013E6EC  3C A0 80 39 */	lis r5, m__21daAlinkHIO_wlChain_c0@ha
/* 8013E6F0  38 A5 F8 58 */	addi r5, r5, m__21daAlinkHIO_wlChain_c0@l
/* 8013E6F4  4B FE B1 55 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 8013E6F8  38 00 00 00 */	li r0, 0
/* 8013E6FC  B0 1E 30 0A */	sth r0, 0x300a(r30)
/* 8013E700  38 00 00 01 */	li r0, 1
/* 8013E704  98 1F 07 74 */	stb r0, 0x774(r31)
/* 8013E708  38 00 00 50 */	li r0, 0x50
/* 8013E70C  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 8013E710  C0 1F 05 88 */	lfs f0, 0x588(r31)
/* 8013E714  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 8013E718  C0 1F 05 8C */	lfs f0, 0x58c(r31)
/* 8013E71C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8013E720  C0 1F 05 90 */	lfs f0, 0x590(r31)
/* 8013E724  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 8013E728  7F C3 F3 78 */	mr r3, r30
/* 8013E72C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8013E730  C0 5E 05 34 */	lfs f2, 0x534(r30)
/* 8013E734  38 80 00 00 */	li r4, 0
/* 8013E738  4B F7 D0 39 */	bl setSpecialGravity__9daAlink_cFffi
/* 8013E73C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8013E740  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8013E744  38 00 00 00 */	li r0, 0
/* 8013E748  B0 1E 30 10 */	sth r0, 0x3010(r30)
/* 8013E74C  3C 60 80 39 */	lis r3, m__21daAlinkHIO_wlChain_c0@ha
/* 8013E750  38 63 F8 58 */	addi r3, r3, m__21daAlinkHIO_wlChain_c0@l
/* 8013E754  A8 63 00 3C */	lha r3, 0x3c(r3)
/* 8013E758  38 03 00 14 */	addi r0, r3, 0x14
/* 8013E75C  B0 1E 30 08 */	sth r0, 0x3008(r30)
/* 8013E760  C0 1F 07 A0 */	lfs f0, 0x7a0(r31)
/* 8013E764  D0 1E 34 78 */	stfs f0, 0x3478(r30)
/* 8013E768  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8013E76C  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8013E770  C0 3E 33 98 */	lfs f1, 0x3398(r30)
/* 8013E774  C0 02 92 E0 */	lfs f0, lit_6845(r2)
/* 8013E778  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013E77C  40 81 00 10 */	ble lbl_8013E78C
/* 8013E780  C0 02 94 64 */	lfs f0, lit_14954(r2)
/* 8013E784  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 8013E788  48 00 00 10 */	b lbl_8013E798
lbl_8013E78C:
/* 8013E78C  C0 02 92 98 */	lfs f0, lit_5943(r2)
/* 8013E790  EC 01 00 32 */	fmuls f0, f1, f0
/* 8013E794  D0 1E 33 98 */	stfs f0, 0x3398(r30)
lbl_8013E798:
/* 8013E798  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8013E79C  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 8013E7A0  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8013E7A4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8013E7A8  7C 64 02 14 */	add r3, r4, r0
/* 8013E7AC  C0 03 00 04 */	lfs f0, 4(r3)
/* 8013E7B0  C0 5E 33 98 */	lfs f2, 0x3398(r30)
/* 8013E7B4  EC 22 00 32 */	fmuls f1, f2, f0
/* 8013E7B8  7C 04 04 2E */	lfsx f0, r4, r0
/* 8013E7BC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8013E7C0  D0 1E 37 C8 */	stfs f0, 0x37c8(r30)
/* 8013E7C4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8013E7C8  D0 1E 37 CC */	stfs f0, 0x37cc(r30)
/* 8013E7CC  D0 3E 37 D0 */	stfs f1, 0x37d0(r30)
/* 8013E7D0  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 8013E7D4  7F C3 F3 78 */	mr r3, r30
/* 8013E7D8  3C 80 00 01 */	lis r4, 0x0001 /* 0x000100B8@ha */
/* 8013E7DC  38 84 00 B8 */	addi r4, r4, 0x00B8 /* 0x000100B8@l */
/* 8013E7E0  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8013E7E4  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8013E7E8  7D 89 03 A6 */	mtctr r12
/* 8013E7EC  4E 80 04 21 */	bctrl 
/* 8013E7F0  38 60 00 01 */	li r3, 1
/* 8013E7F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013E7F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8013E7FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013E800  7C 08 03 A6 */	mtlr r0
/* 8013E804  38 21 00 10 */	addi r1, r1, 0x10
/* 8013E808  4E 80 00 20 */	blr 

lbl_8012F6EC:
/* 8012F6EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012F6F0  7C 08 02 A6 */	mflr r0
/* 8012F6F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012F6F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8012F6FC  93 C1 00 08 */	stw r30, 8(r1)
/* 8012F700  7C 7F 1B 78 */	mr r31, r3
/* 8012F704  3B DF 1F D0 */	addi r30, r31, 0x1fd0
/* 8012F708  38 00 00 05 */	li r0, 5
/* 8012F70C  98 03 2F 99 */	stb r0, 0x2f99(r3)
/* 8012F710  38 7F 33 98 */	addi r3, r31, 0x3398
/* 8012F714  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8012F718  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 8012F71C  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 8012F720  41 82 00 14 */	beq lbl_8012F734
/* 8012F724  3C 80 80 39 */	lis r4, m__20daAlinkHIO_wlMove_c0@ha
/* 8012F728  38 84 EE 28 */	addi r4, r4, m__20daAlinkHIO_wlMove_c0@l
/* 8012F72C  C0 44 00 A8 */	lfs f2, 0xa8(r4)
/* 8012F730  48 00 00 10 */	b lbl_8012F740
lbl_8012F734:
/* 8012F734  3C 80 80 39 */	lis r4, m__23daAlinkHIO_wlMoveNoP_c0@ha
/* 8012F738  38 84 EF 28 */	addi r4, r4, m__23daAlinkHIO_wlMoveNoP_c0@l
/* 8012F73C  C0 44 00 40 */	lfs f2, 0x40(r4)
lbl_8012F740:
/* 8012F740  48 14 10 01 */	bl cLib_chaseF__FPfff
/* 8012F744  7F C3 F3 78 */	mr r3, r30
/* 8012F748  48 02 ED 85 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8012F74C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012F750  41 82 00 98 */	beq lbl_8012F7E8
/* 8012F754  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8012F758  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8012F75C  C0 3F 33 AC */	lfs f1, 0x33ac(r31)
/* 8012F760  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 8012F764  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012F768  40 81 00 14 */	ble lbl_8012F77C
/* 8012F76C  7F E3 FB 78 */	mr r3, r31
/* 8012F770  38 80 00 01 */	li r4, 1
/* 8012F774  48 00 00 CD */	bl procWolfSlipTurnInit__9daAlink_cFi
/* 8012F778  48 00 00 AC */	b lbl_8012F824
lbl_8012F77C:
/* 8012F77C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8012F780  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 8012F784  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8012F788  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8012F78C  7C 64 02 14 */	add r3, r4, r0
/* 8012F790  C0 03 00 04 */	lfs f0, 4(r3)
/* 8012F794  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8012F798  C0 42 92 E0 */	lfs f2, lit_6845(r2)
/* 8012F79C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8012F7A0  EC 01 00 2A */	fadds f0, f1, f0
/* 8012F7A4  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 8012F7A8  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8012F7AC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8012F7B0  7C 04 04 2E */	lfsx f0, r4, r0
/* 8012F7B4  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 8012F7B8  EC 02 00 32 */	fmuls f0, f2, f0
/* 8012F7BC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8012F7C0  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 8012F7C4  80 7F 20 60 */	lwz r3, 0x2060(r31)
/* 8012F7C8  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8012F7CC  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8012F7D0  EC 00 10 28 */	fsubs f0, f0, f2
/* 8012F7D4  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8012F7D8  7F E3 FB 78 */	mr r3, r31
/* 8012F7DC  38 80 00 00 */	li r4, 0
/* 8012F7E0  4B FF A3 65 */	bl checkNextActionWolf__9daAlink_cFi
/* 8012F7E4  48 00 00 40 */	b lbl_8012F824
lbl_8012F7E8:
/* 8012F7E8  C0 3F 33 98 */	lfs f1, 0x3398(r31)
/* 8012F7EC  C0 02 93 D8 */	lfs f0, lit_11470(r2)
/* 8012F7F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012F7F4  40 81 00 20 */	ble lbl_8012F814
/* 8012F7F8  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 8012F7FC  C0 02 93 3C */	lfs f0, lit_7808(r2)
/* 8012F800  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012F804  4C 41 13 82 */	cror 2, 1, 2
/* 8012F808  40 82 00 0C */	bne lbl_8012F814
/* 8012F80C  38 00 00 78 */	li r0, 0x78
/* 8012F810  98 1F 2F 9D */	stb r0, 0x2f9d(r31)
lbl_8012F814:
/* 8012F814  7F E3 FB 78 */	mr r3, r31
/* 8012F818  3C 80 00 03 */	lis r4, 0x0003 /* 0x00030018@ha */
/* 8012F81C  38 84 00 18 */	addi r4, r4, 0x0018 /* 0x00030018@l */
/* 8012F820  4B F8 F9 AD */	bl seStartMapInfoLevel__9daAlink_cFUl
lbl_8012F824:
/* 8012F824  38 60 00 01 */	li r3, 1
/* 8012F828  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8012F82C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8012F830  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012F834  7C 08 03 A6 */	mtlr r0
/* 8012F838  38 21 00 10 */	addi r1, r1, 0x10
/* 8012F83C  4E 80 00 20 */	blr 

lbl_800FE6E8:
/* 800FE6E8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800FE6EC  7C 08 02 A6 */	mflr r0
/* 800FE6F0  90 01 00 44 */	stw r0, 0x44(r1)
/* 800FE6F4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 800FE6F8  93 C1 00 38 */	stw r30, 0x38(r1)
/* 800FE6FC  7C 7E 1B 78 */	mr r30, r3
/* 800FE700  7C 9F 23 78 */	mr r31, r4
/* 800FE704  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 800FE708  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800FE70C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800FE710  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800FE714  7C C3 04 2E */	lfsx f6, r3, r0
/* 800FE718  7C 63 02 14 */	add r3, r3, r0
/* 800FE71C  C0 E3 00 04 */	lfs f7, 4(r3)
/* 800FE720  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 800FE724  C0 62 92 E0 */	lfs f3, lit_6845(r2)
/* 800FE728  EC 03 01 F2 */	fmuls f0, f3, f7
/* 800FE72C  EC A1 00 28 */	fsubs f5, f1, f0
/* 800FE730  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 800FE734  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 800FE738  C0 1E 05 98 */	lfs f0, 0x598(r30)
/* 800FE73C  EC 01 00 32 */	fmuls f0, f1, f0
/* 800FE740  EC 82 00 2A */	fadds f4, f2, f0
/* 800FE744  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 800FE748  EC 03 01 B2 */	fmuls f0, f3, f6
/* 800FE74C  EC 41 00 28 */	fsubs f2, f1, f0
/* 800FE750  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 800FE754  D0 81 00 24 */	stfs f4, 0x24(r1)
/* 800FE758  D0 A1 00 28 */	stfs f5, 0x28(r1)
/* 800FE75C  2C 1F 00 02 */	cmpwi r31, 2
/* 800FE760  40 82 00 24 */	bne lbl_800FE784
/* 800FE764  C0 22 93 D4 */	lfs f1, lit_11442(r2)
/* 800FE768  EC 01 01 F2 */	fmuls f0, f1, f7
/* 800FE76C  EC 02 00 2A */	fadds f0, f2, f0
/* 800FE770  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 800FE774  EC 01 01 B2 */	fmuls f0, f1, f6
/* 800FE778  EC 05 00 28 */	fsubs f0, f5, f0
/* 800FE77C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 800FE780  48 00 00 20 */	b lbl_800FE7A0
lbl_800FE784:
/* 800FE784  C0 22 93 D4 */	lfs f1, lit_11442(r2)
/* 800FE788  EC 01 01 F2 */	fmuls f0, f1, f7
/* 800FE78C  EC 02 00 28 */	fsubs f0, f2, f0
/* 800FE790  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 800FE794  EC 01 01 B2 */	fmuls f0, f1, f6
/* 800FE798  EC 05 00 2A */	fadds f0, f5, f0
/* 800FE79C  D0 01 00 28 */	stfs f0, 0x28(r1)
lbl_800FE7A0:
/* 800FE7A0  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 800FE7A4  C0 42 94 C4 */	lfs f2, lit_18176(r2)
/* 800FE7A8  EC 02 01 B2 */	fmuls f0, f2, f6
/* 800FE7AC  EC 01 00 2A */	fadds f0, f1, f0
/* 800FE7B0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800FE7B4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 800FE7B8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800FE7BC  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 800FE7C0  EC 02 01 F2 */	fmuls f0, f2, f7
/* 800FE7C4  EC 01 00 2A */	fadds f0, f1, f0
/* 800FE7C8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 800FE7CC  7F C3 F3 78 */	mr r3, r30
/* 800FE7D0  38 81 00 20 */	addi r4, r1, 0x20
/* 800FE7D4  38 A1 00 14 */	addi r5, r1, 0x14
/* 800FE7D8  4B FA 39 C1 */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800FE7DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FE7E0  41 82 00 18 */	beq lbl_800FE7F8
/* 800FE7E4  7F C3 F3 78 */	mr r3, r30
/* 800FE7E8  38 9E 1B 5C */	addi r4, r30, 0x1b5c
/* 800FE7EC  4B FF F8 6D */	bl checkClimbCode__9daAlink_cFR13cBgS_PolyInfo
/* 800FE7F0  2C 03 00 00 */	cmpwi r3, 0
/* 800FE7F4  40 82 00 0C */	bne lbl_800FE800
lbl_800FE7F8:
/* 800FE7F8  38 60 00 00 */	li r3, 0
/* 800FE7FC  48 00 00 54 */	b lbl_800FE850
lbl_800FE800:
/* 800FE800  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 800FE804  D0 01 00 08 */	stfs f0, 8(r1)
/* 800FE808  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 800FE80C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800FE810  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 800FE814  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800FE818  7F C3 F3 78 */	mr r3, r30
/* 800FE81C  7F E4 FB 78 */	mr r4, r31
/* 800FE820  48 00 06 A1 */	bl checkBgClimbMove__9daAlink_cFi
/* 800FE824  2C 03 00 00 */	cmpwi r3, 0
/* 800FE828  41 82 00 24 */	beq lbl_800FE84C
/* 800FE82C  C0 01 00 08 */	lfs f0, 8(r1)
/* 800FE830  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 800FE834  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 800FE838  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 800FE83C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800FE840  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 800FE844  38 60 00 00 */	li r3, 0
/* 800FE848  48 00 00 08 */	b lbl_800FE850
lbl_800FE84C:
/* 800FE84C  38 60 00 01 */	li r3, 1
lbl_800FE850:
/* 800FE850  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 800FE854  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 800FE858  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800FE85C  7C 08 03 A6 */	mtlr r0
/* 800FE860  38 21 00 40 */	addi r1, r1, 0x40
/* 800FE864  4E 80 00 20 */	blr 

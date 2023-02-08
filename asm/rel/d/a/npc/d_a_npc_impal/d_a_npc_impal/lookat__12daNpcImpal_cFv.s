lbl_80A0B76C:
/* 80A0B76C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80A0B770  7C 08 02 A6 */	mflr r0
/* 80A0B774  90 01 00 64 */	stw r0, 0x64(r1)
/* 80A0B778  39 61 00 60 */	addi r11, r1, 0x60
/* 80A0B77C  4B 95 6A 5D */	bl _savegpr_28
/* 80A0B780  7C 7C 1B 78 */	mr r28, r3
/* 80A0B784  3C 60 80 A1 */	lis r3, m__18daNpcImpal_Param_c@ha /* 0x80A0C270@ha */
/* 80A0B788  38 83 C2 70 */	addi r4, r3, m__18daNpcImpal_Param_c@l /* 0x80A0C270@l */
/* 80A0B78C  38 A0 00 00 */	li r5, 0
/* 80A0B790  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80A0B794  83 E3 00 04 */	lwz r31, 4(r3)
/* 80A0B798  3B C0 00 00 */	li r30, 0
/* 80A0B79C  38 64 00 00 */	addi r3, r4, 0
/* 80A0B7A0  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 80A0B7A4  C0 43 00 20 */	lfs f2, 0x20(r3)
/* 80A0B7A8  C0 63 00 2C */	lfs f3, 0x2c(r3)
/* 80A0B7AC  C0 83 00 28 */	lfs f4, 0x28(r3)
/* 80A0B7B0  C0 C3 00 34 */	lfs f6, 0x34(r3)
/* 80A0B7B4  C0 E3 00 30 */	lfs f7, 0x30(r3)
/* 80A0B7B8  C1 03 00 3C */	lfs f8, 0x3c(r3)
/* 80A0B7BC  C1 23 00 38 */	lfs f9, 0x38(r3)
/* 80A0B7C0  A8 7C 08 F8 */	lha r3, 0x8f8(r28)
/* 80A0B7C4  A8 1C 08 F2 */	lha r0, 0x8f2(r28)
/* 80A0B7C8  7C 03 00 50 */	subf r0, r3, r0
/* 80A0B7CC  7C 1D 07 34 */	extsh r29, r0
/* 80A0B7D0  C0 1C 08 54 */	lfs f0, 0x854(r28)
/* 80A0B7D4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A0B7D8  C0 1C 08 58 */	lfs f0, 0x858(r28)
/* 80A0B7DC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A0B7E0  C0 1C 08 5C */	lfs f0, 0x85c(r28)
/* 80A0B7E4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A0B7E8  C0 1C 08 60 */	lfs f0, 0x860(r28)
/* 80A0B7EC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A0B7F0  C0 1C 08 64 */	lfs f0, 0x864(r28)
/* 80A0B7F4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A0B7F8  C0 1C 08 68 */	lfs f0, 0x868(r28)
/* 80A0B7FC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80A0B800  C0 1C 08 6C */	lfs f0, 0x86c(r28)
/* 80A0B804  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80A0B808  C0 1C 08 70 */	lfs f0, 0x870(r28)
/* 80A0B80C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80A0B810  C0 1C 08 74 */	lfs f0, 0x874(r28)
/* 80A0B814  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80A0B818  80 64 01 F0 */	lwz r3, 0x1f0(r4)
/* 80A0B81C  80 04 01 F4 */	lwz r0, 0x1f4(r4)
/* 80A0B820  90 61 00 18 */	stw r3, 0x18(r1)
/* 80A0B824  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A0B828  80 04 01 F8 */	lwz r0, 0x1f8(r4)
/* 80A0B82C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80A0B830  38 1C 09 1A */	addi r0, r28, 0x91a
/* 80A0B834  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A0B838  38 1C 09 20 */	addi r0, r28, 0x920
/* 80A0B83C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A0B840  38 1C 09 26 */	addi r0, r28, 0x926
/* 80A0B844  90 01 00 20 */	stw r0, 0x20(r1)
/* 80A0B848  A8 1C 0D E4 */	lha r0, 0xde4(r28)
/* 80A0B84C  2C 00 00 01 */	cmpwi r0, 1
/* 80A0B850  41 82 00 18 */	beq lbl_80A0B868
/* 80A0B854  40 80 00 08 */	bge lbl_80A0B85C
/* 80A0B858  48 00 00 34 */	b lbl_80A0B88C
lbl_80A0B85C:
/* 80A0B85C  2C 00 00 04 */	cmpwi r0, 4
/* 80A0B860  40 80 00 2C */	bge lbl_80A0B88C
/* 80A0B864  48 00 00 0C */	b lbl_80A0B870
lbl_80A0B868:
/* 80A0B868  3B C0 00 01 */	li r30, 1
/* 80A0B86C  48 00 00 20 */	b lbl_80A0B88C
lbl_80A0B870:
/* 80A0B870  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A0B874  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A0B878  80 A3 5D AC */	lwz r5, 0x5dac(r3)
/* 80A0B87C  2C 00 00 03 */	cmpwi r0, 3
/* 80A0B880  40 82 00 0C */	bne lbl_80A0B88C
/* 80A0B884  C1 04 02 4C */	lfs f8, 0x24c(r4)
/* 80A0B888  C1 24 02 50 */	lfs f9, 0x250(r4)
lbl_80A0B88C:
/* 80A0B88C  28 05 00 00 */	cmplwi r5, 0
/* 80A0B890  41 82 00 4C */	beq lbl_80A0B8DC
/* 80A0B894  C0 05 05 50 */	lfs f0, 0x550(r5)
/* 80A0B898  D0 1C 08 78 */	stfs f0, 0x878(r28)
/* 80A0B89C  C0 05 05 54 */	lfs f0, 0x554(r5)
/* 80A0B8A0  D0 1C 08 7C */	stfs f0, 0x87c(r28)
/* 80A0B8A4  C0 05 05 58 */	lfs f0, 0x558(r5)
/* 80A0B8A8  D0 1C 08 80 */	stfs f0, 0x880(r28)
/* 80A0B8AC  A8 1C 0D E4 */	lha r0, 0xde4(r28)
/* 80A0B8B0  2C 00 00 02 */	cmpwi r0, 2
/* 80A0B8B4  41 82 00 1C */	beq lbl_80A0B8D0
/* 80A0B8B8  2C 00 00 03 */	cmpwi r0, 3
/* 80A0B8BC  41 82 00 14 */	beq lbl_80A0B8D0
/* 80A0B8C0  C0 BC 08 7C */	lfs f5, 0x87c(r28)
/* 80A0B8C4  C0 04 02 54 */	lfs f0, 0x254(r4)
/* 80A0B8C8  EC 05 00 28 */	fsubs f0, f5, f0
/* 80A0B8CC  D0 1C 08 7C */	stfs f0, 0x87c(r28)
lbl_80A0B8D0:
/* 80A0B8D0  38 1C 08 78 */	addi r0, r28, 0x878
/* 80A0B8D4  90 1C 0C 0C */	stw r0, 0xc0c(r28)
/* 80A0B8D8  48 00 00 0C */	b lbl_80A0B8E4
lbl_80A0B8DC:
/* 80A0B8DC  38 00 00 00 */	li r0, 0
/* 80A0B8E0  90 1C 0C 0C */	stw r0, 0xc0c(r28)
lbl_80A0B8E4:
/* 80A0B8E4  D0 C1 00 08 */	stfs f6, 8(r1)
/* 80A0B8E8  D0 E1 00 0C */	stfs f7, 0xc(r1)
/* 80A0B8EC  D1 01 00 10 */	stfs f8, 0x10(r1)
/* 80A0B8F0  D1 21 00 14 */	stfs f9, 0x14(r1)
/* 80A0B8F4  38 7C 0B DC */	addi r3, r28, 0xbdc
/* 80A0B8F8  C0 A4 00 84 */	lfs f5, 0x84(r4)
/* 80A0B8FC  FC C0 28 90 */	fmr f6, f5
/* 80A0B900  FC E0 28 90 */	fmr f7, f5
/* 80A0B904  FD 00 28 90 */	fmr f8, f5
/* 80A0B908  A8 9C 08 F2 */	lha r4, 0x8f2(r28)
/* 80A0B90C  38 A1 00 24 */	addi r5, r1, 0x24
/* 80A0B910  4B 74 57 A9 */	bl setParam__15daNpcF_Lookat_cFffffffffffffsP4cXyz
/* 80A0B914  38 7C 0B DC */	addi r3, r28, 0xbdc
/* 80A0B918  7F 84 E3 78 */	mr r4, r28
/* 80A0B91C  38 BF 00 24 */	addi r5, r31, 0x24
/* 80A0B920  38 C1 00 18 */	addi r6, r1, 0x18
/* 80A0B924  7F C7 F3 78 */	mr r7, r30
/* 80A0B928  7F A8 EB 78 */	mr r8, r29
/* 80A0B92C  39 20 00 00 */	li r9, 0
/* 80A0B930  4B 74 5A 21 */	bl calc__15daNpcF_Lookat_cFP10fopAc_ac_cPA4_fPP5csXyziii
/* 80A0B934  39 61 00 60 */	addi r11, r1, 0x60
/* 80A0B938  4B 95 68 ED */	bl _restgpr_28
/* 80A0B93C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80A0B940  7C 08 03 A6 */	mtlr r0
/* 80A0B944  38 21 00 60 */	addi r1, r1, 0x60
/* 80A0B948  4E 80 00 20 */	blr 

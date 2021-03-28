lbl_8015E654:
/* 8015E654  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8015E658  7C 08 02 A6 */	mflr r0
/* 8015E65C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8015E660  39 61 00 30 */	addi r11, r1, 0x30
/* 8015E664  48 20 3B 71 */	bl _savegpr_27
/* 8015E668  7C 7E 1B 78 */	mr r30, r3
/* 8015E66C  7C 9F 23 78 */	mr r31, r4
/* 8015E670  7C BB 2B 78 */	mr r27, r5
/* 8015E674  7C DC 33 78 */	mr r28, r6
/* 8015E678  7C FD 3B 78 */	mr r29, r7
/* 8015E67C  48 00 12 55 */	bl getThrowBoomerangActor__9daPy_py_cFv
/* 8015E680  A8 1E 00 02 */	lha r0, 2(r30)
/* 8015E684  7C 1D 00 50 */	subf r0, r29, r0
/* 8015E688  B0 1E 00 02 */	sth r0, 2(r30)
/* 8015E68C  A8 1B 00 00 */	lha r0, 0(r27)
/* 8015E690  7C 1D 00 50 */	subf r0, r29, r0
/* 8015E694  B0 1B 00 00 */	sth r0, 0(r27)
/* 8015E698  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8015E69C  C0 02 9C 20 */	lfs f0, lit_4332(r2)
/* 8015E6A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8015E6A4  40 81 00 08 */	ble lbl_8015E6AC
/* 8015E6A8  D0 1E 00 08 */	stfs f0, 8(r30)
lbl_8015E6AC:
/* 8015E6AC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8015E6B0  C0 02 9C 24 */	lfs f0, lit_4333(r2)
/* 8015E6B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8015E6B8  40 80 00 0C */	bge lbl_8015E6C4
/* 8015E6BC  D0 1E 00 04 */	stfs f0, 4(r30)
/* 8015E6C0  48 00 00 14 */	b lbl_8015E6D4
lbl_8015E6C4:
/* 8015E6C4  C0 02 9C 18 */	lfs f0, lit_4249(r2)
/* 8015E6C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8015E6CC  40 81 00 08 */	ble lbl_8015E6D4
/* 8015E6D0  D0 1E 00 04 */	stfs f0, 4(r30)
lbl_8015E6D4:
/* 8015E6D4  28 03 00 00 */	cmplwi r3, 0
/* 8015E6D8  41 82 00 BC */	beq lbl_8015E794
/* 8015E6DC  88 03 09 56 */	lbz r0, 0x956(r3)
/* 8015E6E0  28 00 00 00 */	cmplwi r0, 0
/* 8015E6E4  41 82 00 0C */	beq lbl_8015E6F0
/* 8015E6E8  38 60 00 00 */	li r3, 0
/* 8015E6EC  48 00 01 78 */	b lbl_8015E864
lbl_8015E6F0:
/* 8015E6F0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8015E6F4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8015E6F8  88 04 4F AD */	lbz r0, 0x4fad(r4)
/* 8015E6FC  28 00 00 00 */	cmplwi r0, 0
/* 8015E700  41 82 00 10 */	beq lbl_8015E710
/* 8015E704  38 00 00 01 */	li r0, 1
/* 8015E708  98 1E 00 00 */	stb r0, 0(r30)
/* 8015E70C  48 00 00 24 */	b lbl_8015E730
lbl_8015E710:
/* 8015E710  A8 0D 8A 9E */	lha r0, struct_8045101C+0x2(r13)
/* 8015E714  2C 00 00 00 */	cmpwi r0, 0
/* 8015E718  41 82 00 18 */	beq lbl_8015E730
/* 8015E71C  88 1E 00 00 */	lbz r0, 0(r30)
/* 8015E720  28 00 00 00 */	cmplwi r0, 0
/* 8015E724  40 82 00 0C */	bne lbl_8015E730
/* 8015E728  38 60 00 00 */	li r3, 0
/* 8015E72C  48 00 01 38 */	b lbl_8015E864
lbl_8015E730:
/* 8015E730  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha
/* 8015E734  38 A4 9A 20 */	addi r5, r4, sincosTable___5JMath@l
/* 8015E738  A8 1E 00 02 */	lha r0, 2(r30)
/* 8015E73C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8015E740  7C 85 02 14 */	add r4, r5, r0
/* 8015E744  C0 04 00 04 */	lfs f0, 4(r4)
/* 8015E748  C0 23 04 D8 */	lfs f1, 0x4d8(r3)
/* 8015E74C  C0 9E 00 08 */	lfs f4, 8(r30)
/* 8015E750  EC 04 00 32 */	fmuls f0, f4, f0
/* 8015E754  EC 61 00 2A */	fadds f3, f1, f0
/* 8015E758  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 8015E75C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8015E760  EC 41 00 2A */	fadds f2, f1, f0
/* 8015E764  7C 05 04 2E */	lfsx f0, r5, r0
/* 8015E768  C0 23 04 D0 */	lfs f1, 0x4d0(r3)
/* 8015E76C  EC 04 00 32 */	fmuls f0, f4, f0
/* 8015E770  EC 01 00 2A */	fadds f0, f1, f0
/* 8015E774  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8015E778  D0 5F 00 04 */	stfs f2, 4(r31)
/* 8015E77C  D0 7F 00 08 */	stfs f3, 8(r31)
/* 8015E780  80 03 09 64 */	lwz r0, 0x964(r3)
/* 8015E784  60 00 00 80 */	ori r0, r0, 0x80
/* 8015E788  90 03 09 64 */	stw r0, 0x964(r3)
/* 8015E78C  38 60 00 01 */	li r3, 1
/* 8015E790  48 00 00 D4 */	b lbl_8015E864
lbl_8015E794:
/* 8015E794  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8015E798  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8015E79C  83 A3 5D B4 */	lwz r29, 0x5db4(r3)
/* 8015E7A0  28 1C 00 00 */	cmplwi r28, 0
/* 8015E7A4  41 82 00 18 */	beq lbl_8015E7BC
/* 8015E7A8  7F A3 EB 78 */	mr r3, r29
/* 8015E7AC  7F 84 E3 78 */	mr r4, r28
/* 8015E7B0  4B F8 1B 09 */	bl checkBoomerangCarry__9daAlink_cFP10fopAc_ac_c
/* 8015E7B4  2C 03 00 00 */	cmpwi r3, 0
/* 8015E7B8  40 82 00 A8 */	bne lbl_8015E860
lbl_8015E7BC:
/* 8015E7BC  A8 0D 8A 9E */	lha r0, struct_8045101C+0x2(r13)
/* 8015E7C0  2C 00 00 00 */	cmpwi r0, 0
/* 8015E7C4  41 82 00 10 */	beq lbl_8015E7D4
/* 8015E7C8  88 1E 00 00 */	lbz r0, 0(r30)
/* 8015E7CC  28 00 00 00 */	cmplwi r0, 0
/* 8015E7D0  41 82 00 90 */	beq lbl_8015E860
lbl_8015E7D4:
/* 8015E7D4  C0 22 9C 28 */	lfs f1, lit_4334(r2)
/* 8015E7D8  48 10 91 7D */	bl cM_rndF__Ff
/* 8015E7DC  A8 6D 8A 9C */	lha r3, struct_8045101C+0x0(r13)
/* 8015E7E0  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8015E7E4  7C 03 02 14 */	add r0, r3, r0
/* 8015E7E8  C8 42 9C 08 */	lfd f2, lit_4237(r2)
/* 8015E7EC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8015E7F0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8015E7F4  3C 00 43 30 */	lis r0, 0x4330
/* 8015E7F8  90 01 00 08 */	stw r0, 8(r1)
/* 8015E7FC  C8 01 00 08 */	lfd f0, 8(r1)
/* 8015E800  EC 00 10 28 */	fsubs f0, f0, f2
/* 8015E804  EC 00 08 2A */	fadds f0, f0, f1
/* 8015E808  FC 00 00 1E */	fctiwz f0, f0
/* 8015E80C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8015E810  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015E814  C0 5D 04 D0 */	lfs f2, 0x4d0(r29)
/* 8015E818  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8015E81C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8015E820  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8015E824  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8015E828  7C 03 04 2E */	lfsx f0, r3, r0
/* 8015E82C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8015E830  EC 02 00 2A */	fadds f0, f2, f0
/* 8015E834  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8015E838  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 8015E83C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8015E840  7C 63 02 14 */	add r3, r3, r0
/* 8015E844  C0 03 00 04 */	lfs f0, 4(r3)
/* 8015E848  EC 01 00 32 */	fmuls f0, f1, f0
/* 8015E84C  EC 02 00 2A */	fadds f0, f2, f0
/* 8015E850  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8015E854  A8 6D 8A 9C */	lha r3, struct_8045101C+0x0(r13)
/* 8015E858  38 03 20 00 */	addi r0, r3, 0x2000
/* 8015E85C  B0 0D 8A 9C */	sth r0, struct_8045101C+0x0(r13)
lbl_8015E860:
/* 8015E860  38 60 00 00 */	li r3, 0
lbl_8015E864:
/* 8015E864  39 61 00 30 */	addi r11, r1, 0x30
/* 8015E868  48 20 39 B9 */	bl _restgpr_27
/* 8015E86C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8015E870  7C 08 03 A6 */	mtlr r0
/* 8015E874  38 21 00 30 */	addi r1, r1, 0x30
/* 8015E878  4E 80 00 20 */	blr 

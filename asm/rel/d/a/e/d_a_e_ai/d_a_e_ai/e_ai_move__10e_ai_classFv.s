lbl_8067A54C:
/* 8067A54C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8067A550  7C 08 02 A6 */	mflr r0
/* 8067A554  90 01 00 44 */	stw r0, 0x44(r1)
/* 8067A558  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8067A55C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8067A560  7C 7E 1B 78 */	mr r30, r3
/* 8067A564  3C 60 80 68 */	lis r3, lit_3789@ha /* 0x8067C3FC@ha */
/* 8067A568  3B E3 C3 FC */	addi r31, r3, lit_3789@l /* 0x8067C3FC@l */
/* 8067A56C  88 1E 05 CC */	lbz r0, 0x5cc(r30)
/* 8067A570  28 00 00 10 */	cmplwi r0, 0x10
/* 8067A574  41 82 00 0C */	beq lbl_8067A580
/* 8067A578  28 00 00 12 */	cmplwi r0, 0x12
/* 8067A57C  40 82 00 90 */	bne lbl_8067A60C
lbl_8067A580:
/* 8067A580  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 8067A584  38 80 00 01 */	li r4, 1
/* 8067A588  88 03 00 05 */	lbz r0, 5(r3)
/* 8067A58C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8067A590  40 82 00 18 */	bne lbl_8067A5A8
/* 8067A594  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8067A598  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8067A59C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8067A5A0  41 82 00 08 */	beq lbl_8067A5A8
/* 8067A5A4  38 80 00 00 */	li r4, 0
lbl_8067A5A8:
/* 8067A5A8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8067A5AC  41 82 00 60 */	beq lbl_8067A60C
/* 8067A5B0  3C 60 80 68 */	lis r3, d_a_e_ai__stringBase0@ha /* 0x8067C538@ha */
/* 8067A5B4  38 63 C5 38 */	addi r3, r3, d_a_e_ai__stringBase0@l /* 0x8067C538@l */
/* 8067A5B8  38 80 00 11 */	li r4, 0x11
/* 8067A5BC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8067A5C0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8067A5C4  3C A5 00 02 */	addis r5, r5, 2
/* 8067A5C8  38 C0 00 80 */	li r6, 0x80
/* 8067A5CC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8067A5D0  4B 9C 1D 1D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8067A5D4  7C 65 1B 78 */	mr r5, r3
/* 8067A5D8  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 8067A5DC  80 63 00 04 */	lwz r3, 4(r3)
/* 8067A5E0  80 83 00 04 */	lwz r4, 4(r3)
/* 8067A5E4  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 8067A5E8  38 84 00 58 */	addi r4, r4, 0x58
/* 8067A5EC  38 C0 00 01 */	li r6, 1
/* 8067A5F0  38 E0 00 02 */	li r7, 2
/* 8067A5F4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8067A5F8  39 00 00 00 */	li r8, 0
/* 8067A5FC  39 20 FF FF */	li r9, -1
/* 8067A600  4B 99 31 0D */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 8067A604  38 00 00 11 */	li r0, 0x11
/* 8067A608  98 1E 05 CC */	stb r0, 0x5cc(r30)
lbl_8067A60C:
/* 8067A60C  A8 1E 06 B4 */	lha r0, 0x6b4(r30)
/* 8067A610  2C 00 00 00 */	cmpwi r0, 0
/* 8067A614  41 82 00 9C */	beq lbl_8067A6B0
/* 8067A618  A8 1E 06 8C */	lha r0, 0x68c(r30)
/* 8067A61C  1C 00 27 10 */	mulli r0, r0, 0x2710
/* 8067A620  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8067A624  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8067A628  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8067A62C  7C 23 04 2E */	lfsx f1, r3, r0
/* 8067A630  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 8067A634  EC 00 00 72 */	fmuls f0, f0, f1
/* 8067A638  FC 00 00 1E */	fctiwz f0, f0
/* 8067A63C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8067A640  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8067A644  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 8067A648  A8 1E 06 B4 */	lha r0, 0x6b4(r30)
/* 8067A64C  2C 00 00 01 */	cmpwi r0, 1
/* 8067A650  40 82 00 30 */	bne lbl_8067A680
/* 8067A654  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070065@ha */
/* 8067A658  38 03 00 65 */	addi r0, r3, 0x0065 /* 0x00070065@l */
/* 8067A65C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8067A660  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 8067A664  38 81 00 14 */	addi r4, r1, 0x14
/* 8067A668  38 A0 FF FF */	li r5, -1
/* 8067A66C  81 9E 05 D4 */	lwz r12, 0x5d4(r30)
/* 8067A670  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8067A674  7D 89 03 A6 */	mtctr r12
/* 8067A678  4E 80 04 21 */	bctrl 
/* 8067A67C  48 00 03 B4 */	b lbl_8067AA30
lbl_8067A680:
/* 8067A680  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070064@ha */
/* 8067A684  38 03 00 64 */	addi r0, r3, 0x0064 /* 0x00070064@l */
/* 8067A688  90 01 00 10 */	stw r0, 0x10(r1)
/* 8067A68C  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 8067A690  38 81 00 10 */	addi r4, r1, 0x10
/* 8067A694  38 A0 00 00 */	li r5, 0
/* 8067A698  38 C0 FF FF */	li r6, -1
/* 8067A69C  81 9E 05 D4 */	lwz r12, 0x5d4(r30)
/* 8067A6A0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8067A6A4  7D 89 03 A6 */	mtctr r12
/* 8067A6A8  4E 80 04 21 */	bctrl 
/* 8067A6AC  48 00 03 84 */	b lbl_8067AA30
lbl_8067A6B0:
/* 8067A6B0  A8 1E 06 94 */	lha r0, 0x694(r30)
/* 8067A6B4  2C 00 00 01 */	cmpwi r0, 1
/* 8067A6B8  41 82 00 50 */	beq lbl_8067A708
/* 8067A6BC  40 80 02 64 */	bge lbl_8067A920
/* 8067A6C0  2C 00 00 00 */	cmpwi r0, 0
/* 8067A6C4  40 80 00 08 */	bge lbl_8067A6CC
/* 8067A6C8  48 00 02 58 */	b lbl_8067A920
lbl_8067A6CC:
/* 8067A6CC  80 1E 07 34 */	lwz r0, 0x734(r30)
/* 8067A6D0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8067A6D4  41 82 02 4C */	beq lbl_8067A920
/* 8067A6D8  A8 1E 06 B2 */	lha r0, 0x6b2(r30)
/* 8067A6DC  2C 00 00 00 */	cmpwi r0, 0
/* 8067A6E0  40 82 00 1C */	bne lbl_8067A6FC
/* 8067A6E4  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 8067A6E8  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8067A6EC  38 00 00 01 */	li r0, 1
/* 8067A6F0  B0 1E 06 94 */	sth r0, 0x694(r30)
/* 8067A6F4  38 00 00 00 */	li r0, 0
/* 8067A6F8  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
lbl_8067A6FC:
/* 8067A6FC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8067A700  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8067A704  48 00 02 1C */	b lbl_8067A920
lbl_8067A708:
/* 8067A708  80 1E 07 34 */	lwz r0, 0x734(r30)
/* 8067A70C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8067A710  41 82 02 10 */	beq lbl_8067A920
/* 8067A714  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8067A718  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8067A71C  38 00 00 00 */	li r0, 0
/* 8067A720  B0 1E 06 94 */	sth r0, 0x694(r30)
/* 8067A724  88 7E 0D 29 */	lbz r3, 0xd29(r30)
/* 8067A728  7C 60 07 75 */	extsb. r0, r3
/* 8067A72C  40 82 00 10 */	bne lbl_8067A73C
/* 8067A730  38 00 00 1E */	li r0, 0x1e
/* 8067A734  B0 1E 06 B2 */	sth r0, 0x6b2(r30)
/* 8067A738  48 00 00 24 */	b lbl_8067A75C
lbl_8067A73C:
/* 8067A73C  7C 60 07 74 */	extsb r0, r3
/* 8067A740  2C 00 00 01 */	cmpwi r0, 1
/* 8067A744  40 82 00 10 */	bne lbl_8067A754
/* 8067A748  38 00 00 14 */	li r0, 0x14
/* 8067A74C  B0 1E 06 B2 */	sth r0, 0x6b2(r30)
/* 8067A750  48 00 00 0C */	b lbl_8067A75C
lbl_8067A754:
/* 8067A754  38 00 00 0F */	li r0, 0xf
/* 8067A758  B0 1E 06 B2 */	sth r0, 0x6b2(r30)
lbl_8067A75C:
/* 8067A75C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070062@ha */
/* 8067A760  38 03 00 62 */	addi r0, r3, 0x0062 /* 0x00070062@l */
/* 8067A764  90 01 00 0C */	stw r0, 0xc(r1)
/* 8067A768  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 8067A76C  38 81 00 0C */	addi r4, r1, 0xc
/* 8067A770  38 A0 00 00 */	li r5, 0
/* 8067A774  38 C0 FF FF */	li r6, -1
/* 8067A778  81 9E 05 D4 */	lwz r12, 0x5d4(r30)
/* 8067A77C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8067A780  7D 89 03 A6 */	mtctr r12
/* 8067A784  4E 80 04 21 */	bctrl 
/* 8067A788  38 7E 0D 2C */	addi r3, r30, 0xd2c
/* 8067A78C  38 9E 0D 34 */	addi r4, r30, 0xd34
/* 8067A790  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8067A794  38 DE 04 E4 */	addi r6, r30, 0x4e4
/* 8067A798  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8067A79C  38 FE 01 0C */	addi r7, r30, 0x10c
/* 8067A7A0  39 00 00 01 */	li r8, 1
/* 8067A7A4  4B 9A 28 7D */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 8067A7A8  C0 3E 06 AC */	lfs f1, 0x6ac(r30)
/* 8067A7AC  3C 60 80 68 */	lis r3, l_HIO@ha /* 0x8067C6A8@ha */
/* 8067A7B0  38 63 C6 A8 */	addi r3, r3, l_HIO@l /* 0x8067C6A8@l */
/* 8067A7B4  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8067A7B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8067A7BC  40 81 01 64 */	ble lbl_8067A920
/* 8067A7C0  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 8067A7C4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8067A7C8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8067A7CC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8067A7D0  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8067A7D4  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8067A7D8  C0 5E 04 B0 */	lfs f2, 0x4b0(r30)
/* 8067A7DC  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 8067A7E0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8067A7E4  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8067A7E8  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 8067A7EC  38 61 00 18 */	addi r3, r1, 0x18
/* 8067A7F0  38 81 00 24 */	addi r4, r1, 0x24
/* 8067A7F4  4B CC CB A9 */	bl PSVECSquareDistance
/* 8067A7F8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8067A7FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8067A800  40 81 00 58 */	ble lbl_8067A858
/* 8067A804  FC 00 08 34 */	frsqrte f0, f1
/* 8067A808  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8067A80C  FC 44 00 32 */	fmul f2, f4, f0
/* 8067A810  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8067A814  FC 00 00 32 */	fmul f0, f0, f0
/* 8067A818  FC 01 00 32 */	fmul f0, f1, f0
/* 8067A81C  FC 03 00 28 */	fsub f0, f3, f0
/* 8067A820  FC 02 00 32 */	fmul f0, f2, f0
/* 8067A824  FC 44 00 32 */	fmul f2, f4, f0
/* 8067A828  FC 00 00 32 */	fmul f0, f0, f0
/* 8067A82C  FC 01 00 32 */	fmul f0, f1, f0
/* 8067A830  FC 03 00 28 */	fsub f0, f3, f0
/* 8067A834  FC 02 00 32 */	fmul f0, f2, f0
/* 8067A838  FC 44 00 32 */	fmul f2, f4, f0
/* 8067A83C  FC 00 00 32 */	fmul f0, f0, f0
/* 8067A840  FC 01 00 32 */	fmul f0, f1, f0
/* 8067A844  FC 03 00 28 */	fsub f0, f3, f0
/* 8067A848  FC 02 00 32 */	fmul f0, f2, f0
/* 8067A84C  FC 21 00 32 */	fmul f1, f1, f0
/* 8067A850  FC 20 08 18 */	frsp f1, f1
/* 8067A854  48 00 00 88 */	b lbl_8067A8DC
lbl_8067A858:
/* 8067A858  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8067A85C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8067A860  40 80 00 10 */	bge lbl_8067A870
/* 8067A864  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8067A868  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8067A86C  48 00 00 70 */	b lbl_8067A8DC
lbl_8067A870:
/* 8067A870  D0 21 00 08 */	stfs f1, 8(r1)
/* 8067A874  80 81 00 08 */	lwz r4, 8(r1)
/* 8067A878  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8067A87C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8067A880  7C 03 00 00 */	cmpw r3, r0
/* 8067A884  41 82 00 14 */	beq lbl_8067A898
/* 8067A888  40 80 00 40 */	bge lbl_8067A8C8
/* 8067A88C  2C 03 00 00 */	cmpwi r3, 0
/* 8067A890  41 82 00 20 */	beq lbl_8067A8B0
/* 8067A894  48 00 00 34 */	b lbl_8067A8C8
lbl_8067A898:
/* 8067A898  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8067A89C  41 82 00 0C */	beq lbl_8067A8A8
/* 8067A8A0  38 00 00 01 */	li r0, 1
/* 8067A8A4  48 00 00 28 */	b lbl_8067A8CC
lbl_8067A8A8:
/* 8067A8A8  38 00 00 02 */	li r0, 2
/* 8067A8AC  48 00 00 20 */	b lbl_8067A8CC
lbl_8067A8B0:
/* 8067A8B0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8067A8B4  41 82 00 0C */	beq lbl_8067A8C0
/* 8067A8B8  38 00 00 05 */	li r0, 5
/* 8067A8BC  48 00 00 10 */	b lbl_8067A8CC
lbl_8067A8C0:
/* 8067A8C0  38 00 00 03 */	li r0, 3
/* 8067A8C4  48 00 00 08 */	b lbl_8067A8CC
lbl_8067A8C8:
/* 8067A8C8  38 00 00 04 */	li r0, 4
lbl_8067A8CC:
/* 8067A8CC  2C 00 00 01 */	cmpwi r0, 1
/* 8067A8D0  40 82 00 0C */	bne lbl_8067A8DC
/* 8067A8D4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8067A8D8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8067A8DC:
/* 8067A8DC  C0 7F 00 00 */	lfs f3, 0(r31)
/* 8067A8E0  88 1E 05 BA */	lbz r0, 0x5ba(r30)
/* 8067A8E4  C8 5F 01 00 */	lfd f2, 0x100(r31)
/* 8067A8E8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8067A8EC  3C 00 43 30 */	lis r0, 0x4330
/* 8067A8F0  90 01 00 30 */	stw r0, 0x30(r1)
/* 8067A8F4  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8067A8F8  EC 00 10 28 */	fsubs f0, f0, f2
/* 8067A8FC  EC 03 00 32 */	fmuls f0, f3, f0
/* 8067A900  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8067A904  40 81 00 1C */	ble lbl_8067A920
/* 8067A908  38 00 00 00 */	li r0, 0
/* 8067A90C  B0 1E 06 94 */	sth r0, 0x694(r30)
/* 8067A910  B0 1E 06 90 */	sth r0, 0x690(r30)
/* 8067A914  38 00 00 04 */	li r0, 4
/* 8067A918  B0 1E 06 8E */	sth r0, 0x68e(r30)
/* 8067A91C  48 00 01 14 */	b lbl_8067AA30
lbl_8067A920:
/* 8067A920  A8 1E 06 90 */	lha r0, 0x690(r30)
/* 8067A924  2C 00 00 01 */	cmpwi r0, 1
/* 8067A928  41 82 00 44 */	beq lbl_8067A96C
/* 8067A92C  40 80 01 04 */	bge lbl_8067AA30
/* 8067A930  2C 00 00 00 */	cmpwi r0, 0
/* 8067A934  40 80 00 08 */	bge lbl_8067A93C
/* 8067A938  48 00 00 F8 */	b lbl_8067AA30
lbl_8067A93C:
/* 8067A93C  80 1E 06 84 */	lwz r0, 0x684(r30)
/* 8067A940  2C 00 00 07 */	cmpwi r0, 7
/* 8067A944  41 82 00 1C */	beq lbl_8067A960
/* 8067A948  7F C3 F3 78 */	mr r3, r30
/* 8067A94C  38 80 00 07 */	li r4, 7
/* 8067A950  C0 3F 00 E8 */	lfs f1, 0xe8(r31)
/* 8067A954  38 A0 00 00 */	li r5, 0
/* 8067A958  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8067A95C  4B FF E9 F5 */	bl anm_init__10e_ai_classFifUcf
lbl_8067A960:
/* 8067A960  38 00 00 01 */	li r0, 1
/* 8067A964  B0 1E 06 90 */	sth r0, 0x690(r30)
/* 8067A968  48 00 00 C8 */	b lbl_8067AA30
lbl_8067A96C:
/* 8067A96C  A8 1E 06 94 */	lha r0, 0x694(r30)
/* 8067A970  2C 00 00 01 */	cmpwi r0, 1
/* 8067A974  40 82 00 54 */	bne lbl_8067A9C8
/* 8067A978  A8 1E 06 AA */	lha r0, 0x6aa(r30)
/* 8067A97C  B0 1E 06 A8 */	sth r0, 0x6a8(r30)
/* 8067A980  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8067A984  A8 9E 06 A8 */	lha r4, 0x6a8(r30)
/* 8067A988  38 C0 00 10 */	li r6, 0x10
/* 8067A98C  88 1E 0D 29 */	lbz r0, 0xd29(r30)
/* 8067A990  7C 05 07 74 */	extsb r5, r0
/* 8067A994  38 05 00 01 */	addi r0, r5, 1
/* 8067A998  7C 06 03 D6 */	divw r0, r6, r0
/* 8067A99C  7C 05 07 34 */	extsh r5, r0
/* 8067A9A0  38 C0 08 00 */	li r6, 0x800
/* 8067A9A4  4B BF 5C 65 */	bl cLib_addCalcAngleS2__FPssss
/* 8067A9A8  C0 3E 06 AC */	lfs f1, 0x6ac(r30)
/* 8067A9AC  3C 60 80 68 */	lis r3, l_HIO@ha /* 0x8067C6A8@ha */
/* 8067A9B0  38 63 C6 A8 */	addi r3, r3, l_HIO@l /* 0x8067C6A8@l */
/* 8067A9B4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8067A9B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8067A9BC  40 81 00 0C */	ble lbl_8067A9C8
/* 8067A9C0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8067A9C4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_8067A9C8:
/* 8067A9C8  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 8067A9CC  38 80 00 01 */	li r4, 1
/* 8067A9D0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8067A9D4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8067A9D8  40 82 00 18 */	bne lbl_8067A9F0
/* 8067A9DC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8067A9E0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8067A9E4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8067A9E8  41 82 00 08 */	beq lbl_8067A9F0
/* 8067A9EC  38 80 00 00 */	li r4, 0
lbl_8067A9F0:
/* 8067A9F0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8067A9F4  41 82 00 3C */	beq lbl_8067AA30
/* 8067A9F8  7F C3 F3 78 */	mr r3, r30
/* 8067A9FC  3C 80 80 68 */	lis r4, l_HIO@ha /* 0x8067C6A8@ha */
/* 8067AA00  38 84 C6 A8 */	addi r4, r4, l_HIO@l /* 0x8067C6A8@l */
/* 8067AA04  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 8067AA08  38 80 7F FF */	li r4, 0x7fff
/* 8067AA0C  4B FF EC 05 */	bl pl_check__10e_ai_classFfs
/* 8067AA10  2C 03 00 00 */	cmpwi r3, 0
/* 8067AA14  41 82 00 1C */	beq lbl_8067AA30
/* 8067AA18  38 00 00 02 */	li r0, 2
/* 8067AA1C  B0 1E 06 8E */	sth r0, 0x68e(r30)
/* 8067AA20  38 00 00 00 */	li r0, 0
/* 8067AA24  B0 1E 06 90 */	sth r0, 0x690(r30)
/* 8067AA28  38 00 00 04 */	li r0, 4
/* 8067AA2C  B0 1E 06 B0 */	sth r0, 0x6b0(r30)
lbl_8067AA30:
/* 8067AA30  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8067AA34  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8067AA38  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8067AA3C  7C 08 03 A6 */	mtlr r0
/* 8067AA40  38 21 00 40 */	addi r1, r1, 0x40
/* 8067AA44  4E 80 00 20 */	blr 

lbl_80B8A648:
/* 80B8A648  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B8A64C  7C 08 02 A6 */	mflr r0
/* 80B8A650  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B8A654  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80B8A658  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80B8A65C  7C 7F 1B 78 */	mr r31, r3
/* 80B8A660  3C 80 80 B9 */	lis r4, m__17daNpc_zrA_Param_c@ha
/* 80B8A664  3B C4 C4 58 */	addi r30, r4, m__17daNpc_zrA_Param_c@l
/* 80B8A668  A0 03 14 E6 */	lhz r0, 0x14e6(r3)
/* 80B8A66C  2C 00 00 02 */	cmpwi r0, 2
/* 80B8A670  41 82 00 5C */	beq lbl_80B8A6CC
/* 80B8A674  40 80 01 68 */	bge lbl_80B8A7DC
/* 80B8A678  2C 00 00 00 */	cmpwi r0, 0
/* 80B8A67C  41 82 00 0C */	beq lbl_80B8A688
/* 80B8A680  48 00 01 5C */	b lbl_80B8A7DC
/* 80B8A684  48 00 01 58 */	b lbl_80B8A7DC
lbl_80B8A688:
/* 80B8A688  38 80 00 14 */	li r4, 0x14
/* 80B8A68C  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 80B8A690  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B8A694  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B8A698  7D 89 03 A6 */	mtctr r12
/* 80B8A69C  4E 80 04 21 */	bctrl 
/* 80B8A6A0  7F E3 FB 78 */	mr r3, r31
/* 80B8A6A4  38 80 00 20 */	li r4, 0x20
/* 80B8A6A8  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 80B8A6AC  38 A0 00 00 */	li r5, 0
/* 80B8A6B0  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B8A6B4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B8A6B8  7D 89 03 A6 */	mtctr r12
/* 80B8A6BC  4E 80 04 21 */	bctrl 
/* 80B8A6C0  38 00 00 02 */	li r0, 2
/* 80B8A6C4  98 1F 15 94 */	stb r0, 0x1594(r31)
/* 80B8A6C8  B0 1F 14 E6 */	sth r0, 0x14e6(r31)
lbl_80B8A6CC:
/* 80B8A6CC  80 1F 14 EC */	lwz r0, 0x14ec(r31)
/* 80B8A6D0  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80B8A6D4  40 82 01 08 */	bne lbl_80B8A7DC
/* 80B8A6D8  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B8A6DC  38 80 00 01 */	li r4, 1
/* 80B8A6E0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80B8A6E4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80B8A6E8  40 82 00 18 */	bne lbl_80B8A700
/* 80B8A6EC  C0 3E 00 B0 */	lfs f1, 0xb0(r30)
/* 80B8A6F0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80B8A6F4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80B8A6F8  41 82 00 08 */	beq lbl_80B8A700
/* 80B8A6FC  38 80 00 00 */	li r4, 0
lbl_80B8A700:
/* 80B8A700  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80B8A704  41 82 00 98 */	beq lbl_80B8A79C
/* 80B8A708  C0 1E 08 A4 */	lfs f0, 0x8a4(r30)
/* 80B8A70C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B8A710  C0 1E 08 A8 */	lfs f0, 0x8a8(r30)
/* 80B8A714  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B8A718  C0 1E 08 AC */	lfs f0, 0x8ac(r30)
/* 80B8A71C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B8A720  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B8A724  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B8A728  A8 9F 08 F2 */	lha r4, 0x8f2(r31)
/* 80B8A72C  4B 48 1C B0 */	b mDoMtx_YrotS__FPA4_fs
/* 80B8A730  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B8A734  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B8A738  38 81 00 14 */	addi r4, r1, 0x14
/* 80B8A73C  7C 85 23 78 */	mr r5, r4
/* 80B8A740  4B 7B C6 2C */	b PSMTXMultVec
/* 80B8A744  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B8A748  38 81 00 14 */	addi r4, r1, 0x14
/* 80B8A74C  7C 65 1B 78 */	mr r5, r3
/* 80B8A750  4B 7B C9 40 */	b PSVECAdd
/* 80B8A754  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80B8A758  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80B8A75C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80B8A760  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80B8A764  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80B8A768  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 80B8A76C  3C 60 80 B9 */	lis r3, lit_11325@ha
/* 80B8A770  38 83 D8 A0 */	addi r4, r3, lit_11325@l
/* 80B8A774  80 64 00 00 */	lwz r3, 0(r4)
/* 80B8A778  80 04 00 04 */	lwz r0, 4(r4)
/* 80B8A77C  90 61 00 08 */	stw r3, 8(r1)
/* 80B8A780  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B8A784  80 04 00 08 */	lwz r0, 8(r4)
/* 80B8A788  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B8A78C  7F E3 FB 78 */	mr r3, r31
/* 80B8A790  38 81 00 08 */	addi r4, r1, 8
/* 80B8A794  4B FF 33 8D */	bl setAction__11daNpc_zrA_cFM11daNpc_zrA_cFPCvPvPv_i
/* 80B8A798  48 00 00 44 */	b lbl_80B8A7DC
lbl_80B8A79C:
/* 80B8A79C  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80B8A7A0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80B8A7A4  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80B8A7A8  28 00 00 01 */	cmplwi r0, 1
/* 80B8A7AC  40 82 00 0C */	bne lbl_80B8A7B8
/* 80B8A7B0  38 84 E0 00 */	addi r4, r4, -8192
/* 80B8A7B4  48 00 00 10 */	b lbl_80B8A7C4
lbl_80B8A7B8:
/* 80B8A7B8  28 00 00 02 */	cmplwi r0, 2
/* 80B8A7BC  40 82 00 08 */	bne lbl_80B8A7C4
/* 80B8A7C0  38 84 20 00 */	addi r4, r4, 0x2000
lbl_80B8A7C4:
/* 80B8A7C4  38 7F 08 F2 */	addi r3, r31, 0x8f2
/* 80B8A7C8  38 A0 08 00 */	li r5, 0x800
/* 80B8A7CC  4B 6E 63 C4 */	b cLib_chaseAngleS__FPsss
/* 80B8A7D0  7F E3 FB 78 */	mr r3, r31
/* 80B8A7D4  A8 9F 08 F2 */	lha r4, 0x8f2(r31)
/* 80B8A7D8  4B 5C 9A 78 */	b setAngle__8daNpcF_cFs
lbl_80B8A7DC:
/* 80B8A7DC  38 60 00 01 */	li r3, 1
/* 80B8A7E0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80B8A7E4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80B8A7E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B8A7EC  7C 08 03 A6 */	mtlr r0
/* 80B8A7F0  38 21 00 30 */	addi r1, r1, 0x30
/* 80B8A7F4  4E 80 00 20 */	blr 

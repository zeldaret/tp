lbl_8078C470:
/* 8078C470  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8078C474  7C 08 02 A6 */	mflr r0
/* 8078C478  90 01 00 64 */	stw r0, 0x64(r1)
/* 8078C47C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8078C480  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8078C484  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8078C488  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8078C48C  7C 7E 1B 78 */	mr r30, r3
/* 8078C490  3C 60 80 79 */	lis r3, lit_3767@ha
/* 8078C494  3B E3 DD A4 */	addi r31, r3, lit_3767@l
/* 8078C498  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 8078C49C  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 8078C4A0  40 82 02 BC */	bne lbl_8078C75C
/* 8078C4A4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8078C4A8  D0 1E 06 98 */	stfs f0, 0x698(r30)
/* 8078C4AC  80 1E 07 4C */	lwz r0, 0x74c(r30)
/* 8078C4B0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8078C4B4  41 82 01 20 */	beq lbl_8078C5D4
/* 8078C4B8  38 61 00 0C */	addi r3, r1, 0xc
/* 8078C4BC  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 8078C4C0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8078C4C4  4B AD A6 70 */	b __mi__4cXyzCFRC3Vec
/* 8078C4C8  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8078C4CC  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8078C4D0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8078C4D4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8078C4D8  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 8078C4DC  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 8078C4E0  4B AD B1 94 */	b cM_atan2s__Fff
/* 8078C4E4  7C 64 1B 78 */	mr r4, r3
/* 8078C4E8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8078C4EC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8078C4F0  80 63 00 00 */	lwz r3, 0(r3)
/* 8078C4F4  4B 87 FE E8 */	b mDoMtx_YrotS__FPA4_fs
/* 8078C4F8  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 8078C4FC  4B AD B4 90 */	b cM_rndFX__Ff
/* 8078C500  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8078C504  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8078C508  4B AD B4 4C */	b cM_rndF__Ff
/* 8078C50C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8078C510  EC 00 08 2A */	fadds f0, f0, f1
/* 8078C514  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8078C518  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 8078C51C  4B AD B4 38 */	b cM_rndF__Ff
/* 8078C520  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8078C524  EC 00 08 2A */	fadds f0, f0, f1
/* 8078C528  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8078C52C  38 61 00 24 */	addi r3, r1, 0x24
/* 8078C530  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 8078C534  4B AE 49 B8 */	b MtxPosition__FP4cXyzP4cXyz
/* 8078C538  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8078C53C  4B AD B4 18 */	b cM_rndF__Ff
/* 8078C540  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 8078C544  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078C548  40 80 00 10 */	bge lbl_8078C558
/* 8078C54C  38 00 40 00 */	li r0, 0x4000
/* 8078C550  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
/* 8078C554  48 00 00 0C */	b lbl_8078C560
lbl_8078C558:
/* 8078C558  38 00 C0 00 */	li r0, -16384
/* 8078C55C  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
lbl_8078C560:
/* 8078C560  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8078C564  4B AD B3 F0 */	b cM_rndF__Ff
/* 8078C568  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 8078C56C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078C570  40 80 00 10 */	bge lbl_8078C580
/* 8078C574  38 00 00 00 */	li r0, 0
/* 8078C578  B0 1E 06 C2 */	sth r0, 0x6c2(r30)
/* 8078C57C  48 00 00 0C */	b lbl_8078C588
lbl_8078C580:
/* 8078C580  38 00 80 00 */	li r0, -32768
/* 8078C584  B0 1E 06 C2 */	sth r0, 0x6c2(r30)
lbl_8078C588:
/* 8078C588  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 8078C58C  4B AD B4 00 */	b cM_rndFX__Ff
/* 8078C590  FC 00 08 1E */	fctiwz f0, f1
/* 8078C594  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8078C598  80 61 00 34 */	lwz r3, 0x34(r1)
/* 8078C59C  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8078C5A0  7C 00 1A 14 */	add r0, r0, r3
/* 8078C5A4  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8078C5A8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702C6@ha */
/* 8078C5AC  38 03 02 C6 */	addi r0, r3, 0x02C6 /* 0x000702C6@l */
/* 8078C5B0  90 01 00 08 */	stw r0, 8(r1)
/* 8078C5B4  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 8078C5B8  38 81 00 08 */	addi r4, r1, 8
/* 8078C5BC  38 A0 00 00 */	li r5, 0
/* 8078C5C0  38 C0 FF FF */	li r6, -1
/* 8078C5C4  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 8078C5C8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8078C5CC  7D 89 03 A6 */	mtctr r12
/* 8078C5D0  4E 80 04 21 */	bctrl 
lbl_8078C5D4:
/* 8078C5D4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8078C5D8  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 8078C5DC  7C 65 1B 78 */	mr r5, r3
/* 8078C5E0  4B BB AA B0 */	b PSVECAdd
/* 8078C5E4  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 8078C5E8  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 8078C5EC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8078C5F0  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8078C5F4  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8078C5F8  3C 60 80 79 */	lis r3, l_HIO@ha
/* 8078C5FC  38 63 E0 EC */	addi r3, r3, l_HIO@l
/* 8078C600  C0 03 00 08 */	lfs f0, 8(r3)
/* 8078C604  EC 21 00 32 */	fmuls f1, f1, f0
/* 8078C608  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 8078C60C  EF E1 00 32 */	fmuls f31, f1, f0
/* 8078C610  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8078C614  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8078C618  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8078C61C  C0 1E 04 C0 */	lfs f0, 0x4c0(r30)
/* 8078C620  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8078C624  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 8078C628  38 7E 07 20 */	addi r3, r30, 0x720
/* 8078C62C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8078C630  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8078C634  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8078C638  4B 8E A4 74 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 8078C63C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8078C640  EC 00 F8 2A */	fadds f0, f0, f31
/* 8078C644  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8078C648  C0 1E 04 C0 */	lfs f0, 0x4c0(r30)
/* 8078C64C  EC 00 F8 2A */	fadds f0, f0, f31
/* 8078C650  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 8078C654  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8078C658  C0 1E 06 B8 */	lfs f0, 0x6b8(r30)
/* 8078C65C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078C660  40 80 00 FC */	bge lbl_8078C75C
/* 8078C664  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8078C668  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8078C66C  38 00 00 00 */	li r0, 0
/* 8078C670  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 8078C674  38 00 00 0A */	li r0, 0xa
/* 8078C678  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 8078C67C  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 8078C680  4B AD B2 D4 */	b cM_rndF__Ff
/* 8078C684  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 8078C688  EC 00 08 2A */	fadds f0, f0, f1
/* 8078C68C  FC 00 00 1E */	fctiwz f0, f0
/* 8078C690  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8078C694  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8078C698  B0 1E 06 60 */	sth r0, 0x660(r30)
/* 8078C69C  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 8078C6A0  4B AD B2 B4 */	b cM_rndF__Ff
/* 8078C6A4  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 8078C6A8  EC 00 08 2A */	fadds f0, f0, f1
/* 8078C6AC  FC 00 00 1E */	fctiwz f0, f0
/* 8078C6B0  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8078C6B4  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8078C6B8  B0 1E 06 62 */	sth r0, 0x662(r30)
/* 8078C6BC  38 00 00 01 */	li r0, 1
/* 8078C6C0  98 1E 0A 93 */	stb r0, 0xa93(r30)
/* 8078C6C4  88 1E 05 67 */	lbz r0, 0x567(r30)
/* 8078C6C8  7C 00 07 75 */	extsb. r0, r0
/* 8078C6CC  41 82 00 90 */	beq lbl_8078C75C
/* 8078C6D0  38 00 00 00 */	li r0, 0
/* 8078C6D4  98 1E 05 67 */	stb r0, 0x567(r30)
/* 8078C6D8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8078C6DC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8078C6E0  80 63 00 00 */	lwz r3, 0(r3)
/* 8078C6E4  A8 9E 06 88 */	lha r4, 0x688(r30)
/* 8078C6E8  4B 87 FC F4 */	b mDoMtx_YrotS__FPA4_fs
/* 8078C6EC  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8078C6F0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8078C6F4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8078C6F8  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8078C6FC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8078C700  38 61 00 24 */	addi r3, r1, 0x24
/* 8078C704  38 81 00 18 */	addi r4, r1, 0x18
/* 8078C708  4B AE 47 E4 */	b MtxPosition__FP4cXyzP4cXyz
/* 8078C70C  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8078C710  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8078C714  EC 01 00 2A */	fadds f0, f1, f0
/* 8078C718  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8078C71C  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8078C720  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8078C724  EC 01 00 2A */	fadds f0, f1, f0
/* 8078C728  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8078C72C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8078C730  C0 1E 06 B8 */	lfs f0, 0x6b8(r30)
/* 8078C734  EC 01 00 2A */	fadds f0, f1, f0
/* 8078C738  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8078C73C  38 61 00 18 */	addi r3, r1, 0x18
/* 8078C740  38 80 00 00 */	li r4, 0
/* 8078C744  38 A0 FF FF */	li r5, -1
/* 8078C748  38 C0 FF FF */	li r6, -1
/* 8078C74C  38 E0 00 00 */	li r7, 0
/* 8078C750  39 00 00 00 */	li r8, 0
/* 8078C754  39 20 00 00 */	li r9, 0
/* 8078C758  4B 88 FA E8 */	b fopAcM_createItem__FPC4cXyziiiPC5csXyzPC4cXyzi
lbl_8078C75C:
/* 8078C75C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8078C760  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8078C764  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8078C768  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8078C76C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8078C770  7C 08 03 A6 */	mtlr r0
/* 8078C774  38 21 00 60 */	addi r1, r1, 0x60
/* 8078C778  4E 80 00 20 */	blr 

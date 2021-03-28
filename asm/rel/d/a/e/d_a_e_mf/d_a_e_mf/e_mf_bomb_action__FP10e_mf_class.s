lbl_8070C2C4:
/* 8070C2C4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8070C2C8  7C 08 02 A6 */	mflr r0
/* 8070C2CC  90 01 00 64 */	stw r0, 0x64(r1)
/* 8070C2D0  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8070C2D4  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8070C2D8  39 61 00 50 */	addi r11, r1, 0x50
/* 8070C2DC  4B C5 5E FC */	b _savegpr_28
/* 8070C2E0  7C 7C 1B 78 */	mr r28, r3
/* 8070C2E4  3C 80 80 71 */	lis r4, lit_3828@ha
/* 8070C2E8  3B E4 39 74 */	addi r31, r4, lit_3828@l
/* 8070C2EC  4B FF F4 19 */	bl bomb_check__FP10e_mf_class
/* 8070C2F0  7C 7E 1B 79 */	or. r30, r3, r3
/* 8070C2F4  40 82 00 18 */	bne lbl_8070C30C
/* 8070C2F8  38 00 00 03 */	li r0, 3
/* 8070C2FC  B0 1C 06 AE */	sth r0, 0x6ae(r28)
/* 8070C300  38 00 00 00 */	li r0, 0
/* 8070C304  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8070C308  48 00 04 9C */	b lbl_8070C7A4
lbl_8070C30C:
/* 8070C30C  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 8070C310  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8070C314  EC 21 00 28 */	fsubs f1, f1, f0
/* 8070C318  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8070C31C  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 8070C320  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 8070C324  EC 42 00 28 */	fsubs f2, f2, f0
/* 8070C328  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8070C32C  4B B5 B3 48 */	b cM_atan2s__Fff
/* 8070C330  7C 7D 1B 78 */	mr r29, r3
/* 8070C334  C3 FF 00 04 */	lfs f31, 4(r31)
/* 8070C338  A8 1C 05 B4 */	lha r0, 0x5b4(r28)
/* 8070C33C  28 00 00 0B */	cmplwi r0, 0xb
/* 8070C340  41 81 04 1C */	bgt lbl_8070C75C
/* 8070C344  3C 60 80 71 */	lis r3, lit_4741@ha
/* 8070C348  38 63 3B 6C */	addi r3, r3, lit_4741@l
/* 8070C34C  54 00 10 3A */	slwi r0, r0, 2
/* 8070C350  7C 03 00 2E */	lwzx r0, r3, r0
/* 8070C354  7C 09 03 A6 */	mtctr r0
/* 8070C358  4E 80 04 20 */	bctr 
lbl_8070C35C:
/* 8070C35C  7F 83 E3 78 */	mr r3, r28
/* 8070C360  38 80 00 15 */	li r4, 0x15
/* 8070C364  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 8070C368  38 A0 00 00 */	li r5, 0
/* 8070C36C  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 8070C370  4B FF E4 BD */	bl anm_init__FP10e_mf_classifUcf
/* 8070C374  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703E2@ha */
/* 8070C378  38 03 03 E2 */	addi r0, r3, 0x03E2 /* 0x000703E2@l */
/* 8070C37C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8070C380  38 7C 05 E8 */	addi r3, r28, 0x5e8
/* 8070C384  38 81 00 10 */	addi r4, r1, 0x10
/* 8070C388  38 A0 FF FF */	li r5, -1
/* 8070C38C  81 9C 05 E8 */	lwz r12, 0x5e8(r28)
/* 8070C390  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8070C394  7D 89 03 A6 */	mtctr r12
/* 8070C398  4E 80 04 21 */	bctrl 
/* 8070C39C  38 00 00 01 */	li r0, 1
/* 8070C3A0  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8070C3A4  48 00 03 B8 */	b lbl_8070C75C
lbl_8070C3A8:
/* 8070C3A8  80 7C 05 DC */	lwz r3, 0x5dc(r28)
/* 8070C3AC  38 80 00 01 */	li r4, 1
/* 8070C3B0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8070C3B4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8070C3B8  40 82 00 14 */	bne lbl_8070C3CC
/* 8070C3BC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8070C3C0  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 8070C3C4  41 82 00 08 */	beq lbl_8070C3CC
/* 8070C3C8  38 80 00 00 */	li r4, 0
lbl_8070C3CC:
/* 8070C3CC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8070C3D0  41 82 03 8C */	beq lbl_8070C75C
/* 8070C3D4  38 00 00 02 */	li r0, 2
/* 8070C3D8  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8070C3DC  48 00 03 80 */	b lbl_8070C75C
lbl_8070C3E0:
/* 8070C3E0  38 00 00 03 */	li r0, 3
/* 8070C3E4  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8070C3E8  7F 83 E3 78 */	mr r3, r28
/* 8070C3EC  38 80 00 1F */	li r4, 0x1f
/* 8070C3F0  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 8070C3F4  38 A0 00 02 */	li r5, 2
/* 8070C3F8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8070C3FC  4B FF E4 31 */	bl anm_init__FP10e_mf_classifUcf
/* 8070C400  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 8070C404  4B B5 B5 50 */	b cM_rndF__Ff
/* 8070C408  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8070C40C  EC 00 08 2A */	fadds f0, f0, f1
/* 8070C410  FC 00 00 1E */	fctiwz f0, f0
/* 8070C414  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8070C418  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8070C41C  B0 1C 06 C2 */	sth r0, 0x6c2(r28)
lbl_8070C420:
/* 8070C420  A8 1C 06 C2 */	lha r0, 0x6c2(r28)
/* 8070C424  2C 00 00 00 */	cmpwi r0, 0
/* 8070C428  40 82 03 34 */	bne lbl_8070C75C
/* 8070C42C  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 8070C430  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 8070C434  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070C438  40 80 03 24 */	bge lbl_8070C75C
/* 8070C43C  38 00 00 04 */	li r0, 4
/* 8070C440  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8070C444  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 8070C448  4B B5 B5 44 */	b cM_rndFX__Ff
/* 8070C44C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8070C450  EC 40 08 2A */	fadds f2, f0, f1
/* 8070C454  7F 83 E3 78 */	mr r3, r28
/* 8070C458  38 80 00 1E */	li r4, 0x1e
/* 8070C45C  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 8070C460  38 A0 00 02 */	li r5, 2
/* 8070C464  4B FF E3 C9 */	bl anm_init__FP10e_mf_classifUcf
/* 8070C468  48 00 02 F4 */	b lbl_8070C75C
lbl_8070C46C:
/* 8070C46C  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 8070C470  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 8070C474  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070C478  40 80 00 74 */	bge lbl_8070C4EC
/* 8070C47C  7F C3 F3 78 */	mr r3, r30
/* 8070C480  4B 92 5B 14 */	b checkStateCarry__7dBomb_cFv
/* 8070C484  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8070C488  40 82 00 64 */	bne lbl_8070C4EC
/* 8070C48C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8070C490  EC 20 00 32 */	fmuls f1, f0, f0
/* 8070C494  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8070C498  EC 00 00 32 */	fmuls f0, f0, f0
/* 8070C49C  EC 21 00 2A */	fadds f1, f1, f0
/* 8070C4A0  FC 00 F8 90 */	fmr f0, f31
/* 8070C4A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070C4A8  40 81 00 0C */	ble lbl_8070C4B4
/* 8070C4AC  FC 00 08 34 */	frsqrte f0, f1
/* 8070C4B0  EC 20 00 72 */	fmuls f1, f0, f1
lbl_8070C4B4:
/* 8070C4B4  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 8070C4B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070C4BC  40 80 00 30 */	bge lbl_8070C4EC
/* 8070C4C0  A8 7C 04 E6 */	lha r3, 0x4e6(r28)
/* 8070C4C4  A8 1C 06 B4 */	lha r0, 0x6b4(r28)
/* 8070C4C8  7C 03 00 50 */	subf r0, r3, r0
/* 8070C4CC  7C 00 07 34 */	extsh r0, r0
/* 8070C4D0  2C 00 40 00 */	cmpwi r0, 0x4000
/* 8070C4D4  40 80 00 18 */	bge lbl_8070C4EC
/* 8070C4D8  2C 00 C0 00 */	cmpwi r0, -16384
/* 8070C4DC  40 81 00 10 */	ble lbl_8070C4EC
/* 8070C4E0  38 00 00 0A */	li r0, 0xa
/* 8070C4E4  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8070C4E8  48 00 02 74 */	b lbl_8070C75C
lbl_8070C4EC:
/* 8070C4EC  3F BD 00 01 */	addis r29, r29, 1
/* 8070C4F0  3C 60 80 71 */	lis r3, l_HIO@ha
/* 8070C4F4  38 63 3F 74 */	addi r3, r3, l_HIO@l
/* 8070C4F8  C3 E3 00 10 */	lfs f31, 0x10(r3)
/* 8070C4FC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8070C500  EC 20 00 32 */	fmuls f1, f0, f0
/* 8070C504  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8070C508  EC 00 00 32 */	fmuls f0, f0, f0
/* 8070C50C  EC 21 00 2A */	fadds f1, f1, f0
/* 8070C510  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8070C514  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070C518  3B BD 80 00 */	addi r29, r29, -32768
/* 8070C51C  40 81 00 0C */	ble lbl_8070C528
/* 8070C520  FC 00 08 34 */	frsqrte f0, f1
/* 8070C524  EC 20 00 72 */	fmuls f1, f0, f1
lbl_8070C528:
/* 8070C528  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 8070C52C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070C530  40 81 02 2C */	ble lbl_8070C75C
/* 8070C534  38 00 00 05 */	li r0, 5
/* 8070C538  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8070C53C  7F 83 E3 78 */	mr r3, r28
/* 8070C540  38 80 00 1F */	li r4, 0x1f
/* 8070C544  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 8070C548  38 A0 00 02 */	li r5, 2
/* 8070C54C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8070C550  4B FF E2 DD */	bl anm_init__FP10e_mf_classifUcf
/* 8070C554  48 00 02 08 */	b lbl_8070C75C
lbl_8070C558:
/* 8070C558  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703E3@ha */
/* 8070C55C  38 03 03 E3 */	addi r0, r3, 0x03E3 /* 0x000703E3@l */
/* 8070C560  90 01 00 0C */	stw r0, 0xc(r1)
/* 8070C564  38 7C 05 E8 */	addi r3, r28, 0x5e8
/* 8070C568  38 81 00 0C */	addi r4, r1, 0xc
/* 8070C56C  38 A0 00 00 */	li r5, 0
/* 8070C570  38 C0 FF FF */	li r6, -1
/* 8070C574  81 9C 05 E8 */	lwz r12, 0x5e8(r28)
/* 8070C578  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8070C57C  7D 89 03 A6 */	mtctr r12
/* 8070C580  4E 80 04 21 */	bctrl 
/* 8070C584  AB BC 06 B4 */	lha r29, 0x6b4(r28)
/* 8070C588  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8070C58C  EC 20 00 32 */	fmuls f1, f0, f0
/* 8070C590  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8070C594  EC 00 00 32 */	fmuls f0, f0, f0
/* 8070C598  EC 21 00 2A */	fadds f1, f1, f0
/* 8070C59C  FC 00 F8 90 */	fmr f0, f31
/* 8070C5A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070C5A4  40 81 00 0C */	ble lbl_8070C5B0
/* 8070C5A8  FC 00 08 34 */	frsqrte f0, f1
/* 8070C5AC  EC 20 00 72 */	fmuls f1, f0, f1
lbl_8070C5B0:
/* 8070C5B0  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8070C5B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070C5B8  40 80 01 A4 */	bge lbl_8070C75C
/* 8070C5BC  38 00 00 02 */	li r0, 2
/* 8070C5C0  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8070C5C4  48 00 01 98 */	b lbl_8070C75C
lbl_8070C5C8:
/* 8070C5C8  38 00 00 00 */	li r0, 0
/* 8070C5CC  98 1C 06 D2 */	stb r0, 0x6d2(r28)
/* 8070C5D0  3C 60 80 71 */	lis r3, l_HIO@ha
/* 8070C5D4  38 63 3F 74 */	addi r3, r3, l_HIO@l
/* 8070C5D8  C3 E3 00 10 */	lfs f31, 0x10(r3)
/* 8070C5DC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8070C5E0  EC 20 00 32 */	fmuls f1, f0, f0
/* 8070C5E4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8070C5E8  EC 00 00 32 */	fmuls f0, f0, f0
/* 8070C5EC  EC 21 00 2A */	fadds f1, f1, f0
/* 8070C5F0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8070C5F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070C5F8  40 81 00 0C */	ble lbl_8070C604
/* 8070C5FC  FC 00 08 34 */	frsqrte f0, f1
/* 8070C600  EC 20 00 72 */	fmuls f1, f0, f1
lbl_8070C604:
/* 8070C604  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8070C608  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070C60C  40 80 00 60 */	bge lbl_8070C66C
/* 8070C610  38 00 00 14 */	li r0, 0x14
/* 8070C614  B0 1C 06 C0 */	sth r0, 0x6c0(r28)
/* 8070C618  38 00 00 0B */	li r0, 0xb
/* 8070C61C  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8070C620  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 8070C624  4B B5 B3 68 */	b cM_rndFX__Ff
/* 8070C628  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8070C62C  EC 40 08 2A */	fadds f2, f0, f1
/* 8070C630  7F 83 E3 78 */	mr r3, r28
/* 8070C634  38 80 00 1E */	li r4, 0x1e
/* 8070C638  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 8070C63C  38 A0 00 00 */	li r5, 0
/* 8070C640  4B FF E1 ED */	bl anm_init__FP10e_mf_classifUcf
/* 8070C644  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703E4@ha */
/* 8070C648  38 03 03 E4 */	addi r0, r3, 0x03E4 /* 0x000703E4@l */
/* 8070C64C  90 01 00 08 */	stw r0, 8(r1)
/* 8070C650  38 7C 05 E8 */	addi r3, r28, 0x5e8
/* 8070C654  38 81 00 08 */	addi r4, r1, 8
/* 8070C658  38 A0 FF FF */	li r5, -1
/* 8070C65C  81 9C 05 E8 */	lwz r12, 0x5e8(r28)
/* 8070C660  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8070C664  7D 89 03 A6 */	mtctr r12
/* 8070C668  4E 80 04 21 */	bctrl 
lbl_8070C66C:
/* 8070C66C  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 8070C670  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 8070C674  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070C678  40 81 00 E4 */	ble lbl_8070C75C
/* 8070C67C  38 00 00 02 */	li r0, 2
/* 8070C680  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8070C684  48 00 00 D8 */	b lbl_8070C75C
lbl_8070C688:
/* 8070C688  38 00 00 00 */	li r0, 0
/* 8070C68C  98 1C 06 D2 */	stb r0, 0x6d2(r28)
/* 8070C690  AB BC 06 B4 */	lha r29, 0x6b4(r28)
/* 8070C694  A8 1C 06 C0 */	lha r0, 0x6c0(r28)
/* 8070C698  2C 00 00 0A */	cmpwi r0, 0xa
/* 8070C69C  41 80 00 94 */	blt lbl_8070C730
/* 8070C6A0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8070C6A4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8070C6A8  80 63 00 00 */	lwz r3, 0(r3)
/* 8070C6AC  7F A4 EB 78 */	mr r4, r29
/* 8070C6B0  4B 8F FD 2C */	b mDoMtx_YrotS__FPA4_fs
/* 8070C6B4  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 8070C6B8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8070C6BC  FC 00 F8 90 */	fmr f0, f31
/* 8070C6C0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8070C6C4  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 8070C6C8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8070C6CC  38 61 00 20 */	addi r3, r1, 0x20
/* 8070C6D0  38 81 00 14 */	addi r4, r1, 0x14
/* 8070C6D4  4B B6 48 18 */	b MtxPosition__FP4cXyzP4cXyz
/* 8070C6D8  38 61 00 14 */	addi r3, r1, 0x14
/* 8070C6DC  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 8070C6E0  7C 65 1B 78 */	mr r5, r3
/* 8070C6E4  4B C3 A9 AC */	b PSVECAdd
/* 8070C6E8  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8070C6EC  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8070C6F0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8070C6F4  C0 7F 00 A8 */	lfs f3, 0xa8(r31)
/* 8070C6F8  4B B6 33 44 */	b cLib_addCalc2__FPffff
/* 8070C6FC  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 8070C700  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 8070C704  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8070C708  C0 7F 00 A8 */	lfs f3, 0xa8(r31)
/* 8070C70C  4B B6 33 30 */	b cLib_addCalc2__FPffff
/* 8070C710  A8 1C 06 C0 */	lha r0, 0x6c0(r28)
/* 8070C714  2C 00 00 0A */	cmpwi r0, 0xa
/* 8070C718  40 82 00 18 */	bne lbl_8070C730
/* 8070C71C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8070C720  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8070C724  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8070C728  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 8070C72C  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_8070C730:
/* 8070C730  A8 1C 06 C0 */	lha r0, 0x6c0(r28)
/* 8070C734  2C 00 00 00 */	cmpwi r0, 0
/* 8070C738  40 82 00 24 */	bne lbl_8070C75C
/* 8070C73C  7F 83 E3 78 */	mr r3, r28
/* 8070C740  38 80 00 1F */	li r4, 0x1f
/* 8070C744  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 8070C748  38 A0 00 02 */	li r5, 2
/* 8070C74C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8070C750  4B FF E0 DD */	bl anm_init__FP10e_mf_classifUcf
/* 8070C754  38 00 00 05 */	li r0, 5
/* 8070C758  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
lbl_8070C75C:
/* 8070C75C  38 7C 05 2C */	addi r3, r28, 0x52c
/* 8070C760  FC 20 F8 90 */	fmr f1, f31
/* 8070C764  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8070C768  C0 7F 00 7C */	lfs f3, 0x7c(r31)
/* 8070C76C  4B B6 32 D0 */	b cLib_addCalc2__FPffff
/* 8070C770  38 7C 04 DE */	addi r3, r28, 0x4de
/* 8070C774  7F A4 EB 78 */	mr r4, r29
/* 8070C778  38 A0 00 04 */	li r5, 4
/* 8070C77C  38 C0 10 00 */	li r6, 0x1000
/* 8070C780  4B B6 3E 88 */	b cLib_addCalcAngleS2__FPssss
/* 8070C784  38 00 00 02 */	li r0, 2
/* 8070C788  98 1C 06 D4 */	stb r0, 0x6d4(r28)
/* 8070C78C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8070C790  D0 1C 07 18 */	stfs f0, 0x718(r28)
/* 8070C794  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8070C798  D0 1C 07 1C */	stfs f0, 0x71c(r28)
/* 8070C79C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8070C7A0  D0 1C 07 20 */	stfs f0, 0x720(r28)
lbl_8070C7A4:
/* 8070C7A4  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8070C7A8  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8070C7AC  39 61 00 50 */	addi r11, r1, 0x50
/* 8070C7B0  4B C5 5A 74 */	b _restgpr_28
/* 8070C7B4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8070C7B8  7C 08 03 A6 */	mtlr r0
/* 8070C7BC  38 21 00 60 */	addi r1, r1, 0x60
/* 8070C7C0  4E 80 00 20 */	blr 

lbl_8004A460:
/* 8004A460  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 8004A464  7C 08 02 A6 */	mflr r0
/* 8004A468  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8004A46C  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 8004A470  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 8004A474  93 E1 00 BC */	stw r31, 0xbc(r1)
/* 8004A478  93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 8004A47C  7C 9E 23 78 */	mr r30, r4
/* 8004A480  7C BF 2B 78 */	mr r31, r5
/* 8004A484  38 61 00 74 */	addi r3, r1, 0x74
/* 8004A488  48 2F BF FD */	bl PSMTXIdentity
/* 8004A48C  38 61 00 44 */	addi r3, r1, 0x44
/* 8004A490  48 2F BF F5 */	bl PSMTXIdentity
/* 8004A494  C0 42 85 5C */	lfs f2, lit_4090(r2)
/* 8004A498  A0 1F 00 88 */	lhz r0, 0x88(r31)
/* 8004A49C  C8 22 85 68 */	lfd f1, lit_4093(r2)
/* 8004A4A0  90 01 00 AC */	stw r0, 0xac(r1)
/* 8004A4A4  3C 00 43 30 */	lis r0, 0x4330
/* 8004A4A8  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 8004A4AC  C8 01 00 A8 */	lfd f0, 0xa8(r1)
/* 8004A4B0  EC 00 08 28 */	fsubs f0, f0, f1
/* 8004A4B4  EF E2 00 32 */	fmuls f31, f2, f0
/* 8004A4B8  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004A4BC  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 8004A4C0  41 82 00 C4 */	beq lbl_8004A584
/* 8004A4C4  7F C3 F3 78 */	mr r3, r30
/* 8004A4C8  48 00 08 C9 */	bl getRotAxis__18dPa_modelEcallBackFP14JPABaseEmitter
/* 8004A4CC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8004A4D0  2C 00 00 02 */	cmpwi r0, 2
/* 8004A4D4  41 82 00 54 */	beq lbl_8004A528
/* 8004A4D8  40 80 00 14 */	bge lbl_8004A4EC
/* 8004A4DC  2C 00 00 00 */	cmpwi r0, 0
/* 8004A4E0  41 82 00 18 */	beq lbl_8004A4F8
/* 8004A4E4  40 80 00 2C */	bge lbl_8004A510
/* 8004A4E8  48 00 00 8C */	b lbl_8004A574
lbl_8004A4EC:
/* 8004A4EC  2C 00 00 04 */	cmpwi r0, 4
/* 8004A4F0  40 80 00 84 */	bge lbl_8004A574
/* 8004A4F4  48 00 00 4C */	b lbl_8004A540
lbl_8004A4F8:
/* 8004A4F8  38 61 00 44 */	addi r3, r1, 0x44
/* 8004A4FC  38 80 00 79 */	li r4, 0x79
/* 8004A500  C0 02 85 60 */	lfs f0, lit_4091(r2)
/* 8004A504  EC 20 07 F2 */	fmuls f1, f0, f31
/* 8004A508  48 2F C1 A1 */	bl PSMTXRotRad
/* 8004A50C  48 00 00 68 */	b lbl_8004A574
lbl_8004A510:
/* 8004A510  38 61 00 44 */	addi r3, r1, 0x44
/* 8004A514  38 80 00 78 */	li r4, 0x78
/* 8004A518  C0 02 85 60 */	lfs f0, lit_4091(r2)
/* 8004A51C  EC 20 07 F2 */	fmuls f1, f0, f31
/* 8004A520  48 2F C1 89 */	bl PSMTXRotRad
/* 8004A524  48 00 00 50 */	b lbl_8004A574
lbl_8004A528:
/* 8004A528  38 61 00 44 */	addi r3, r1, 0x44
/* 8004A52C  38 80 00 7A */	li r4, 0x7a
/* 8004A530  C0 02 85 60 */	lfs f0, lit_4091(r2)
/* 8004A534  EC 20 07 F2 */	fmuls f1, f0, f31
/* 8004A538  48 2F C1 71 */	bl PSMTXRotRad
/* 8004A53C  48 00 00 38 */	b lbl_8004A574
lbl_8004A540:
/* 8004A540  3C 60 80 38 */	lis r3, lit_4065@ha /* 0x8037A108@ha */
/* 8004A544  38 83 A1 08 */	addi r4, r3, lit_4065@l /* 0x8037A108@l */
/* 8004A548  80 64 00 00 */	lwz r3, 0(r4)
/* 8004A54C  80 04 00 04 */	lwz r0, 4(r4)
/* 8004A550  90 61 00 08 */	stw r3, 8(r1)
/* 8004A554  90 01 00 0C */	stw r0, 0xc(r1)
/* 8004A558  80 04 00 08 */	lwz r0, 8(r4)
/* 8004A55C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8004A560  38 61 00 44 */	addi r3, r1, 0x44
/* 8004A564  38 81 00 08 */	addi r4, r1, 8
/* 8004A568  C0 02 85 60 */	lfs f0, lit_4091(r2)
/* 8004A56C  EC 20 07 F2 */	fmuls f1, f0, f31
/* 8004A570  48 2F C3 09 */	bl PSMTXRotAxisRad
lbl_8004A574:
/* 8004A574  38 61 00 74 */	addi r3, r1, 0x74
/* 8004A578  38 81 00 44 */	addi r4, r1, 0x44
/* 8004A57C  7C 65 1B 78 */	mr r5, r3
/* 8004A580  48 2F BF 65 */	bl PSMTXConcat
lbl_8004A584:
/* 8004A584  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8004A588  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8004A58C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8004A590  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8004A594  D0 21 00 90 */	stfs f1, 0x90(r1)
/* 8004A598  D0 41 00 A0 */	stfs f2, 0xa0(r1)
/* 8004A59C  C0 3E 00 B0 */	lfs f1, 0xb0(r30)
/* 8004A5A0  C0 5E 00 B4 */	lfs f2, 0xb4(r30)
/* 8004A5A4  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8004A5A8  EC 21 00 32 */	fmuls f1, f1, f0
/* 8004A5AC  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 8004A5B0  EC 42 00 32 */	fmuls f2, f2, f0
/* 8004A5B4  38 61 00 14 */	addi r3, r1, 0x14
/* 8004A5B8  FC 60 08 90 */	fmr f3, f1
/* 8004A5BC  48 2F C3 AD */	bl PSMTXScale
/* 8004A5C0  38 61 00 74 */	addi r3, r1, 0x74
/* 8004A5C4  38 81 00 14 */	addi r4, r1, 0x14
/* 8004A5C8  7C 65 1B 78 */	mr r5, r3
/* 8004A5CC  48 2F BF 19 */	bl PSMTXConcat
/* 8004A5D0  7F C3 F3 78 */	mr r3, r30
/* 8004A5D4  38 81 00 74 */	addi r4, r1, 0x74
/* 8004A5D8  48 00 07 15 */	bl drawModel__18dPa_modelEcallBackFP14JPABaseEmitterPA4_f
/* 8004A5DC  80 1F 00 7C */	lwz r0, 0x7c(r31)
/* 8004A5E0  60 00 00 08 */	ori r0, r0, 8
/* 8004A5E4  90 1F 00 7C */	stw r0, 0x7c(r31)
/* 8004A5E8  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 8004A5EC  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 8004A5F0  83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 8004A5F4  83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 8004A5F8  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 8004A5FC  7C 08 03 A6 */	mtlr r0
/* 8004A600  38 21 00 D0 */	addi r1, r1, 0xd0
/* 8004A604  4E 80 00 20 */	blr 

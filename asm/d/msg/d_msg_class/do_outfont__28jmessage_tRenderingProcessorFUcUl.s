lbl_8022EAE4:
/* 8022EAE4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8022EAE8  7C 08 02 A6 */	mflr r0
/* 8022EAEC  90 01 00 84 */	stw r0, 0x84(r1)
/* 8022EAF0  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 8022EAF4  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 8022EAF8  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 8022EAFC  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 8022EB00  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 8022EB04  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 8022EB08  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 8022EB0C  F3 81 00 48 */	psq_st f28, 72(r1), 0, 0 /* qr0 */
/* 8022EB10  39 61 00 40 */	addi r11, r1, 0x40
/* 8022EB14  48 13 36 C1 */	bl _savegpr_27
/* 8022EB18  7C 7F 1B 78 */	mr r31, r3
/* 8022EB1C  7C 9B 23 78 */	mr r27, r4
/* 8022EB20  7C BC 2B 78 */	mr r28, r5
/* 8022EB24  83 A3 00 04 */	lwz r29, 4(r3)
/* 8022EB28  83 DD 05 C8 */	lwz r30, 0x5c8(r29)
/* 8022EB2C  7F C3 F3 78 */	mr r3, r30
/* 8022EB30  81 9E 00 00 */	lwz r12, 0(r30)
/* 8022EB34  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8022EB38  7D 89 03 A6 */	mtctr r12
/* 8022EB3C  4E 80 04 21 */	bctrl 
/* 8022EB40  7F C3 F3 78 */	mr r3, r30
/* 8022EB44  81 9E 00 00 */	lwz r12, 0(r30)
/* 8022EB48  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8022EB4C  7D 89 03 A6 */	mtctr r12
/* 8022EB50  4E 80 04 21 */	bctrl 
/* 8022EB54  C0 22 B0 94 */	lfs f1, lit_6781(r2)
/* 8022EB58  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 8022EB5C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8022EB60  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8022EB64  EF E0 00 72 */	fmuls f31, f0, f1
/* 8022EB68  C0 7F 00 5C */	lfs f3, 0x5c(r31)
/* 8022EB6C  EF C0 00 F2 */	fmuls f30, f0, f3
/* 8022EB70  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 8022EB74  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 8022EB78  EC 00 10 28 */	fsubs f0, f0, f2
/* 8022EB7C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8022EB80  EF A2 00 2A */	fadds f29, f2, f0
/* 8022EB84  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8022EB88  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8022EB8C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8022EB90  EC 03 00 32 */	fmuls f0, f3, f0
/* 8022EB94  EF 81 00 2A */	fadds f28, f1, f0
/* 8022EB98  28 1C 00 00 */	cmplwi r28, 0
/* 8022EB9C  40 82 00 0C */	bne lbl_8022EBA8
/* 8022EBA0  80 DF 01 20 */	lwz r6, 0x120(r31)
/* 8022EBA4  48 00 00 08 */	b lbl_8022EBAC
lbl_8022EBA8:
/* 8022EBA8  7F 86 E3 78 */	mr r6, r28
lbl_8022EBAC:
/* 8022EBAC  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 8022EBB0  28 00 00 1E */	cmplwi r0, 0x1e
/* 8022EBB4  40 82 00 10 */	bne lbl_8022EBC4
/* 8022EBB8  88 1D 12 50 */	lbz r0, 0x1250(r29)
/* 8022EBBC  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8022EBC0  98 03 02 41 */	stb r0, 0x241(r3)
lbl_8022EBC4:
/* 8022EBC4  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8022EBC8  38 80 00 00 */	li r4, 0
/* 8022EBCC  7F 65 DB 78 */	mr r5, r27
/* 8022EBD0  A8 1F 01 42 */	lha r0, 0x142(r31)
/* 8022EBD4  54 00 10 3A */	slwi r0, r0, 2
/* 8022EBD8  7C FF 02 14 */	add r7, r31, r0
/* 8022EBDC  C0 07 00 7C */	lfs f0, 0x7c(r7)
/* 8022EBE0  EC 3D 00 28 */	fsubs f1, f29, f0
/* 8022EBE4  FC 40 E0 90 */	fmr f2, f28
/* 8022EBE8  FC 60 F8 90 */	fmr f3, f31
/* 8022EBEC  FC 80 F0 90 */	fmr f4, f30
/* 8022EBF0  38 E0 00 FF */	li r7, 0xff
/* 8022EBF4  81 83 00 00 */	lwz r12, 0(r3)
/* 8022EBF8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8022EBFC  7D 89 03 A6 */	mtctr r12
/* 8022EC00  4E 80 04 21 */	bctrl 
/* 8022EC04  88 7D 05 DD */	lbz r3, 0x5dd(r29)
/* 8022EC08  38 03 00 01 */	addi r0, r3, 1
/* 8022EC0C  98 1D 05 DD */	stb r0, 0x5dd(r29)
/* 8022EC10  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 8022EC14  28 00 00 00 */	cmplwi r0, 0
/* 8022EC18  41 82 00 38 */	beq lbl_8022EC50
/* 8022EC1C  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 8022EC20  7F E3 FB 78 */	mr r3, r31
/* 8022EC24  C0 82 B0 5C */	lfs f4, lit_4026(r2)
/* 8022EC28  EC 04 07 F2 */	fmuls f0, f4, f31
/* 8022EC2C  EC 1D 00 2A */	fadds f0, f29, f0
/* 8022EC30  EC 24 00 2A */	fadds f1, f4, f0
/* 8022EC34  C0 5F 01 38 */	lfs f2, 0x138(r31)
/* 8022EC38  EC 04 07 B2 */	fmuls f0, f4, f30
/* 8022EC3C  EC 1C 00 2A */	fadds f0, f28, f0
/* 8022EC40  EC 42 00 2A */	fadds f2, f2, f0
/* 8022EC44  FC 80 18 90 */	fmr f4, f3
/* 8022EC48  C0 A2 B0 64 */	lfs f5, lit_4028(r2)
/* 8022EC4C  48 00 0B 39 */	bl getCharInfo__28jmessage_tRenderingProcessorFfffff
lbl_8022EC50:
/* 8022EC50  C0 42 B0 5C */	lfs f2, lit_4026(r2)
/* 8022EC54  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8022EC58  C0 02 B0 64 */	lfs f0, lit_4028(r2)
/* 8022EC5C  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8022EC60  EC 21 00 32 */	fmuls f1, f1, f0
/* 8022EC64  C0 1D 04 38 */	lfs f0, 0x438(r29)
/* 8022EC68  EC 01 00 2A */	fadds f0, f1, f0
/* 8022EC6C  EC 02 00 2A */	fadds f0, f2, f0
/* 8022EC70  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 8022EC74  FC 00 00 1E */	fctiwz f0, f0
/* 8022EC78  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8022EC7C  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 8022EC80  C8 22 B0 70 */	lfd f1, lit_4198(r2)
/* 8022EC84  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 8022EC88  90 01 00 24 */	stw r0, 0x24(r1)
/* 8022EC8C  3C 00 43 30 */	lis r0, 0x4330
/* 8022EC90  90 01 00 20 */	stw r0, 0x20(r1)
/* 8022EC94  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8022EC98  EC 00 08 28 */	fsubs f0, f0, f1
/* 8022EC9C  EC 02 00 2A */	fadds f0, f2, f0
/* 8022ECA0  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 8022ECA4  38 61 00 08 */	addi r3, r1, 8
/* 8022ECA8  38 80 00 0F */	li r4, 0xf
/* 8022ECAC  3C A0 80 3A */	lis r5, d_msg_d_msg_class__stringBase0@ha /* 0x80399610@ha */
/* 8022ECB0  38 A5 96 10 */	addi r5, r5, d_msg_d_msg_class__stringBase0@l /* 0x80399610@l */
/* 8022ECB4  38 A5 00 08 */	addi r5, r5, 8
/* 8022ECB8  4C C6 31 82 */	crclr 6
/* 8022ECBC  48 13 79 01 */	bl snprintf
/* 8022ECC0  7F E3 FB 78 */	mr r3, r31
/* 8022ECC4  38 81 00 08 */	addi r4, r1, 8
/* 8022ECC8  38 A0 00 00 */	li r5, 0
/* 8022ECCC  38 C0 00 01 */	li r6, 1
/* 8022ECD0  38 E0 00 00 */	li r7, 0
/* 8022ECD4  48 00 02 2D */	bl do_strcat__28jmessage_tRenderingProcessorFPcbbb
/* 8022ECD8  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 8022ECDC  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8022ECE0  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 8022ECE4  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 8022ECE8  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 8022ECEC  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 8022ECF0  E3 81 00 48 */	psq_l f28, 72(r1), 0, 0 /* qr0 */
/* 8022ECF4  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 8022ECF8  39 61 00 40 */	addi r11, r1, 0x40
/* 8022ECFC  48 13 35 25 */	bl _restgpr_27
/* 8022ED00  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8022ED04  7C 08 03 A6 */	mtlr r0
/* 8022ED08  38 21 00 80 */	addi r1, r1, 0x80
/* 8022ED0C  4E 80 00 20 */	blr 

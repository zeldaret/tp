lbl_8022E17C:
/* 8022E17C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8022E180  7C 08 02 A6 */	mflr r0
/* 8022E184  90 01 00 44 */	stw r0, 0x44(r1)
/* 8022E188  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8022E18C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8022E190  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8022E194  7C 7F 1B 78 */	mr r31, r3
/* 8022E198  38 00 00 00 */	li r0, 0
/* 8022E19C  98 03 01 87 */	stb r0, 0x187(r3)
/* 8022E1A0  80 C3 00 04 */	lwz r6, 4(r3)
/* 8022E1A4  A8 83 01 42 */	lha r4, 0x142(r3)
/* 8022E1A8  A8 06 05 CC */	lha r0, 0x5cc(r6)
/* 8022E1AC  7C 04 02 14 */	add r0, r4, r0
/* 8022E1B0  7C 00 07 34 */	extsh r0, r0
/* 8022E1B4  7C A6 02 14 */	add r5, r6, r0
/* 8022E1B8  88 05 12 1A */	lbz r0, 0x121a(r5)
/* 8022E1BC  28 00 00 01 */	cmplwi r0, 1
/* 8022E1C0  41 82 00 84 */	beq lbl_8022E244
/* 8022E1C4  28 00 00 02 */	cmplwi r0, 2
/* 8022E1C8  40 82 00 08 */	bne lbl_8022E1D0
/* 8022E1CC  48 00 00 78 */	b lbl_8022E244
lbl_8022E1D0:
/* 8022E1D0  C3 E6 04 2C */	lfs f31, 0x42c(r6)
/* 8022E1D4  48 00 0C F9 */	bl getLineLength__28jmessage_tRenderingProcessorFi
/* 8022E1D8  EC 1F 08 28 */	fsubs f0, f31, f1
/* 8022E1DC  C0 22 B0 5C */	lfs f1, lit_4026(r2)
/* 8022E1E0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8022E1E4  EF E1 00 2A */	fadds f31, f1, f0
/* 8022E1E8  C0 02 B0 64 */	lfs f0, lit_4028(r2)
/* 8022E1EC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8022E1F0  4C 41 13 82 */	cror 2, 1, 2
/* 8022E1F4  40 82 00 50 */	bne lbl_8022E244
/* 8022E1F8  38 61 00 08 */	addi r3, r1, 8
/* 8022E1FC  38 80 00 0F */	li r4, 0xf
/* 8022E200  3C A0 80 3A */	lis r5, d_msg_d_msg_class__stringBase0@ha /* 0x80399610@ha */
/* 8022E204  38 A5 96 10 */	addi r5, r5, d_msg_d_msg_class__stringBase0@l /* 0x80399610@l */
/* 8022E208  38 A5 00 08 */	addi r5, r5, 8
/* 8022E20C  FC 00 F8 1E */	fctiwz f0, f31
/* 8022E210  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8022E214  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 8022E218  4C C6 31 82 */	crclr 6
/* 8022E21C  48 13 83 A1 */	bl snprintf
/* 8022E220  7F E3 FB 78 */	mr r3, r31
/* 8022E224  38 81 00 08 */	addi r4, r1, 8
/* 8022E228  38 A0 00 00 */	li r5, 0
/* 8022E22C  38 C0 00 01 */	li r6, 1
/* 8022E230  38 E0 00 01 */	li r7, 1
/* 8022E234  48 00 0C CD */	bl do_strcat__28jmessage_tRenderingProcessorFPcbbb
/* 8022E238  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 8022E23C  EC 00 F8 2A */	fadds f0, f0, f31
/* 8022E240  D0 1F 00 48 */	stfs f0, 0x48(r31)
lbl_8022E244:
/* 8022E244  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8022E248  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8022E24C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8022E250  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8022E254  7C 08 03 A6 */	mtlr r0
/* 8022E258  38 21 00 40 */	addi r1, r1, 0x40
/* 8022E25C  4E 80 00 20 */	blr 

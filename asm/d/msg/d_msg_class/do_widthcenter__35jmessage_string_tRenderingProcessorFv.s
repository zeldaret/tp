lbl_80231D70:
/* 80231D70  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80231D74  7C 08 02 A6 */	mflr r0
/* 80231D78  90 01 00 44 */	stw r0, 0x44(r1)
/* 80231D7C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80231D80  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80231D84  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80231D88  7C 7F 1B 78 */	mr r31, r3
/* 80231D8C  4B FF EE 95 */	bl getLineCountNowPage__35jmessage_string_tRenderingProcessorFv
/* 80231D90  7C 60 07 35 */	extsh. r0, r3
/* 80231D94  41 80 01 40 */	blt lbl_80231ED4
/* 80231D98  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80231D9C  80 83 00 08 */	lwz r4, 8(r3)
/* 80231DA0  28 04 00 00 */	cmplwi r4, 0
/* 80231DA4  41 82 01 30 */	beq lbl_80231ED4
/* 80231DA8  88 03 00 84 */	lbz r0, 0x84(r3)
/* 80231DAC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80231DB0  40 82 00 10 */	bne lbl_80231DC0
/* 80231DB4  88 04 01 30 */	lbz r0, 0x130(r4)
/* 80231DB8  54 00 F7 BF */	rlwinm. r0, r0, 0x1e, 0x1e, 0x1f
/* 80231DBC  40 82 01 18 */	bne lbl_80231ED4
lbl_80231DC0:
/* 80231DC0  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 80231DC4  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 80231DC8  EF E1 00 28 */	fsubs f31, f1, f0
/* 80231DCC  7F E3 FB 78 */	mr r3, r31
/* 80231DD0  4B FF EE 51 */	bl getLineCountNowPage__35jmessage_string_tRenderingProcessorFv
/* 80231DD4  7C 64 07 34 */	extsh r4, r3
/* 80231DD8  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80231DDC  4B FF DC 5D */	bl getLineLength__26jmessage_string_tReferenceFi
/* 80231DE0  C0 42 B0 5C */	lfs f2, lit_4026(r2)
/* 80231DE4  C0 02 B0 64 */	lfs f0, lit_4028(r2)
/* 80231DE8  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80231DEC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80231DF0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80231DF4  EF E2 00 2A */	fadds f31, f2, f0
/* 80231DF8  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80231DFC  80 63 00 08 */	lwz r3, 8(r3)
/* 80231E00  88 03 01 30 */	lbz r0, 0x130(r3)
/* 80231E04  54 00 F7 BF */	rlwinm. r0, r0, 0x1e, 0x1e, 0x1f
/* 80231E08  40 82 00 4C */	bne lbl_80231E54
/* 80231E0C  7F E3 FB 78 */	mr r3, r31
/* 80231E10  4B FF EE 11 */	bl getLineCountNowPage__35jmessage_string_tRenderingProcessorFv
/* 80231E14  7C 64 07 34 */	extsh r4, r3
/* 80231E18  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80231E1C  4B FF DC 7D */	bl getOutfontLength__26jmessage_string_tReferenceFi
/* 80231E20  FC 00 08 1E */	fctiwz f0, f1
/* 80231E24  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80231E28  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 80231E2C  38 61 00 08 */	addi r3, r1, 8
/* 80231E30  38 80 00 0F */	li r4, 0xf
/* 80231E34  3C A0 80 3A */	lis r5, d_msg_d_msg_class__stringBase0@ha
/* 80231E38  38 A5 96 10 */	addi r5, r5, d_msg_d_msg_class__stringBase0@l
/* 80231E3C  38 A5 00 42 */	addi r5, r5, 0x42
/* 80231E40  4C C6 31 82 */	crclr 6
/* 80231E44  48 13 47 79 */	bl snprintf
/* 80231E48  7F E3 FB 78 */	mr r3, r31
/* 80231E4C  38 81 00 08 */	addi r4, r1, 8
/* 80231E50  48 00 01 F5 */	bl do_strcat__35jmessage_string_tRenderingProcessorFPc
lbl_80231E54:
/* 80231E54  C0 02 B0 64 */	lfs f0, lit_4028(r2)
/* 80231E58  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80231E5C  4C 41 13 82 */	cror 2, 1, 2
/* 80231E60  40 82 00 74 */	bne lbl_80231ED4
/* 80231E64  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 80231E68  FC 00 F8 1E */	fctiwz f0, f31
/* 80231E6C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80231E70  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 80231E74  C8 22 B0 70 */	lfd f1, lit_4198(r2)
/* 80231E78  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 80231E7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80231E80  3C 00 43 30 */	lis r0, 0x4330
/* 80231E84  90 01 00 20 */	stw r0, 0x20(r1)
/* 80231E88  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80231E8C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80231E90  EC 02 00 2A */	fadds f0, f2, f0
/* 80231E94  D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 80231E98  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80231E9C  80 63 00 08 */	lwz r3, 8(r3)
/* 80231EA0  88 03 01 30 */	lbz r0, 0x130(r3)
/* 80231EA4  54 00 F7 BF */	rlwinm. r0, r0, 0x1e, 0x1e, 0x1f
/* 80231EA8  41 82 00 2C */	beq lbl_80231ED4
/* 80231EAC  38 61 00 08 */	addi r3, r1, 8
/* 80231EB0  38 80 00 0F */	li r4, 0xf
/* 80231EB4  3C A0 80 3A */	lis r5, d_msg_d_msg_class__stringBase0@ha
/* 80231EB8  38 A5 96 10 */	addi r5, r5, d_msg_d_msg_class__stringBase0@l
/* 80231EBC  38 A5 00 08 */	addi r5, r5, 8
/* 80231EC0  4C C6 31 82 */	crclr 6
/* 80231EC4  48 13 46 F9 */	bl snprintf
/* 80231EC8  7F E3 FB 78 */	mr r3, r31
/* 80231ECC  38 81 00 08 */	addi r4, r1, 8
/* 80231ED0  48 00 01 75 */	bl do_strcat__35jmessage_string_tRenderingProcessorFPc
lbl_80231ED4:
/* 80231ED4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80231ED8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80231EDC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80231EE0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80231EE4  7C 08 03 A6 */	mtlr r0
/* 80231EE8  38 21 00 40 */	addi r1, r1, 0x40
/* 80231EEC  4E 80 00 20 */	blr 

lbl_80231EF0:
/* 80231EF0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80231EF4  7C 08 02 A6 */	mflr r0
/* 80231EF8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80231EFC  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80231F00  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80231F04  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80231F08  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80231F0C  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 80231F10  F3 A1 00 38 */	psq_st f29, 56(r1), 0, 0 /* qr0 */
/* 80231F14  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80231F18  7C 7F 1B 78 */	mr r31, r3
/* 80231F1C  80 63 00 38 */	lwz r3, 0x38(r3)
/* 80231F20  4B FF DC 05 */	bl getLineCountNowPage__26jmessage_string_tReferenceFv
/* 80231F24  7C 60 07 35 */	extsh. r0, r3
/* 80231F28  41 80 00 F0 */	blt lbl_80232018
/* 80231F2C  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80231F30  80 83 00 08 */	lwz r4, 8(r3)
/* 80231F34  28 04 00 00 */	cmplwi r4, 0
/* 80231F38  41 82 00 E0 */	beq lbl_80232018
/* 80231F3C  88 03 00 84 */	lbz r0, 0x84(r3)
/* 80231F40  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80231F44  40 82 00 10 */	bne lbl_80231F54
/* 80231F48  88 04 01 30 */	lbz r0, 0x130(r4)
/* 80231F4C  54 00 F7 BF */	rlwinm. r0, r0, 0x1e, 0x1e, 0x1f
/* 80231F50  40 82 00 C8 */	bne lbl_80232018
lbl_80231F54:
/* 80231F54  C0 24 00 2C */	lfs f1, 0x2c(r4)
/* 80231F58  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 80231F5C  EF E1 00 28 */	fsubs f31, f1, f0
/* 80231F60  C3 A4 01 20 */	lfs f29, 0x120(r4)
/* 80231F64  C3 C4 01 18 */	lfs f30, 0x118(r4)
/* 80231F68  4B FF DB BD */	bl getLineCountNowPage__26jmessage_string_tReferenceFv
/* 80231F6C  7C 60 07 34 */	extsh r0, r3
/* 80231F70  C8 22 B0 70 */	lfd f1, lit_4198(r2)
/* 80231F74  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80231F78  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80231F7C  3C 00 43 30 */	lis r0, 0x4330
/* 80231F80  90 01 00 18 */	stw r0, 0x18(r1)
/* 80231F84  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80231F88  EC 00 08 28 */	fsubs f0, f0, f1
/* 80231F8C  EC 3E 00 32 */	fmuls f1, f30, f0
/* 80231F90  EC 1E E8 28 */	fsubs f0, f30, f29
/* 80231F94  EC 01 00 28 */	fsubs f0, f1, f0
/* 80231F98  C0 22 B0 5C */	lfs f1, lit_4026(r2)
/* 80231F9C  EC 1F 00 28 */	fsubs f0, f31, f0
/* 80231FA0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80231FA4  EC 21 00 2A */	fadds f1, f1, f0
/* 80231FA8  C0 02 B0 64 */	lfs f0, lit_4028(r2)
/* 80231FAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80231FB0  4C 41 13 82 */	cror 2, 1, 2
/* 80231FB4  40 82 00 64 */	bne lbl_80232018
/* 80231FB8  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80231FBC  EC 00 08 2A */	fadds f0, f0, f1
/* 80231FC0  D0 1F 00 50 */	stfs f0, 0x50(r31)
/* 80231FC4  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80231FC8  80 63 00 08 */	lwz r3, 8(r3)
/* 80231FCC  88 03 01 30 */	lbz r0, 0x130(r3)
/* 80231FD0  54 00 F7 BF */	rlwinm. r0, r0, 0x1e, 0x1e, 0x1f
/* 80231FD4  41 82 00 44 */	beq lbl_80232018
/* 80231FD8  38 61 00 08 */	addi r3, r1, 8
/* 80231FDC  38 80 00 0F */	li r4, 0xf
/* 80231FE0  3C A0 80 3A */	lis r5, d_msg_d_msg_class__stringBase0@ha /* 0x80399610@ha */
/* 80231FE4  38 A5 96 10 */	addi r5, r5, d_msg_d_msg_class__stringBase0@l /* 0x80399610@l */
/* 80231FE8  38 A5 00 10 */	addi r5, r5, 0x10
/* 80231FEC  FC 00 08 1E */	fctiwz f0, f1
/* 80231FF0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80231FF4  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 80231FF8  4C C6 31 82 */	crclr 6
/* 80231FFC  48 13 45 C1 */	bl snprintf
/* 80232000  7F E3 FB 78 */	mr r3, r31
/* 80232004  38 81 00 08 */	addi r4, r1, 8
/* 80232008  48 00 00 3D */	bl do_strcat__35jmessage_string_tRenderingProcessorFPc
/* 8023200C  7F E3 FB 78 */	mr r3, r31
/* 80232010  38 81 00 08 */	addi r4, r1, 8
/* 80232014  48 00 02 4D */	bl do_rubystrcat__35jmessage_string_tRenderingProcessorFPc
lbl_80232018:
/* 80232018  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8023201C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80232020  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 80232024  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80232028  E3 A1 00 38 */	psq_l f29, 56(r1), 0, 0 /* qr0 */
/* 8023202C  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 80232030  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80232034  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80232038  7C 08 03 A6 */	mtlr r0
/* 8023203C  38 21 00 60 */	addi r1, r1, 0x60
/* 80232040  4E 80 00 20 */	blr 

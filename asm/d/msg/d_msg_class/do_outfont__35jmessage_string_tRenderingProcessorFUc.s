lbl_802322CC:
/* 802322CC  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 802322D0  7C 08 02 A6 */	mflr r0
/* 802322D4  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 802322D8  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 802322DC  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 802322E0  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 802322E4  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 802322E8  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 802322EC  F3 A1 00 88 */	psq_st f29, 136(r1), 0, 0 /* qr0 */
/* 802322F0  DB 81 00 70 */	stfd f28, 0x70(r1)
/* 802322F4  F3 81 00 78 */	psq_st f28, 120(r1), 0, 0 /* qr0 */
/* 802322F8  DB 61 00 60 */	stfd f27, 0x60(r1)
/* 802322FC  F3 61 00 68 */	psq_st f27, 104(r1), 0, 0 /* qr0 */
/* 80232300  DB 41 00 50 */	stfd f26, 0x50(r1)
/* 80232304  F3 41 00 58 */	psq_st f26, 88(r1), 0, 0 /* qr0 */
/* 80232308  DB 21 00 40 */	stfd f25, 0x40(r1)
/* 8023230C  F3 21 00 48 */	psq_st f25, 72(r1), 0, 0 /* qr0 */
/* 80232310  39 61 00 40 */	addi r11, r1, 0x40
/* 80232314  48 12 FE C9 */	bl _savegpr_29
/* 80232318  7C 7E 1B 78 */	mr r30, r3
/* 8023231C  7C 9F 23 78 */	mr r31, r4
/* 80232320  80 83 00 38 */	lwz r4, 0x38(r3)
/* 80232324  80 64 00 08 */	lwz r3, 8(r4)
/* 80232328  28 03 00 00 */	cmplwi r3, 0
/* 8023232C  41 82 01 F0 */	beq lbl_8023251C
/* 80232330  C3 E3 01 14 */	lfs f31, 0x114(r3)
/* 80232334  C0 02 B0 60 */	lfs f0, lit_4027(r2)
/* 80232338  C3 C3 01 1C */	lfs f30, 0x11c(r3)
/* 8023233C  C3 A3 01 20 */	lfs f29, 0x120(r3)
/* 80232340  80 04 00 10 */	lwz r0, 0x10(r4)
/* 80232344  28 00 00 00 */	cmplwi r0, 0
/* 80232348  41 82 01 68 */	beq lbl_802324B0
/* 8023234C  7C 7D 1B 78 */	mr r29, r3
/* 80232350  48 0C 4D B1 */	bl getBounds__7J2DPaneFv
/* 80232354  C3 43 00 00 */	lfs f26, 0(r3)
/* 80232358  7F A3 EB 78 */	mr r3, r29
/* 8023235C  48 0C 4D A5 */	bl getBounds__7J2DPaneFv
/* 80232360  C3 63 00 04 */	lfs f27, 4(r3)
/* 80232364  7F A3 EB 78 */	mr r3, r29
/* 80232368  48 0C 57 95 */	bl getParentPane__7J2DPaneFv
/* 8023236C  7C 7D 1B 78 */	mr r29, r3
/* 80232370  48 00 00 30 */	b lbl_802323A0
lbl_80232374:
/* 80232374  7F A3 EB 78 */	mr r3, r29
/* 80232378  48 0C 4D 89 */	bl getBounds__7J2DPaneFv
/* 8023237C  C0 03 00 00 */	lfs f0, 0(r3)
/* 80232380  EF 5A 00 2A */	fadds f26, f26, f0
/* 80232384  7F A3 EB 78 */	mr r3, r29
/* 80232388  48 0C 4D 79 */	bl getBounds__7J2DPaneFv
/* 8023238C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80232390  EF 7B 00 2A */	fadds f27, f27, f0
/* 80232394  7F A3 EB 78 */	mr r3, r29
/* 80232398  48 0C 57 65 */	bl getParentPane__7J2DPaneFv
/* 8023239C  7C 7D 1B 78 */	mr r29, r3
lbl_802323A0:
/* 802323A0  28 1D 00 00 */	cmplwi r29, 0
/* 802323A4  40 82 FF D0 */	bne lbl_80232374
/* 802323A8  C3 22 B0 60 */	lfs f25, lit_4027(r2)
/* 802323AC  FF 40 C8 90 */	fmr f26, f25
/* 802323B0  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 802323B4  88 03 00 84 */	lbz r0, 0x84(r3)
/* 802323B8  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 802323BC  41 82 00 38 */	beq lbl_802323F4
/* 802323C0  80 63 00 08 */	lwz r3, 8(r3)
/* 802323C4  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 802323C8  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 802323CC  EF 81 00 28 */	fsubs f28, f1, f0
/* 802323D0  7F C3 F3 78 */	mr r3, r30
/* 802323D4  4B FF E8 4D */	bl getLineCountNowPage__35jmessage_string_tRenderingProcessorFv
/* 802323D8  7C 64 07 34 */	extsh r4, r3
/* 802323DC  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 802323E0  4B FF D6 59 */	bl getLineLength__26jmessage_string_tReferenceFi
/* 802323E4  C0 42 B0 5C */	lfs f2, lit_4026(r2)
/* 802323E8  EC 1C 08 28 */	fsubs f0, f28, f1
/* 802323EC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 802323F0  EF 22 00 2A */	fadds f25, f2, f0
lbl_802323F4:
/* 802323F4  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 802323F8  88 03 00 84 */	lbz r0, 0x84(r3)
/* 802323FC  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 80232400  41 82 00 5C */	beq lbl_8023245C
/* 80232404  80 83 00 08 */	lwz r4, 8(r3)
/* 80232408  C0 24 00 2C */	lfs f1, 0x2c(r4)
/* 8023240C  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 80232410  EF 81 00 28 */	fsubs f28, f1, f0
/* 80232414  C3 44 01 20 */	lfs f26, 0x120(r4)
/* 80232418  C3 64 01 18 */	lfs f27, 0x118(r4)
/* 8023241C  4B FF D7 09 */	bl getLineCountNowPage__26jmessage_string_tReferenceFv
/* 80232420  7C 60 07 34 */	extsh r0, r3
/* 80232424  C8 22 B0 70 */	lfd f1, lit_4198(r2)
/* 80232428  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8023242C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80232430  3C 00 43 30 */	lis r0, 0x4330
/* 80232434  90 01 00 18 */	stw r0, 0x18(r1)
/* 80232438  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8023243C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80232440  EC 3B 00 32 */	fmuls f1, f27, f0
/* 80232444  EC 1B D0 28 */	fsubs f0, f27, f26
/* 80232448  EC 01 00 28 */	fsubs f0, f1, f0
/* 8023244C  C0 22 B0 5C */	lfs f1, lit_4026(r2)
/* 80232450  EC 1C 00 28 */	fsubs f0, f28, f0
/* 80232454  EC 00 00 72 */	fmuls f0, f0, f1
/* 80232458  EF 41 00 2A */	fadds f26, f1, f0
lbl_8023245C:
/* 8023245C  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 80232460  80 83 00 08 */	lwz r4, 8(r3)
/* 80232464  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80232468  7F E5 FB 78 */	mr r5, r31
/* 8023246C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80232470  EC 20 C8 2A */	fadds f1, f0, f25
/* 80232474  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80232478  EC 40 D0 2A */	fadds f2, f0, f26
/* 8023247C  FC 60 F0 90 */	fmr f3, f30
/* 80232480  FC 80 E8 90 */	fmr f4, f29
/* 80232484  38 C0 FF FF */	li r6, -1
/* 80232488  38 E0 00 FF */	li r7, 0xff
/* 8023248C  81 83 00 00 */	lwz r12, 0(r3)
/* 80232490  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80232494  7D 89 03 A6 */	mtctr r12
/* 80232498  4E 80 04 21 */	bctrl 
/* 8023249C  C0 22 B0 5C */	lfs f1, lit_4026(r2)
/* 802324A0  C0 02 B0 64 */	lfs f0, lit_4028(r2)
/* 802324A4  EC 1E 00 32 */	fmuls f0, f30, f0
/* 802324A8  EC 1F 00 2A */	fadds f0, f31, f0
/* 802324AC  EC 01 00 2A */	fadds f0, f1, f0
lbl_802324B0:
/* 802324B0  C0 5E 00 4C */	lfs f2, 0x4c(r30)
/* 802324B4  FC 00 00 1E */	fctiwz f0, f0
/* 802324B8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 802324BC  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 802324C0  C8 22 B0 70 */	lfd f1, lit_4198(r2)
/* 802324C4  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 802324C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802324CC  3C 00 43 30 */	lis r0, 0x4330
/* 802324D0  90 01 00 20 */	stw r0, 0x20(r1)
/* 802324D4  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 802324D8  EC 00 08 28 */	fsubs f0, f0, f1
/* 802324DC  EC 02 00 2A */	fadds f0, f2, f0
/* 802324E0  D0 1E 00 4C */	stfs f0, 0x4c(r30)
/* 802324E4  38 61 00 08 */	addi r3, r1, 8
/* 802324E8  38 80 00 0F */	li r4, 0xf
/* 802324EC  3C A0 80 3A */	lis r5, d_msg_d_msg_class__stringBase0@ha
/* 802324F0  38 A5 96 10 */	addi r5, r5, d_msg_d_msg_class__stringBase0@l
/* 802324F4  38 A5 00 08 */	addi r5, r5, 8
/* 802324F8  4C C6 31 82 */	crclr 6
/* 802324FC  48 13 40 C1 */	bl snprintf
/* 80232500  7F C3 F3 78 */	mr r3, r30
/* 80232504  38 81 00 08 */	addi r4, r1, 8
/* 80232508  4B FF FB 3D */	bl do_strcat__35jmessage_string_tRenderingProcessorFPc
/* 8023250C  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 80232510  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 80232514  38 84 FF FF */	addi r4, r4, 0xFFFF /* 0x0000FFFF@l */
/* 80232518  4B FF D5 19 */	bl addCharactor__26jmessage_string_tReferenceFUs
lbl_8023251C:
/* 8023251C  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 80232520  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 80232524  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 80232528  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 8023252C  E3 A1 00 88 */	psq_l f29, 136(r1), 0, 0 /* qr0 */
/* 80232530  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 80232534  E3 81 00 78 */	psq_l f28, 120(r1), 0, 0 /* qr0 */
/* 80232538  CB 81 00 70 */	lfd f28, 0x70(r1)
/* 8023253C  E3 61 00 68 */	psq_l f27, 104(r1), 0, 0 /* qr0 */
/* 80232540  CB 61 00 60 */	lfd f27, 0x60(r1)
/* 80232544  E3 41 00 58 */	psq_l f26, 88(r1), 0, 0 /* qr0 */
/* 80232548  CB 41 00 50 */	lfd f26, 0x50(r1)
/* 8023254C  E3 21 00 48 */	psq_l f25, 72(r1), 0, 0 /* qr0 */
/* 80232550  CB 21 00 40 */	lfd f25, 0x40(r1)
/* 80232554  39 61 00 40 */	addi r11, r1, 0x40
/* 80232558  48 12 FC D1 */	bl _restgpr_29
/* 8023255C  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80232560  7C 08 03 A6 */	mtlr r0
/* 80232564  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80232568  4E 80 00 20 */	blr 

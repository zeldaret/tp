lbl_80255F28:
/* 80255F28  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80255F2C  7C 08 02 A6 */	mflr r0
/* 80255F30  90 01 00 34 */	stw r0, 0x34(r1)
/* 80255F34  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80255F38  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80255F3C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80255F40  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80255F44  7C 7E 1B 78 */	mr r30, r3
/* 80255F48  7C 9F 23 79 */	or. r31, r4, r4
/* 80255F4C  FF E0 08 90 */	fmr f31, f1
/* 80255F50  41 82 00 A8 */	beq lbl_80255FF8
/* 80255F54  80 9E 00 20 */	lwz r4, 0x20(r30)
/* 80255F58  88 04 00 00 */	lbz r0, 0(r4)
/* 80255F5C  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80255F60  88 63 00 00 */	lbz r3, 0(r3)
/* 80255F64  7C 00 18 40 */	cmplw r0, r3
/* 80255F68  40 82 00 44 */	bne lbl_80255FAC
/* 80255F6C  7F E3 FB 78 */	mr r3, r31
/* 80255F70  C8 22 B4 C8 */	lfd f1, lit_3708(r2)
/* 80255F74  90 01 00 0C */	stw r0, 0xc(r1)
/* 80255F78  3C 00 43 30 */	lis r0, 0x4330
/* 80255F7C  90 01 00 08 */	stw r0, 8(r1)
/* 80255F80  C8 01 00 08 */	lfd f0, 8(r1)
/* 80255F84  EC 00 08 28 */	fsubs f0, f0, f1
/* 80255F88  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80255F8C  FC 00 00 1E */	fctiwz f0, f0
/* 80255F90  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80255F94  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80255F98  81 9F 00 00 */	lwz r12, 0(r31)
/* 80255F9C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80255FA0  7D 89 03 A6 */	mtctr r12
/* 80255FA4  4E 80 04 21 */	bctrl 
/* 80255FA8  48 00 00 08 */	b lbl_80255FB0
lbl_80255FAC:
/* 80255FAC  98 64 00 00 */	stb r3, 0(r4)
lbl_80255FB0:
/* 80255FB0  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 80255FB4  38 03 00 01 */	addi r0, r3, 1
/* 80255FB8  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80255FBC  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80255FC0  38 03 00 01 */	addi r0, r3, 1
/* 80255FC4  90 1E 00 28 */	stw r0, 0x28(r30)
/* 80255FC8  7F E3 FB 78 */	mr r3, r31
/* 80255FCC  48 0A 1A C1 */	bl getFirstChildPane__7J2DPaneFv
/* 80255FD0  7C 64 1B 78 */	mr r4, r3
/* 80255FD4  7F C3 F3 78 */	mr r3, r30
/* 80255FD8  FC 20 F8 90 */	fmr f1, f31
/* 80255FDC  4B FF FF 4D */	bl childPaneSetAlphaMorf__17CPaneMgrAlphaMorfFP7J2DPanef
/* 80255FE0  7F E3 FB 78 */	mr r3, r31
/* 80255FE4  48 0A 1A E1 */	bl getNextChildPane__7J2DPaneFv
/* 80255FE8  7C 64 1B 78 */	mr r4, r3
/* 80255FEC  7F C3 F3 78 */	mr r3, r30
/* 80255FF0  FC 20 F8 90 */	fmr f1, f31
/* 80255FF4  4B FF FF 35 */	bl childPaneSetAlphaMorf__17CPaneMgrAlphaMorfFP7J2DPanef
lbl_80255FF8:
/* 80255FF8  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80255FFC  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80256000  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80256004  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80256008  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8025600C  7C 08 03 A6 */	mtlr r0
/* 80256010  38 21 00 30 */	addi r1, r1, 0x30
/* 80256014  4E 80 00 20 */	blr 

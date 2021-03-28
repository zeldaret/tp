lbl_8020DF68:
/* 8020DF68  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8020DF6C  7C 08 02 A6 */	mflr r0
/* 8020DF70  90 01 00 54 */	stw r0, 0x54(r1)
/* 8020DF74  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8020DF78  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8020DF7C  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 8020DF80  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 8020DF84  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 8020DF88  F3 A1 00 28 */	psq_st f29, 40(r1), 0, 0 /* qr0 */
/* 8020DF8C  DB 81 00 10 */	stfd f28, 0x10(r1)
/* 8020DF90  F3 81 00 18 */	psq_st f28, 24(r1), 0, 0 /* qr0 */
/* 8020DF94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8020DF98  7C 7F 1B 78 */	mr r31, r3
/* 8020DF9C  80 63 00 08 */	lwz r3, 8(r3)
/* 8020DFA0  28 03 00 00 */	cmplwi r3, 0
/* 8020DFA4  41 82 00 98 */	beq lbl_8020E03C
/* 8020DFA8  88 03 00 31 */	lbz r0, 0x31(r3)
/* 8020DFAC  28 00 00 00 */	cmplwi r0, 0
/* 8020DFB0  41 82 00 8C */	beq lbl_8020E03C
/* 8020DFB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8020DFB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8020DFBC  80 63 5F 50 */	lwz r3, 0x5f50(r3)
/* 8020DFC0  81 83 00 00 */	lwz r12, 0(r3)
/* 8020DFC4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8020DFC8  7D 89 03 A6 */	mtctr r12
/* 8020DFCC  4E 80 04 21 */	bctrl 
/* 8020DFD0  C3 FF 00 20 */	lfs f31, 0x20(r31)
/* 8020DFD4  C3 DF 00 24 */	lfs f30, 0x24(r31)
/* 8020DFD8  C3 BF 00 18 */	lfs f29, 0x18(r31)
/* 8020DFDC  C3 9F 00 1C */	lfs f28, 0x1c(r31)
/* 8020DFE0  80 7F 00 04 */	lwz r3, 4(r31)
/* 8020DFE4  88 9F 00 2C */	lbz r4, 0x2c(r31)
/* 8020DFE8  81 83 00 00 */	lwz r12, 0(r3)
/* 8020DFEC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8020DFF0  7D 89 03 A6 */	mtctr r12
/* 8020DFF4  4E 80 04 21 */	bctrl 
/* 8020DFF8  80 7F 00 04 */	lwz r3, 4(r31)
/* 8020DFFC  FC 20 E8 90 */	fmr f1, f29
/* 8020E000  FC 40 E0 90 */	fmr f2, f28
/* 8020E004  FC 60 F8 90 */	fmr f3, f31
/* 8020E008  FC 80 F0 90 */	fmr f4, f30
/* 8020E00C  38 80 00 00 */	li r4, 0
/* 8020E010  38 A0 00 00 */	li r5, 0
/* 8020E014  38 C0 00 00 */	li r6, 0
/* 8020E018  81 83 00 00 */	lwz r12, 0(r3)
/* 8020E01C  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 8020E020  7D 89 03 A6 */	mtctr r12
/* 8020E024  4E 80 04 21 */	bctrl 
/* 8020E028  80 7F 00 04 */	lwz r3, 4(r31)
/* 8020E02C  81 83 00 00 */	lwz r12, 0(r3)
/* 8020E030  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8020E034  7D 89 03 A6 */	mtctr r12
/* 8020E038  4E 80 04 21 */	bctrl 
lbl_8020E03C:
/* 8020E03C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8020E040  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8020E044  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 8020E048  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 8020E04C  E3 A1 00 28 */	psq_l f29, 40(r1), 0, 0 /* qr0 */
/* 8020E050  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 8020E054  E3 81 00 18 */	psq_l f28, 24(r1), 0, 0 /* qr0 */
/* 8020E058  CB 81 00 10 */	lfd f28, 0x10(r1)
/* 8020E05C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8020E060  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8020E064  7C 08 03 A6 */	mtlr r0
/* 8020E068  38 21 00 50 */	addi r1, r1, 0x50
/* 8020E06C  4E 80 00 20 */	blr 

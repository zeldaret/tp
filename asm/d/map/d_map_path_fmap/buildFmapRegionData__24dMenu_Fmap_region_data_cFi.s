lbl_8003DEE0:
/* 8003DEE0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8003DEE4  7C 08 02 A6 */	mflr r0
/* 8003DEE8  90 01 00 64 */	stw r0, 0x64(r1)
/* 8003DEEC  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8003DEF0  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8003DEF4  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 8003DEF8  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 8003DEFC  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 8003DF00  F3 A1 00 38 */	psq_st f29, 56(r1), 0, 0 /* qr0 */
/* 8003DF04  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 8003DF08  F3 81 00 28 */	psq_st f28, 40(r1), 0, 0 /* qr0 */
/* 8003DF0C  39 61 00 20 */	addi r11, r1, 0x20
/* 8003DF10  48 32 42 CD */	bl _savegpr_29
/* 8003DF14  7C 7D 1B 78 */	mr r29, r3
/* 8003DF18  3C 60 80 45 */	lis r3, __float_max@ha
/* 8003DF1C  C0 03 0A E8 */	lfs f0, __float_max@l(r3)
/* 8003DF20  FF E0 00 90 */	fmr f31, f0
/* 8003DF24  FF C0 00 90 */	fmr f30, f0
/* 8003DF28  FC 00 00 50 */	fneg f0, f0
/* 8003DF2C  FF A0 00 90 */	fmr f29, f0
/* 8003DF30  FF 80 00 90 */	fmr f28, f0
/* 8003DF34  83 FD 00 00 */	lwz r31, 0(r29)
/* 8003DF38  3B C0 00 00 */	li r30, 0
/* 8003DF3C  48 00 00 78 */	b lbl_8003DFB4
lbl_8003DF40:
/* 8003DF40  7F E3 FB 78 */	mr r3, r31
/* 8003DF44  7F C4 F3 78 */	mr r4, r30
/* 8003DF48  C0 3D 00 08 */	lfs f1, 8(r29)
/* 8003DF4C  C0 5D 00 0C */	lfs f2, 0xc(r29)
/* 8003DF50  4B FF FA 89 */	bl buildFmapStageData__23dMenu_Fmap_stage_data_cFiff
/* 8003DF54  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8003DF58  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 8003DF5C  EC 60 08 2A */	fadds f3, f0, f1
/* 8003DF60  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8003DF64  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 8003DF68  EC 80 10 2A */	fadds f4, f0, f2
/* 8003DF6C  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8003DF70  EC 20 08 2A */	fadds f1, f0, f1
/* 8003DF74  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8003DF78  EC 00 10 2A */	fadds f0, f0, f2
/* 8003DF7C  FC 03 F8 40 */	fcmpo cr0, f3, f31
/* 8003DF80  40 80 00 08 */	bge lbl_8003DF88
/* 8003DF84  FF E0 18 90 */	fmr f31, f3
lbl_8003DF88:
/* 8003DF88  FC 04 F0 40 */	fcmpo cr0, f4, f30
/* 8003DF8C  40 80 00 08 */	bge lbl_8003DF94
/* 8003DF90  FF C0 20 90 */	fmr f30, f4
lbl_8003DF94:
/* 8003DF94  FC 01 E8 40 */	fcmpo cr0, f1, f29
/* 8003DF98  40 81 00 08 */	ble lbl_8003DFA0
/* 8003DF9C  FF A0 08 90 */	fmr f29, f1
lbl_8003DFA0:
/* 8003DFA0  FC 00 E0 40 */	fcmpo cr0, f0, f28
/* 8003DFA4  40 81 00 08 */	ble lbl_8003DFAC
/* 8003DFA8  FF 80 00 90 */	fmr f28, f0
lbl_8003DFAC:
/* 8003DFAC  83 FF 00 10 */	lwz r31, 0x10(r31)
/* 8003DFB0  3B DE 00 01 */	addi r30, r30, 1
lbl_8003DFB4:
/* 8003DFB4  28 1F 00 00 */	cmplwi r31, 0
/* 8003DFB8  40 82 FF 88 */	bne lbl_8003DF40
/* 8003DFBC  2C 1E 00 00 */	cmpwi r30, 0
/* 8003DFC0  40 81 00 18 */	ble lbl_8003DFD8
/* 8003DFC4  D3 FD 00 10 */	stfs f31, 0x10(r29)
/* 8003DFC8  D3 DD 00 18 */	stfs f30, 0x18(r29)
/* 8003DFCC  D3 BD 00 14 */	stfs f29, 0x14(r29)
/* 8003DFD0  D3 9D 00 1C */	stfs f28, 0x1c(r29)
/* 8003DFD4  48 00 00 18 */	b lbl_8003DFEC
lbl_8003DFD8:
/* 8003DFD8  C0 02 84 20 */	lfs f0, lit_3894(r2)
/* 8003DFDC  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 8003DFE0  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 8003DFE4  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 8003DFE8  D0 1D 00 1C */	stfs f0, 0x1c(r29)
lbl_8003DFEC:
/* 8003DFEC  7F C3 F3 78 */	mr r3, r30
/* 8003DFF0  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8003DFF4  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8003DFF8  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 8003DFFC  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 8003E000  E3 A1 00 38 */	psq_l f29, 56(r1), 0, 0 /* qr0 */
/* 8003E004  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 8003E008  E3 81 00 28 */	psq_l f28, 40(r1), 0, 0 /* qr0 */
/* 8003E00C  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 8003E010  39 61 00 20 */	addi r11, r1, 0x20
/* 8003E014  48 32 42 15 */	bl _restgpr_29
/* 8003E018  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8003E01C  7C 08 03 A6 */	mtlr r0
/* 8003E020  38 21 00 60 */	addi r1, r1, 0x60
/* 8003E024  4E 80 00 20 */	blr 

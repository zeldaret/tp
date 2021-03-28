lbl_8001FB50:
/* 8001FB50  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8001FB54  7C 08 02 A6 */	mflr r0
/* 8001FB58  90 01 00 74 */	stw r0, 0x74(r1)
/* 8001FB5C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8001FB60  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8001FB64  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 8001FB68  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 8001FB6C  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 8001FB70  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 8001FB74  DB 81 00 30 */	stfd f28, 0x30(r1)
/* 8001FB78  F3 81 00 38 */	psq_st f28, 56(r1), 0, 0 /* qr0 */
/* 8001FB7C  39 61 00 30 */	addi r11, r1, 0x30
/* 8001FB80  48 34 26 55 */	bl _savegpr_27
/* 8001FB84  7C 7B 1B 78 */	mr r27, r3
/* 8001FB88  7C 9C 23 78 */	mr r28, r4
/* 8001FB8C  7C BD 2B 78 */	mr r29, r5
/* 8001FB90  7C DE 33 78 */	mr r30, r6
/* 8001FB94  FF 80 08 90 */	fmr f28, f1
/* 8001FB98  FF A0 10 90 */	fmr f29, f2
/* 8001FB9C  FF C0 18 90 */	fmr f30, f3
/* 8001FBA0  FF E0 20 90 */	fmr f31, f4
/* 8001FBA4  7C FF 3B 78 */	mr r31, r7
/* 8001FBA8  38 60 FF FC */	li r3, -4
/* 8001FBAC  38 80 00 38 */	li r4, 0x38
/* 8001FBB0  48 24 36 79 */	bl memalignB__3cMlFiUl
/* 8001FBB4  28 03 00 00 */	cmplwi r3, 0
/* 8001FBB8  40 82 00 0C */	bne lbl_8001FBC4
/* 8001FBBC  38 60 00 00 */	li r3, 0
/* 8001FBC0  48 00 00 54 */	b lbl_8001FC14
lbl_8001FBC4:
/* 8001FBC4  38 00 00 00 */	li r0, 0
/* 8001FBC8  90 03 00 00 */	stw r0, 0(r3)
/* 8001FBCC  90 03 00 10 */	stw r0, 0x10(r3)
/* 8001FBD0  90 03 00 14 */	stw r0, 0x14(r3)
/* 8001FBD4  C0 02 82 70 */	lfs f0, lit_3902(r2)
/* 8001FBD8  D0 01 00 08 */	stfs f0, 8(r1)
/* 8001FBDC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8001FBE0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8001FBE4  D0 03 00 04 */	stfs f0, 4(r3)
/* 8001FBE8  D0 03 00 08 */	stfs f0, 8(r3)
/* 8001FBEC  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8001FBF0  93 E3 00 18 */	stw r31, 0x18(r3)
/* 8001FBF4  93 63 00 1C */	stw r27, 0x1c(r3)
/* 8001FBF8  93 83 00 20 */	stw r28, 0x20(r3)
/* 8001FBFC  9B A3 00 24 */	stb r29, 0x24(r3)
/* 8001FC00  9B C3 00 25 */	stb r30, 0x25(r3)
/* 8001FC04  D3 83 00 28 */	stfs f28, 0x28(r3)
/* 8001FC08  D3 A3 00 2C */	stfs f29, 0x2c(r3)
/* 8001FC0C  D3 C3 00 30 */	stfs f30, 0x30(r3)
/* 8001FC10  D3 E3 00 34 */	stfs f31, 0x34(r3)
lbl_8001FC14:
/* 8001FC14  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8001FC18  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8001FC1C  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 8001FC20  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 8001FC24  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 8001FC28  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 8001FC2C  E3 81 00 38 */	psq_l f28, 56(r1), 0, 0 /* qr0 */
/* 8001FC30  CB 81 00 30 */	lfd f28, 0x30(r1)
/* 8001FC34  39 61 00 30 */	addi r11, r1, 0x30
/* 8001FC38  48 34 25 E9 */	bl _restgpr_27
/* 8001FC3C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8001FC40  7C 08 03 A6 */	mtlr r0
/* 8001FC44  38 21 00 70 */	addi r1, r1, 0x70
/* 8001FC48  4E 80 00 20 */	blr 

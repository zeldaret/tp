lbl_802FB634:
/* 802FB634  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 802FB638  7C 08 02 A6 */	mflr r0
/* 802FB63C  90 01 00 74 */	stw r0, 0x74(r1)
/* 802FB640  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 802FB644  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 802FB648  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 802FB64C  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 802FB650  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 802FB654  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 802FB658  DB 81 00 30 */	stfd f28, 0x30(r1)
/* 802FB65C  F3 81 00 38 */	psq_st f28, 56(r1), 0, 0 /* qr0 */
/* 802FB660  39 61 00 30 */	addi r11, r1, 0x30
/* 802FB664  48 06 6B 6D */	bl _savegpr_26
/* 802FB668  7C 7A 1B 78 */	mr r26, r3
/* 802FB66C  7C 9B 23 78 */	mr r27, r4
/* 802FB670  FF 80 08 90 */	fmr f28, f1
/* 802FB674  FF A0 10 90 */	fmr f29, f2
/* 802FB678  7C BC 2B 78 */	mr r28, r5
/* 802FB67C  7C DD 33 78 */	mr r29, r6
/* 802FB680  7C FE 3B 78 */	mr r30, r7
/* 802FB684  7D 1F 43 78 */	mr r31, r8
/* 802FB688  EF FC 18 2A */	fadds f31, f28, f3
/* 802FB68C  EF DD 20 2A */	fadds f30, f29, f4
/* 802FB690  55 20 06 3F */	clrlwi. r0, r9, 0x18
/* 802FB694  41 82 00 34 */	beq lbl_802FB6C8
/* 802FB698  7F 63 DB 78 */	mr r3, r27
/* 802FB69C  38 80 00 00 */	li r4, 0
/* 802FB6A0  4B FE 31 A1 */	bl load__10JUTTextureF11_GXTexMapID
/* 802FB6A4  80 1A 01 38 */	lwz r0, 0x138(r26)
/* 802FB6A8  90 01 00 08 */	stw r0, 8(r1)
/* 802FB6AC  80 1A 01 3C */	lwz r0, 0x13c(r26)
/* 802FB6B0  90 01 00 0C */	stw r0, 0xc(r1)
/* 802FB6B4  7F 43 D3 78 */	mr r3, r26
/* 802FB6B8  7F 64 DB 78 */	mr r4, r27
/* 802FB6BC  38 A1 00 0C */	addi r5, r1, 0xc
/* 802FB6C0  38 C1 00 08 */	addi r6, r1, 8
/* 802FB6C4  48 00 04 CD */	bl setTevMode__9J2DWindowFP10JUTTextureQ28JUtility6TColorQ28JUtility6TColor
lbl_802FB6C8:
/* 802FB6C8  88 7A 00 B3 */	lbz r3, 0xb3(r26)
/* 802FB6CC  38 00 FF 00 */	li r0, -256
/* 802FB6D0  7C 60 03 78 */	or r0, r3, r0
/* 802FB6D4  90 01 00 10 */	stw r0, 0x10(r1)
/* 802FB6D8  38 60 00 00 */	li r3, 0
/* 802FB6DC  38 80 00 09 */	li r4, 9
/* 802FB6E0  38 A0 00 01 */	li r5, 1
/* 802FB6E4  38 C0 00 04 */	li r6, 4
/* 802FB6E8  38 E0 00 00 */	li r7, 0
/* 802FB6EC  48 05 FE D9 */	bl GXSetVtxAttrFmt
/* 802FB6F0  38 60 00 80 */	li r3, 0x80
/* 802FB6F4  38 80 00 00 */	li r4, 0
/* 802FB6F8  38 A0 00 04 */	li r5, 4
/* 802FB6FC  48 06 10 69 */	bl GXBegin
/* 802FB700  3C 60 CC 01 */	lis r3, 0xCC01 /* 0xCC008000@ha */
/* 802FB704  D3 83 80 00 */	stfs f28, 0x8000(r3)  /* 0xCC008000@l */
/* 802FB708  D3 A3 80 00 */	stfs f29, -0x8000(r3)
/* 802FB70C  C0 02 C8 50 */	lfs f0, lit_2156(r2)
/* 802FB710  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 802FB714  80 01 00 10 */	lwz r0, 0x10(r1)
/* 802FB718  90 03 80 00 */	stw r0, -0x8000(r3)
/* 802FB71C  B3 C3 80 00 */	sth r30, -0x8000(r3)
/* 802FB720  B3 E3 80 00 */	sth r31, -0x8000(r3)
/* 802FB724  D3 E3 80 00 */	stfs f31, -0x8000(r3)
/* 802FB728  D3 A3 80 00 */	stfs f29, -0x8000(r3)
/* 802FB72C  C0 02 C8 50 */	lfs f0, lit_2156(r2)
/* 802FB730  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 802FB734  90 03 80 00 */	stw r0, -0x8000(r3)
/* 802FB738  B3 83 80 00 */	sth r28, -0x8000(r3)
/* 802FB73C  B3 E3 80 00 */	sth r31, -0x8000(r3)
/* 802FB740  D3 E3 80 00 */	stfs f31, -0x8000(r3)
/* 802FB744  D3 C3 80 00 */	stfs f30, -0x8000(r3)
/* 802FB748  C0 02 C8 50 */	lfs f0, lit_2156(r2)
/* 802FB74C  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 802FB750  90 03 80 00 */	stw r0, -0x8000(r3)
/* 802FB754  B3 83 80 00 */	sth r28, -0x8000(r3)
/* 802FB758  B3 A3 80 00 */	sth r29, -0x8000(r3)
/* 802FB75C  D3 83 80 00 */	stfs f28, -0x8000(r3)
/* 802FB760  D3 C3 80 00 */	stfs f30, -0x8000(r3)
/* 802FB764  C0 02 C8 50 */	lfs f0, lit_2156(r2)
/* 802FB768  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 802FB76C  90 03 80 00 */	stw r0, -0x8000(r3)
/* 802FB770  B3 C3 80 00 */	sth r30, -0x8000(r3)
/* 802FB774  B3 A3 80 00 */	sth r29, -0x8000(r3)
/* 802FB778  38 60 00 00 */	li r3, 0
/* 802FB77C  38 80 00 09 */	li r4, 9
/* 802FB780  38 A0 00 01 */	li r5, 1
/* 802FB784  38 C0 00 03 */	li r6, 3
/* 802FB788  38 E0 00 00 */	li r7, 0
/* 802FB78C  48 05 FE 39 */	bl GXSetVtxAttrFmt
/* 802FB790  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 802FB794  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 802FB798  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 802FB79C  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 802FB7A0  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 802FB7A4  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 802FB7A8  E3 81 00 38 */	psq_l f28, 56(r1), 0, 0 /* qr0 */
/* 802FB7AC  CB 81 00 30 */	lfd f28, 0x30(r1)
/* 802FB7B0  39 61 00 30 */	addi r11, r1, 0x30
/* 802FB7B4  48 06 6A 69 */	bl _restgpr_26
/* 802FB7B8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 802FB7BC  7C 08 03 A6 */	mtlr r0
/* 802FB7C0  38 21 00 70 */	addi r1, r1, 0x70
/* 802FB7C4  4E 80 00 20 */	blr 

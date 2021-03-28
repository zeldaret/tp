lbl_80300490:
/* 80300490  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 80300494  7C 08 02 A6 */	mflr r0
/* 80300498  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 8030049C  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 803004A0  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, 0 /* qr0 */
/* 803004A4  DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 803004A8  F3 C1 00 D8 */	psq_st f30, 216(r1), 0, 0 /* qr0 */
/* 803004AC  DB A1 00 C0 */	stfd f29, 0xc0(r1)
/* 803004B0  F3 A1 00 C8 */	psq_st f29, 200(r1), 0, 0 /* qr0 */
/* 803004B4  39 61 00 C0 */	addi r11, r1, 0xc0
/* 803004B8  48 06 1D 25 */	bl _savegpr_29
/* 803004BC  7C 7D 1B 78 */	mr r29, r3
/* 803004C0  FF A0 08 90 */	fmr f29, f1
/* 803004C4  FF C0 10 90 */	fmr f30, f2
/* 803004C8  FF E0 18 90 */	fmr f31, f3
/* 803004CC  7C 9E 23 78 */	mr r30, r4
/* 803004D0  88 03 00 B0 */	lbz r0, 0xb0(r3)
/* 803004D4  28 00 00 00 */	cmplwi r0, 0
/* 803004D8  41 82 01 50 */	beq lbl_80300628
/* 803004DC  80 1D 01 28 */	lwz r0, 0x128(r29)
/* 803004E0  90 01 00 08 */	stw r0, 8(r1)
/* 803004E4  80 1D 01 2C */	lwz r0, 0x12c(r29)
/* 803004E8  90 01 00 0C */	stw r0, 0xc(r1)
/* 803004EC  80 1D 01 08 */	lwz r0, 0x108(r29)
/* 803004F0  90 01 00 10 */	stw r0, 0x10(r1)
/* 803004F4  80 1D 01 04 */	lwz r0, 0x104(r29)
/* 803004F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803004FC  38 61 00 48 */	addi r3, r1, 0x48
/* 80300500  80 9D 01 00 */	lwz r4, 0x100(r29)
/* 80300504  C0 3D 01 14 */	lfs f1, 0x114(r29)
/* 80300508  C0 5D 01 18 */	lfs f2, 0x118(r29)
/* 8030050C  38 A1 00 14 */	addi r5, r1, 0x14
/* 80300510  38 C1 00 10 */	addi r6, r1, 0x10
/* 80300514  38 E1 00 0C */	addi r7, r1, 0xc
/* 80300518  39 01 00 08 */	addi r8, r1, 8
/* 8030051C  4B FF 3E 79 */	bl __ct__8J2DPrintFP7JUTFontffQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColor
/* 80300520  C0 5D 01 20 */	lfs f2, 0x120(r29)
/* 80300524  C0 3D 01 1C */	lfs f1, 0x11c(r29)
/* 80300528  C0 02 C8 80 */	lfs f0, lit_1660(r2)
/* 8030052C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80300530  40 81 00 08 */	ble lbl_80300538
/* 80300534  48 00 00 08 */	b lbl_8030053C
lbl_80300538:
/* 80300538  FC 20 00 90 */	fmr f1, f0
lbl_8030053C:
/* 8030053C  D0 21 00 98 */	stfs f1, 0x98(r1)
/* 80300540  C0 02 C8 80 */	lfs f0, lit_1660(r2)
/* 80300544  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80300548  40 81 00 08 */	ble lbl_80300550
/* 8030054C  48 00 00 08 */	b lbl_80300554
lbl_80300550:
/* 80300550  FC 40 00 90 */	fmr f2, f0
lbl_80300554:
/* 80300554  D0 41 00 9C */	stfs f2, 0x9c(r1)
/* 80300558  7F A3 EB 78 */	mr r3, r29
/* 8030055C  FC 20 E8 90 */	fmr f1, f29
/* 80300560  FC 40 F0 90 */	fmr f2, f30
/* 80300564  C0 62 C8 80 */	lfs f3, lit_1660(r2)
/* 80300568  FC 80 18 90 */	fmr f4, f3
/* 8030056C  81 9D 00 00 */	lwz r12, 0(r29)
/* 80300570  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 80300574  7D 89 03 A6 */	mtctr r12
/* 80300578  4E 80 04 21 */	bctrl 
/* 8030057C  38 7D 00 50 */	addi r3, r29, 0x50
/* 80300580  38 80 00 00 */	li r4, 0
/* 80300584  48 05 FC C9 */	bl GXLoadPosMtxImm
/* 80300588  38 60 00 00 */	li r3, 0
/* 8030058C  48 05 FD 61 */	bl GXSetCurrentMtx
/* 80300590  38 60 00 00 */	li r3, 0
/* 80300594  48 05 EB 41 */	bl GXSetNumIndStages
/* 80300598  3B E0 00 00 */	li r31, 0
lbl_8030059C:
/* 8030059C  7F E3 FB 78 */	mr r3, r31
/* 803005A0  48 05 EB 59 */	bl GXSetTevDirect
/* 803005A4  3B FF 00 01 */	addi r31, r31, 1
/* 803005A8  2C 1F 00 10 */	cmpwi r31, 0x10
/* 803005AC  41 80 FF F0 */	blt lbl_8030059C
/* 803005B0  38 60 00 01 */	li r3, 1
/* 803005B4  48 05 B8 49 */	bl GXSetNumTexGens
/* 803005B8  38 60 00 00 */	li r3, 0
/* 803005BC  38 80 00 01 */	li r4, 1
/* 803005C0  38 A0 00 04 */	li r5, 4
/* 803005C4  38 C0 00 3C */	li r6, 0x3c
/* 803005C8  38 E0 00 00 */	li r7, 0
/* 803005CC  39 00 00 7D */	li r8, 0x7d
/* 803005D0  48 05 B5 AD */	bl GXSetTexCoordGen2
/* 803005D4  80 9D 01 24 */	lwz r4, 0x124(r29)
/* 803005D8  28 04 00 00 */	cmplwi r4, 0
/* 803005DC  41 82 00 2C */	beq lbl_80300608
/* 803005E0  38 61 00 48 */	addi r3, r1, 0x48
/* 803005E4  FC 20 F8 90 */	fmr f1, f31
/* 803005E8  C0 42 C8 80 */	lfs f2, lit_1660(r2)
/* 803005EC  7F C5 F3 78 */	mr r5, r30
/* 803005F0  38 C0 00 02 */	li r6, 2
/* 803005F4  FC 60 10 90 */	fmr f3, f2
/* 803005F8  C0 1D 01 20 */	lfs f0, 0x120(r29)
/* 803005FC  FC 80 00 50 */	fneg f4, f0
/* 80300600  88 FD 00 B2 */	lbz r7, 0xb2(r29)
/* 80300604  4B FF 42 25 */	bl printReturn__8J2DPrintFPCcff18J2DTextBoxHBinding18J2DTextBoxVBindingffUc
lbl_80300608:
/* 80300608  38 61 00 18 */	addi r3, r1, 0x18
/* 8030060C  48 04 5E 79 */	bl PSMTXIdentity
/* 80300610  38 61 00 18 */	addi r3, r1, 0x18
/* 80300614  38 80 00 00 */	li r4, 0
/* 80300618  48 05 FC 35 */	bl GXLoadPosMtxImm
/* 8030061C  38 61 00 48 */	addi r3, r1, 0x48
/* 80300620  38 80 FF FF */	li r4, -1
/* 80300624  4B FF 3D FD */	bl __dt__8J2DPrintFv
lbl_80300628:
/* 80300628  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, 0 /* qr0 */
/* 8030062C  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 80300630  E3 C1 00 D8 */	psq_l f30, 216(r1), 0, 0 /* qr0 */
/* 80300634  CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 80300638  E3 A1 00 C8 */	psq_l f29, 200(r1), 0, 0 /* qr0 */
/* 8030063C  CB A1 00 C0 */	lfd f29, 0xc0(r1)
/* 80300640  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80300644  48 06 1B E5 */	bl _restgpr_29
/* 80300648  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 8030064C  7C 08 03 A6 */	mtlr r0
/* 80300650  38 21 00 F0 */	addi r1, r1, 0xf0
/* 80300654  4E 80 00 20 */	blr 

lbl_80241A70:
/* 80241A70  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80241A74  7C 08 02 A6 */	mflr r0
/* 80241A78  90 01 00 44 */	stw r0, 0x44(r1)
/* 80241A7C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80241A80  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80241A84  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80241A88  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80241A8C  DB A1 00 10 */	stfd f29, 0x10(r1)
/* 80241A90  F3 A1 00 18 */	psq_st f29, 24(r1), 0, 0 /* qr0 */
/* 80241A94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80241A98  7C 7F 1B 78 */	mr r31, r3
/* 80241A9C  88 03 27 98 */	lbz r0, 0x2798(r3)
/* 80241AA0  98 03 27 99 */	stb r0, 0x2799(r3)
/* 80241AA4  88 03 27 98 */	lbz r0, 0x2798(r3)
/* 80241AA8  1C A0 00 0C */	mulli r5, r0, 0xc
/* 80241AAC  3C 80 80 3C */	lis r4, process@ha /* 0x803C1090@ha */
/* 80241AB0  38 04 10 90 */	addi r0, r4, process@l /* 0x803C1090@l */
/* 80241AB4  7D 80 2A 14 */	add r12, r0, r5
/* 80241AB8  48 12 05 CD */	bl __ptmf_scall
/* 80241ABC  60 00 00 00 */	nop 
/* 80241AC0  38 60 00 00 */	li r3, 0
/* 80241AC4  38 00 03 00 */	li r0, 0x300
/* 80241AC8  7C 09 03 A6 */	mtctr r0
lbl_80241ACC:
/* 80241ACC  38 A3 1B 14 */	addi r5, r3, 0x1b14
/* 80241AD0  7C 9F 2A AE */	lhax r4, r31, r5
/* 80241AD4  2C 04 00 00 */	cmpwi r4, 0
/* 80241AD8  40 81 00 0C */	ble lbl_80241AE4
/* 80241ADC  38 04 FF FF */	addi r0, r4, -1
/* 80241AE0  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_80241AE4:
/* 80241AE4  38 63 00 02 */	addi r3, r3, 2
/* 80241AE8  42 00 FF E4 */	bdnz lbl_80241ACC
/* 80241AEC  88 1F 27 99 */	lbz r0, 0x2799(r31)
/* 80241AF0  88 9F 27 98 */	lbz r4, 0x2798(r31)
/* 80241AF4  7C 00 20 40 */	cmplw r0, r4
/* 80241AF8  41 82 00 20 */	beq lbl_80241B18
/* 80241AFC  7F E3 FB 78 */	mr r3, r31
/* 80241B00  1C A4 00 0C */	mulli r5, r4, 0xc
/* 80241B04  3C 80 80 3C */	lis r4, init_proc@ha /* 0x803C1018@ha */
/* 80241B08  38 04 10 18 */	addi r0, r4, init_proc@l /* 0x803C1018@l */
/* 80241B0C  7D 80 2A 14 */	add r12, r0, r5
/* 80241B10  48 12 05 75 */	bl __ptmf_scall
/* 80241B14  60 00 00 00 */	nop 
lbl_80241B18:
/* 80241B18  80 7F 00 08 */	lwz r3, 8(r31)
/* 80241B1C  48 01 3D 0D */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80241B20  FF E0 08 90 */	fmr f31, f1
/* 80241B24  88 1F 27 98 */	lbz r0, 0x2798(r31)
/* 80241B28  28 00 00 03 */	cmplwi r0, 3
/* 80241B2C  40 82 00 10 */	bne lbl_80241B3C
/* 80241B30  C3 C2 B2 70 */	lfs f30, lit_4561(r2)
/* 80241B34  C3 A2 B2 50 */	lfs f29, lit_4427(r2)
/* 80241B38  48 00 00 0C */	b lbl_80241B44
lbl_80241B3C:
/* 80241B3C  C3 C2 B2 60 */	lfs f30, lit_4431(r2)
/* 80241B40  FF A0 F0 90 */	fmr f29, f30
lbl_80241B44:
/* 80241B44  C0 1F 19 94 */	lfs f0, 0x1994(r31)
/* 80241B48  FC 00 F0 00 */	fcmpu cr0, f0, f30
/* 80241B4C  41 82 00 38 */	beq lbl_80241B84
/* 80241B50  38 7F 19 94 */	addi r3, r31, 0x1994
/* 80241B54  FC 20 F0 90 */	fmr f1, f30
/* 80241B58  C0 42 B2 74 */	lfs f2, lit_4562(r2)
/* 80241B5C  C0 62 B2 60 */	lfs f3, lit_4431(r2)
/* 80241B60  48 02 DE DD */	bl cLib_addCalc2__FPffff
/* 80241B64  C0 1F 19 94 */	lfs f0, 0x1994(r31)
/* 80241B68  EC 00 F0 28 */	fsubs f0, f0, f30
/* 80241B6C  FC 00 02 10 */	fabs f0, f0
/* 80241B70  FC 20 00 18 */	frsp f1, f0
/* 80241B74  C0 02 B2 78 */	lfs f0, lit_4563(r2)
/* 80241B78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80241B7C  40 80 00 08 */	bge lbl_80241B84
/* 80241B80  D3 DF 19 94 */	stfs f30, 0x1994(r31)
lbl_80241B84:
/* 80241B84  C0 1F 19 98 */	lfs f0, 0x1998(r31)
/* 80241B88  FC 00 E8 00 */	fcmpu cr0, f0, f29
/* 80241B8C  41 82 00 38 */	beq lbl_80241BC4
/* 80241B90  38 7F 19 98 */	addi r3, r31, 0x1998
/* 80241B94  FC 20 E8 90 */	fmr f1, f29
/* 80241B98  C0 42 B2 74 */	lfs f2, lit_4562(r2)
/* 80241B9C  C0 62 B2 60 */	lfs f3, lit_4431(r2)
/* 80241BA0  48 02 DE 9D */	bl cLib_addCalc2__FPffff
/* 80241BA4  C0 1F 19 98 */	lfs f0, 0x1998(r31)
/* 80241BA8  EC 00 E8 28 */	fsubs f0, f0, f29
/* 80241BAC  FC 00 02 10 */	fabs f0, f0
/* 80241BB0  FC 20 00 18 */	frsp f1, f0
/* 80241BB4  C0 02 B2 78 */	lfs f0, lit_4563(r2)
/* 80241BB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80241BBC  40 80 00 08 */	bge lbl_80241BC4
/* 80241BC0  D3 BF 19 98 */	stfs f29, 0x1998(r31)
lbl_80241BC4:
/* 80241BC4  80 7F 00 F4 */	lwz r3, 0xf4(r31)
/* 80241BC8  C0 1F 19 94 */	lfs f0, 0x1994(r31)
/* 80241BCC  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80241BD0  48 01 3C 01 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80241BD4  80 7F 00 F8 */	lwz r3, 0xf8(r31)
/* 80241BD8  C0 1F 19 94 */	lfs f0, 0x1994(r31)
/* 80241BDC  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80241BE0  48 01 3B F1 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80241BE4  80 7F 00 FC */	lwz r3, 0xfc(r31)
/* 80241BE8  C0 1F 19 98 */	lfs f0, 0x1998(r31)
/* 80241BEC  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80241BF0  48 01 3B E1 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80241BF4  80 7F 01 00 */	lwz r3, 0x100(r31)
/* 80241BF8  C0 1F 19 98 */	lfs f0, 0x1998(r31)
/* 80241BFC  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80241C00  48 01 3B D1 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80241C04  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80241C08  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80241C0C  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80241C10  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80241C14  E3 A1 00 18 */	psq_l f29, 24(r1), 0, 0 /* qr0 */
/* 80241C18  CB A1 00 10 */	lfd f29, 0x10(r1)
/* 80241C1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80241C20  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80241C24  7C 08 03 A6 */	mtlr r0
/* 80241C28  38 21 00 40 */	addi r1, r1, 0x40
/* 80241C2C  4E 80 00 20 */	blr 

lbl_80243BE0:
/* 80243BE0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80243BE4  7C 08 02 A6 */	mflr r0
/* 80243BE8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80243BEC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80243BF0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80243BF4  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80243BF8  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80243BFC  39 61 00 20 */	addi r11, r1, 0x20
/* 80243C00  48 11 E5 D9 */	bl _savegpr_28
/* 80243C04  7C 7C 1B 78 */	mr r28, r3
/* 80243C08  80 A3 00 D0 */	lwz r5, 0xd0(r3)
/* 80243C0C  C0 45 00 24 */	lfs f2, 0x24(r5)
/* 80243C10  C0 22 B2 70 */	lfs f1, lit_4561(r2)
/* 80243C14  C0 05 00 34 */	lfs f0, 0x34(r5)
/* 80243C18  EC 01 00 32 */	fmuls f0, f1, f0
/* 80243C1C  EC 02 00 2A */	fadds f0, f2, f0
/* 80243C20  80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 80243C24  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 80243C28  EF E1 00 28 */	fsubs f31, f1, f0
/* 80243C2C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80243C30  41 82 00 0C */	beq lbl_80243C3C
/* 80243C34  C3 C2 B2 50 */	lfs f30, lit_4427(r2)
/* 80243C38  48 00 00 48 */	b lbl_80243C80
lbl_80243C3C:
/* 80243C3C  80 65 00 04 */	lwz r3, 4(r5)
/* 80243C40  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 80243C44  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80243C48  EF C1 00 28 */	fsubs f30, f1, f0
/* 80243C4C  48 0B 34 B5 */	bl getBounds__7J2DPaneFv
/* 80243C50  C0 23 00 00 */	lfs f1, 0(r3)
/* 80243C54  C0 42 B2 70 */	lfs f2, lit_4561(r2)
/* 80243C58  EC 1E 00 B2 */	fmuls f0, f30, f2
/* 80243C5C  EC 61 00 2A */	fadds f3, f1, f0
/* 80243C60  80 7C 00 D0 */	lwz r3, 0xd0(r28)
/* 80243C64  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 80243C68  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 80243C6C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80243C70  EC 01 00 2A */	fadds f0, f1, f0
/* 80243C74  EF C3 00 28 */	fsubs f30, f3, f0
/* 80243C78  C0 1C 19 80 */	lfs f0, 0x1980(r28)
/* 80243C7C  EF DE 00 28 */	fsubs f30, f30, f0
lbl_80243C80:
/* 80243C80  80 7C 00 D4 */	lwz r3, 0xd4(r28)
/* 80243C84  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 80243C88  C0 42 B2 70 */	lfs f2, lit_4561(r2)
/* 80243C8C  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 80243C90  EC 02 00 32 */	fmuls f0, f2, f0
/* 80243C94  EC 61 00 2A */	fadds f3, f1, f0
/* 80243C98  80 7C 00 D0 */	lwz r3, 0xd0(r28)
/* 80243C9C  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 80243CA0  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 80243CA4  EC 02 00 32 */	fmuls f0, f2, f0
/* 80243CA8  EC 01 00 2A */	fadds f0, f1, f0
/* 80243CAC  EC 20 18 28 */	fsubs f1, f0, f3
/* 80243CB0  3C 80 80 43 */	lis r4, g_MsgObject_HIO_c@ha
/* 80243CB4  3B C4 02 8C */	addi r30, r4, g_MsgObject_HIO_c@l
/* 80243CB8  C0 1E 04 04 */	lfs f0, 0x404(r30)
/* 80243CBC  EC 61 00 28 */	fsubs f3, f1, f0
/* 80243CC0  FC 1E F8 40 */	fcmpo cr0, f30, f31
/* 80243CC4  40 80 00 08 */	bge lbl_80243CCC
/* 80243CC8  EF DE 18 28 */	fsubs f30, f30, f3
lbl_80243CCC:
/* 80243CCC  C0 42 B2 70 */	lfs f2, lit_4561(r2)
/* 80243CD0  EC 03 00 B2 */	fmuls f0, f3, f2
/* 80243CD4  EC 1F 00 28 */	fsubs f0, f31, f0
/* 80243CD8  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80243CDC  40 80 00 30 */	bge lbl_80243D0C
/* 80243CE0  EC 20 F0 28 */	fsubs f1, f0, f30
/* 80243CE4  FC 00 18 50 */	fneg f0, f3
/* 80243CE8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80243CEC  EC 21 00 24 */	fdivs f1, f1, f0
/* 80243CF0  C0 02 B2 60 */	lfs f0, lit_4431(r2)
/* 80243CF4  EC 20 08 28 */	fsubs f1, f0, f1
/* 80243CF8  48 01 1A D9 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80243CFC  80 7C 00 E8 */	lwz r3, 0xe8(r28)
/* 80243D00  C0 22 B2 60 */	lfs f1, lit_4431(r2)
/* 80243D04  48 01 1A CD */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80243D08  48 00 00 2C */	b lbl_80243D34
lbl_80243D0C:
/* 80243D0C  EC 3E 00 28 */	fsubs f1, f30, f0
/* 80243D10  FC 00 18 50 */	fneg f0, f3
/* 80243D14  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80243D18  EF E1 00 24 */	fdivs f31, f1, f0
/* 80243D1C  C0 22 B2 60 */	lfs f1, lit_4431(r2)
/* 80243D20  48 01 1A B1 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80243D24  80 7C 00 E8 */	lwz r3, 0xe8(r28)
/* 80243D28  C0 02 B2 60 */	lfs f0, lit_4431(r2)
/* 80243D2C  EC 20 F8 28 */	fsubs f1, f0, f31
/* 80243D30  48 01 1A A1 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_80243D34:
/* 80243D34  C3 E2 B2 50 */	lfs f31, lit_4427(r2)
/* 80243D38  3B A0 00 00 */	li r29, 0
/* 80243D3C  3B E0 00 00 */	li r31, 0
lbl_80243D40:
/* 80243D40  2C 1D 00 00 */	cmpwi r29, 0
/* 80243D44  40 81 00 1C */	ble lbl_80243D60
/* 80243D48  2C 1D 00 06 */	cmpwi r29, 6
/* 80243D4C  40 80 00 14 */	bge lbl_80243D60
/* 80243D50  38 1F 00 D0 */	addi r0, r31, 0xd0
/* 80243D54  7C 7C 00 2E */	lwzx r3, r28, r0
/* 80243D58  C0 22 B2 60 */	lfs f1, lit_4431(r2)
/* 80243D5C  48 01 1A 75 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_80243D60:
/* 80243D60  38 1F 00 D0 */	addi r0, r31, 0xd0
/* 80243D64  7C 7C 00 2E */	lwzx r3, r28, r0
/* 80243D68  C0 43 00 28 */	lfs f2, 0x28(r3)
/* 80243D6C  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80243D70  80 63 00 04 */	lwz r3, 4(r3)
/* 80243D74  EC 1E 00 2A */	fadds f0, f30, f0
/* 80243D78  EC 3F 00 2A */	fadds f1, f31, f0
/* 80243D7C  81 83 00 00 */	lwz r12, 0(r3)
/* 80243D80  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80243D84  7D 89 03 A6 */	mtctr r12
/* 80243D88  4E 80 04 21 */	bctrl 
/* 80243D8C  C0 1E 04 04 */	lfs f0, 0x404(r30)
/* 80243D90  EF FF 00 2A */	fadds f31, f31, f0
/* 80243D94  3B BD 00 01 */	addi r29, r29, 1
/* 80243D98  2C 1D 00 07 */	cmpwi r29, 7
/* 80243D9C  3B FF 00 04 */	addi r31, r31, 4
/* 80243DA0  41 80 FF A0 */	blt lbl_80243D40
/* 80243DA4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80243DA8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80243DAC  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80243DB0  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80243DB4  39 61 00 20 */	addi r11, r1, 0x20
/* 80243DB8  48 11 E4 6D */	bl _restgpr_28
/* 80243DBC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80243DC0  7C 08 03 A6 */	mtlr r0
/* 80243DC4  38 21 00 40 */	addi r1, r1, 0x40
/* 80243DC8  4E 80 00 20 */	blr 

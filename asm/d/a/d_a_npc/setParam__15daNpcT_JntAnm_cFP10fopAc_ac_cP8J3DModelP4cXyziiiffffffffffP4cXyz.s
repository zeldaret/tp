lbl_80146CD8:
/* 80146CD8  94 21 FD B0 */	stwu r1, -0x250(r1)
/* 80146CDC  7C 08 02 A6 */	mflr r0
/* 80146CE0  90 01 02 54 */	stw r0, 0x254(r1)
/* 80146CE4  DB E1 02 40 */	stfd f31, 0x240(r1)
/* 80146CE8  F3 E1 02 48 */	psq_st f31, 584(r1), 0, 0 /* qr0 */
/* 80146CEC  DB C1 02 30 */	stfd f30, 0x230(r1)
/* 80146CF0  F3 C1 02 38 */	psq_st f30, 568(r1), 0, 0 /* qr0 */
/* 80146CF4  DB A1 02 20 */	stfd f29, 0x220(r1)
/* 80146CF8  F3 A1 02 28 */	psq_st f29, 552(r1), 0, 0 /* qr0 */
/* 80146CFC  DB 81 02 10 */	stfd f28, 0x210(r1)
/* 80146D00  F3 81 02 18 */	psq_st f28, 536(r1), 0, 0 /* qr0 */
/* 80146D04  DB 61 02 00 */	stfd f27, 0x200(r1)
/* 80146D08  F3 61 02 08 */	psq_st f27, 520(r1), 0, 0 /* qr0 */
/* 80146D0C  DB 41 01 F0 */	stfd f26, 0x1f0(r1)
/* 80146D10  F3 41 01 F8 */	psq_st f26, 504(r1), 0, 0 /* qr0 */
/* 80146D14  DB 21 01 E0 */	stfd f25, 0x1e0(r1)
/* 80146D18  F3 21 01 E8 */	psq_st f25, 488(r1), 0, 0 /* qr0 */
/* 80146D1C  DB 01 01 D0 */	stfd f24, 0x1d0(r1)
/* 80146D20  F3 01 01 D8 */	psq_st f24, 472(r1), 0, 0 /* qr0 */
/* 80146D24  DA E1 01 C0 */	stfd f23, 0x1c0(r1)
/* 80146D28  F2 E1 01 C8 */	psq_st f23, 456(r1), 0, 0 /* qr0 */
/* 80146D2C  DA C1 01 B0 */	stfd f22, 0x1b0(r1)
/* 80146D30  F2 C1 01 B8 */	psq_st f22, 440(r1), 0, 0 /* qr0 */
/* 80146D34  39 61 01 B0 */	addi r11, r1, 0x1b0
/* 80146D38  48 21 B4 99 */	bl _savegpr_26
/* 80146D3C  7C 7F 1B 78 */	mr r31, r3
/* 80146D40  7C 9E 23 78 */	mr r30, r4
/* 80146D44  7C BB 2B 78 */	mr r27, r5
/* 80146D48  7C DA 33 78 */	mr r26, r6
/* 80146D4C  7C FC 3B 78 */	mr r28, r7
/* 80146D50  7D 1D 43 78 */	mr r29, r8
/* 80146D54  FE C0 08 90 */	fmr f22, f1
/* 80146D58  FE E0 10 90 */	fmr f23, f2
/* 80146D5C  FF 00 18 90 */	fmr f24, f3
/* 80146D60  FF 20 20 90 */	fmr f25, f4
/* 80146D64  FF 40 28 90 */	fmr f26, f5
/* 80146D68  FF 60 30 90 */	fmr f27, f6
/* 80146D6C  FF 80 38 90 */	fmr f28, f7
/* 80146D70  FF A0 40 90 */	fmr f29, f8
/* 80146D74  C3 C1 02 58 */	lfs f30, 0x258(r1)
/* 80146D78  C3 E1 02 5C */	lfs f31, 0x25c(r1)
/* 80146D7C  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 80146D80  D0 03 00 08 */	stfs f0, 8(r3)
/* 80146D84  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 80146D88  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80146D8C  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 80146D90  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80146D94  2C 09 00 00 */	cmpwi r9, 0
/* 80146D98  41 80 00 AC */	blt lbl_80146E44
/* 80146D9C  80 7B 00 84 */	lwz r3, 0x84(r27)
/* 80146DA0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80146DA4  1C 09 00 30 */	mulli r0, r9, 0x30
/* 80146DA8  7C 63 02 14 */	add r3, r3, r0
/* 80146DAC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80146DB0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80146DB4  48 1F F6 FD */	bl PSMTXCopy
/* 80146DB8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80146DBC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80146DC0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80146DC4  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 80146DC8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80146DCC  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 80146DD0  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80146DD4  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 80146DD8  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 80146DDC  D0 1F 01 14 */	stfs f0, 0x114(r31)
/* 80146DE0  D0 1F 01 18 */	stfs f0, 0x118(r31)
/* 80146DE4  D0 1F 01 1C */	stfs f0, 0x11c(r31)
/* 80146DE8  38 9F 01 14 */	addi r4, r31, 0x114
/* 80146DEC  7C 85 23 78 */	mr r5, r4
/* 80146DF0  48 1F FF 7D */	bl PSMTXMultVec
/* 80146DF4  C0 5A 00 08 */	lfs f2, 8(r26)
/* 80146DF8  C0 3A 00 04 */	lfs f1, 4(r26)
/* 80146DFC  C0 1A 00 00 */	lfs f0, 0(r26)
/* 80146E00  D0 1F 01 08 */	stfs f0, 0x108(r31)
/* 80146E04  D0 3F 01 0C */	stfs f1, 0x10c(r31)
/* 80146E08  D0 5F 01 10 */	stfs f2, 0x110(r31)
/* 80146E0C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80146E10  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80146E14  38 9F 01 08 */	addi r4, r31, 0x108
/* 80146E18  7C 85 23 78 */	mr r5, r4
/* 80146E1C  48 1F FF 51 */	bl PSMTXMultVec
/* 80146E20  38 7F 00 30 */	addi r3, r31, 0x30
/* 80146E24  38 9F 01 08 */	addi r4, r31, 0x108
/* 80146E28  48 12 9E 4D */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80146E2C  B0 7F 01 50 */	sth r3, 0x150(r31)
/* 80146E30  38 7F 00 30 */	addi r3, r31, 0x30
/* 80146E34  38 9F 01 08 */	addi r4, r31, 0x108
/* 80146E38  48 12 9D CD */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80146E3C  B0 7F 01 52 */	sth r3, 0x152(r31)
/* 80146E40  48 00 00 0C */	b lbl_80146E4C
lbl_80146E44:
/* 80146E44  38 00 00 00 */	li r0, 0
/* 80146E48  B0 1F 01 52 */	sth r0, 0x152(r31)
lbl_80146E4C:
/* 80146E4C  2C 1D 00 00 */	cmpwi r29, 0
/* 80146E50  41 80 00 40 */	blt lbl_80146E90
/* 80146E54  80 7B 00 84 */	lwz r3, 0x84(r27)
/* 80146E58  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80146E5C  1C 1D 00 30 */	mulli r0, r29, 0x30
/* 80146E60  7C 63 02 14 */	add r3, r3, r0
/* 80146E64  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80146E68  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80146E6C  48 1F F6 45 */	bl PSMTXCopy
/* 80146E70  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80146E74  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80146E78  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80146E7C  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 80146E80  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80146E84  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 80146E88  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80146E8C  D0 1F 00 44 */	stfs f0, 0x44(r31)
lbl_80146E90:
/* 80146E90  2C 1C 00 00 */	cmpwi r28, 0
/* 80146E94  41 80 00 40 */	blt lbl_80146ED4
/* 80146E98  80 7B 00 84 */	lwz r3, 0x84(r27)
/* 80146E9C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80146EA0  1C 1C 00 30 */	mulli r0, r28, 0x30
/* 80146EA4  7C 63 02 14 */	add r3, r3, r0
/* 80146EA8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80146EAC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80146EB0  48 1F F6 01 */	bl PSMTXCopy
/* 80146EB4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80146EB8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80146EBC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80146EC0  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 80146EC4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80146EC8  D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 80146ECC  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80146ED0  D0 1F 00 50 */	stfs f0, 0x50(r31)
lbl_80146ED4:
/* 80146ED4  C0 42 9A 20 */	lfs f2, lit_5239(r2)
/* 80146ED8  FC 00 B8 50 */	fneg f0, f23
/* 80146EDC  EC 02 00 32 */	fmuls f0, f2, f0
/* 80146EE0  FC 00 00 1E */	fctiwz f0, f0
/* 80146EE4  D8 01 01 18 */	stfd f0, 0x118(r1)
/* 80146EE8  80 01 01 1C */	lwz r0, 0x11c(r1)
/* 80146EEC  C0 22 9A 24 */	lfs f1, lit_5240(r2)
/* 80146EF0  7C 00 07 34 */	extsh r0, r0
/* 80146EF4  C8 02 99 E0 */	lfd f0, lit_4142(r2)
/* 80146EF8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80146EFC  90 01 01 24 */	stw r0, 0x124(r1)
/* 80146F00  3C 60 43 30 */	lis r3, 0x4330
/* 80146F04  90 61 01 20 */	stw r3, 0x120(r1)
/* 80146F08  C8 61 01 20 */	lfd f3, 0x120(r1)
/* 80146F0C  EC 63 00 28 */	fsubs f3, f3, f0
/* 80146F10  EC 61 00 F2 */	fmuls f3, f1, f3
/* 80146F14  D0 7F 00 90 */	stfs f3, 0x90(r31)
/* 80146F18  FC 60 B0 50 */	fneg f3, f22
/* 80146F1C  EC 62 00 F2 */	fmuls f3, f2, f3
/* 80146F20  FC 60 18 1E */	fctiwz f3, f3
/* 80146F24  D8 61 01 28 */	stfd f3, 0x128(r1)
/* 80146F28  80 01 01 2C */	lwz r0, 0x12c(r1)
/* 80146F2C  7C 00 07 34 */	extsh r0, r0
/* 80146F30  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80146F34  90 01 01 34 */	stw r0, 0x134(r1)
/* 80146F38  90 61 01 30 */	stw r3, 0x130(r1)
/* 80146F3C  C8 61 01 30 */	lfd f3, 0x130(r1)
/* 80146F40  EC 63 00 28 */	fsubs f3, f3, f0
/* 80146F44  EC 61 00 F2 */	fmuls f3, f1, f3
/* 80146F48  D0 7F 00 B4 */	stfs f3, 0xb4(r31)
/* 80146F4C  EC 62 06 32 */	fmuls f3, f2, f24
/* 80146F50  FC 60 18 1E */	fctiwz f3, f3
/* 80146F54  D8 61 01 38 */	stfd f3, 0x138(r1)
/* 80146F58  80 01 01 3C */	lwz r0, 0x13c(r1)
/* 80146F5C  7C 00 07 34 */	extsh r0, r0
/* 80146F60  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80146F64  90 01 01 44 */	stw r0, 0x144(r1)
/* 80146F68  90 61 01 40 */	stw r3, 0x140(r1)
/* 80146F6C  C8 61 01 40 */	lfd f3, 0x140(r1)
/* 80146F70  EC 63 00 28 */	fsubs f3, f3, f0
/* 80146F74  EC 61 00 F2 */	fmuls f3, f1, f3
/* 80146F78  D0 7F 00 94 */	stfs f3, 0x94(r31)
/* 80146F7C  EC 62 06 72 */	fmuls f3, f2, f25
/* 80146F80  FC 60 18 1E */	fctiwz f3, f3
/* 80146F84  D8 61 01 48 */	stfd f3, 0x148(r1)
/* 80146F88  80 01 01 4C */	lwz r0, 0x14c(r1)
/* 80146F8C  7C 00 07 34 */	extsh r0, r0
/* 80146F90  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80146F94  90 01 01 54 */	stw r0, 0x154(r1)
/* 80146F98  90 61 01 50 */	stw r3, 0x150(r1)
/* 80146F9C  C8 61 01 50 */	lfd f3, 0x150(r1)
/* 80146FA0  EC 63 00 28 */	fsubs f3, f3, f0
/* 80146FA4  EC 61 00 F2 */	fmuls f3, f1, f3
/* 80146FA8  D0 7F 00 B8 */	stfs f3, 0xb8(r31)
/* 80146FAC  C0 82 99 D8 */	lfs f4, lit_4116(r2)
/* 80146FB0  D0 9F 00 84 */	stfs f4, 0x84(r31)
/* 80146FB4  D0 9F 00 88 */	stfs f4, 0x88(r31)
/* 80146FB8  D0 9F 00 8C */	stfs f4, 0x8c(r31)
/* 80146FBC  D0 9F 00 A8 */	stfs f4, 0xa8(r31)
/* 80146FC0  D0 9F 00 AC */	stfs f4, 0xac(r31)
/* 80146FC4  D0 9F 00 B0 */	stfs f4, 0xb0(r31)
/* 80146FC8  FC 60 D8 50 */	fneg f3, f27
/* 80146FCC  EC 62 00 F2 */	fmuls f3, f2, f3
/* 80146FD0  FC 60 18 1E */	fctiwz f3, f3
/* 80146FD4  D8 61 01 58 */	stfd f3, 0x158(r1)
/* 80146FD8  80 01 01 5C */	lwz r0, 0x15c(r1)
/* 80146FDC  7C 00 07 34 */	extsh r0, r0
/* 80146FE0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80146FE4  90 01 01 64 */	stw r0, 0x164(r1)
/* 80146FE8  90 61 01 60 */	stw r3, 0x160(r1)
/* 80146FEC  C8 61 01 60 */	lfd f3, 0x160(r1)
/* 80146FF0  EC 63 00 28 */	fsubs f3, f3, f0
/* 80146FF4  EC 61 00 F2 */	fmuls f3, f1, f3
/* 80146FF8  D0 7F 00 78 */	stfs f3, 0x78(r31)
/* 80146FFC  FC 60 D0 50 */	fneg f3, f26
/* 80147000  EC 62 00 F2 */	fmuls f3, f2, f3
/* 80147004  FC 60 18 1E */	fctiwz f3, f3
/* 80147008  D8 61 01 68 */	stfd f3, 0x168(r1)
/* 8014700C  80 01 01 6C */	lwz r0, 0x16c(r1)
/* 80147010  7C 00 07 34 */	extsh r0, r0
/* 80147014  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80147018  90 01 01 74 */	stw r0, 0x174(r1)
/* 8014701C  90 61 01 70 */	stw r3, 0x170(r1)
/* 80147020  C8 61 01 70 */	lfd f3, 0x170(r1)
/* 80147024  EC 63 00 28 */	fsubs f3, f3, f0
/* 80147028  EC 61 00 F2 */	fmuls f3, f1, f3
/* 8014702C  D0 7F 00 9C */	stfs f3, 0x9c(r31)
/* 80147030  EC 62 07 32 */	fmuls f3, f2, f28
/* 80147034  FC 60 18 1E */	fctiwz f3, f3
/* 80147038  D8 61 01 78 */	stfd f3, 0x178(r1)
/* 8014703C  80 01 01 7C */	lwz r0, 0x17c(r1)
/* 80147040  7C 00 07 34 */	extsh r0, r0
/* 80147044  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80147048  90 01 01 84 */	stw r0, 0x184(r1)
/* 8014704C  90 61 01 80 */	stw r3, 0x180(r1)
/* 80147050  C8 61 01 80 */	lfd f3, 0x180(r1)
/* 80147054  EC 63 00 28 */	fsubs f3, f3, f0
/* 80147058  EC 61 00 F2 */	fmuls f3, f1, f3
/* 8014705C  D0 7F 00 7C */	stfs f3, 0x7c(r31)
/* 80147060  EC 42 07 72 */	fmuls f2, f2, f29
/* 80147064  FC 40 10 1E */	fctiwz f2, f2
/* 80147068  D8 41 01 88 */	stfd f2, 0x188(r1)
/* 8014706C  80 01 01 8C */	lwz r0, 0x18c(r1)
/* 80147070  7C 00 07 34 */	extsh r0, r0
/* 80147074  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80147078  90 01 01 94 */	stw r0, 0x194(r1)
/* 8014707C  90 61 01 90 */	stw r3, 0x190(r1)
/* 80147080  C8 41 01 90 */	lfd f2, 0x190(r1)
/* 80147084  EC 02 00 28 */	fsubs f0, f2, f0
/* 80147088  EC 01 00 32 */	fmuls f0, f1, f0
/* 8014708C  D0 1F 00 A0 */	stfs f0, 0xa0(r31)
/* 80147090  D0 9F 00 14 */	stfs f4, 0x14(r31)
/* 80147094  D0 9F 00 18 */	stfs f4, 0x18(r31)
/* 80147098  D0 9F 00 1C */	stfs f4, 0x1c(r31)
/* 8014709C  80 1F 01 38 */	lwz r0, 0x138(r31)
/* 801470A0  28 00 00 08 */	cmplwi r0, 8
/* 801470A4  41 81 02 60 */	bgt lbl_80147304
/* 801470A8  3C 60 80 3B */	lis r3, lit_5258@ha /* 0x803B36B4@ha */
/* 801470AC  38 63 36 B4 */	addi r3, r3, lit_5258@l /* 0x803B36B4@l */
/* 801470B0  54 00 10 3A */	slwi r0, r0, 2
/* 801470B4  7C 03 00 2E */	lwzx r0, r3, r0
/* 801470B8  7C 09 03 A6 */	mtctr r0
/* 801470BC  4E 80 04 20 */	bctr 
/* 801470C0  38 00 00 00 */	li r0, 0
/* 801470C4  90 1F 00 20 */	stw r0, 0x20(r31)
/* 801470C8  48 00 02 44 */	b lbl_8014730C
/* 801470CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801470D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801470D4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 801470D8  38 03 05 50 */	addi r0, r3, 0x550
/* 801470DC  90 1F 00 20 */	stw r0, 0x20(r31)
/* 801470E0  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801470E4  C0 03 00 00 */	lfs f0, 0(r3)
/* 801470E8  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 801470EC  C0 03 00 04 */	lfs f0, 4(r3)
/* 801470F0  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 801470F4  C0 03 00 08 */	lfs f0, 8(r3)
/* 801470F8  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 801470FC  48 00 02 10 */	b lbl_8014730C
/* 80147100  7F E3 FB 78 */	mr r3, r31
/* 80147104  4B FF E6 05 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80147108  28 03 00 00 */	cmplwi r3, 0
/* 8014710C  41 82 00 3C */	beq lbl_80147148
/* 80147110  38 03 05 50 */	addi r0, r3, 0x550
/* 80147114  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80147118  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8014711C  C0 03 00 00 */	lfs f0, 0(r3)
/* 80147120  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 80147124  C0 03 00 04 */	lfs f0, 4(r3)
/* 80147128  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 8014712C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80147130  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 80147134  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80147138  C0 1F 01 4C */	lfs f0, 0x14c(r31)
/* 8014713C  EC 01 00 2A */	fadds f0, f1, f0
/* 80147140  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 80147144  48 00 01 C8 */	b lbl_8014730C
lbl_80147148:
/* 80147148  38 00 00 00 */	li r0, 0
/* 8014714C  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80147150  48 00 01 BC */	b lbl_8014730C
/* 80147154  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80147158  28 03 00 00 */	cmplwi r3, 0
/* 8014715C  41 82 01 B0 */	beq lbl_8014730C
/* 80147160  C0 03 00 00 */	lfs f0, 0(r3)
/* 80147164  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 80147168  C0 03 00 04 */	lfs f0, 4(r3)
/* 8014716C  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 80147170  C0 03 00 08 */	lfs f0, 8(r3)
/* 80147174  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 80147178  48 00 01 94 */	b lbl_8014730C
/* 8014717C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80147180  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80147184  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 80147188  7C 00 07 74 */	extsb r0, r0
/* 8014718C  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80147190  7C 63 02 14 */	add r3, r3, r0
/* 80147194  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 80147198  28 03 00 00 */	cmplwi r3, 0
/* 8014719C  41 82 01 70 */	beq lbl_8014730C
/* 801471A0  38 03 00 D8 */	addi r0, r3, 0xd8
/* 801471A4  90 1F 00 20 */	stw r0, 0x20(r31)
/* 801471A8  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801471AC  C0 03 00 00 */	lfs f0, 0(r3)
/* 801471B0  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 801471B4  C0 03 00 04 */	lfs f0, 4(r3)
/* 801471B8  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 801471BC  C0 03 00 08 */	lfs f0, 8(r3)
/* 801471C0  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 801471C4  48 00 01 48 */	b lbl_8014730C
/* 801471C8  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 801471CC  28 00 00 00 */	cmplwi r0, 0
/* 801471D0  41 82 01 3C */	beq lbl_8014730C
/* 801471D4  D0 9F 00 94 */	stfs f4, 0x94(r31)
/* 801471D8  D0 9F 00 B8 */	stfs f4, 0xb8(r31)
/* 801471DC  D0 9F 00 7C */	stfs f4, 0x7c(r31)
/* 801471E0  D0 9F 00 A0 */	stfs f4, 0xa0(r31)
/* 801471E4  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801471E8  C0 03 00 00 */	lfs f0, 0(r3)
/* 801471EC  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 801471F0  C0 03 00 04 */	lfs f0, 4(r3)
/* 801471F4  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 801471F8  C0 03 00 08 */	lfs f0, 8(r3)
/* 801471FC  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 80147200  48 00 01 0C */	b lbl_8014730C
/* 80147204  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 80147208  28 00 00 00 */	cmplwi r0, 0
/* 8014720C  41 82 01 00 */	beq lbl_8014730C
/* 80147210  D0 9F 00 94 */	stfs f4, 0x94(r31)
/* 80147214  D0 9F 00 B8 */	stfs f4, 0xb8(r31)
/* 80147218  D0 9F 00 78 */	stfs f4, 0x78(r31)
/* 8014721C  D0 9F 00 9C */	stfs f4, 0x9c(r31)
/* 80147220  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80147224  C0 03 00 00 */	lfs f0, 0(r3)
/* 80147228  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 8014722C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80147230  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 80147234  C0 03 00 08 */	lfs f0, 8(r3)
/* 80147238  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 8014723C  48 00 00 D0 */	b lbl_8014730C
/* 80147240  38 7F 01 44 */	addi r3, r31, 0x144
/* 80147244  48 00 61 05 */	bl func_8014D348
/* 80147248  2C 03 00 00 */	cmpwi r3, 0
/* 8014724C  40 82 00 24 */	bne lbl_80147270
/* 80147250  80 1F 01 3C */	lwz r0, 0x13c(r31)
/* 80147254  68 00 00 01 */	xori r0, r0, 1
/* 80147258  90 1F 01 3C */	stw r0, 0x13c(r31)
/* 8014725C  80 9F 01 40 */	lwz r4, 0x140(r31)
/* 80147260  7C 80 0E 70 */	srawi r0, r4, 1
/* 80147264  7C 60 01 94 */	addze r3, r0
/* 80147268  48 00 60 FD */	bl func_8014D364
/* 8014726C  90 7F 01 44 */	stw r3, 0x144(r31)
lbl_80147270:
/* 80147270  80 1F 01 3C */	lwz r0, 0x13c(r31)
/* 80147274  2C 00 00 00 */	cmpwi r0, 0
/* 80147278  38 00 4E 38 */	li r0, 0x4e38
/* 8014727C  41 82 00 08 */	beq lbl_80147284
/* 80147280  38 00 B1 C8 */	li r0, -20024
lbl_80147284:
/* 80147284  7C 03 07 34 */	extsh r3, r0
/* 80147288  B0 01 00 0A */	sth r0, 0xa(r1)
/* 8014728C  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80147290  7C 03 02 14 */	add r0, r3, r0
/* 80147294  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80147298  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 8014729C  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 801472A0  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 801472A4  D0 21 00 C8 */	stfs f1, 0xc8(r1)
/* 801472A8  C0 02 9A 28 */	lfs f0, lit_5241(r2)
/* 801472AC  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 801472B0  80 1F 01 38 */	lwz r0, 0x138(r31)
/* 801472B4  2C 00 00 08 */	cmpwi r0, 8
/* 801472B8  40 82 00 0C */	bne lbl_801472C4
/* 801472BC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 801472C0  D0 01 00 C8 */	stfs f0, 0xc8(r1)
lbl_801472C4:
/* 801472C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 801472C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 801472CC  A8 81 00 0A */	lha r4, 0xa(r1)
/* 801472D0  4B EC 51 0D */	bl mDoMtx_YrotS__FPA4_fs
/* 801472D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 801472D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 801472DC  38 81 00 C4 */	addi r4, r1, 0xc4
/* 801472E0  38 BF 00 14 */	addi r5, r31, 0x14
/* 801472E4  48 1F FA 89 */	bl PSMTXMultVec
/* 801472E8  38 7F 00 14 */	addi r3, r31, 0x14
/* 801472EC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 801472F0  7C 65 1B 78 */	mr r5, r3
/* 801472F4  48 1F FD 9D */	bl PSVECAdd
/* 801472F8  38 1F 00 14 */	addi r0, r31, 0x14
/* 801472FC  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80147300  48 00 00 0C */	b lbl_8014730C
lbl_80147304:
/* 80147304  38 00 00 00 */	li r0, 0
/* 80147308  90 1F 00 20 */	stw r0, 0x20(r31)
lbl_8014730C:
/* 8014730C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80147310  D0 1F 01 20 */	stfs f0, 0x120(r31)
/* 80147314  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80147318  D0 1F 01 24 */	stfs f0, 0x124(r31)
/* 8014731C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80147320  D0 1F 01 28 */	stfs f0, 0x128(r31)
/* 80147324  38 7B 00 24 */	addi r3, r27, 0x24
/* 80147328  38 81 00 E8 */	addi r4, r1, 0xe8
/* 8014732C  48 1F F1 85 */	bl PSMTXCopy
/* 80147330  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 80147334  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 80147338  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 8014733C  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 80147340  38 61 00 E8 */	addi r3, r1, 0xe8
/* 80147344  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80147348  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8014734C  48 1F F1 65 */	bl PSMTXCopy
/* 80147350  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80147354  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80147358  7C 64 1B 78 */	mr r4, r3
/* 8014735C  48 1F F2 55 */	bl PSMTXInverse
/* 80147360  38 61 00 B8 */	addi r3, r1, 0xb8
/* 80147364  38 9F 01 20 */	addi r4, r31, 0x120
/* 80147368  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8014736C  48 11 F7 C9 */	bl __mi__4cXyzCFRC3Vec
/* 80147370  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 80147374  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 80147378  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 8014737C  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80147380  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 80147384  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80147388  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8014738C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80147390  38 81 00 C4 */	addi r4, r1, 0xc4
/* 80147394  7C 85 23 78 */	mr r5, r4
/* 80147398  48 1F F9 D5 */	bl PSMTXMultVec
/* 8014739C  38 61 00 AC */	addi r3, r1, 0xac
/* 801473A0  38 81 00 C4 */	addi r4, r1, 0xc4
/* 801473A4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 801473A8  48 11 F7 3D */	bl __pl__4cXyzCFRC3Vec
/* 801473AC  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 801473B0  D0 1F 01 20 */	stfs f0, 0x120(r31)
/* 801473B4  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 801473B8  D0 1F 01 24 */	stfs f0, 0x124(r31)
/* 801473BC  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 801473C0  D0 1F 01 28 */	stfs f0, 0x128(r31)
/* 801473C4  3B 40 00 00 */	li r26, 0
/* 801473C8  3B 60 00 00 */	li r27, 0
/* 801473CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 801473D0  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
lbl_801473D4:
/* 801473D4  38 61 00 A0 */	addi r3, r1, 0xa0
/* 801473D8  7F BF DA 14 */	add r29, r31, r27
/* 801473DC  38 9D 00 30 */	addi r4, r29, 0x30
/* 801473E0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 801473E4  48 11 F7 51 */	bl __mi__4cXyzCFRC3Vec
/* 801473E8  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 801473EC  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 801473F0  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 801473F4  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 801473F8  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 801473FC  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80147400  7F 83 E3 78 */	mr r3, r28
/* 80147404  38 81 00 C4 */	addi r4, r1, 0xc4
/* 80147408  7C 85 23 78 */	mr r5, r4
/* 8014740C  48 1F F9 61 */	bl PSMTXMultVec
/* 80147410  38 61 00 94 */	addi r3, r1, 0x94
/* 80147414  38 81 00 C4 */	addi r4, r1, 0xc4
/* 80147418  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8014741C  48 11 F6 C9 */	bl __pl__4cXyzCFRC3Vec
/* 80147420  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 80147424  D0 1D 00 30 */	stfs f0, 0x30(r29)
/* 80147428  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 8014742C  D0 1D 00 34 */	stfs f0, 0x34(r29)
/* 80147430  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 80147434  D0 1D 00 38 */	stfs f0, 0x38(r29)
/* 80147438  3B 5A 00 01 */	addi r26, r26, 1
/* 8014743C  2C 1A 00 03 */	cmpwi r26, 3
/* 80147440  3B 7B 00 0C */	addi r27, r27, 0xc
/* 80147444  41 80 FF 90 */	blt lbl_801473D4
/* 80147448  38 61 00 88 */	addi r3, r1, 0x88
/* 8014744C  38 9F 01 14 */	addi r4, r31, 0x114
/* 80147450  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80147454  48 11 F6 E1 */	bl __mi__4cXyzCFRC3Vec
/* 80147458  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 8014745C  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 80147460  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80147464  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80147468  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 8014746C  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80147470  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80147474  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80147478  38 81 00 C4 */	addi r4, r1, 0xc4
/* 8014747C  7C 85 23 78 */	mr r5, r4
/* 80147480  48 1F F8 ED */	bl PSMTXMultVec
/* 80147484  38 61 00 7C */	addi r3, r1, 0x7c
/* 80147488  38 81 00 C4 */	addi r4, r1, 0xc4
/* 8014748C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80147490  48 11 F6 55 */	bl __pl__4cXyzCFRC3Vec
/* 80147494  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80147498  D0 1F 01 14 */	stfs f0, 0x114(r31)
/* 8014749C  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 801474A0  D0 1F 01 18 */	stfs f0, 0x118(r31)
/* 801474A4  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 801474A8  D0 1F 01 1C */	stfs f0, 0x11c(r31)
/* 801474AC  38 61 00 70 */	addi r3, r1, 0x70
/* 801474B0  38 9F 01 08 */	addi r4, r31, 0x108
/* 801474B4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 801474B8  48 11 F6 7D */	bl __mi__4cXyzCFRC3Vec
/* 801474BC  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 801474C0  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 801474C4  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 801474C8  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 801474CC  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 801474D0  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 801474D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 801474D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 801474DC  38 81 00 C4 */	addi r4, r1, 0xc4
/* 801474E0  7C 85 23 78 */	mr r5, r4
/* 801474E4  48 1F F8 89 */	bl PSMTXMultVec
/* 801474E8  38 61 00 64 */	addi r3, r1, 0x64
/* 801474EC  38 81 00 C4 */	addi r4, r1, 0xc4
/* 801474F0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 801474F4  48 11 F5 F1 */	bl __pl__4cXyzCFRC3Vec
/* 801474F8  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 801474FC  D0 1F 01 08 */	stfs f0, 0x108(r31)
/* 80147500  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80147504  D0 1F 01 0C */	stfs f0, 0x10c(r31)
/* 80147508  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 8014750C  D0 1F 01 10 */	stfs f0, 0x110(r31)
/* 80147510  38 61 00 58 */	addi r3, r1, 0x58
/* 80147514  38 9F 01 20 */	addi r4, r31, 0x120
/* 80147518  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8014751C  48 11 F6 19 */	bl __mi__4cXyzCFRC3Vec
/* 80147520  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80147524  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 80147528  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8014752C  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80147530  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80147534  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80147538  FC 20 F8 90 */	fmr f1, f31
/* 8014753C  48 12 00 A9 */	bl cM_rad2s__Ff
/* 80147540  7C 03 00 D0 */	neg r0, r3
/* 80147544  7C 04 07 34 */	extsh r4, r0
/* 80147548  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8014754C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80147550  4B EC 4E 8D */	bl mDoMtx_YrotS__FPA4_fs
/* 80147554  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80147558  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8014755C  38 81 00 C4 */	addi r4, r1, 0xc4
/* 80147560  7C 85 23 78 */	mr r5, r4
/* 80147564  48 1F F8 09 */	bl PSMTXMultVec
/* 80147568  38 61 00 4C */	addi r3, r1, 0x4c
/* 8014756C  38 81 00 C4 */	addi r4, r1, 0xc4
/* 80147570  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80147574  48 11 F5 71 */	bl __pl__4cXyzCFRC3Vec
/* 80147578  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8014757C  D0 1F 01 20 */	stfs f0, 0x120(r31)
/* 80147580  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80147584  D0 1F 01 24 */	stfs f0, 0x124(r31)
/* 80147588  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8014758C  D0 1F 01 28 */	stfs f0, 0x128(r31)
/* 80147590  38 61 00 40 */	addi r3, r1, 0x40
/* 80147594  38 9F 01 08 */	addi r4, r31, 0x108
/* 80147598  38 BF 01 14 */	addi r5, r31, 0x114
/* 8014759C  48 11 F5 99 */	bl __mi__4cXyzCFRC3Vec
/* 801475A0  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 801475A4  D0 1F 01 08 */	stfs f0, 0x108(r31)
/* 801475A8  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 801475AC  D0 1F 01 0C */	stfs f0, 0x10c(r31)
/* 801475B0  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 801475B4  D0 1F 01 10 */	stfs f0, 0x110(r31)
/* 801475B8  38 61 00 34 */	addi r3, r1, 0x34
/* 801475BC  38 9F 01 14 */	addi r4, r31, 0x114
/* 801475C0  38 BF 00 30 */	addi r5, r31, 0x30
/* 801475C4  48 11 F5 71 */	bl __mi__4cXyzCFRC3Vec
/* 801475C8  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 801475CC  D0 1F 01 14 */	stfs f0, 0x114(r31)
/* 801475D0  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 801475D4  D0 1F 01 18 */	stfs f0, 0x118(r31)
/* 801475D8  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 801475DC  D0 1F 01 1C */	stfs f0, 0x11c(r31)
/* 801475E0  38 60 00 00 */	li r3, 0
/* 801475E4  38 00 00 03 */	li r0, 3
/* 801475E8  7C 09 03 A6 */	mtctr r0
lbl_801475EC:
/* 801475EC  7C 9F 1A 14 */	add r4, r31, r3
/* 801475F0  C0 04 00 30 */	lfs f0, 0x30(r4)
/* 801475F4  D0 04 00 54 */	stfs f0, 0x54(r4)
/* 801475F8  C0 04 00 34 */	lfs f0, 0x34(r4)
/* 801475FC  D0 04 00 58 */	stfs f0, 0x58(r4)
/* 80147600  C0 04 00 38 */	lfs f0, 0x38(r4)
/* 80147604  D0 04 00 5C */	stfs f0, 0x5c(r4)
/* 80147608  38 63 00 0C */	addi r3, r3, 0xc
/* 8014760C  42 00 FF E0 */	bdnz lbl_801475EC
/* 80147610  3B 40 00 02 */	li r26, 2
/* 80147614  3B 60 00 18 */	li r27, 0x18
/* 80147618  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8014761C  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
lbl_80147620:
/* 80147620  C0 3F 01 00 */	lfs f1, 0x100(r31)
/* 80147624  2C 1A 00 00 */	cmpwi r26, 0
/* 80147628  40 82 00 20 */	bne lbl_80147648
/* 8014762C  C0 7F 00 E8 */	lfs f3, 0xe8(r31)
/* 80147630  C0 42 99 DC */	lfs f2, lit_4140(r2)
/* 80147634  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 80147638  EC 02 00 28 */	fsubs f0, f2, f0
/* 8014763C  EC 03 00 32 */	fmuls f0, f3, f0
/* 80147640  EC 21 00 2A */	fadds f1, f1, f0
/* 80147644  48 00 00 1C */	b lbl_80147660
lbl_80147648:
/* 80147648  2C 1A 00 01 */	cmpwi r26, 1
/* 8014764C  40 82 00 14 */	bne lbl_80147660
/* 80147650  C0 5F 00 E8 */	lfs f2, 0xe8(r31)
/* 80147654  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 80147658  EC 02 00 32 */	fmuls f0, f2, f0
/* 8014765C  EC 21 00 2A */	fadds f1, f1, f0
lbl_80147660:
/* 80147660  48 11 FF 85 */	bl cM_rad2s__Ff
/* 80147664  7C 7D 1B 78 */	mr r29, r3
/* 80147668  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 8014766C  2C 1A 00 00 */	cmpwi r26, 0
/* 80147670  40 82 00 20 */	bne lbl_80147690
/* 80147674  C0 7F 00 E4 */	lfs f3, 0xe4(r31)
/* 80147678  C0 42 99 DC */	lfs f2, lit_4140(r2)
/* 8014767C  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 80147680  EC 02 00 28 */	fsubs f0, f2, f0
/* 80147684  EC 03 00 32 */	fmuls f0, f3, f0
/* 80147688  EC 21 00 2A */	fadds f1, f1, f0
/* 8014768C  48 00 00 1C */	b lbl_801476A8
lbl_80147690:
/* 80147690  2C 1A 00 01 */	cmpwi r26, 1
/* 80147694  40 82 00 14 */	bne lbl_801476A8
/* 80147698  C0 5F 00 E4 */	lfs f2, 0xe4(r31)
/* 8014769C  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 801476A0  EC 02 00 32 */	fmuls f0, f2, f0
/* 801476A4  EC 21 00 2A */	fadds f1, f1, f0
lbl_801476A8:
/* 801476A8  48 11 FF 3D */	bl cM_rad2s__Ff
/* 801476AC  B0 61 00 08 */	sth r3, 8(r1)
/* 801476B0  B3 A1 00 0A */	sth r29, 0xa(r1)
/* 801476B4  38 00 00 00 */	li r0, 0
/* 801476B8  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801476BC  38 61 00 08 */	addi r3, r1, 8
/* 801476C0  4B EC 58 4D */	bl ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 801476C4  7F 83 E3 78 */	mr r3, r28
/* 801476C8  7F 84 E3 78 */	mr r4, r28
/* 801476CC  48 1F EE E5 */	bl PSMTXInverse
/* 801476D0  2C 1A 00 00 */	cmpwi r26, 0
/* 801476D4  41 82 00 7C */	beq lbl_80147750
/* 801476D8  38 61 00 28 */	addi r3, r1, 0x28
/* 801476DC  38 1A FF FF */	addi r0, r26, -1
/* 801476E0  1C 80 00 0C */	mulli r4, r0, 0xc
/* 801476E4  38 84 00 54 */	addi r4, r4, 0x54
/* 801476E8  7C 9F 22 14 */	add r4, r31, r4
/* 801476EC  7F BF DA 14 */	add r29, r31, r27
/* 801476F0  38 BD 00 54 */	addi r5, r29, 0x54
/* 801476F4  48 11 F4 41 */	bl __mi__4cXyzCFRC3Vec
/* 801476F8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 801476FC  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 80147700  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80147704  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80147708  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8014770C  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80147710  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80147714  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80147718  38 81 00 C4 */	addi r4, r1, 0xc4
/* 8014771C  7C 85 23 78 */	mr r5, r4
/* 80147720  48 1F F6 4D */	bl PSMTXMultVec
/* 80147724  38 61 00 1C */	addi r3, r1, 0x1c
/* 80147728  38 9D 00 30 */	addi r4, r29, 0x30
/* 8014772C  38 A1 00 C4 */	addi r5, r1, 0xc4
/* 80147730  48 11 F3 B5 */	bl __pl__4cXyzCFRC3Vec
/* 80147734  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80147738  D0 1D 00 24 */	stfs f0, 0x24(r29)
/* 8014773C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80147740  D0 1D 00 28 */	stfs f0, 0x28(r29)
/* 80147744  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80147748  D0 1D 00 2C */	stfs f0, 0x2c(r29)
/* 8014774C  48 00 00 2C */	b lbl_80147778
lbl_80147750:
/* 80147750  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80147754  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80147758  38 9F 01 08 */	addi r4, r31, 0x108
/* 8014775C  38 A1 00 DC */	addi r5, r1, 0xdc
/* 80147760  48 1F F6 0D */	bl PSMTXMultVec
/* 80147764  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80147768  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8014776C  38 9F 01 14 */	addi r4, r31, 0x114
/* 80147770  38 A1 00 D0 */	addi r5, r1, 0xd0
/* 80147774  48 1F F5 F9 */	bl PSMTXMultVec
lbl_80147778:
/* 80147778  37 5A FF FF */	addic. r26, r26, -1
/* 8014777C  3B 7B FF F4 */	addi r27, r27, -12
/* 80147780  40 80 FE A0 */	bge lbl_80147620
/* 80147784  38 60 00 00 */	li r3, 0
/* 80147788  38 00 00 03 */	li r0, 3
/* 8014778C  7C 09 03 A6 */	mtctr r0
lbl_80147790:
/* 80147790  7C 9F 1A 14 */	add r4, r31, r3
/* 80147794  C0 04 00 30 */	lfs f0, 0x30(r4)
/* 80147798  D0 04 00 54 */	stfs f0, 0x54(r4)
/* 8014779C  C0 04 00 34 */	lfs f0, 0x34(r4)
/* 801477A0  D0 04 00 58 */	stfs f0, 0x58(r4)
/* 801477A4  C0 04 00 38 */	lfs f0, 0x38(r4)
/* 801477A8  D0 04 00 5C */	stfs f0, 0x5c(r4)
/* 801477AC  38 63 00 0C */	addi r3, r3, 0xc
/* 801477B0  42 00 FF E0 */	bdnz lbl_80147790
/* 801477B4  38 7F 00 30 */	addi r3, r31, 0x30
/* 801477B8  38 81 00 D0 */	addi r4, r1, 0xd0
/* 801477BC  7C 65 1B 78 */	mr r5, r3
/* 801477C0  48 1F F8 D1 */	bl PSVECAdd
/* 801477C4  38 61 00 10 */	addi r3, r1, 0x10
/* 801477C8  38 9F 00 30 */	addi r4, r31, 0x30
/* 801477CC  38 A1 00 DC */	addi r5, r1, 0xdc
/* 801477D0  48 11 F3 15 */	bl __pl__4cXyzCFRC3Vec
/* 801477D4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 801477D8  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 801477DC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 801477E0  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 801477E4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 801477E8  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 801477EC  D3 DF 01 48 */	stfs f30, 0x148(r31)
/* 801477F0  E3 E1 02 48 */	psq_l f31, 584(r1), 0, 0 /* qr0 */
/* 801477F4  CB E1 02 40 */	lfd f31, 0x240(r1)
/* 801477F8  E3 C1 02 38 */	psq_l f30, 568(r1), 0, 0 /* qr0 */
/* 801477FC  CB C1 02 30 */	lfd f30, 0x230(r1)
/* 80147800  E3 A1 02 28 */	psq_l f29, 552(r1), 0, 0 /* qr0 */
/* 80147804  CB A1 02 20 */	lfd f29, 0x220(r1)
/* 80147808  E3 81 02 18 */	psq_l f28, 536(r1), 0, 0 /* qr0 */
/* 8014780C  CB 81 02 10 */	lfd f28, 0x210(r1)
/* 80147810  E3 61 02 08 */	psq_l f27, 520(r1), 0, 0 /* qr0 */
/* 80147814  CB 61 02 00 */	lfd f27, 0x200(r1)
/* 80147818  E3 41 01 F8 */	psq_l f26, 504(r1), 0, 0 /* qr0 */
/* 8014781C  CB 41 01 F0 */	lfd f26, 0x1f0(r1)
/* 80147820  E3 21 01 E8 */	psq_l f25, 488(r1), 0, 0 /* qr0 */
/* 80147824  CB 21 01 E0 */	lfd f25, 0x1e0(r1)
/* 80147828  E3 01 01 D8 */	psq_l f24, 472(r1), 0, 0 /* qr0 */
/* 8014782C  CB 01 01 D0 */	lfd f24, 0x1d0(r1)
/* 80147830  E2 E1 01 C8 */	psq_l f23, 456(r1), 0, 0 /* qr0 */
/* 80147834  CA E1 01 C0 */	lfd f23, 0x1c0(r1)
/* 80147838  E2 C1 01 B8 */	psq_l f22, 440(r1), 0, 0 /* qr0 */
/* 8014783C  CA C1 01 B0 */	lfd f22, 0x1b0(r1)
/* 80147840  39 61 01 B0 */	addi r11, r1, 0x1b0
/* 80147844  48 21 A9 D9 */	bl _restgpr_26
/* 80147848  80 01 02 54 */	lwz r0, 0x254(r1)
/* 8014784C  7C 08 03 A6 */	mtlr r0
/* 80147850  38 21 02 50 */	addi r1, r1, 0x250
/* 80147854  4E 80 00 20 */	blr 

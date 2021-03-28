lbl_80147858:
/* 80147858  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8014785C  7C 08 02 A6 */	mflr r0
/* 80147860  90 01 00 74 */	stw r0, 0x74(r1)
/* 80147864  39 61 00 70 */	addi r11, r1, 0x70
/* 80147868  48 21 A9 65 */	bl _savegpr_25
/* 8014786C  7C 7F 1B 78 */	mr r31, r3
/* 80147870  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80147874  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80147878  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 8014787C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80147880  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80147884  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80147888  38 7F 00 08 */	addi r3, r31, 8
/* 8014788C  38 9F 01 20 */	addi r4, r31, 0x120
/* 80147890  48 12 93 75 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80147894  7C 64 1B 78 */	mr r4, r3
/* 80147898  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 8014789C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 801478A0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 801478A4  C0 02 9A 28 */	lfs f0, lit_5241(r2)
/* 801478A8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 801478AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 801478B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 801478B4  4B EC 4B 29 */	bl mDoMtx_YrotS__FPA4_fs
/* 801478B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 801478BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 801478C0  38 81 00 38 */	addi r4, r1, 0x38
/* 801478C4  7C 85 23 78 */	mr r5, r4
/* 801478C8  48 1F F4 A5 */	bl PSMTXMultVec
/* 801478CC  38 61 00 38 */	addi r3, r1, 0x38
/* 801478D0  38 9F 00 08 */	addi r4, r31, 8
/* 801478D4  7C 65 1B 78 */	mr r5, r3
/* 801478D8  48 1F F7 B9 */	bl PSVECAdd
/* 801478DC  3B C0 00 00 */	li r30, 0
/* 801478E0  3B A0 00 00 */	li r29, 0
/* 801478E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 801478E8  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l
lbl_801478EC:
/* 801478EC  2C 1E 00 01 */	cmpwi r30, 1
/* 801478F0  41 82 00 84 */	beq lbl_80147974
/* 801478F4  7F 3F EA 14 */	add r25, r31, r29
/* 801478F8  3B 59 00 30 */	addi r26, r25, 0x30
/* 801478FC  7F 43 D3 78 */	mr r3, r26
/* 80147900  38 81 00 38 */	addi r4, r1, 0x38
/* 80147904  48 12 93 01 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80147908  7C 7B 1B 78 */	mr r27, r3
/* 8014790C  7F 43 D3 78 */	mr r3, r26
/* 80147910  38 81 00 20 */	addi r4, r1, 0x20
/* 80147914  48 12 92 F1 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80147918  7C 03 D8 50 */	subf r0, r3, r27
/* 8014791C  7C 00 07 34 */	extsh r0, r0
/* 80147920  C0 42 9A 24 */	lfs f2, lit_5240(r2)
/* 80147924  C8 22 99 E0 */	lfd f1, lit_4142(r2)
/* 80147928  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8014792C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80147930  3C 00 43 30 */	lis r0, 0x4330
/* 80147934  90 01 00 48 */	stw r0, 0x48(r1)
/* 80147938  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 8014793C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80147940  EC 02 00 32 */	fmuls f0, f2, f0
/* 80147944  D0 19 00 C4 */	stfs f0, 0xc4(r25)
/* 80147948  C0 39 00 A0 */	lfs f1, 0xa0(r25)
/* 8014794C  C0 19 00 C4 */	lfs f0, 0xc4(r25)
/* 80147950  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80147954  40 80 00 08 */	bge lbl_8014795C
/* 80147958  D0 39 00 C4 */	stfs f1, 0xc4(r25)
lbl_8014795C:
/* 8014795C  C0 19 00 C4 */	lfs f0, 0xc4(r25)
/* 80147960  C0 39 00 7C */	lfs f1, 0x7c(r25)
/* 80147964  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80147968  40 80 00 18 */	bge lbl_80147980
/* 8014796C  D0 39 00 C4 */	stfs f1, 0xc4(r25)
/* 80147970  48 00 00 10 */	b lbl_80147980
lbl_80147974:
/* 80147974  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 80147978  38 1D 00 C4 */	addi r0, r29, 0xc4
/* 8014797C  7C 1F 05 2E */	stfsx f0, r31, r0
lbl_80147980:
/* 80147980  2C 1E 00 01 */	cmpwi r30, 1
/* 80147984  41 82 00 44 */	beq lbl_801479C8
/* 80147988  40 80 00 64 */	bge lbl_801479EC
/* 8014798C  2C 1E 00 00 */	cmpwi r30, 0
/* 80147990  40 80 00 08 */	bge lbl_80147998
/* 80147994  48 00 00 58 */	b lbl_801479EC
lbl_80147998:
/* 80147998  38 1D 00 C4 */	addi r0, r29, 0xc4
/* 8014799C  7C 5F 04 2E */	lfsx f2, r31, r0
/* 801479A0  C0 22 99 DC */	lfs f1, lit_4140(r2)
/* 801479A4  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 801479A8  EC 01 00 28 */	fsubs f0, f1, f0
/* 801479AC  EC 22 00 32 */	fmuls f1, f2, f0
/* 801479B0  48 11 FC 35 */	bl cM_rad2s__Ff
/* 801479B4  7C 64 1B 78 */	mr r4, r3
/* 801479B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 801479BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 801479C0  4B EC 4A 1D */	bl mDoMtx_YrotS__FPA4_fs
/* 801479C4  48 00 00 44 */	b lbl_80147A08
lbl_801479C8:
/* 801479C8  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 801479CC  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 801479D0  EC 21 00 32 */	fmuls f1, f1, f0
/* 801479D4  48 11 FC 11 */	bl cM_rad2s__Ff
/* 801479D8  7C 64 1B 78 */	mr r4, r3
/* 801479DC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 801479E0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 801479E4  4B EC 49 F9 */	bl mDoMtx_YrotS__FPA4_fs
/* 801479E8  48 00 00 20 */	b lbl_80147A08
lbl_801479EC:
/* 801479EC  38 1D 00 C4 */	addi r0, r29, 0xc4
/* 801479F0  7C 3F 04 2E */	lfsx f1, r31, r0
/* 801479F4  48 11 FB F1 */	bl cM_rad2s__Ff
/* 801479F8  7C 64 1B 78 */	mr r4, r3
/* 801479FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80147A00  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80147A04  4B EC 49 D9 */	bl mDoMtx_YrotS__FPA4_fs
lbl_80147A08:
/* 80147A08  38 61 00 14 */	addi r3, r1, 0x14
/* 80147A0C  38 81 00 20 */	addi r4, r1, 0x20
/* 80147A10  3B 3D 00 30 */	addi r25, r29, 0x30
/* 80147A14  7F 3F CA 14 */	add r25, r31, r25
/* 80147A18  7F 25 CB 78 */	mr r5, r25
/* 80147A1C  48 11 F1 19 */	bl __mi__4cXyzCFRC3Vec
/* 80147A20  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80147A24  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80147A28  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80147A2C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80147A30  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80147A34  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80147A38  7F 83 E3 78 */	mr r3, r28
/* 80147A3C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80147A40  38 A1 00 20 */	addi r5, r1, 0x20
/* 80147A44  48 1F F3 29 */	bl PSMTXMultVec
/* 80147A48  38 61 00 20 */	addi r3, r1, 0x20
/* 80147A4C  7F 24 CB 78 */	mr r4, r25
/* 80147A50  7C 65 1B 78 */	mr r5, r3
/* 80147A54  48 1F F6 3D */	bl PSVECAdd
/* 80147A58  3B DE 00 01 */	addi r30, r30, 1
/* 80147A5C  2C 1E 00 03 */	cmpwi r30, 3
/* 80147A60  3B BD 00 0C */	addi r29, r29, 0xc
/* 80147A64  41 80 FE 88 */	blt lbl_801478EC
/* 80147A68  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80147A6C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80147A70  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80147A74  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80147A78  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80147A7C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80147A80  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80147A84  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 80147A88  3B C0 00 00 */	li r30, 0
/* 80147A8C  3B A0 00 00 */	li r29, 0
/* 80147A90  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80147A94  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l
lbl_80147A98:
/* 80147A98  2C 1E 00 01 */	cmpwi r30, 1
/* 80147A9C  41 82 00 90 */	beq lbl_80147B2C
/* 80147AA0  7F 5F EA 14 */	add r26, r31, r29
/* 80147AA4  3B 3A 00 30 */	addi r25, r26, 0x30
/* 80147AA8  7F 23 CB 78 */	mr r3, r25
/* 80147AAC  38 9F 01 20 */	addi r4, r31, 0x120
/* 80147AB0  48 12 91 C5 */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80147AB4  7C 03 00 D0 */	neg r0, r3
/* 80147AB8  7C 1B 07 34 */	extsh r27, r0
/* 80147ABC  7F 23 CB 78 */	mr r3, r25
/* 80147AC0  38 9F 00 24 */	addi r4, r31, 0x24
/* 80147AC4  48 12 91 B1 */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80147AC8  7C 03 00 D0 */	neg r0, r3
/* 80147ACC  7C 00 07 34 */	extsh r0, r0
/* 80147AD0  7C 00 D8 50 */	subf r0, r0, r27
/* 80147AD4  7C 00 07 34 */	extsh r0, r0
/* 80147AD8  C0 42 9A 24 */	lfs f2, lit_5240(r2)
/* 80147ADC  C8 22 99 E0 */	lfd f1, lit_4142(r2)
/* 80147AE0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80147AE4  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80147AE8  3C 00 43 30 */	lis r0, 0x4330
/* 80147AEC  90 01 00 48 */	stw r0, 0x48(r1)
/* 80147AF0  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 80147AF4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80147AF8  EC 02 00 32 */	fmuls f0, f2, f0
/* 80147AFC  D0 1A 00 C0 */	stfs f0, 0xc0(r26)
/* 80147B00  C0 3A 00 9C */	lfs f1, 0x9c(r26)
/* 80147B04  C0 1A 00 C0 */	lfs f0, 0xc0(r26)
/* 80147B08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80147B0C  40 80 00 08 */	bge lbl_80147B14
/* 80147B10  D0 3A 00 C0 */	stfs f1, 0xc0(r26)
lbl_80147B14:
/* 80147B14  C0 1A 00 C0 */	lfs f0, 0xc0(r26)
/* 80147B18  C0 3A 00 78 */	lfs f1, 0x78(r26)
/* 80147B1C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80147B20  40 80 00 18 */	bge lbl_80147B38
/* 80147B24  D0 3A 00 C0 */	stfs f1, 0xc0(r26)
/* 80147B28  48 00 00 10 */	b lbl_80147B38
lbl_80147B2C:
/* 80147B2C  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 80147B30  38 1D 00 C0 */	addi r0, r29, 0xc0
/* 80147B34  7C 1F 05 2E */	stfsx f0, r31, r0
lbl_80147B38:
/* 80147B38  2C 1E 00 01 */	cmpwi r30, 1
/* 80147B3C  41 82 00 44 */	beq lbl_80147B80
/* 80147B40  40 80 00 64 */	bge lbl_80147BA4
/* 80147B44  2C 1E 00 00 */	cmpwi r30, 0
/* 80147B48  40 80 00 08 */	bge lbl_80147B50
/* 80147B4C  48 00 00 58 */	b lbl_80147BA4
lbl_80147B50:
/* 80147B50  38 1D 00 C0 */	addi r0, r29, 0xc0
/* 80147B54  7C 5F 04 2E */	lfsx f2, r31, r0
/* 80147B58  C0 22 99 DC */	lfs f1, lit_4140(r2)
/* 80147B5C  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 80147B60  EC 01 00 28 */	fsubs f0, f1, f0
/* 80147B64  EC 22 00 32 */	fmuls f1, f2, f0
/* 80147B68  48 11 FA 7D */	bl cM_rad2s__Ff
/* 80147B6C  7C 64 1B 78 */	mr r4, r3
/* 80147B70  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80147B74  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80147B78  4B EC 47 CD */	bl mDoMtx_XrotS__FPA4_fs
/* 80147B7C  48 00 00 44 */	b lbl_80147BC0
lbl_80147B80:
/* 80147B80  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 80147B84  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 80147B88  EC 21 00 32 */	fmuls f1, f1, f0
/* 80147B8C  48 11 FA 59 */	bl cM_rad2s__Ff
/* 80147B90  7C 64 1B 78 */	mr r4, r3
/* 80147B94  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80147B98  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80147B9C  4B EC 47 A9 */	bl mDoMtx_XrotS__FPA4_fs
/* 80147BA0  48 00 00 20 */	b lbl_80147BC0
lbl_80147BA4:
/* 80147BA4  38 1D 00 C0 */	addi r0, r29, 0xc0
/* 80147BA8  7C 3F 04 2E */	lfsx f1, r31, r0
/* 80147BAC  48 11 FA 39 */	bl cM_rad2s__Ff
/* 80147BB0  7C 64 1B 78 */	mr r4, r3
/* 80147BB4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80147BB8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80147BBC  4B EC 47 89 */	bl mDoMtx_XrotS__FPA4_fs
lbl_80147BC0:
/* 80147BC0  38 61 00 08 */	addi r3, r1, 8
/* 80147BC4  38 81 00 20 */	addi r4, r1, 0x20
/* 80147BC8  3B 3D 00 30 */	addi r25, r29, 0x30
/* 80147BCC  7F 3F CA 14 */	add r25, r31, r25
/* 80147BD0  7F 25 CB 78 */	mr r5, r25
/* 80147BD4  48 11 EF 61 */	bl __mi__4cXyzCFRC3Vec
/* 80147BD8  C0 01 00 08 */	lfs f0, 8(r1)
/* 80147BDC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80147BE0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80147BE4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80147BE8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80147BEC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80147BF0  7F 83 E3 78 */	mr r3, r28
/* 80147BF4  38 81 00 2C */	addi r4, r1, 0x2c
/* 80147BF8  38 A1 00 20 */	addi r5, r1, 0x20
/* 80147BFC  48 1F F1 71 */	bl PSMTXMultVec
/* 80147C00  38 61 00 20 */	addi r3, r1, 0x20
/* 80147C04  7F 24 CB 78 */	mr r4, r25
/* 80147C08  7C 65 1B 78 */	mr r5, r3
/* 80147C0C  48 1F F4 85 */	bl PSVECAdd
/* 80147C10  3B DE 00 01 */	addi r30, r30, 1
/* 80147C14  2C 1E 00 03 */	cmpwi r30, 3
/* 80147C18  3B BD 00 0C */	addi r29, r29, 0xc
/* 80147C1C  41 80 FE 7C */	blt lbl_80147A98
/* 80147C20  39 61 00 70 */	addi r11, r1, 0x70
/* 80147C24  48 21 A5 F5 */	bl _restgpr_25
/* 80147C28  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80147C2C  7C 08 03 A6 */	mtlr r0
/* 80147C30  38 21 00 70 */	addi r1, r1, 0x70
/* 80147C34  4E 80 00 20 */	blr 

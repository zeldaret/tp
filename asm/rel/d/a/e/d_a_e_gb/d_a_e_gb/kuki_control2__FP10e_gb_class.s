lbl_806C3904:
/* 806C3904  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 806C3908  7C 08 02 A6 */	mflr r0
/* 806C390C  90 01 00 94 */	stw r0, 0x94(r1)
/* 806C3910  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 806C3914  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 806C3918  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 806C391C  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 806C3920  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 806C3924  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 806C3928  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 806C392C  F3 81 00 58 */	psq_st f28, 88(r1), 0, 0 /* qr0 */
/* 806C3930  39 61 00 50 */	addi r11, r1, 0x50
/* 806C3934  4B C9 E8 9D */	bl _savegpr_26
/* 806C3938  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 806C393C  D0 03 07 B0 */	stfs f0, 0x7b0(r3)
/* 806C3940  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 806C3944  D0 03 07 B4 */	stfs f0, 0x7b4(r3)
/* 806C3948  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 806C394C  D0 03 07 B8 */	stfs f0, 0x7b8(r3)
/* 806C3950  3C 80 80 6C */	lis r4, lit_3907@ha /* 0x806C74EC@ha */
/* 806C3954  C3 E4 74 EC */	lfs f31, lit_3907@l(r4)  /* 0x806C74EC@l */
/* 806C3958  D3 E1 00 20 */	stfs f31, 0x20(r1)
/* 806C395C  D3 E1 00 24 */	stfs f31, 0x24(r1)
/* 806C3960  C0 03 09 3C */	lfs f0, 0x93c(r3)
/* 806C3964  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806C3968  3B C0 00 10 */	li r30, 0x10
/* 806C396C  3B 63 07 A4 */	addi r27, r3, 0x7a4
/* 806C3970  3B 43 08 1C */	addi r26, r3, 0x81c
/* 806C3974  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806C3978  3B E3 07 68 */	addi r31, r3, calc_mtx@l /* 0x80450768@l */
lbl_806C397C:
/* 806C397C  C0 3B 00 00 */	lfs f1, 0(r27)
/* 806C3980  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 806C3984  EF C1 00 28 */	fsubs f30, f1, f0
/* 806C3988  C0 3B 00 04 */	lfs f1, 4(r27)
/* 806C398C  C0 1B 00 10 */	lfs f0, 0x10(r27)
/* 806C3990  EF A1 00 28 */	fsubs f29, f1, f0
/* 806C3994  C0 3B 00 08 */	lfs f1, 8(r27)
/* 806C3998  C0 1B 00 14 */	lfs f0, 0x14(r27)
/* 806C399C  EF 81 00 28 */	fsubs f28, f1, f0
/* 806C39A0  FC 20 E8 90 */	fmr f1, f29
/* 806C39A4  FC 40 E0 90 */	fmr f2, f28
/* 806C39A8  4B BA 3C CD */	bl cM_atan2s__Fff
/* 806C39AC  7C 03 00 D0 */	neg r0, r3
/* 806C39B0  7C 1D 07 34 */	extsh r29, r0
/* 806C39B4  EC 3D 07 72 */	fmuls f1, f29, f29
/* 806C39B8  EC 1C 07 32 */	fmuls f0, f28, f28
/* 806C39BC  EC 41 00 2A */	fadds f2, f1, f0
/* 806C39C0  FC 02 F8 40 */	fcmpo cr0, f2, f31
/* 806C39C4  40 81 00 0C */	ble lbl_806C39D0
/* 806C39C8  FC 00 10 34 */	frsqrte f0, f2
/* 806C39CC  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_806C39D0:
/* 806C39D0  FC 20 F0 90 */	fmr f1, f30
/* 806C39D4  4B BA 3C A1 */	bl cM_atan2s__Fff
/* 806C39D8  7C 7C 07 34 */	extsh r28, r3
/* 806C39DC  80 7F 00 00 */	lwz r3, 0(r31)
/* 806C39E0  7F A4 EB 78 */	mr r4, r29
/* 806C39E4  4B 94 89 61 */	bl mDoMtx_XrotS__FPA4_fs
/* 806C39E8  80 7F 00 00 */	lwz r3, 0(r31)
/* 806C39EC  7F 84 E3 78 */	mr r4, r28
/* 806C39F0  4B 94 8A 45 */	bl mDoMtx_YrotM__FPA4_fs
/* 806C39F4  38 61 00 20 */	addi r3, r1, 0x20
/* 806C39F8  38 81 00 14 */	addi r4, r1, 0x14
/* 806C39FC  4B BA D4 F1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806C3A00  38 61 00 08 */	addi r3, r1, 8
/* 806C3A04  38 9B 00 0C */	addi r4, r27, 0xc
/* 806C3A08  38 A1 00 14 */	addi r5, r1, 0x14
/* 806C3A0C  4B BA 30 D9 */	bl __pl__4cXyzCFRC3Vec
/* 806C3A10  C0 01 00 08 */	lfs f0, 8(r1)
/* 806C3A14  D0 1B 00 00 */	stfs f0, 0(r27)
/* 806C3A18  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 806C3A1C  D0 1B 00 04 */	stfs f0, 4(r27)
/* 806C3A20  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 806C3A24  D0 1B 00 08 */	stfs f0, 8(r27)
/* 806C3A28  B3 BA 00 00 */	sth r29, 0(r26)
/* 806C3A2C  B3 9A 00 02 */	sth r28, 2(r26)
/* 806C3A30  37 DE FF FF */	addic. r30, r30, -1
/* 806C3A34  3B 7B FF F4 */	addi r27, r27, -12
/* 806C3A38  3B 5A FF FA */	addi r26, r26, -6
/* 806C3A3C  40 80 FF 40 */	bge lbl_806C397C
/* 806C3A40  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 806C3A44  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 806C3A48  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 806C3A4C  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 806C3A50  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 806C3A54  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 806C3A58  E3 81 00 58 */	psq_l f28, 88(r1), 0, 0 /* qr0 */
/* 806C3A5C  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 806C3A60  39 61 00 50 */	addi r11, r1, 0x50
/* 806C3A64  4B C9 E7 B9 */	bl _restgpr_26
/* 806C3A68  80 01 00 94 */	lwz r0, 0x94(r1)
/* 806C3A6C  7C 08 03 A6 */	mtlr r0
/* 806C3A70  38 21 00 90 */	addi r1, r1, 0x90
/* 806C3A74  4E 80 00 20 */	blr 

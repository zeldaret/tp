lbl_807B0630:
/* 807B0630  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 807B0634  7C 08 02 A6 */	mflr r0
/* 807B0638  90 01 01 14 */	stw r0, 0x114(r1)
/* 807B063C  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 807B0640  F3 E1 01 08 */	psq_st f31, 264(r1), 0, 0 /* qr0 */
/* 807B0644  DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 807B0648  F3 C1 00 F8 */	psq_st f30, 248(r1), 0, 0 /* qr0 */
/* 807B064C  DB A1 00 E0 */	stfd f29, 0xe0(r1)
/* 807B0650  F3 A1 00 E8 */	psq_st f29, 232(r1), 0, 0 /* qr0 */
/* 807B0654  DB 81 00 D0 */	stfd f28, 0xd0(r1)
/* 807B0658  F3 81 00 D8 */	psq_st f28, 216(r1), 0, 0 /* qr0 */
/* 807B065C  DB 61 00 C0 */	stfd f27, 0xc0(r1)
/* 807B0660  F3 61 00 C8 */	psq_st f27, 200(r1), 0, 0 /* qr0 */
/* 807B0664  DB 41 00 B0 */	stfd f26, 0xb0(r1)
/* 807B0668  F3 41 00 B8 */	psq_st f26, 184(r1), 0, 0 /* qr0 */
/* 807B066C  DB 21 00 A0 */	stfd f25, 0xa0(r1)
/* 807B0670  F3 21 00 A8 */	psq_st f25, 168(r1), 0, 0 /* qr0 */
/* 807B0674  DB 01 00 90 */	stfd f24, 0x90(r1)
/* 807B0678  F3 01 00 98 */	psq_st f24, 152(r1), 0, 0 /* qr0 */
/* 807B067C  DA E1 00 80 */	stfd f23, 0x80(r1)
/* 807B0680  F2 E1 00 88 */	psq_st f23, 136(r1), 0, 0 /* qr0 */
/* 807B0684  39 61 00 80 */	addi r11, r1, 0x80
/* 807B0688  4B BB 1B 40 */	b _savegpr_24
/* 807B068C  7C 99 23 78 */	mr r25, r4
/* 807B0690  7C B8 2B 78 */	mr r24, r5
/* 807B0694  3C 60 80 7B */	lis r3, lit_3906@ha
/* 807B0698  3B A3 44 9C */	addi r29, r3, lit_3906@l
/* 807B069C  3B 79 00 0C */	addi r27, r25, 0xc
/* 807B06A0  3B 59 00 C0 */	addi r26, r25, 0xc0
/* 807B06A4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807B06A8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807B06AC  80 63 00 00 */	lwz r3, 0(r3)
/* 807B06B0  A8 84 01 6A */	lha r4, 0x16a(r4)
/* 807B06B4  4B 85 BD 28 */	b mDoMtx_YrotS__FPA4_fs
/* 807B06B8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807B06BC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807B06C0  80 63 00 00 */	lwz r3, 0(r3)
/* 807B06C4  A8 99 01 68 */	lha r4, 0x168(r25)
/* 807B06C8  4B 85 BC D4 */	b mDoMtx_XrotM__FPA4_fs
/* 807B06CC  C0 1D 00 04 */	lfs f0, 4(r29)
/* 807B06D0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 807B06D4  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 807B06D8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807B06DC  C0 1D 00 44 */	lfs f0, 0x44(r29)
/* 807B06E0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807B06E4  38 61 00 38 */	addi r3, r1, 0x38
/* 807B06E8  38 81 00 20 */	addi r4, r1, 0x20
/* 807B06EC  4B AC 08 00 */	b MtxPosition__FP4cXyzP4cXyz
/* 807B06F0  3B 80 00 01 */	li r28, 1
/* 807B06F4  C0 5D 00 48 */	lfs f2, 0x48(r29)
/* 807B06F8  C0 3D 00 4C */	lfs f1, 0x4c(r29)
/* 807B06FC  CB 7D 00 60 */	lfd f27, 0x60(r29)
/* 807B0700  6F 00 80 00 */	xoris r0, r24, 0x8000
/* 807B0704  90 01 00 4C */	stw r0, 0x4c(r1)
/* 807B0708  3F C0 43 30 */	lis r30, 0x4330
/* 807B070C  93 C1 00 48 */	stw r30, 0x48(r1)
/* 807B0710  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 807B0714  EC 00 D8 28 */	fsubs f0, f0, f27
/* 807B0718  EC 01 00 32 */	fmuls f0, f1, f0
/* 807B071C  EF 42 00 2A */	fadds f26, f2, f0
/* 807B0720  C3 9D 00 50 */	lfs f28, 0x50(r29)
/* 807B0724  C3 BD 00 04 */	lfs f29, 4(r29)
/* 807B0728  C3 DD 00 58 */	lfs f30, 0x58(r29)
/* 807B072C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807B0730  3B E3 07 68 */	addi r31, r3, calc_mtx@l
/* 807B0734  C3 FD 00 5C */	lfs f31, 0x5c(r29)
lbl_807B0738:
/* 807B0738  4B AC 07 E4 */	b MtxPush__Fv
/* 807B073C  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 807B0740  20 1C 00 0F */	subfic r0, r28, 0xf
/* 807B0744  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807B0748  90 01 00 4C */	stw r0, 0x4c(r1)
/* 807B074C  93 C1 00 48 */	stw r30, 0x48(r1)
/* 807B0750  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 807B0754  EC 00 D8 28 */	fsubs f0, f0, f27
/* 807B0758  EC 01 00 32 */	fmuls f0, f1, f0
/* 807B075C  EC 1C 00 32 */	fmuls f0, f28, f0
/* 807B0760  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807B0764  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 807B0768  90 01 00 54 */	stw r0, 0x54(r1)
/* 807B076C  93 C1 00 50 */	stw r30, 0x50(r1)
/* 807B0770  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 807B0774  EC 00 D8 28 */	fsubs f0, f0, f27
/* 807B0778  EC 01 00 32 */	fmuls f0, f1, f0
/* 807B077C  EC 1C 00 32 */	fmuls f0, f28, f0
/* 807B0780  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807B0784  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 807B0788  90 01 00 5C */	stw r0, 0x5c(r1)
/* 807B078C  93 C1 00 58 */	stw r30, 0x58(r1)
/* 807B0790  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 807B0794  EC 00 D8 28 */	fsubs f0, f0, f27
/* 807B0798  EC 01 00 32 */	fmuls f0, f1, f0
/* 807B079C  EC 1C 00 32 */	fmuls f0, f28, f0
/* 807B07A0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807B07A4  C0 3D 00 54 */	lfs f1, 0x54(r29)
/* 807B07A8  4B AB 73 5C */	b cM_rndFX2__Ff
/* 807B07AC  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 807B07B0  C0 3D 00 54 */	lfs f1, 0x54(r29)
/* 807B07B4  4B AB 73 50 */	b cM_rndFX2__Ff
/* 807B07B8  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 807B07BC  D3 A1 00 40 */	stfs f29, 0x40(r1)
/* 807B07C0  38 61 00 38 */	addi r3, r1, 0x38
/* 807B07C4  38 81 00 08 */	addi r4, r1, 8
/* 807B07C8  4B AC 07 24 */	b MtxPosition__FP4cXyzP4cXyz
/* 807B07CC  C0 81 00 08 */	lfs f4, 8(r1)
/* 807B07D0  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 807B07D4  C0 5A 00 00 */	lfs f2, 0(r26)
/* 807B07D8  C0 3B 00 00 */	lfs f1, 0(r27)
/* 807B07DC  C0 1B FF F4 */	lfs f0, -0xc(r27)
/* 807B07E0  EC 01 00 28 */	fsubs f0, f1, f0
/* 807B07E4  EC 02 00 2A */	fadds f0, f2, f0
/* 807B07E8  EC 03 00 2A */	fadds f0, f3, f0
/* 807B07EC  EF 24 00 2A */	fadds f25, f4, f0
/* 807B07F0  C0 81 00 10 */	lfs f4, 0x10(r1)
/* 807B07F4  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 807B07F8  C0 5A 00 08 */	lfs f2, 8(r26)
/* 807B07FC  C0 3B 00 08 */	lfs f1, 8(r27)
/* 807B0800  C0 1B FF FC */	lfs f0, -4(r27)
/* 807B0804  EC 01 00 28 */	fsubs f0, f1, f0
/* 807B0808  EC 02 00 2A */	fadds f0, f2, f0
/* 807B080C  EC 03 00 2A */	fadds f0, f3, f0
/* 807B0810  EF 04 00 2A */	fadds f24, f4, f0
/* 807B0814  C0 61 00 0C */	lfs f3, 0xc(r1)
/* 807B0818  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 807B081C  C0 3B 00 04 */	lfs f1, 4(r27)
/* 807B0820  C0 1A 00 04 */	lfs f0, 4(r26)
/* 807B0824  EC 01 00 2A */	fadds f0, f1, f0
/* 807B0828  EC 02 00 2A */	fadds f0, f2, f0
/* 807B082C  EC 03 00 2A */	fadds f0, f3, f0
/* 807B0830  EC 20 F0 28 */	fsubs f1, f0, f30
/* 807B0834  C0 1B FF F8 */	lfs f0, -8(r27)
/* 807B0838  EE E1 00 28 */	fsubs f23, f1, f0
/* 807B083C  FC 20 B8 90 */	fmr f1, f23
/* 807B0840  FC 40 C0 90 */	fmr f2, f24
/* 807B0844  4B AB 6E 30 */	b cM_atan2s__Fff
/* 807B0848  7C 03 00 D0 */	neg r0, r3
/* 807B084C  7C 19 07 34 */	extsh r25, r0
/* 807B0850  EC 37 05 F2 */	fmuls f1, f23, f23
/* 807B0854  EC 18 06 32 */	fmuls f0, f24, f24
/* 807B0858  EC 41 00 2A */	fadds f2, f1, f0
/* 807B085C  FC 02 E8 40 */	fcmpo cr0, f2, f29
/* 807B0860  40 81 00 0C */	ble lbl_807B086C
/* 807B0864  FC 00 10 34 */	frsqrte f0, f2
/* 807B0868  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_807B086C:
/* 807B086C  FC 20 C8 90 */	fmr f1, f25
/* 807B0870  4B AB 6E 04 */	b cM_atan2s__Fff
/* 807B0874  7C 78 07 34 */	extsh r24, r3
/* 807B0878  80 7F 00 00 */	lwz r3, 0(r31)
/* 807B087C  7F 24 CB 78 */	mr r4, r25
/* 807B0880  4B 85 BA C4 */	b mDoMtx_XrotS__FPA4_fs
/* 807B0884  80 7F 00 00 */	lwz r3, 0(r31)
/* 807B0888  7F 04 C3 78 */	mr r4, r24
/* 807B088C  4B 85 BB A8 */	b mDoMtx_YrotM__FPA4_fs
/* 807B0890  D3 A1 00 38 */	stfs f29, 0x38(r1)
/* 807B0894  D3 A1 00 3C */	stfs f29, 0x3c(r1)
/* 807B0898  D3 E1 00 40 */	stfs f31, 0x40(r1)
/* 807B089C  38 61 00 38 */	addi r3, r1, 0x38
/* 807B08A0  38 81 00 2C */	addi r4, r1, 0x2c
/* 807B08A4  4B AC 06 48 */	b MtxPosition__FP4cXyzP4cXyz
/* 807B08A8  C0 1B 00 00 */	lfs f0, 0(r27)
/* 807B08AC  D0 1A 00 00 */	stfs f0, 0(r26)
/* 807B08B0  C0 1B 00 04 */	lfs f0, 4(r27)
/* 807B08B4  D0 1A 00 04 */	stfs f0, 4(r26)
/* 807B08B8  C0 1B 00 08 */	lfs f0, 8(r27)
/* 807B08BC  D0 1A 00 08 */	stfs f0, 8(r26)
/* 807B08C0  C0 3B FF F4 */	lfs f1, -0xc(r27)
/* 807B08C4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 807B08C8  EC 01 00 2A */	fadds f0, f1, f0
/* 807B08CC  D0 1B 00 00 */	stfs f0, 0(r27)
/* 807B08D0  C0 3B FF F8 */	lfs f1, -8(r27)
/* 807B08D4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 807B08D8  EC 01 00 2A */	fadds f0, f1, f0
/* 807B08DC  D0 1B 00 04 */	stfs f0, 4(r27)
/* 807B08E0  C0 3B FF FC */	lfs f1, -4(r27)
/* 807B08E4  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 807B08E8  EC 01 00 2A */	fadds f0, f1, f0
/* 807B08EC  D0 1B 00 08 */	stfs f0, 8(r27)
/* 807B08F0  C0 3B 00 00 */	lfs f1, 0(r27)
/* 807B08F4  C0 1A 00 00 */	lfs f0, 0(r26)
/* 807B08F8  EC 01 00 28 */	fsubs f0, f1, f0
/* 807B08FC  EC 1A 00 32 */	fmuls f0, f26, f0
/* 807B0900  D0 1A 00 00 */	stfs f0, 0(r26)
/* 807B0904  C0 3B 00 04 */	lfs f1, 4(r27)
/* 807B0908  C0 1A 00 04 */	lfs f0, 4(r26)
/* 807B090C  EC 01 00 28 */	fsubs f0, f1, f0
/* 807B0910  EC 1A 00 32 */	fmuls f0, f26, f0
/* 807B0914  D0 1A 00 04 */	stfs f0, 4(r26)
/* 807B0918  C0 3B 00 08 */	lfs f1, 8(r27)
/* 807B091C  C0 1A 00 08 */	lfs f0, 8(r26)
/* 807B0920  EC 01 00 28 */	fsubs f0, f1, f0
/* 807B0924  EC 1A 00 32 */	fmuls f0, f26, f0
/* 807B0928  D0 1A 00 08 */	stfs f0, 8(r26)
/* 807B092C  4B AC 06 2C */	b MtxPull__Fv
/* 807B0930  3B 9C 00 01 */	addi r28, r28, 1
/* 807B0934  2C 1C 00 0F */	cmpwi r28, 0xf
/* 807B0938  3B 7B 00 0C */	addi r27, r27, 0xc
/* 807B093C  3B 5A 00 0C */	addi r26, r26, 0xc
/* 807B0940  41 80 FD F8 */	blt lbl_807B0738
/* 807B0944  E3 E1 01 08 */	psq_l f31, 264(r1), 0, 0 /* qr0 */
/* 807B0948  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 807B094C  E3 C1 00 F8 */	psq_l f30, 248(r1), 0, 0 /* qr0 */
/* 807B0950  CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 807B0954  E3 A1 00 E8 */	psq_l f29, 232(r1), 0, 0 /* qr0 */
/* 807B0958  CB A1 00 E0 */	lfd f29, 0xe0(r1)
/* 807B095C  E3 81 00 D8 */	psq_l f28, 216(r1), 0, 0 /* qr0 */
/* 807B0960  CB 81 00 D0 */	lfd f28, 0xd0(r1)
/* 807B0964  E3 61 00 C8 */	psq_l f27, 200(r1), 0, 0 /* qr0 */
/* 807B0968  CB 61 00 C0 */	lfd f27, 0xc0(r1)
/* 807B096C  E3 41 00 B8 */	psq_l f26, 184(r1), 0, 0 /* qr0 */
/* 807B0970  CB 41 00 B0 */	lfd f26, 0xb0(r1)
/* 807B0974  E3 21 00 A8 */	psq_l f25, 168(r1), 0, 0 /* qr0 */
/* 807B0978  CB 21 00 A0 */	lfd f25, 0xa0(r1)
/* 807B097C  E3 01 00 98 */	psq_l f24, 152(r1), 0, 0 /* qr0 */
/* 807B0980  CB 01 00 90 */	lfd f24, 0x90(r1)
/* 807B0984  E2 E1 00 88 */	psq_l f23, 136(r1), 0, 0 /* qr0 */
/* 807B0988  CA E1 00 80 */	lfd f23, 0x80(r1)
/* 807B098C  39 61 00 80 */	addi r11, r1, 0x80
/* 807B0990  4B BB 18 84 */	b _restgpr_24
/* 807B0994  80 01 01 14 */	lwz r0, 0x114(r1)
/* 807B0998  7C 08 03 A6 */	mtlr r0
/* 807B099C  38 21 01 10 */	addi r1, r1, 0x110
/* 807B09A0  4E 80 00 20 */	blr 

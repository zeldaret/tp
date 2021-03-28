lbl_8077E618:
/* 8077E618  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8077E61C  7C 08 02 A6 */	mflr r0
/* 8077E620  90 01 00 94 */	stw r0, 0x94(r1)
/* 8077E624  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8077E628  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 8077E62C  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 8077E630  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 8077E634  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 8077E638  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 8077E63C  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 8077E640  F3 81 00 58 */	psq_st f28, 88(r1), 0, 0 /* qr0 */
/* 8077E644  DB 61 00 40 */	stfd f27, 0x40(r1)
/* 8077E648  F3 61 00 48 */	psq_st f27, 72(r1), 0, 0 /* qr0 */
/* 8077E64C  39 61 00 40 */	addi r11, r1, 0x40
/* 8077E650  4B BE 3B 78 */	b _savegpr_24
/* 8077E654  7C 7C 1B 79 */	or. r28, r3, r3
/* 8077E658  3C 60 80 78 */	lis r3, lit_3903@ha
/* 8077E65C  3B C3 0D C4 */	addi r30, r3, lit_3903@l
/* 8077E660  38 60 00 0C */	li r3, 0xc
/* 8077E664  38 80 00 7B */	li r4, 0x7b
/* 8077E668  41 82 00 0C */	beq lbl_8077E674
/* 8077E66C  80 1C 00 04 */	lwz r0, 4(r28)
/* 8077E670  48 00 00 08 */	b lbl_8077E678
lbl_8077E674:
/* 8077E674  38 00 FF FF */	li r0, -1
lbl_8077E678:
/* 8077E678  54 05 08 3C */	slwi r5, r0, 1
/* 8077E67C  38 A5 00 32 */	addi r5, r5, 0x32
/* 8077E680  4B AE 93 54 */	b cM_initRnd2__Fiii
/* 8077E684  80 7C 05 D4 */	lwz r3, 0x5d4(r28)
/* 8077E688  80 63 00 04 */	lwz r3, 4(r3)
/* 8077E68C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8077E690  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8077E694  38 63 00 C0 */	addi r3, r3, 0xc0
/* 8077E698  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 8077E69C  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 8077E6A0  80 84 00 00 */	lwz r4, 0(r4)
/* 8077E6A4  4B BC 7E 0C */	b PSMTXCopy
/* 8077E6A8  3B A0 00 00 */	li r29, 0
/* 8077E6AC  3B 60 00 00 */	li r27, 0
/* 8077E6B0  3B 40 00 00 */	li r26, 0
/* 8077E6B4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8077E6B8  3B E3 07 68 */	addi r31, r3, calc_mtx@l
/* 8077E6BC  C3 DE 00 64 */	lfs f30, 0x64(r30)
/* 8077E6C0  C3 FE 00 E0 */	lfs f31, 0xe0(r30)
lbl_8077E6C4:
/* 8077E6C4  4B AF 28 58 */	b MtxPush__Fv
/* 8077E6C8  80 7F 00 00 */	lwz r3, 0(r31)
/* 8077E6CC  38 80 40 00 */	li r4, 0x4000
/* 8077E6D0  4B 88 DD 64 */	b mDoMtx_YrotM__FPA4_fs
/* 8077E6D4  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 8077E6D8  4B AE 93 F4 */	b cM_rndF2__Ff
/* 8077E6DC  FC 00 08 1E */	fctiwz f0, f1
/* 8077E6E0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8077E6E4  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8077E6E8  38 03 0B B8 */	addi r0, r3, 0xbb8
/* 8077E6EC  7C 04 07 34 */	extsh r4, r0
/* 8077E6F0  80 7F 00 00 */	lwz r3, 0(r31)
/* 8077E6F4  4B 88 DC A8 */	b mDoMtx_XrotM__FPA4_fs
/* 8077E6F8  2C 1D 00 0A */	cmpwi r29, 0xa
/* 8077E6FC  40 80 00 5C */	bge lbl_8077E758
/* 8077E700  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8077E704  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8077E708  80 63 00 00 */	lwz r3, 0(r3)
/* 8077E70C  3C 80 80 78 */	lis r4, ke_za@ha
/* 8077E710  38 84 11 08 */	addi r4, r4, ke_za@l
/* 8077E714  7C 04 D2 AE */	lhax r0, r4, r26
/* 8077E718  1C 00 00 05 */	mulli r0, r0, 5
/* 8077E71C  7C 04 07 34 */	extsh r4, r0
/* 8077E720  4B 88 DD AC */	b mDoMtx_ZrotM__FPA4_fs
/* 8077E724  C0 3E 00 D8 */	lfs f1, 0xd8(r30)
/* 8077E728  4B AE 93 A4 */	b cM_rndF2__Ff
/* 8077E72C  C0 1E 00 D4 */	lfs f0, 0xd4(r30)
/* 8077E730  EF A0 08 2A */	fadds f29, f0, f1
/* 8077E734  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 8077E738  4B AE 93 94 */	b cM_rndF2__Ff
/* 8077E73C  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 8077E740  EF 81 00 28 */	fsubs f28, f1, f0
/* 8077E744  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8077E748  4B AE 93 84 */	b cM_rndF2__Ff
/* 8077E74C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 8077E750  EF 61 00 28 */	fsubs f27, f1, f0
/* 8077E754  48 00 00 60 */	b lbl_8077E7B4
lbl_8077E758:
/* 8077E758  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8077E75C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8077E760  80 63 00 00 */	lwz r3, 0(r3)
/* 8077E764  3C 80 80 78 */	lis r4, ke_za@ha
/* 8077E768  38 84 11 08 */	addi r4, r4, ke_za@l
/* 8077E76C  7C 04 D2 AE */	lhax r0, r4, r26
/* 8077E770  1C 80 00 05 */	mulli r4, r0, 5
/* 8077E774  3C 84 00 01 */	addis r4, r4, 1
/* 8077E778  38 04 80 00 */	addi r0, r4, -32768
/* 8077E77C  7C 04 07 34 */	extsh r4, r0
/* 8077E780  4B 88 DD 4C */	b mDoMtx_ZrotM__FPA4_fs
/* 8077E784  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 8077E788  4B AE 93 44 */	b cM_rndF2__Ff
/* 8077E78C  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 8077E790  EF A0 08 2A */	fadds f29, f0, f1
/* 8077E794  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8077E798  4B AE 93 34 */	b cM_rndF2__Ff
/* 8077E79C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 8077E7A0  EF 81 00 28 */	fsubs f28, f1, f0
/* 8077E7A4  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 8077E7A8  4B AE 93 24 */	b cM_rndF2__Ff
/* 8077E7AC  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 8077E7B0  EF 61 00 28 */	fsubs f27, f1, f0
lbl_8077E7B4:
/* 8077E7B4  D3 81 00 08 */	stfs f28, 8(r1)
/* 8077E7B8  D3 C1 00 0C */	stfs f30, 0xc(r1)
/* 8077E7BC  D3 61 00 10 */	stfs f27, 0x10(r1)
/* 8077E7C0  38 61 00 08 */	addi r3, r1, 8
/* 8077E7C4  7F 3C DA 14 */	add r25, r28, r27
/* 8077E7C8  3B 19 0E 14 */	addi r24, r25, 0xe14
/* 8077E7CC  7F 04 C3 78 */	mr r4, r24
/* 8077E7D0  4B AF 27 1C */	b MtxPosition__FP4cXyzP4cXyz
/* 8077E7D4  D3 81 00 08 */	stfs f28, 8(r1)
/* 8077E7D8  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 8077E7DC  D3 61 00 10 */	stfs f27, 0x10(r1)
/* 8077E7E0  38 61 00 08 */	addi r3, r1, 8
/* 8077E7E4  3B 39 0F 94 */	addi r25, r25, 0xf94
/* 8077E7E8  7F 24 CB 78 */	mr r4, r25
/* 8077E7EC  4B AF 27 00 */	b MtxPosition__FP4cXyzP4cXyz
/* 8077E7F0  7F 23 CB 78 */	mr r3, r25
/* 8077E7F4  7F 04 C3 78 */	mr r4, r24
/* 8077E7F8  7F 25 CB 78 */	mr r5, r25
/* 8077E7FC  4B BC 88 B8 */	b PSVECSubtract
/* 8077E800  7F 83 E3 78 */	mr r3, r28
/* 8077E804  38 9C 30 1C */	addi r4, r28, 0x301c
/* 8077E808  7F 05 C3 78 */	mr r5, r24
/* 8077E80C  7F A6 EB 78 */	mr r6, r29
/* 8077E810  FC 20 E8 90 */	fmr f1, f29
/* 8077E814  4B FF F3 A5 */	bl ke_move__FP10e_s1_classP19mDoExt_3DlineMat0_cP7s1_ke_sif
/* 8077E818  4B AF 27 40 */	b MtxPull__Fv
/* 8077E81C  3B BD 00 01 */	addi r29, r29, 1
/* 8077E820  2C 1D 00 16 */	cmpwi r29, 0x16
/* 8077E824  3B 7B 01 8C */	addi r27, r27, 0x18c
/* 8077E828  3B 5A 00 02 */	addi r26, r26, 2
/* 8077E82C  41 80 FE 98 */	blt lbl_8077E6C4
/* 8077E830  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 8077E834  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8077E838  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 8077E83C  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 8077E840  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 8077E844  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 8077E848  E3 81 00 58 */	psq_l f28, 88(r1), 0, 0 /* qr0 */
/* 8077E84C  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 8077E850  E3 61 00 48 */	psq_l f27, 72(r1), 0, 0 /* qr0 */
/* 8077E854  CB 61 00 40 */	lfd f27, 0x40(r1)
/* 8077E858  39 61 00 40 */	addi r11, r1, 0x40
/* 8077E85C  4B BE 39 B8 */	b _restgpr_24
/* 8077E860  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8077E864  7C 08 03 A6 */	mtlr r0
/* 8077E868  38 21 00 90 */	addi r1, r1, 0x90
/* 8077E86C  4E 80 00 20 */	blr 

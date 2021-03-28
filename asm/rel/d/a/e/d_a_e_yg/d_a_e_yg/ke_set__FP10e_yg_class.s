lbl_807FA888:
/* 807FA888  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 807FA88C  7C 08 02 A6 */	mflr r0
/* 807FA890  90 01 00 64 */	stw r0, 0x64(r1)
/* 807FA894  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 807FA898  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 807FA89C  39 61 00 50 */	addi r11, r1, 0x50
/* 807FA8A0  4B B6 79 1C */	b _savegpr_21
/* 807FA8A4  7C 7D 1B 79 */	or. r29, r3, r3
/* 807FA8A8  3C 60 80 80 */	lis r3, lit_3801@ha
/* 807FA8AC  3B E3 CC B4 */	addi r31, r3, lit_3801@l
/* 807FA8B0  38 60 00 0C */	li r3, 0xc
/* 807FA8B4  38 80 00 7B */	li r4, 0x7b
/* 807FA8B8  41 82 00 0C */	beq lbl_807FA8C4
/* 807FA8BC  80 1D 00 04 */	lwz r0, 4(r29)
/* 807FA8C0  48 00 00 08 */	b lbl_807FA8C8
lbl_807FA8C4:
/* 807FA8C4  38 00 FF FF */	li r0, -1
lbl_807FA8C8:
/* 807FA8C8  54 05 08 3C */	slwi r5, r0, 1
/* 807FA8CC  38 A5 00 32 */	addi r5, r5, 0x32
/* 807FA8D0  4B A6 D1 04 */	b cM_initRnd2__Fiii
/* 807FA8D4  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 807FA8D8  80 63 00 04 */	lwz r3, 4(r3)
/* 807FA8DC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807FA8E0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807FA8E4  38 63 00 30 */	addi r3, r3, 0x30
/* 807FA8E8  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 807FA8EC  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 807FA8F0  80 84 00 00 */	lwz r4, 0(r4)
/* 807FA8F4  4B B4 BB BC */	b PSMTXCopy
/* 807FA8F8  3B C0 00 00 */	li r30, 0
/* 807FA8FC  3B 80 00 00 */	li r28, 0
/* 807FA900  3B 60 00 00 */	li r27, 0
/* 807FA904  3B 40 00 00 */	li r26, 0
/* 807FA908  3C 60 80 80 */	lis r3, ke_p@ha
/* 807FA90C  3A E3 D1 C4 */	addi r23, r3, ke_p@l
/* 807FA910  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807FA914  3B 03 07 68 */	addi r24, r3, calc_mtx@l
/* 807FA918  3C 60 80 80 */	lis r3, ke_a@ha
/* 807FA91C  3B 23 D2 FC */	addi r25, r3, ke_a@l
/* 807FA920  C3 FF 00 04 */	lfs f31, 4(r31)
lbl_807FA924:
/* 807FA924  4B A7 65 F8 */	b MtxPush__Fv
/* 807FA928  7C 77 D2 14 */	add r3, r23, r26
/* 807FA92C  C0 23 00 00 */	lfs f1, 0(r3)
/* 807FA930  C0 43 00 04 */	lfs f2, 4(r3)
/* 807FA934  C0 63 00 08 */	lfs f3, 8(r3)
/* 807FA938  38 60 00 01 */	li r3, 1
/* 807FA93C  4B A7 65 20 */	b MtxTrans__FfffUc
/* 807FA940  80 78 00 00 */	lwz r3, 0(r24)
/* 807FA944  7E D9 DA 14 */	add r22, r25, r27
/* 807FA948  A8 96 00 02 */	lha r4, 2(r22)
/* 807FA94C  4B 81 1A E8 */	b mDoMtx_YrotM__FPA4_fs
/* 807FA950  80 78 00 00 */	lwz r3, 0(r24)
/* 807FA954  A8 96 00 00 */	lha r4, 0(r22)
/* 807FA958  4B 81 1A 44 */	b mDoMtx_XrotM__FPA4_fs
/* 807FA95C  80 78 00 00 */	lwz r3, 0(r24)
/* 807FA960  A8 96 00 04 */	lha r4, 4(r22)
/* 807FA964  4B 81 1B 68 */	b mDoMtx_ZrotM__FPA4_fs
/* 807FA968  D3 E1 00 08 */	stfs f31, 8(r1)
/* 807FA96C  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 807FA970  D3 E1 00 10 */	stfs f31, 0x10(r1)
/* 807FA974  38 61 00 08 */	addi r3, r1, 8
/* 807FA978  7E DD E2 14 */	add r22, r29, r28
/* 807FA97C  3A B6 0B B4 */	addi r21, r22, 0xbb4
/* 807FA980  7E A4 AB 78 */	mr r4, r21
/* 807FA984  4B A7 65 68 */	b MtxPosition__FP4cXyzP4cXyz
/* 807FA988  88 1D 08 B0 */	lbz r0, 0x8b0(r29)
/* 807FA98C  7C 00 07 75 */	extsb. r0, r0
/* 807FA990  41 82 00 1C */	beq lbl_807FA9AC
/* 807FA994  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807FA998  D0 21 00 08 */	stfs f1, 8(r1)
/* 807FA99C  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 807FA9A0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807FA9A4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 807FA9A8  48 00 00 18 */	b lbl_807FA9C0
lbl_807FA9AC:
/* 807FA9AC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807FA9B0  D0 21 00 08 */	stfs f1, 8(r1)
/* 807FA9B4  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 807FA9B8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807FA9BC  D0 21 00 10 */	stfs f1, 0x10(r1)
lbl_807FA9C0:
/* 807FA9C0  38 61 00 08 */	addi r3, r1, 8
/* 807FA9C4  3A D6 0C A4 */	addi r22, r22, 0xca4
/* 807FA9C8  7E C4 B3 78 */	mr r4, r22
/* 807FA9CC  4B A7 65 20 */	b MtxPosition__FP4cXyzP4cXyz
/* 807FA9D0  7E C3 B3 78 */	mr r3, r22
/* 807FA9D4  7E A4 AB 78 */	mr r4, r21
/* 807FA9D8  7E C5 B3 78 */	mr r5, r22
/* 807FA9DC  4B B4 C6 D8 */	b PSVECSubtract
/* 807FA9E0  7F A3 EB 78 */	mr r3, r29
/* 807FA9E4  38 9D 18 80 */	addi r4, r29, 0x1880
/* 807FA9E8  7E A5 AB 78 */	mr r5, r21
/* 807FA9EC  7F C6 F3 78 */	mr r6, r30
/* 807FA9F0  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 807FA9F4  4B FF FD BD */	bl ke_move__FP10e_yg_classP19mDoExt_3DlineMat0_cP7yg_ke_sif
/* 807FA9F8  4B A7 65 60 */	b MtxPull__Fv
/* 807FA9FC  3B DE 00 01 */	addi r30, r30, 1
/* 807FAA00  2C 1E 00 0D */	cmpwi r30, 0xd
/* 807FAA04  3B 9C 00 FC */	addi r28, r28, 0xfc
/* 807FAA08  3B 7B 00 06 */	addi r27, r27, 6
/* 807FAA0C  3B 5A 00 0C */	addi r26, r26, 0xc
/* 807FAA10  41 80 FF 14 */	blt lbl_807FA924
/* 807FAA14  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 807FAA18  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 807FAA1C  39 61 00 50 */	addi r11, r1, 0x50
/* 807FAA20  4B B6 77 E8 */	b _restgpr_21
/* 807FAA24  80 01 00 64 */	lwz r0, 0x64(r1)
/* 807FAA28  7C 08 03 A6 */	mtlr r0
/* 807FAA2C  38 21 00 60 */	addi r1, r1, 0x60
/* 807FAA30  4E 80 00 20 */	blr 

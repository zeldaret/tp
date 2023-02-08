lbl_807A5618:
/* 807A5618  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 807A561C  7C 08 02 A6 */	mflr r0
/* 807A5620  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 807A5624  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 807A5628  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 807A562C  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 807A5630  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, 0 /* qr0 */
/* 807A5634  39 61 00 B0 */	addi r11, r1, 0xb0
/* 807A5638  4B BB CB 91 */	bl _savegpr_24
/* 807A563C  7C 78 1B 78 */	mr r24, r3
/* 807A5640  3C 60 80 7A */	lis r3, lit_3903@ha /* 0x807A6824@ha */
/* 807A5644  3B 63 68 24 */	addi r27, r3, lit_3903@l /* 0x807A6824@l */
/* 807A5648  38 61 00 20 */	addi r3, r1, 0x20
/* 807A564C  4B 8D 26 1D */	bl __ct__11dBgS_LinChkFv
/* 807A5650  C0 38 04 D4 */	lfs f1, 0x4d4(r24)
/* 807A5654  C0 1B 00 64 */	lfs f0, 0x64(r27)
/* 807A5658  EC 01 00 2A */	fadds f0, f1, f0
/* 807A565C  D0 18 04 D4 */	stfs f0, 0x4d4(r24)
/* 807A5660  3B 20 00 00 */	li r25, 0
/* 807A5664  3B E0 00 00 */	li r31, 0
/* 807A5668  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807A566C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807A5670  3B 43 0F 38 */	addi r26, r3, 0xf38
/* 807A5674  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807A5678  3B 83 07 68 */	addi r28, r3, calc_mtx@l /* 0x80450768@l */
/* 807A567C  3C 60 80 7A */	lis r3, ya@ha /* 0x807A6B6C@ha */
/* 807A5680  3B A3 6B 6C */	addi r29, r3, ya@l /* 0x807A6B6C@l */
/* 807A5684  3C 60 80 7A */	lis r3, xa@ha /* 0x807A6B78@ha */
/* 807A5688  3B C3 6B 78 */	addi r30, r3, xa@l /* 0x807A6B78@l */
/* 807A568C  C3 DB 00 04 */	lfs f30, 4(r27)
/* 807A5690  C3 FB 01 54 */	lfs f31, 0x154(r27)
lbl_807A5694:
/* 807A5694  C0 38 04 D0 */	lfs f1, 0x4d0(r24)
/* 807A5698  C0 58 04 D4 */	lfs f2, 0x4d4(r24)
/* 807A569C  C0 78 04 D8 */	lfs f3, 0x4d8(r24)
/* 807A56A0  38 60 00 00 */	li r3, 0
/* 807A56A4  4B AC B7 B9 */	bl MtxTrans__FfffUc
/* 807A56A8  80 7C 00 00 */	lwz r3, 0(r28)
/* 807A56AC  7C 9D FA AE */	lhax r4, r29, r31
/* 807A56B0  4B 86 6D 85 */	bl mDoMtx_YrotM__FPA4_fs
/* 807A56B4  80 7C 00 00 */	lwz r3, 0(r28)
/* 807A56B8  7C 9E FA AE */	lhax r4, r30, r31
/* 807A56BC  4B 86 6C E1 */	bl mDoMtx_XrotM__FPA4_fs
/* 807A56C0  D3 C1 00 14 */	stfs f30, 0x14(r1)
/* 807A56C4  D3 E1 00 18 */	stfs f31, 0x18(r1)
/* 807A56C8  D3 C1 00 1C */	stfs f30, 0x1c(r1)
/* 807A56CC  38 61 00 14 */	addi r3, r1, 0x14
/* 807A56D0  38 81 00 08 */	addi r4, r1, 8
/* 807A56D4  4B AC B8 19 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807A56D8  38 61 00 20 */	addi r3, r1, 0x20
/* 807A56DC  38 98 04 D0 */	addi r4, r24, 0x4d0
/* 807A56E0  38 A1 00 08 */	addi r5, r1, 8
/* 807A56E4  38 C0 00 00 */	li r6, 0
/* 807A56E8  4B 8D 26 7D */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 807A56EC  7F 43 D3 78 */	mr r3, r26
/* 807A56F0  38 81 00 20 */	addi r4, r1, 0x20
/* 807A56F4  4B 8C EC C1 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 807A56F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807A56FC  41 82 00 48 */	beq lbl_807A5744
/* 807A5700  C0 18 04 D0 */	lfs f0, 0x4d0(r24)
/* 807A5704  D0 18 06 90 */	stfs f0, 0x690(r24)
/* 807A5708  C0 18 04 D4 */	lfs f0, 0x4d4(r24)
/* 807A570C  D0 18 06 94 */	stfs f0, 0x694(r24)
/* 807A5710  C0 18 04 D8 */	lfs f0, 0x4d8(r24)
/* 807A5714  D0 18 06 98 */	stfs f0, 0x698(r24)
/* 807A5718  7C 1D FA AE */	lhax r0, r29, r31
/* 807A571C  B0 18 06 9E */	sth r0, 0x69e(r24)
/* 807A5720  7C 1E FA AE */	lhax r0, r30, r31
/* 807A5724  B0 18 06 9C */	sth r0, 0x69c(r24)
/* 807A5728  7F 03 C3 78 */	mr r3, r24
/* 807A572C  4B FF 98 11 */	bl bg_pos_get__FP10e_st_class
/* 807A5730  38 61 00 20 */	addi r3, r1, 0x20
/* 807A5734  38 80 FF FF */	li r4, -1
/* 807A5738  4B 8D 25 A5 */	bl __dt__11dBgS_LinChkFv
/* 807A573C  38 60 00 01 */	li r3, 1
/* 807A5740  48 00 00 24 */	b lbl_807A5764
lbl_807A5744:
/* 807A5744  3B 39 00 01 */	addi r25, r25, 1
/* 807A5748  2C 19 00 06 */	cmpwi r25, 6
/* 807A574C  3B FF 00 02 */	addi r31, r31, 2
/* 807A5750  41 80 FF 44 */	blt lbl_807A5694
/* 807A5754  38 61 00 20 */	addi r3, r1, 0x20
/* 807A5758  38 80 FF FF */	li r4, -1
/* 807A575C  4B 8D 25 81 */	bl __dt__11dBgS_LinChkFv
/* 807A5760  38 60 00 00 */	li r3, 0
lbl_807A5764:
/* 807A5764  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 807A5768  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 807A576C  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, 0 /* qr0 */
/* 807A5770  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 807A5774  39 61 00 B0 */	addi r11, r1, 0xb0
/* 807A5778  4B BB CA 9D */	bl _restgpr_24
/* 807A577C  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 807A5780  7C 08 03 A6 */	mtlr r0
/* 807A5784  38 21 00 D0 */	addi r1, r1, 0xd0
/* 807A5788  4E 80 00 20 */	blr 

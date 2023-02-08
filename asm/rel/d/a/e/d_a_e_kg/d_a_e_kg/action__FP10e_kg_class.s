lbl_806F90F8:
/* 806F90F8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 806F90FC  7C 08 02 A6 */	mflr r0
/* 806F9100  90 01 00 64 */	stw r0, 0x64(r1)
/* 806F9104  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 806F9108  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 806F910C  39 61 00 50 */	addi r11, r1, 0x50
/* 806F9110  4B C6 90 C9 */	bl _savegpr_28
/* 806F9114  7C 7E 1B 78 */	mr r30, r3
/* 806F9118  3C 80 80 70 */	lis r4, lit_3788@ha /* 0x806FA3A4@ha */
/* 806F911C  3B E4 A3 A4 */	addi r31, r4, lit_3788@l /* 0x806FA3A4@l */
/* 806F9120  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806F9124  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806F9128  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 806F912C  4B 92 15 E5 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806F9130  B0 7E 06 8C */	sth r3, 0x68c(r30)
/* 806F9134  7F C3 F3 78 */	mr r3, r30
/* 806F9138  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 806F913C  4B 92 16 A5 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806F9140  D0 3E 06 90 */	stfs f1, 0x690(r30)
/* 806F9144  7F C3 F3 78 */	mr r3, r30
/* 806F9148  4B FF F0 DD */	bl damage_check__FP10e_kg_class
/* 806F914C  80 1E 08 F8 */	lwz r0, 0x8f8(r30)
/* 806F9150  54 00 07 B6 */	rlwinm r0, r0, 0, 0x1e, 0x1b
/* 806F9154  90 1E 08 F8 */	stw r0, 0x8f8(r30)
/* 806F9158  3B A0 00 00 */	li r29, 0
/* 806F915C  3B 80 00 00 */	li r28, 0
/* 806F9160  80 1E 09 24 */	lwz r0, 0x924(r30)
/* 806F9164  60 00 00 01 */	ori r0, r0, 1
/* 806F9168  90 1E 09 24 */	stw r0, 0x924(r30)
/* 806F916C  A8 1E 06 76 */	lha r0, 0x676(r30)
/* 806F9170  28 00 00 0A */	cmplwi r0, 0xa
/* 806F9174  41 81 00 8C */	bgt lbl_806F9200
/* 806F9178  3C 60 80 70 */	lis r3, lit_4276@ha /* 0x806FA4AC@ha */
/* 806F917C  38 63 A4 AC */	addi r3, r3, lit_4276@l /* 0x806FA4AC@l */
/* 806F9180  54 00 10 3A */	slwi r0, r0, 2
/* 806F9184  7C 03 00 2E */	lwzx r0, r3, r0
/* 806F9188  7C 09 03 A6 */	mtctr r0
/* 806F918C  4E 80 04 20 */	bctr 
lbl_806F9190:
/* 806F9190  7F C3 F3 78 */	mr r3, r30
/* 806F9194  4B FF F2 A1 */	bl e_kg_move__FP10e_kg_class
/* 806F9198  3B A0 20 00 */	li r29, 0x2000
/* 806F919C  48 00 00 64 */	b lbl_806F9200
lbl_806F91A0:
/* 806F91A0  7F C3 F3 78 */	mr r3, r30
/* 806F91A4  4B FF F5 71 */	bl e_kg_attack__FP10e_kg_class
/* 806F91A8  2C 03 00 00 */	cmpwi r3, 0
/* 806F91AC  41 82 00 10 */	beq lbl_806F91BC
/* 806F91B0  80 1E 08 F8 */	lwz r0, 0x8f8(r30)
/* 806F91B4  60 00 00 0C */	ori r0, r0, 0xc
/* 806F91B8  90 1E 08 F8 */	stw r0, 0x8f8(r30)
lbl_806F91BC:
/* 806F91BC  3B A0 20 00 */	li r29, 0x2000
/* 806F91C0  48 00 00 40 */	b lbl_806F9200
lbl_806F91C4:
/* 806F91C4  7F C3 F3 78 */	mr r3, r30
/* 806F91C8  4B FF FD 3D */	bl e_kg_roof__FP10e_kg_class
/* 806F91CC  3B A0 20 00 */	li r29, 0x2000
/* 806F91D0  48 00 00 30 */	b lbl_806F9200
lbl_806F91D4:
/* 806F91D4  7F C3 F3 78 */	mr r3, r30
/* 806F91D8  4B FF F8 69 */	bl e_kg_back__FP10e_kg_class
/* 806F91DC  3B 80 00 05 */	li r28, 5
/* 806F91E0  48 00 00 20 */	b lbl_806F9200
lbl_806F91E4:
/* 806F91E4  7F C3 F3 78 */	mr r3, r30
/* 806F91E8  4B FF F9 69 */	bl e_kg_s_damage__FP10e_kg_class
/* 806F91EC  3B 80 00 05 */	li r28, 5
/* 806F91F0  48 00 00 10 */	b lbl_806F9200
lbl_806F91F4:
/* 806F91F4  7F C3 F3 78 */	mr r3, r30
/* 806F91F8  4B FF FA 99 */	bl e_kg_damage__FP10e_kg_class
/* 806F91FC  3B 80 00 05 */	li r28, 5
lbl_806F9200:
/* 806F9200  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806F9204  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806F9208  80 63 00 00 */	lwz r3, 0(r3)
/* 806F920C  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 806F9210  4B 91 31 CD */	bl mDoMtx_YrotS__FPA4_fs
/* 806F9214  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806F9218  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806F921C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806F9220  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 806F9224  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806F9228  38 61 00 20 */	addi r3, r1, 0x20
/* 806F922C  38 81 00 14 */	addi r4, r1, 0x14
/* 806F9230  4B B7 7C BD */	bl MtxPosition__FP4cXyzP4cXyz
/* 806F9234  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 806F9238  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 806F923C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 806F9240  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 806F9244  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 806F9248  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 806F924C  7C 65 1B 78 */	mr r5, r3
/* 806F9250  4B C4 DE 41 */	bl PSVECAdd
/* 806F9254  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 806F9258  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 806F925C  EC 01 00 28 */	fsubs f0, f1, f0
/* 806F9260  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 806F9264  34 7E 08 BC */	addic. r3, r30, 0x8bc
/* 806F9268  41 82 00 34 */	beq lbl_806F929C
/* 806F926C  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 806F9270  C0 03 00 00 */	lfs f0, 0(r3)
/* 806F9274  EC 01 00 2A */	fadds f0, f1, f0
/* 806F9278  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 806F927C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 806F9280  C0 03 00 04 */	lfs f0, 4(r3)
/* 806F9284  EC 01 00 2A */	fadds f0, f1, f0
/* 806F9288  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 806F928C  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 806F9290  C0 03 00 08 */	lfs f0, 8(r3)
/* 806F9294  EC 01 00 2A */	fadds f0, f1, f0
/* 806F9298  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
lbl_806F929C:
/* 806F929C  C3 FF 00 04 */	lfs f31, 4(r31)
/* 806F92A0  A8 7E 04 E4 */	lha r3, 0x4e4(r30)
/* 806F92A4  7C 60 07 35 */	extsh. r0, r3
/* 806F92A8  41 82 00 24 */	beq lbl_806F92CC
/* 806F92AC  7C 60 0E 70 */	srawi r0, r3, 1
/* 806F92B0  7C 00 01 94 */	addze r0, r0
/* 806F92B4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806F92B8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 806F92BC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 806F92C0  7C 23 04 2E */	lfsx f1, r3, r0
/* 806F92C4  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 806F92C8  EF E0 00 72 */	fmuls f31, f0, f1
lbl_806F92CC:
/* 806F92CC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 806F92D0  EC 00 F8 28 */	fsubs f0, f0, f31
/* 806F92D4  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 806F92D8  C0 1E 04 C0 */	lfs f0, 0x4c0(r30)
/* 806F92DC  EC 00 F8 28 */	fsubs f0, f0, f31
/* 806F92E0  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 806F92E4  38 7E 06 E4 */	addi r3, r30, 0x6e4
/* 806F92E8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806F92EC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806F92F0  38 84 0F 38 */	addi r4, r4, 0xf38
/* 806F92F4  4B 97 D7 B9 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 806F92F8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 806F92FC  EC 00 F8 2A */	fadds f0, f0, f31
/* 806F9300  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 806F9304  C0 1E 04 C0 */	lfs f0, 0x4c0(r30)
/* 806F9308  EC 00 F8 2A */	fadds f0, f0, f31
/* 806F930C  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 806F9310  7F 80 07 75 */	extsb. r0, r28
/* 806F9314  41 82 00 2C */	beq lbl_806F9340
/* 806F9318  7F 80 07 74 */	extsb r0, r28
/* 806F931C  C8 3F 00 B0 */	lfd f1, 0xb0(r31)
/* 806F9320  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806F9324  90 01 00 34 */	stw r0, 0x34(r1)
/* 806F9328  3C 00 43 30 */	lis r0, 0x4330
/* 806F932C  90 01 00 30 */	stw r0, 0x30(r1)
/* 806F9330  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 806F9334  EC 00 08 28 */	fsubs f0, f0, f1
/* 806F9338  D0 1E 06 70 */	stfs f0, 0x670(r30)
/* 806F933C  48 00 00 6C */	b lbl_806F93A8
lbl_806F9340:
/* 806F9340  A8 7E 06 6C */	lha r3, 0x66c(r30)
/* 806F9344  2C 03 00 00 */	cmpwi r3, 0
/* 806F9348  40 82 00 28 */	bne lbl_806F9370
/* 806F934C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 806F9350  4B B6 E6 05 */	bl cM_rndF__Ff
/* 806F9354  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 806F9358  EC 00 08 2A */	fadds f0, f0, f1
/* 806F935C  FC 00 00 1E */	fctiwz f0, f0
/* 806F9360  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 806F9364  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806F9368  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 806F936C  48 00 00 3C */	b lbl_806F93A8
lbl_806F9370:
/* 806F9370  38 03 FF FF */	addi r0, r3, -1
/* 806F9374  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 806F9378  A8 1E 06 6C */	lha r0, 0x66c(r30)
/* 806F937C  2C 00 00 0B */	cmpwi r0, 0xb
/* 806F9380  41 81 00 28 */	bgt lbl_806F93A8
/* 806F9384  20 00 00 0B */	subfic r0, r0, 0xb
/* 806F9388  C8 3F 00 B0 */	lfd f1, 0xb0(r31)
/* 806F938C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806F9390  90 01 00 34 */	stw r0, 0x34(r1)
/* 806F9394  3C 00 43 30 */	lis r0, 0x4330
/* 806F9398  90 01 00 30 */	stw r0, 0x30(r1)
/* 806F939C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 806F93A0  EC 00 08 28 */	fsubs f0, f0, f1
/* 806F93A4  D0 1E 06 70 */	stfs f0, 0x670(r30)
lbl_806F93A8:
/* 806F93A8  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 806F93AC  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 806F93B0  38 A0 00 04 */	li r5, 4
/* 806F93B4  7F A6 EB 78 */	mr r6, r29
/* 806F93B8  4B B7 72 51 */	bl cLib_addCalcAngleS2__FPssss
/* 806F93BC  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 806F93C0  D0 01 00 08 */	stfs f0, 8(r1)
/* 806F93C4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806F93C8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806F93CC  7F C3 F3 78 */	mr r3, r30
/* 806F93D0  38 9E 05 BC */	addi r4, r30, 0x5bc
/* 806F93D4  38 BE 05 38 */	addi r5, r30, 0x538
/* 806F93D8  38 C1 00 08 */	addi r6, r1, 8
/* 806F93DC  48 00 0B A1 */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 806F93E0  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 806F93E4  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 806F93E8  39 61 00 50 */	addi r11, r1, 0x50
/* 806F93EC  4B C6 8E 39 */	bl _restgpr_28
/* 806F93F0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 806F93F4  7C 08 03 A6 */	mtlr r0
/* 806F93F8  38 21 00 60 */	addi r1, r1, 0x60
/* 806F93FC  4E 80 00 20 */	blr 

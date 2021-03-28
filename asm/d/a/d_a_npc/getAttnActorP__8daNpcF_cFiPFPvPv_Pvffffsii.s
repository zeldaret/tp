lbl_8015436C:
/* 8015436C  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80154370  7C 08 02 A6 */	mflr r0
/* 80154374  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80154378  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 8015437C  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 80154380  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 80154384  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, 0 /* qr0 */
/* 80154388  DB A1 00 A0 */	stfd f29, 0xa0(r1)
/* 8015438C  F3 A1 00 A8 */	psq_st f29, 168(r1), 0, 0 /* qr0 */
/* 80154390  DB 81 00 90 */	stfd f28, 0x90(r1)
/* 80154394  F3 81 00 98 */	psq_st f28, 152(r1), 0, 0 /* qr0 */
/* 80154398  DB 61 00 80 */	stfd f27, 0x80(r1)
/* 8015439C  F3 61 00 88 */	psq_st f27, 136(r1), 0, 0 /* qr0 */
/* 801543A0  39 61 00 80 */	addi r11, r1, 0x80
/* 801543A4  48 20 DE 11 */	bl _savegpr_19
/* 801543A8  7C 78 1B 78 */	mr r24, r3
/* 801543AC  7C 99 23 78 */	mr r25, r4
/* 801543B0  7C BA 2B 78 */	mr r26, r5
/* 801543B4  FF 60 08 90 */	fmr f27, f1
/* 801543B8  FF A0 10 90 */	fmr f29, f2
/* 801543BC  FF C0 18 90 */	fmr f30, f3
/* 801543C0  FF E0 20 90 */	fmr f31, f4
/* 801543C4  7C DF 33 78 */	mr r31, r6
/* 801543C8  7C F3 3B 78 */	mr r19, r7
/* 801543CC  7D 1B 43 78 */	mr r27, r8
/* 801543D0  38 00 00 00 */	li r0, 0
/* 801543D4  90 01 00 08 */	stw r0, 8(r1)
/* 801543D8  48 11 34 95 */	bl cM_rnd__Fv
/* 801543DC  C0 02 9A AC */	lfs f0, lit_11253(r2)
/* 801543E0  EC 21 00 28 */	fsubs f1, f1, f0
/* 801543E4  C0 02 9A B0 */	lfs f0, lit_11605(r2)
/* 801543E8  EC 00 00 72 */	fmuls f0, f0, f1
/* 801543EC  FC 00 00 1E */	fctiwz f0, f0
/* 801543F0  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 801543F4  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 801543F8  3B C3 01 C2 */	addi r30, r3, 0x1c2
/* 801543FC  48 11 34 71 */	bl cM_rnd__Fv
/* 80154400  C0 02 9A AC */	lfs f0, lit_11253(r2)
/* 80154404  EC 41 00 28 */	fsubs f2, f1, f0
/* 80154408  C8 22 99 E0 */	lfd f1, lit_4142(r2)
/* 8015440C  6E 60 80 00 */	xoris r0, r19, 0x8000
/* 80154410  90 01 00 34 */	stw r0, 0x34(r1)
/* 80154414  3C 00 43 30 */	lis r0, 0x4330
/* 80154418  90 01 00 30 */	stw r0, 0x30(r1)
/* 8015441C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80154420  EC 00 08 28 */	fsubs f0, f0, f1
/* 80154424  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80154428  FC 00 00 1E */	fctiwz f0, f0
/* 8015442C  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80154430  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80154434  7F B3 02 14 */	add r29, r19, r0
/* 80154438  3B 80 00 00 */	li r28, 0
/* 8015443C  C3 82 9A 7C */	lfs f28, lit_7337(r2)
/* 80154440  80 18 09 38 */	lwz r0, 0x938(r24)
/* 80154444  2C 00 00 00 */	cmpwi r0, 0
/* 80154448  41 82 00 68 */	beq lbl_801544B0
/* 8015444C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80154450  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80154454  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80154458  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8015445C  81 8C 00 FC */	lwz r12, 0xfc(r12)
/* 80154460  7D 89 03 A6 */	mtctr r12
/* 80154464  4E 80 04 21 */	bctrl 
/* 80154468  38 81 00 08 */	addi r4, r1, 8
/* 8015446C  4B EC 55 51 */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80154470  80 18 09 34 */	lwz r0, 0x934(r24)
/* 80154474  54 03 18 38 */	slwi r3, r0, 3
/* 80154478  38 63 08 2C */	addi r3, r3, 0x82c
/* 8015447C  7C 78 1A 14 */	add r3, r24, r3
/* 80154480  4B FF C2 6D */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80154484  80 01 00 08 */	lwz r0, 8(r1)
/* 80154488  7C 03 00 40 */	cmplw r3, r0
/* 8015448C  41 82 00 0C */	beq lbl_80154498
/* 80154490  38 78 09 38 */	addi r3, r24, 0x938
/* 80154494  4B FF 8E B5 */	bl func_8014D348
lbl_80154498:
/* 80154498  80 18 09 34 */	lwz r0, 0x934(r24)
/* 8015449C  54 03 18 38 */	slwi r3, r0, 3
/* 801544A0  38 63 08 2C */	addi r3, r3, 0x82c
/* 801544A4  7C 78 1A 14 */	add r3, r24, r3
/* 801544A8  4B FF C2 45 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 801544AC  90 61 00 08 */	stw r3, 8(r1)
lbl_801544B0:
/* 801544B0  80 01 00 08 */	lwz r0, 8(r1)
/* 801544B4  28 00 00 00 */	cmplwi r0, 0
/* 801544B8  40 82 02 20 */	bne lbl_801546D8
/* 801544BC  38 00 00 00 */	li r0, 0
/* 801544C0  90 18 09 38 */	stw r0, 0x938(r24)
/* 801544C4  2C 19 00 00 */	cmpwi r25, 0
/* 801544C8  41 82 00 1C */	beq lbl_801544E4
/* 801544CC  7F 03 C3 78 */	mr r3, r24
/* 801544D0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 801544D4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 801544D8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 801544DC  4B EC 64 89 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 801544E0  FF 60 08 90 */	fmr f27, f1
lbl_801544E4:
/* 801544E4  38 00 00 00 */	li r0, 0
/* 801544E8  90 0D 8A 70 */	stw r0, mFindCount__8daNpcF_c(r13)
/* 801544EC  7F 43 D3 78 */	mr r3, r26
/* 801544F0  7F 04 C3 78 */	mr r4, r24
/* 801544F4  4B EC CE 45 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 801544F8  3A 80 00 00 */	li r20, 0
/* 801544FC  3B 40 00 00 */	li r26, 0
/* 80154500  3C 60 80 42 */	lis r3, mFindActorPList__8daNpcF_c@ha
/* 80154504  3A C3 57 E8 */	addi r22, r3, mFindActorPList__8daNpcF_c@l
/* 80154508  48 00 00 E0 */	b lbl_801545E8
lbl_8015450C:
/* 8015450C  38 61 00 18 */	addi r3, r1, 0x18
/* 80154510  7F 04 C3 78 */	mr r4, r24
/* 80154514  7C B6 D0 2E */	lwzx r5, r22, r26
/* 80154518  48 00 04 55 */	bl getAttentionPos__8daNpcF_cFP10fopAc_ac_c
/* 8015451C  C0 18 05 50 */	lfs f0, 0x550(r24)
/* 80154520  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80154524  C0 18 05 54 */	lfs f0, 0x554(r24)
/* 80154528  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8015452C  C0 18 05 58 */	lfs f0, 0x558(r24)
/* 80154530  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80154534  7F 03 C3 78 */	mr r3, r24
/* 80154538  38 81 00 18 */	addi r4, r1, 0x18
/* 8015453C  38 A1 00 0C */	addi r5, r1, 0xc
/* 80154540  FC 20 D8 90 */	fmr f1, f27
/* 80154544  FC 40 E8 90 */	fmr f2, f29
/* 80154548  FC 60 F0 90 */	fmr f3, f30
/* 8015454C  38 C0 00 00 */	li r6, 0
/* 80154550  48 00 02 E5 */	bl chkPointInArea__8daNpcF_cF4cXyz4cXyzfffs
/* 80154554  2C 03 00 00 */	cmpwi r3, 0
/* 80154558  41 82 00 88 */	beq lbl_801545E0
/* 8015455C  7F 03 C3 78 */	mr r3, r24
/* 80154560  7C 96 D0 2E */	lwzx r4, r22, r26
/* 80154564  FC 20 F8 90 */	fmr f1, f31
/* 80154568  7F E5 FB 78 */	mr r5, r31
/* 8015456C  48 00 01 C5 */	bl chkActorInSight2__8daNpcF_cFP10fopAc_ac_cfs
/* 80154570  2C 03 00 00 */	cmpwi r3, 0
/* 80154574  41 82 00 6C */	beq lbl_801545E0
/* 80154578  3A 60 00 00 */	li r19, 0
/* 8015457C  3A E0 00 00 */	li r23, 0
/* 80154580  3A BA 09 3C */	addi r21, r26, 0x93c
lbl_80154584:
/* 80154584  38 77 08 2C */	addi r3, r23, 0x82c
/* 80154588  7C 78 1A 14 */	add r3, r24, r3
/* 8015458C  4B FF C1 61 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80154590  7C 16 D0 2E */	lwzx r0, r22, r26
/* 80154594  7C 00 18 40 */	cmplw r0, r3
/* 80154598  40 82 00 10 */	bne lbl_801545A8
/* 8015459C  7C 18 A8 2E */	lwzx r0, r24, r21
/* 801545A0  2C 00 00 00 */	cmpwi r0, 0
/* 801545A4  40 82 00 14 */	bne lbl_801545B8
lbl_801545A8:
/* 801545A8  3A 73 00 01 */	addi r19, r19, 1
/* 801545AC  2C 13 00 05 */	cmpwi r19, 5
/* 801545B0  3A F7 00 08 */	addi r23, r23, 8
/* 801545B4  41 80 FF D0 */	blt lbl_80154584
lbl_801545B8:
/* 801545B8  2C 13 00 05 */	cmpwi r19, 5
/* 801545BC  40 82 00 24 */	bne lbl_801545E0
/* 801545C0  7F 03 C3 78 */	mr r3, r24
/* 801545C4  7C 96 D0 2E */	lwzx r4, r22, r26
/* 801545C8  4B EC 63 9D */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 801545CC  FC 01 E0 40 */	fcmpo cr0, f1, f28
/* 801545D0  40 80 00 10 */	bge lbl_801545E0
/* 801545D4  7C 16 D0 2E */	lwzx r0, r22, r26
/* 801545D8  90 01 00 08 */	stw r0, 8(r1)
/* 801545DC  FF 80 08 90 */	fmr f28, f1
lbl_801545E0:
/* 801545E0  3A 94 00 01 */	addi r20, r20, 1
/* 801545E4  3B 5A 00 04 */	addi r26, r26, 4
lbl_801545E8:
/* 801545E8  80 0D 8A 70 */	lwz r0, mFindCount__8daNpcF_c(r13)
/* 801545EC  7C 14 00 00 */	cmpw r20, r0
/* 801545F0  41 80 FF 1C */	blt lbl_8015450C
/* 801545F4  80 01 00 08 */	lwz r0, 8(r1)
/* 801545F8  28 00 00 00 */	cmplwi r0, 0
/* 801545FC  40 82 00 34 */	bne lbl_80154630
/* 80154600  2C 19 00 00 */	cmpwi r25, 0
/* 80154604  41 82 00 2C */	beq lbl_80154630
/* 80154608  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8015460C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80154610  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80154614  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80154618  81 8C 00 FC */	lwz r12, 0xfc(r12)
/* 8015461C  7D 89 03 A6 */	mtctr r12
/* 80154620  4E 80 04 21 */	bctrl 
/* 80154624  38 81 00 08 */	addi r4, r1, 8
/* 80154628  4B EC 53 95 */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 8015462C  3B 80 00 01 */	li r28, 1
lbl_80154630:
/* 80154630  80 81 00 08 */	lwz r4, 8(r1)
/* 80154634  28 04 00 00 */	cmplwi r4, 0
/* 80154638  41 82 00 A0 */	beq lbl_801546D8
/* 8015463C  38 C0 03 84 */	li r6, 0x384
/* 80154640  3B E0 00 00 */	li r31, 0
/* 80154644  7F E5 FB 78 */	mr r5, r31
/* 80154648  38 60 00 00 */	li r3, 0
/* 8015464C  38 00 00 05 */	li r0, 5
/* 80154650  7C 09 03 A6 */	mtctr r0
lbl_80154654:
/* 80154654  38 03 09 3C */	addi r0, r3, 0x93c
/* 80154658  7C 18 00 2E */	lwzx r0, r24, r0
/* 8015465C  7C 00 30 00 */	cmpw r0, r6
/* 80154660  40 80 00 0C */	bge lbl_8015466C
/* 80154664  7C 06 03 78 */	mr r6, r0
/* 80154668  7C BF 2B 78 */	mr r31, r5
lbl_8015466C:
/* 8015466C  38 A5 00 01 */	addi r5, r5, 1
/* 80154670  38 63 00 04 */	addi r3, r3, 4
/* 80154674  42 00 FF E0 */	bdnz lbl_80154654
/* 80154678  57 E3 18 38 */	slwi r3, r31, 3
/* 8015467C  38 63 08 2C */	addi r3, r3, 0x82c
/* 80154680  7C 78 1A 14 */	add r3, r24, r3
/* 80154684  4B FF C0 39 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80154688  2C 1B 00 00 */	cmpwi r27, 0
/* 8015468C  41 82 00 24 */	beq lbl_801546B0
/* 80154690  38 1C FF FF */	addi r0, r28, -1
/* 80154694  30 00 FF FF */	addic r0, r0, -1
/* 80154698  7C 00 01 10 */	subfe r0, r0, r0
/* 8015469C  7F C4 00 78 */	andc r4, r30, r0
/* 801546A0  57 E0 10 3A */	slwi r0, r31, 2
/* 801546A4  7C 78 02 14 */	add r3, r24, r0
/* 801546A8  90 83 09 3C */	stw r4, 0x93c(r3)
/* 801546AC  48 00 00 14 */	b lbl_801546C0
lbl_801546B0:
/* 801546B0  38 80 00 00 */	li r4, 0
/* 801546B4  57 E0 10 3A */	slwi r0, r31, 2
/* 801546B8  7C 78 02 14 */	add r3, r24, r0
/* 801546BC  90 83 09 3C */	stw r4, 0x93c(r3)
lbl_801546C0:
/* 801546C0  2C 1C 00 01 */	cmpwi r28, 1
/* 801546C4  38 00 00 1E */	li r0, 0x1e
/* 801546C8  41 82 00 08 */	beq lbl_801546D0
/* 801546CC  7F A0 EB 78 */	mr r0, r29
lbl_801546D0:
/* 801546D0  90 18 09 38 */	stw r0, 0x938(r24)
/* 801546D4  93 F8 09 34 */	stw r31, 0x934(r24)
lbl_801546D8:
/* 801546D8  80 01 00 08 */	lwz r0, 8(r1)
/* 801546DC  28 00 00 00 */	cmplwi r0, 0
/* 801546E0  40 82 00 0C */	bne lbl_801546EC
/* 801546E4  38 00 00 00 */	li r0, 0
/* 801546E8  90 18 09 38 */	stw r0, 0x938(r24)
lbl_801546EC:
/* 801546EC  80 61 00 08 */	lwz r3, 8(r1)
/* 801546F0  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 801546F4  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 801546F8  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, 0 /* qr0 */
/* 801546FC  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 80154700  E3 A1 00 A8 */	psq_l f29, 168(r1), 0, 0 /* qr0 */
/* 80154704  CB A1 00 A0 */	lfd f29, 0xa0(r1)
/* 80154708  E3 81 00 98 */	psq_l f28, 152(r1), 0, 0 /* qr0 */
/* 8015470C  CB 81 00 90 */	lfd f28, 0x90(r1)
/* 80154710  E3 61 00 88 */	psq_l f27, 136(r1), 0, 0 /* qr0 */
/* 80154714  CB 61 00 80 */	lfd f27, 0x80(r1)
/* 80154718  39 61 00 80 */	addi r11, r1, 0x80
/* 8015471C  48 20 DA E5 */	bl _restgpr_19
/* 80154720  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80154724  7C 08 03 A6 */	mtlr r0
/* 80154728  38 21 00 D0 */	addi r1, r1, 0xd0
/* 8015472C  4E 80 00 20 */	blr 

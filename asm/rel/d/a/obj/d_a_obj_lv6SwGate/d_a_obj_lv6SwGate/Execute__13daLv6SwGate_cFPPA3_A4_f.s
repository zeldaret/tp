lbl_80C7476C:
/* 80C7476C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80C74770  7C 08 02 A6 */	mflr r0
/* 80C74774  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80C74778  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 80C7477C  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 80C74780  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 80C74784  F3 C1 00 88 */	psq_st f30, 136(r1), 0, 0 /* qr0 */
/* 80C74788  DB A1 00 70 */	stfd f29, 0x70(r1)
/* 80C7478C  F3 A1 00 78 */	psq_st f29, 120(r1), 0, 0 /* qr0 */
/* 80C74790  DB 81 00 60 */	stfd f28, 0x60(r1)
/* 80C74794  F3 81 00 68 */	psq_st f28, 104(r1), 0, 0 /* qr0 */
/* 80C74798  DB 61 00 50 */	stfd f27, 0x50(r1)
/* 80C7479C  F3 61 00 58 */	psq_st f27, 88(r1), 0, 0 /* qr0 */
/* 80C747A0  39 61 00 50 */	addi r11, r1, 0x50
/* 80C747A4  4B 6E DA 1C */	b _savegpr_22
/* 80C747A8  7C 7B 1B 78 */	mr r27, r3
/* 80C747AC  7C 9C 23 78 */	mr r28, r4
/* 80C747B0  3C 80 80 C7 */	lis r4, lit_3633@ha
/* 80C747B4  3B E4 55 24 */	addi r31, r4, lit_3633@l
/* 80C747B8  48 00 02 85 */	bl moveGate__13daLv6SwGate_cFv
/* 80C747BC  3A E0 00 00 */	li r23, 0
/* 80C747C0  3B A0 00 00 */	li r29, 0
lbl_80C747C4:
/* 80C747C4  3B 3D 05 DC */	addi r25, r29, 0x5dc
/* 80C747C8  7F 3B CA 14 */	add r25, r27, r25
/* 80C747CC  7F 23 CB 78 */	mr r3, r25
/* 80C747D0  4B 40 FC 90 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80C747D4  28 03 00 00 */	cmplwi r3, 0
/* 80C747D8  41 82 00 24 */	beq lbl_80C747FC
/* 80C747DC  7F 23 CB 78 */	mr r3, r25
/* 80C747E0  4B 40 FD 68 */	b GetTgHitGObj__12dCcD_GObjInfFv
/* 80C747E4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80C747E8  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 80C747EC  41 82 00 10 */	beq lbl_80C747FC
/* 80C747F0  7F 63 DB 78 */	mr r3, r27
/* 80C747F4  48 00 05 C9 */	bl init_modeBreak__13daLv6SwGate_cFv
/* 80C747F8  48 00 00 14 */	b lbl_80C7480C
lbl_80C747FC:
/* 80C747FC  3A F7 00 01 */	addi r23, r23, 1
/* 80C74800  2C 17 00 0C */	cmpwi r23, 0xc
/* 80C74804  3B BD 01 3C */	addi r29, r29, 0x13c
/* 80C74808  41 80 FF BC */	blt lbl_80C747C4
lbl_80C7480C:
/* 80C7480C  3A C0 00 00 */	li r22, 0
/* 80C74810  3B A0 00 00 */	li r29, 0
/* 80C74814  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C74818  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C7481C  3B C3 23 3C */	addi r30, r3, 0x233c
/* 80C74820  C3 FF 00 44 */	lfs f31, 0x44(r31)
/* 80C74824  C3 DF 00 3C */	lfs f30, 0x3c(r31)
/* 80C74828  C3 BF 00 48 */	lfs f29, 0x48(r31)
/* 80C7482C  CB 9F 00 50 */	lfd f28, 0x50(r31)
/* 80C74830  3F 40 43 30 */	lis r26, 0x4330
/* 80C74834  C3 7F 00 40 */	lfs f27, 0x40(r31)
/* 80C74838  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C7483C  3B 23 D4 70 */	addi r25, r3, now__14mDoMtx_stack_c@l
lbl_80C74840:
/* 80C74840  C0 1B 14 C0 */	lfs f0, 0x14c0(r27)
/* 80C74844  EC 1E 00 28 */	fsubs f0, f30, f0
/* 80C74848  EC 3F 00 2A */	fadds f1, f31, f0
/* 80C7484C  6E C0 80 00 */	xoris r0, r22, 0x8000
/* 80C74850  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C74854  93 41 00 20 */	stw r26, 0x20(r1)
/* 80C74858  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80C7485C  EC 00 E0 28 */	fsubs f0, f0, f28
/* 80C74860  EC 1D 00 32 */	fmuls f0, f29, f0
/* 80C74864  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C74868  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C7486C  D3 61 00 18 */	stfs f27, 0x18(r1)
/* 80C74870  D3 61 00 1C */	stfs f27, 0x1c(r1)
/* 80C74874  7F 23 CB 78 */	mr r3, r25
/* 80C74878  A8 9B 04 E4 */	lha r4, 0x4e4(r27)
/* 80C7487C  A8 BB 04 E6 */	lha r5, 0x4e6(r27)
/* 80C74880  A8 DB 04 E8 */	lha r6, 0x4e8(r27)
/* 80C74884  4B 39 79 84 */	b mDoMtx_ZXYrotS__FPA4_fsss
/* 80C74888  7F 23 CB 78 */	mr r3, r25
/* 80C7488C  38 81 00 14 */	addi r4, r1, 0x14
/* 80C74890  7C 85 23 78 */	mr r5, r4
/* 80C74894  4B 6D 24 D8 */	b PSMTXMultVec
/* 80C74898  38 61 00 14 */	addi r3, r1, 0x14
/* 80C7489C  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80C748A0  7C 65 1B 78 */	mr r5, r3
/* 80C748A4  4B 6D 27 EC */	b PSVECAdd
/* 80C748A8  7E FB EA 14 */	add r23, r27, r29
/* 80C748AC  3B 17 07 00 */	addi r24, r23, 0x700
/* 80C748B0  7F 03 C3 78 */	mr r3, r24
/* 80C748B4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80C748B8  4B 5F A9 48 */	b SetR__8cM3dGCylFf
/* 80C748BC  7F 03 C3 78 */	mr r3, r24
/* 80C748C0  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80C748C4  4B 5F A9 34 */	b SetH__8cM3dGCylFf
/* 80C748C8  7F 03 C3 78 */	mr r3, r24
/* 80C748CC  38 81 00 14 */	addi r4, r1, 0x14
/* 80C748D0  4B 5F A9 0C */	b SetC__8cM3dGCylFRC4cXyz
/* 80C748D4  7F C3 F3 78 */	mr r3, r30
/* 80C748D8  38 97 05 DC */	addi r4, r23, 0x5dc
/* 80C748DC  4B 5F 02 CC */	b Set__4cCcSFP8cCcD_Obj
/* 80C748E0  3A D6 00 01 */	addi r22, r22, 1
/* 80C748E4  2C 16 00 06 */	cmpwi r22, 6
/* 80C748E8  3B BD 01 3C */	addi r29, r29, 0x13c
/* 80C748EC  41 80 FF 54 */	blt lbl_80C74840
/* 80C748F0  3B A0 00 00 */	li r29, 0
/* 80C748F4  C3 7F 00 44 */	lfs f27, 0x44(r31)
/* 80C748F8  C3 9F 00 3C */	lfs f28, 0x3c(r31)
/* 80C748FC  C3 BF 00 48 */	lfs f29, 0x48(r31)
/* 80C74900  CB DF 00 50 */	lfd f30, 0x50(r31)
/* 80C74904  3F 20 43 30 */	lis r25, 0x4330
/* 80C74908  C3 FF 00 40 */	lfs f31, 0x40(r31)
/* 80C7490C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C74910  3B 43 D4 70 */	addi r26, r3, now__14mDoMtx_stack_c@l
lbl_80C74914:
/* 80C74914  C0 1B 14 C0 */	lfs f0, 0x14c0(r27)
/* 80C74918  EC 1C 00 28 */	fsubs f0, f28, f0
/* 80C7491C  EC 3B 00 2A */	fadds f1, f27, f0
/* 80C74920  6F A0 80 00 */	xoris r0, r29, 0x8000
/* 80C74924  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C74928  93 21 00 20 */	stw r25, 0x20(r1)
/* 80C7492C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80C74930  EC 00 F0 28 */	fsubs f0, f0, f30
/* 80C74934  EC 1D 00 32 */	fmuls f0, f29, f0
/* 80C74938  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C7493C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C74940  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 80C74944  D3 E1 00 10 */	stfs f31, 0x10(r1)
/* 80C74948  7F 43 D3 78 */	mr r3, r26
/* 80C7494C  A8 9B 04 E4 */	lha r4, 0x4e4(r27)
/* 80C74950  A8 BB 04 E6 */	lha r5, 0x4e6(r27)
/* 80C74954  3C A5 00 01 */	addis r5, r5, 1
/* 80C74958  38 05 80 00 */	addi r0, r5, -32768
/* 80C7495C  7C 05 07 34 */	extsh r5, r0
/* 80C74960  A8 DB 04 E8 */	lha r6, 0x4e8(r27)
/* 80C74964  4B 39 78 A4 */	b mDoMtx_ZXYrotS__FPA4_fsss
/* 80C74968  7F 43 D3 78 */	mr r3, r26
/* 80C7496C  38 81 00 08 */	addi r4, r1, 8
/* 80C74970  7C 85 23 78 */	mr r5, r4
/* 80C74974  4B 6D 23 F8 */	b PSMTXMultVec
/* 80C74978  38 61 00 08 */	addi r3, r1, 8
/* 80C7497C  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80C74980  7C 65 1B 78 */	mr r5, r3
/* 80C74984  4B 6D 27 0C */	b PSVECAdd
/* 80C74988  38 1D 00 06 */	addi r0, r29, 6
/* 80C7498C  1C 00 01 3C */	mulli r0, r0, 0x13c
/* 80C74990  7F 1B 02 14 */	add r24, r27, r0
/* 80C74994  3A F8 07 00 */	addi r23, r24, 0x700
/* 80C74998  7E E3 BB 78 */	mr r3, r23
/* 80C7499C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80C749A0  4B 5F A8 60 */	b SetR__8cM3dGCylFf
/* 80C749A4  7E E3 BB 78 */	mr r3, r23
/* 80C749A8  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80C749AC  4B 5F A8 4C */	b SetH__8cM3dGCylFf
/* 80C749B0  7E E3 BB 78 */	mr r3, r23
/* 80C749B4  38 81 00 08 */	addi r4, r1, 8
/* 80C749B8  4B 5F A8 24 */	b SetC__8cM3dGCylFRC4cXyz
/* 80C749BC  7F C3 F3 78 */	mr r3, r30
/* 80C749C0  38 98 05 DC */	addi r4, r24, 0x5dc
/* 80C749C4  4B 5F 01 E4 */	b Set__4cCcSFP8cCcD_Obj
/* 80C749C8  3B BD 00 01 */	addi r29, r29, 1
/* 80C749CC  2C 1D 00 06 */	cmpwi r29, 6
/* 80C749D0  41 80 FF 44 */	blt lbl_80C74914
/* 80C749D4  80 7B 14 B4 */	lwz r3, 0x14b4(r27)
/* 80C749D8  38 03 00 24 */	addi r0, r3, 0x24
/* 80C749DC  90 1C 00 00 */	stw r0, 0(r28)
/* 80C749E0  7F 63 DB 78 */	mr r3, r27
/* 80C749E4  4B FF F6 21 */	bl setBaseMtx__13daLv6SwGate_cFv
/* 80C749E8  80 7B 14 C4 */	lwz r3, 0x14c4(r27)
/* 80C749EC  28 03 00 00 */	cmplwi r3, 0
/* 80C749F0  41 82 00 08 */	beq lbl_80C749F8
/* 80C749F4  4B 40 6F CC */	b Move__4dBgWFv
lbl_80C749F8:
/* 80C749F8  38 60 00 01 */	li r3, 1
/* 80C749FC  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 80C74A00  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 80C74A04  E3 C1 00 88 */	psq_l f30, 136(r1), 0, 0 /* qr0 */
/* 80C74A08  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 80C74A0C  E3 A1 00 78 */	psq_l f29, 120(r1), 0, 0 /* qr0 */
/* 80C74A10  CB A1 00 70 */	lfd f29, 0x70(r1)
/* 80C74A14  E3 81 00 68 */	psq_l f28, 104(r1), 0, 0 /* qr0 */
/* 80C74A18  CB 81 00 60 */	lfd f28, 0x60(r1)
/* 80C74A1C  E3 61 00 58 */	psq_l f27, 88(r1), 0, 0 /* qr0 */
/* 80C74A20  CB 61 00 50 */	lfd f27, 0x50(r1)
/* 80C74A24  39 61 00 50 */	addi r11, r1, 0x50
/* 80C74A28  4B 6E D7 E4 */	b _restgpr_22
/* 80C74A2C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80C74A30  7C 08 03 A6 */	mtlr r0
/* 80C74A34  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80C74A38  4E 80 00 20 */	blr 

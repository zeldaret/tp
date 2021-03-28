lbl_80C4466C:
/* 80C4466C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80C44670  7C 08 02 A6 */	mflr r0
/* 80C44674  90 01 00 84 */	stw r0, 0x84(r1)
/* 80C44678  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80C4467C  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80C44680  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80C44684  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 80C44688  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 80C4468C  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 80C44690  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 80C44694  F3 81 00 48 */	psq_st f28, 72(r1), 0, 0 /* qr0 */
/* 80C44698  39 61 00 40 */	addi r11, r1, 0x40
/* 80C4469C  4B 71 DB 2C */	b _savegpr_24
/* 80C446A0  7C 7E 1B 78 */	mr r30, r3
/* 80C446A4  3C 80 80 C4 */	lis r4, lit_3790@ha
/* 80C446A8  3B E4 4B 40 */	addi r31, r4, lit_3790@l
/* 80C446AC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C446B0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C446B4  40 82 00 60 */	bne lbl_80C44714
/* 80C446B8  7F C0 F3 79 */	or. r0, r30, r30
/* 80C446BC  41 82 00 4C */	beq lbl_80C44708
/* 80C446C0  7C 18 03 78 */	mr r24, r0
/* 80C446C4  4B 3D 44 A0 */	b __ct__10fopAc_ac_cFv
/* 80C446C8  38 78 05 8C */	addi r3, r24, 0x58c
/* 80C446CC  3C 80 80 C4 */	lis r4, __ct__5csXyzFv@ha
/* 80C446D0  38 84 4A A4 */	addi r4, r4, __ct__5csXyzFv@l
/* 80C446D4  3C A0 80 C4 */	lis r5, __dt__5csXyzFv@ha
/* 80C446D8  38 A5 43 E0 */	addi r5, r5, __dt__5csXyzFv@l
/* 80C446DC  38 C0 00 06 */	li r6, 6
/* 80C446E0  38 E0 00 03 */	li r7, 3
/* 80C446E4  4B 71 D6 7C */	b __construct_array
/* 80C446E8  38 78 05 A4 */	addi r3, r24, 0x5a4
/* 80C446EC  3C 80 80 C4 */	lis r4, __ct__7sq_cp_sFv@ha
/* 80C446F0  38 84 4A 58 */	addi r4, r4, __ct__7sq_cp_sFv@l
/* 80C446F4  3C A0 80 C4 */	lis r5, __dt__7sq_cp_sFv@ha
/* 80C446F8  38 A5 49 F8 */	addi r5, r5, __dt__7sq_cp_sFv@l
/* 80C446FC  38 C0 00 30 */	li r6, 0x30
/* 80C44700  38 E0 00 03 */	li r7, 3
/* 80C44704  4B 71 D6 5C */	b __construct_array
lbl_80C44708:
/* 80C44708  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80C4470C  60 00 00 08 */	ori r0, r0, 8
/* 80C44710  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80C44714:
/* 80C44714  38 7E 05 68 */	addi r3, r30, 0x568
/* 80C44718  3C 80 80 C4 */	lis r4, stringBase0@ha
/* 80C4471C  38 84 4B 88 */	addi r4, r4, stringBase0@l
/* 80C44720  4B 3E 87 9C */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C44724  7C 7D 1B 78 */	mr r29, r3
/* 80C44728  2C 1D 00 04 */	cmpwi r29, 4
/* 80C4472C  40 82 02 90 */	bne lbl_80C449BC
/* 80C44730  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C44734  98 1E 05 70 */	stb r0, 0x570(r30)
/* 80C44738  88 1E 05 70 */	lbz r0, 0x570(r30)
/* 80C4473C  28 00 00 00 */	cmplwi r0, 0
/* 80C44740  41 82 00 0C */	beq lbl_80C4474C
/* 80C44744  38 00 00 01 */	li r0, 1
/* 80C44748  98 1E 05 70 */	stb r0, 0x570(r30)
lbl_80C4474C:
/* 80C4474C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C44750  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80C44754  98 1E 05 71 */	stb r0, 0x571(r30)
/* 80C44758  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C4475C  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80C44760  98 1E 05 72 */	stb r0, 0x572(r30)
/* 80C44764  7F C3 F3 78 */	mr r3, r30
/* 80C44768  3C 80 80 C4 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 80C4476C  38 84 44 8C */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 80C44770  3C A0 00 05 */	lis r5, 0x0005 /* 0x0004B000@ha */
/* 80C44774  38 A5 B0 00 */	addi r5, r5, 0xB000 /* 0x0004B000@l */
/* 80C44778  4B 3D 5D 38 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80C4477C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C44780  40 82 00 0C */	bne lbl_80C4478C
/* 80C44784  38 60 00 05 */	li r3, 5
/* 80C44788  48 00 02 38 */	b lbl_80C449C0
lbl_80C4478C:
/* 80C4478C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C44790  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C44794  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C44798  80 9E 06 68 */	lwz r4, 0x668(r30)
/* 80C4479C  7F C5 F3 78 */	mr r5, r30
/* 80C447A0  4B 43 02 68 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80C447A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C447A8  41 82 00 0C */	beq lbl_80C447B4
/* 80C447AC  38 60 00 05 */	li r3, 5
/* 80C447B0  48 00 02 10 */	b lbl_80C449C0
lbl_80C447B4:
/* 80C447B4  3C 60 80 C4 */	lis r3, data_80C44C08@ha
/* 80C447B8  8C 03 4C 08 */	lbzu r0, data_80C44C08@l(r3)
/* 80C447BC  28 00 00 00 */	cmplwi r0, 0
/* 80C447C0  40 82 00 20 */	bne lbl_80C447E0
/* 80C447C4  38 00 00 01 */	li r0, 1
/* 80C447C8  98 1E 06 6C */	stb r0, 0x66c(r30)
/* 80C447CC  98 03 00 00 */	stb r0, 0(r3)
/* 80C447D0  38 00 FF FF */	li r0, -1
/* 80C447D4  3C 60 80 C4 */	lis r3, l_HIO@ha
/* 80C447D8  38 63 4C 18 */	addi r3, r3, l_HIO@l
/* 80C447DC  98 03 00 04 */	stb r0, 4(r3)
lbl_80C447E0:
/* 80C447E0  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80C447E4  80 63 00 04 */	lwz r3, 4(r3)
/* 80C447E8  38 03 00 24 */	addi r0, r3, 0x24
/* 80C447EC  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80C447F0  88 1E 05 71 */	lbz r0, 0x571(r30)
/* 80C447F4  28 00 00 FF */	cmplwi r0, 0xff
/* 80C447F8  41 82 00 34 */	beq lbl_80C4482C
/* 80C447FC  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 80C44800  C8 3F 00 40 */	lfd f1, 0x40(r31)
/* 80C44804  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80C44808  3C 00 43 30 */	lis r0, 0x4330
/* 80C4480C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80C44810  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80C44814  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C44818  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C4481C  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 80C44820  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80C44824  D0 1E 04 F4 */	stfs f0, 0x4f4(r30)
/* 80C44828  48 00 00 20 */	b lbl_80C44848
lbl_80C4482C:
/* 80C4482C  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80C44830  4B 62 31 5C */	b cM_rndFX__Ff
/* 80C44834  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80C44838  EC 00 08 2A */	fadds f0, f0, f1
/* 80C4483C  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 80C44840  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80C44844  D0 1E 04 F4 */	stfs f0, 0x4f4(r30)
lbl_80C44848:
/* 80C44848  88 1E 05 72 */	lbz r0, 0x572(r30)
/* 80C4484C  28 00 00 FF */	cmplwi r0, 0xff
/* 80C44850  41 82 00 2C */	beq lbl_80C4487C
/* 80C44854  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 80C44858  C8 3F 00 40 */	lfd f1, 0x40(r31)
/* 80C4485C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80C44860  3C 00 43 30 */	lis r0, 0x4330
/* 80C44864  90 01 00 18 */	stw r0, 0x18(r1)
/* 80C44868  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80C4486C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C44870  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C44874  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
/* 80C44878  48 00 00 18 */	b lbl_80C44890
lbl_80C4487C:
/* 80C4487C  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80C44880  4B 62 31 0C */	b cM_rndFX__Ff
/* 80C44884  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80C44888  EC 00 08 2A */	fadds f0, f0, f1
/* 80C4488C  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
lbl_80C44890:
/* 80C44890  3B 00 00 00 */	li r24, 0
/* 80C44894  3B 80 00 00 */	li r28, 0
/* 80C44898  3B 60 00 00 */	li r27, 0
/* 80C4489C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80C448A0  3B 43 07 68 */	addi r26, r3, calc_mtx@l
/* 80C448A4  C3 9F 00 1C */	lfs f28, 0x1c(r31)
/* 80C448A8  C3 BF 00 00 */	lfs f29, 0(r31)
/* 80C448AC  C3 DF 00 20 */	lfs f30, 0x20(r31)
/* 80C448B0  C3 FF 00 24 */	lfs f31, 0x24(r31)
lbl_80C448B4:
/* 80C448B4  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80C448B8  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80C448BC  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80C448C0  38 60 00 00 */	li r3, 0
/* 80C448C4  4B 62 C5 98 */	b MtxTrans__FfffUc
/* 80C448C8  80 7A 00 00 */	lwz r3, 0(r26)
/* 80C448CC  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80C448D0  38 1B 17 70 */	addi r0, r27, 0x1770
/* 80C448D4  7C 04 02 14 */	add r0, r4, r0
/* 80C448D8  7C 04 07 34 */	extsh r4, r0
/* 80C448DC  4B 3C 7B 58 */	b mDoMtx_YrotM__FPA4_fs
/* 80C448E0  C0 3E 04 EC */	lfs f1, 0x4ec(r30)
/* 80C448E4  C0 5E 04 F0 */	lfs f2, 0x4f0(r30)
/* 80C448E8  C0 7E 04 F4 */	lfs f3, 0x4f4(r30)
/* 80C448EC  38 60 00 01 */	li r3, 1
/* 80C448F0  4B 62 C5 B4 */	b MtxScale__FfffUc
/* 80C448F4  D3 81 00 08 */	stfs f28, 8(r1)
/* 80C448F8  D3 81 00 0C */	stfs f28, 0xc(r1)
/* 80C448FC  D3 A1 00 10 */	stfs f29, 0x10(r1)
/* 80C44900  38 61 00 08 */	addi r3, r1, 8
/* 80C44904  7F 3E E2 14 */	add r25, r30, r28
/* 80C44908  38 99 05 A4 */	addi r4, r25, 0x5a4
/* 80C4490C  4B 62 C5 E0 */	b MtxPosition__FP4cXyzP4cXyz
/* 80C44910  D3 C1 00 0C */	stfs f30, 0xc(r1)
/* 80C44914  D3 E1 00 10 */	stfs f31, 0x10(r1)
/* 80C44918  38 61 00 08 */	addi r3, r1, 8
/* 80C4491C  38 99 05 B0 */	addi r4, r25, 0x5b0
/* 80C44920  4B 62 C5 CC */	b MtxPosition__FP4cXyzP4cXyz
/* 80C44924  2C 18 00 00 */	cmpwi r24, 0
/* 80C44928  40 82 00 24 */	bne lbl_80C4494C
/* 80C4492C  88 1E 05 70 */	lbz r0, 0x570(r30)
/* 80C44930  28 00 00 01 */	cmplwi r0, 1
/* 80C44934  40 82 00 18 */	bne lbl_80C4494C
/* 80C44938  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80C4493C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C44940  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80C44944  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C44948  48 00 00 14 */	b lbl_80C4495C
lbl_80C4494C:
/* 80C4494C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80C44950  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C44954  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80C44958  D0 01 00 10 */	stfs f0, 0x10(r1)
lbl_80C4495C:
/* 80C4495C  38 61 00 08 */	addi r3, r1, 8
/* 80C44960  38 99 05 BC */	addi r4, r25, 0x5bc
/* 80C44964  4B 62 C5 88 */	b MtxPosition__FP4cXyzP4cXyz
/* 80C44968  2C 18 00 00 */	cmpwi r24, 0
/* 80C4496C  40 82 00 1C */	bne lbl_80C44988
/* 80C44970  88 1E 05 70 */	lbz r0, 0x570(r30)
/* 80C44974  28 00 00 01 */	cmplwi r0, 1
/* 80C44978  40 82 00 10 */	bne lbl_80C44988
/* 80C4497C  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80C44980  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C44984  48 00 00 0C */	b lbl_80C44990
lbl_80C44988:
/* 80C44988  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80C4498C  D0 01 00 0C */	stfs f0, 0xc(r1)
lbl_80C44990:
/* 80C44990  D3 81 00 10 */	stfs f28, 0x10(r1)
/* 80C44994  38 61 00 08 */	addi r3, r1, 8
/* 80C44998  38 99 05 C8 */	addi r4, r25, 0x5c8
/* 80C4499C  4B 62 C5 50 */	b MtxPosition__FP4cXyzP4cXyz
/* 80C449A0  3B 18 00 01 */	addi r24, r24, 1
/* 80C449A4  2C 18 00 03 */	cmpwi r24, 3
/* 80C449A8  3B 9C 00 30 */	addi r28, r28, 0x30
/* 80C449AC  3B 7B 55 55 */	addi r27, r27, 0x5555
/* 80C449B0  41 80 FF 04 */	blt lbl_80C448B4
/* 80C449B4  7F C3 F3 78 */	mr r3, r30
/* 80C449B8  4B FF F7 11 */	bl daObj_Ki_Execute__FP12obj_ki_class
lbl_80C449BC:
/* 80C449BC  7F A3 EB 78 */	mr r3, r29
lbl_80C449C0:
/* 80C449C0  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80C449C4  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80C449C8  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 80C449CC  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80C449D0  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 80C449D4  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 80C449D8  E3 81 00 48 */	psq_l f28, 72(r1), 0, 0 /* qr0 */
/* 80C449DC  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 80C449E0  39 61 00 40 */	addi r11, r1, 0x40
/* 80C449E4  4B 71 D8 30 */	b _restgpr_24
/* 80C449E8  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80C449EC  7C 08 03 A6 */	mtlr r0
/* 80C449F0  38 21 00 80 */	addi r1, r1, 0x80
/* 80C449F4  4E 80 00 20 */	blr 

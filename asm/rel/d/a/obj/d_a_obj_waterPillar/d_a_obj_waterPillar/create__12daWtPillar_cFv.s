lbl_80D2C960:
/* 80D2C960  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D2C964  7C 08 02 A6 */	mflr r0
/* 80D2C968  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D2C96C  39 61 00 30 */	addi r11, r1, 0x30
/* 80D2C970  4B 63 58 69 */	bl _savegpr_28
/* 80D2C974  7C 7C 1B 78 */	mr r28, r3
/* 80D2C978  3C 80 80 D3 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80D2E84C@ha */
/* 80D2C97C  3B C4 E8 4C */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x80D2E84C@l */
/* 80D2C980  3C 80 80 D3 */	lis r4, lit_3645@ha /* 0x80D2E770@ha */
/* 80D2C984  3B E4 E7 70 */	addi r31, r4, lit_3645@l /* 0x80D2E770@l */
/* 80D2C988  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D2C98C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D2C990  40 82 00 1C */	bne lbl_80D2C9AC
/* 80D2C994  28 1C 00 00 */	cmplwi r28, 0
/* 80D2C998  41 82 00 08 */	beq lbl_80D2C9A0
/* 80D2C99C  48 00 16 B9 */	bl __ct__12daWtPillar_cFv
lbl_80D2C9A0:
/* 80D2C9A0  80 1C 04 A0 */	lwz r0, 0x4a0(r28)
/* 80D2C9A4  60 00 00 08 */	ori r0, r0, 8
/* 80D2C9A8  90 1C 04 A0 */	stw r0, 0x4a0(r28)
lbl_80D2C9AC:
/* 80D2C9AC  38 7C 05 84 */	addi r3, r28, 0x584
/* 80D2C9B0  3C 80 80 D3 */	lis r4, d_a_obj_waterPillar__stringBase0@ha /* 0x80D2E844@ha */
/* 80D2C9B4  38 84 E8 44 */	addi r4, r4, d_a_obj_waterPillar__stringBase0@l /* 0x80D2E844@l */
/* 80D2C9B8  4B 30 05 05 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D2C9BC  7C 7D 1B 78 */	mr r29, r3
/* 80D2C9C0  2C 1D 00 04 */	cmpwi r29, 4
/* 80D2C9C4  40 82 02 2C */	bne lbl_80D2CBF0
/* 80D2C9C8  7F 83 E3 78 */	mr r3, r28
/* 80D2C9CC  3C 80 80 D3 */	lis r4, createHeapCallBack__12daWtPillar_cFP10fopAc_ac_c@ha /* 0x80D2C838@ha */
/* 80D2C9D0  38 84 C8 38 */	addi r4, r4, createHeapCallBack__12daWtPillar_cFP10fopAc_ac_c@l /* 0x80D2C838@l */
/* 80D2C9D4  38 A0 20 00 */	li r5, 0x2000
/* 80D2C9D8  4B 2E DA D9 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80D2C9DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D2C9E0  40 82 00 0C */	bne lbl_80D2C9EC
/* 80D2C9E4  38 60 00 05 */	li r3, 5
/* 80D2C9E8  48 00 02 0C */	b lbl_80D2CBF4
lbl_80D2C9EC:
/* 80D2C9EC  38 7C 07 DC */	addi r3, r28, 0x7dc
/* 80D2C9F0  38 80 00 FE */	li r4, 0xfe
/* 80D2C9F4  38 A0 00 FF */	li r5, 0xff
/* 80D2C9F8  7F 86 E3 78 */	mr r6, r28
/* 80D2C9FC  4B 35 6E 65 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80D2CA00  38 7C 09 5C */	addi r3, r28, 0x95c
/* 80D2CA04  38 9E 00 84 */	addi r4, r30, 0x84
/* 80D2CA08  4B 35 7E AD */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80D2CA0C  38 1C 07 DC */	addi r0, r28, 0x7dc
/* 80D2CA10  90 1C 09 A0 */	stw r0, 0x9a0(r28)
/* 80D2CA14  38 7C 08 18 */	addi r3, r28, 0x818
/* 80D2CA18  38 9E 00 38 */	addi r4, r30, 0x38
/* 80D2CA1C  4B 35 7D B5 */	bl Set__8dCcD_CpsFRC11dCcD_SrcCps
/* 80D2CA20  38 1C 07 DC */	addi r0, r28, 0x7dc
/* 80D2CA24  90 1C 08 5C */	stw r0, 0x85c(r28)
/* 80D2CA28  38 9E 00 20 */	addi r4, r30, 0x20
/* 80D2CA2C  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80D2CA30  C0 5C 04 F0 */	lfs f2, 0x4f0(r28)
/* 80D2CA34  EC A0 00 B2 */	fmuls f5, f0, f2
/* 80D2CA38  C0 9C 04 EC */	lfs f4, 0x4ec(r28)
/* 80D2CA3C  7F 83 E3 78 */	mr r3, r28
/* 80D2CA40  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80D2CA44  EC 20 01 32 */	fmuls f1, f0, f4
/* 80D2CA48  C0 04 00 04 */	lfs f0, 4(r4)
/* 80D2CA4C  EC 40 00 B2 */	fmuls f2, f0, f2
/* 80D2CA50  C0 04 00 08 */	lfs f0, 8(r4)
/* 80D2CA54  EC 60 01 32 */	fmuls f3, f0, f4
/* 80D2CA58  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80D2CA5C  EC 80 01 32 */	fmuls f4, f0, f4
/* 80D2CA60  FC C0 28 90 */	fmr f6, f5
/* 80D2CA64  4B 2E DA E5 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80D2CA68  38 7C 07 9C */	addi r3, r28, 0x79c
/* 80D2CA6C  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80D2CA70  C0 5F 00 84 */	lfs f2, 0x84(r31)
/* 80D2CA74  4B 34 94 E5 */	bl SetWall__12dBgS_AcchCirFff
/* 80D2CA78  38 00 00 00 */	li r0, 0
/* 80D2CA7C  90 01 00 08 */	stw r0, 8(r1)
/* 80D2CA80  38 7C 05 C4 */	addi r3, r28, 0x5c4
/* 80D2CA84  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80D2CA88  38 BC 04 BC */	addi r5, r28, 0x4bc
/* 80D2CA8C  7F 86 E3 78 */	mr r6, r28
/* 80D2CA90  38 E0 00 01 */	li r7, 1
/* 80D2CA94  39 1C 07 9C */	addi r8, r28, 0x79c
/* 80D2CA98  39 3C 04 F8 */	addi r9, r28, 0x4f8
/* 80D2CA9C  39 40 00 00 */	li r10, 0
/* 80D2CAA0  4B 34 97 A9 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80D2CAA4  80 1C 05 F0 */	lwz r0, 0x5f0(r28)
/* 80D2CAA8  54 00 05 A8 */	rlwinm r0, r0, 0, 0x16, 0x14
/* 80D2CAAC  90 1C 05 F0 */	stw r0, 0x5f0(r28)
/* 80D2CAB0  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80D2CAB4  D0 1C 06 94 */	stfs f0, 0x694(r28)
/* 80D2CAB8  80 1C 05 F0 */	lwz r0, 0x5f0(r28)
/* 80D2CABC  60 00 40 00 */	ori r0, r0, 0x4000
/* 80D2CAC0  90 1C 05 F0 */	stw r0, 0x5f0(r28)
/* 80D2CAC4  38 00 00 00 */	li r0, 0
/* 80D2CAC8  98 1C 0B 79 */	stb r0, 0xb79(r28)
/* 80D2CACC  98 1C 0B 78 */	stb r0, 0xb78(r28)
/* 80D2CAD0  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80D2CAD4  98 1C 0B 08 */	stb r0, 0xb08(r28)
/* 80D2CAD8  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80D2CADC  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 80D2CAE0  98 1C 0B 09 */	stb r0, 0xb09(r28)
/* 80D2CAE4  C0 5F 00 8C */	lfs f2, 0x8c(r31)
/* 80D2CAE8  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80D2CAEC  54 00 2E FE */	srwi r0, r0, 0x1b
/* 80D2CAF0  C8 3F 00 98 */	lfd f1, 0x98(r31)
/* 80D2CAF4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80D2CAF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2CAFC  3C 00 43 30 */	lis r0, 0x4330
/* 80D2CB00  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D2CB04  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80D2CB08  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D2CB0C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80D2CB10  D0 1C 0B 14 */	stfs f0, 0xb14(r28)
/* 80D2CB14  38 7C 05 C4 */	addi r3, r28, 0x5c4
/* 80D2CB18  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D2CB1C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D2CB20  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80D2CB24  4B 34 9F 89 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80D2CB28  80 1C 05 F0 */	lwz r0, 0x5f0(r28)
/* 80D2CB2C  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 80D2CB30  41 82 00 30 */	beq lbl_80D2CB60
/* 80D2CB34  88 1C 0B 09 */	lbz r0, 0xb09(r28)
/* 80D2CB38  28 00 00 01 */	cmplwi r0, 1
/* 80D2CB3C  40 82 00 24 */	bne lbl_80D2CB60
/* 80D2CB40  C0 3C 07 90 */	lfs f1, 0x790(r28)
/* 80D2CB44  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80D2CB48  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D2CB4C  D0 1C 0B 1C */	stfs f0, 0xb1c(r28)
/* 80D2CB50  C0 3C 0B 14 */	lfs f1, 0xb14(r28)
/* 80D2CB54  C0 1C 0B 1C */	lfs f0, 0xb1c(r28)
/* 80D2CB58  EC 01 00 2A */	fadds f0, f1, f0
/* 80D2CB5C  D0 1C 0B 14 */	stfs f0, 0xb14(r28)
lbl_80D2CB60:
/* 80D2CB60  38 00 00 00 */	li r0, 0
/* 80D2CB64  98 1C 0B 44 */	stb r0, 0xb44(r28)
/* 80D2CB68  98 1C 0B 45 */	stb r0, 0xb45(r28)
/* 80D2CB6C  98 1C 0B 46 */	stb r0, 0xb46(r28)
/* 80D2CB70  90 1C 0B 20 */	stw r0, 0xb20(r28)
/* 80D2CB74  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80D2CB78  D0 1C 0B 24 */	stfs f0, 0xb24(r28)
/* 80D2CB7C  D0 1C 0B 28 */	stfs f0, 0xb28(r28)
/* 80D2CB80  D0 1C 0B 2C */	stfs f0, 0xb2c(r28)
/* 80D2CB84  D0 1C 0B 34 */	stfs f0, 0xb34(r28)
/* 80D2CB88  D0 1C 0B 30 */	stfs f0, 0xb30(r28)
/* 80D2CB8C  D0 1C 0B 38 */	stfs f0, 0xb38(r28)
/* 80D2CB90  D0 1C 0B 3C */	stfs f0, 0xb3c(r28)
/* 80D2CB94  D0 1C 0B 40 */	stfs f0, 0xb40(r28)
/* 80D2CB98  D0 1C 0A E0 */	stfs f0, 0xae0(r28)
/* 80D2CB9C  88 1C 0B 08 */	lbz r0, 0xb08(r28)
/* 80D2CBA0  28 00 00 FF */	cmplwi r0, 0xff
/* 80D2CBA4  41 82 00 10 */	beq lbl_80D2CBB4
/* 80D2CBA8  7F 83 E3 78 */	mr r3, r28
/* 80D2CBAC  48 00 08 51 */	bl actionSwWaitInit__12daWtPillar_cFv
/* 80D2CBB0  48 00 00 38 */	b lbl_80D2CBE8
lbl_80D2CBB4:
/* 80D2CBB4  88 1C 0B 09 */	lbz r0, 0xb09(r28)
/* 80D2CBB8  28 00 00 00 */	cmplwi r0, 0
/* 80D2CBBC  40 82 00 24 */	bne lbl_80D2CBE0
/* 80D2CBC0  C0 1C 0B 14 */	lfs f0, 0xb14(r28)
/* 80D2CBC4  D0 1C 0A E0 */	stfs f0, 0xae0(r28)
/* 80D2CBC8  38 00 00 01 */	li r0, 1
/* 80D2CBCC  98 1C 0B 44 */	stb r0, 0xb44(r28)
/* 80D2CBD0  98 1C 0B 45 */	stb r0, 0xb45(r28)
/* 80D2CBD4  7F 83 E3 78 */	mr r3, r28
/* 80D2CBD8  48 00 0F 91 */	bl actionRockWaitInit__12daWtPillar_cFv
/* 80D2CBDC  48 00 00 0C */	b lbl_80D2CBE8
lbl_80D2CBE0:
/* 80D2CBE0  7F 83 E3 78 */	mr r3, r28
/* 80D2CBE4  48 00 09 DD */	bl actionUpFirstInit__12daWtPillar_cFv
lbl_80D2CBE8:
/* 80D2CBE8  7F 83 E3 78 */	mr r3, r28
/* 80D2CBEC  4B FF FB C5 */	bl setBaseMtx__12daWtPillar_cFv
lbl_80D2CBF0:
/* 80D2CBF0  7F A3 EB 78 */	mr r3, r29
lbl_80D2CBF4:
/* 80D2CBF4  39 61 00 30 */	addi r11, r1, 0x30
/* 80D2CBF8  4B 63 56 2D */	bl _restgpr_28
/* 80D2CBFC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D2CC00  7C 08 03 A6 */	mtlr r0
/* 80D2CC04  38 21 00 30 */	addi r1, r1, 0x30
/* 80D2CC08  4E 80 00 20 */	blr 

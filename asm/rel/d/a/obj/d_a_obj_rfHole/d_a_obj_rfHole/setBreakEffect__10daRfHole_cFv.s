lbl_80CB9768:
/* 80CB9768  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80CB976C  7C 08 02 A6 */	mflr r0
/* 80CB9770  90 01 00 64 */	stw r0, 0x64(r1)
/* 80CB9774  39 61 00 60 */	addi r11, r1, 0x60
/* 80CB9778  4B 6A 8A 58 */	b _savegpr_26
/* 80CB977C  7C 7F 1B 78 */	mr r31, r3
/* 80CB9780  3C 60 80 CC */	lis r3, lit_3649@ha
/* 80CB9784  3B 63 9A 84 */	addi r27, r3, lit_3649@l
/* 80CB9788  3C 60 80 CC */	lis r3, l_HIO@ha
/* 80CB978C  38 63 9B F4 */	addi r3, r3, l_HIO@l
/* 80CB9790  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80CB9794  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80CB9798  C0 1B 00 08 */	lfs f0, 8(r27)
/* 80CB979C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80CB97A0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80CB97A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CB97A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CB97AC  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80CB97B0  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80CB97B4  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80CB97B8  4B 35 2A 50 */	b mDoMtx_ZXYrotS__FPA4_fsss
/* 80CB97BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CB97C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CB97C4  38 81 00 38 */	addi r4, r1, 0x38
/* 80CB97C8  7C 85 23 78 */	mr r5, r4
/* 80CB97CC  4B 68 D5 A0 */	b PSMTXMultVec
/* 80CB97D0  38 61 00 20 */	addi r3, r1, 0x20
/* 80CB97D4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80CB97D8  38 A1 00 38 */	addi r5, r1, 0x38
/* 80CB97DC  4B 5A D3 08 */	b __pl__4cXyzCFRC3Vec
/* 80CB97E0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80CB97E4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80CB97E8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80CB97EC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80CB97F0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80CB97F4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80CB97F8  3B 40 00 00 */	li r26, 0
/* 80CB97FC  3B C0 00 00 */	li r30, 0
/* 80CB9800  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CB9804  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 80CB9808  3B BB 00 30 */	addi r29, r27, 0x30
lbl_80CB980C:
/* 80CB980C  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80CB9810  38 80 00 00 */	li r4, 0
/* 80CB9814  90 81 00 08 */	stw r4, 8(r1)
/* 80CB9818  38 00 FF FF */	li r0, -1
/* 80CB981C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CB9820  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CB9824  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CB9828  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CB982C  38 80 00 00 */	li r4, 0
/* 80CB9830  7C BD F2 2E */	lhzx r5, r29, r30
/* 80CB9834  38 C1 00 2C */	addi r6, r1, 0x2c
/* 80CB9838  38 E0 00 00 */	li r7, 0
/* 80CB983C  39 00 00 00 */	li r8, 0
/* 80CB9840  39 3F 04 EC */	addi r9, r31, 0x4ec
/* 80CB9844  39 40 00 FF */	li r10, 0xff
/* 80CB9848  C0 3B 00 28 */	lfs f1, 0x28(r27)
/* 80CB984C  4B 39 32 44 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CB9850  3B 5A 00 01 */	addi r26, r26, 1
/* 80CB9854  2C 1A 00 05 */	cmpwi r26, 5
/* 80CB9858  3B DE 00 02 */	addi r30, r30, 2
/* 80CB985C  41 80 FF B0 */	blt lbl_80CB980C
/* 80CB9860  39 61 00 60 */	addi r11, r1, 0x60
/* 80CB9864  4B 6A 89 B8 */	b _restgpr_26
/* 80CB9868  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80CB986C  7C 08 03 A6 */	mtlr r0
/* 80CB9870  38 21 00 60 */	addi r1, r1, 0x60
/* 80CB9874  4E 80 00 20 */	blr 

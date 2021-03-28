lbl_80C95768:
/* 80C95768  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80C9576C  7C 08 02 A6 */	mflr r0
/* 80C95770  90 01 00 64 */	stw r0, 0x64(r1)
/* 80C95774  39 61 00 60 */	addi r11, r1, 0x60
/* 80C95778  4B 6C CA 4C */	b _savegpr_23
/* 80C9577C  7C 7E 1B 78 */	mr r30, r3
/* 80C95780  3C 60 80 C9 */	lis r3, lit_1109@ha
/* 80C95784  3B E3 5C D0 */	addi r31, r3, lit_1109@l
/* 80C95788  88 1F 00 5C */	lbz r0, 0x5c(r31)
/* 80C9578C  7C 00 07 75 */	extsb. r0, r0
/* 80C95790  40 82 00 34 */	bne lbl_80C957C4
/* 80C95794  3C 60 80 C9 */	lis r3, lit_4594@ha
/* 80C95798  C0 03 5B 78 */	lfs f0, lit_4594@l(r3)
/* 80C9579C  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 80C957A0  38 7F 00 60 */	addi r3, r31, 0x60
/* 80C957A4  D0 03 00 04 */	stfs f0, 4(r3)
/* 80C957A8  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C957AC  3C 80 80 C9 */	lis r4, __dt__4cXyzFv@ha
/* 80C957B0  38 84 45 3C */	addi r4, r4, __dt__4cXyzFv@l
/* 80C957B4  38 BF 00 50 */	addi r5, r31, 0x50
/* 80C957B8  4B FF E7 A1 */	bl __register_global_object
/* 80C957BC  38 00 00 01 */	li r0, 1
/* 80C957C0  98 1F 00 5C */	stb r0, 0x5c(r31)
lbl_80C957C4:
/* 80C957C4  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80C957C8  C0 3E 0A 04 */	lfs f1, 0xa04(r30)
/* 80C957CC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C957D0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C957D4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80C957D8  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80C957DC  3A E0 00 00 */	li r23, 0
/* 80C957E0  3B A0 00 00 */	li r29, 0
/* 80C957E4  3B 80 00 00 */	li r28, 0
/* 80C957E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C957EC  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l
/* 80C957F0  3C 60 80 C9 */	lis r3, emttrId@ha
/* 80C957F4  3B 43 5B DC */	addi r26, r3, emttrId@l
/* 80C957F8  3C 60 80 C9 */	lis r3, lit_4389@ha
/* 80C957FC  3B 63 5B 30 */	addi r27, r3, lit_4389@l
lbl_80C95800:
/* 80C95800  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 80C95804  38 00 00 FF */	li r0, 0xff
/* 80C95808  90 01 00 08 */	stw r0, 8(r1)
/* 80C9580C  38 80 00 00 */	li r4, 0
/* 80C95810  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C95814  38 00 FF FF */	li r0, -1
/* 80C95818  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C9581C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C95820  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C95824  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C95828  3B 1C 0A 20 */	addi r24, r28, 0xa20
/* 80C9582C  7C 9E C0 2E */	lwzx r4, r30, r24
/* 80C95830  38 A0 00 00 */	li r5, 0
/* 80C95834  7C DA EA 2E */	lhzx r6, r26, r29
/* 80C95838  38 E1 00 20 */	addi r7, r1, 0x20
/* 80C9583C  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80C95840  39 20 00 00 */	li r9, 0
/* 80C95844  39 5F 00 60 */	addi r10, r31, 0x60
/* 80C95848  C0 3B 00 00 */	lfs f1, 0(r27)
/* 80C9584C  4B 3B 7C 80 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C95850  7C 7E C1 2E */	stwx r3, r30, r24
/* 80C95854  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 80C95858  38 63 02 10 */	addi r3, r3, 0x210
/* 80C9585C  7C 9E C0 2E */	lwzx r4, r30, r24
/* 80C95860  4B 3B 60 54 */	b forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 80C95864  3A F7 00 01 */	addi r23, r23, 1
/* 80C95868  2C 17 00 04 */	cmpwi r23, 4
/* 80C9586C  3B BD 00 02 */	addi r29, r29, 2
/* 80C95870  3B 9C 00 04 */	addi r28, r28, 4
/* 80C95874  41 80 FF 8C */	blt lbl_80C95800
/* 80C95878  39 61 00 60 */	addi r11, r1, 0x60
/* 80C9587C  4B 6C C9 94 */	b _restgpr_23
/* 80C95880  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80C95884  7C 08 03 A6 */	mtlr r0
/* 80C95888  38 21 00 60 */	addi r1, r1, 0x60
/* 80C9588C  4E 80 00 20 */	blr 

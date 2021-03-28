lbl_80817744:
/* 80817744  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80817748  7C 08 02 A6 */	mflr r0
/* 8081774C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80817750  39 61 00 60 */	addi r11, r1, 0x60
/* 80817754  4B B4 AA 70 */	b _savegpr_23
/* 80817758  7C 7E 1B 78 */	mr r30, r3
/* 8081775C  3C 60 80 82 */	lis r3, lit_1109@ha
/* 80817760  3B E3 1E 18 */	addi r31, r3, lit_1109@l
/* 80817764  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80817768  C0 3E 06 CC */	lfs f1, 0x6cc(r30)
/* 8081776C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80817770  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80817774  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80817778  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8081777C  88 1F 01 E0 */	lbz r0, 0x1e0(r31)
/* 80817780  7C 00 07 75 */	extsb. r0, r0
/* 80817784  40 82 00 34 */	bne lbl_808177B8
/* 80817788  38 7F 00 4C */	addi r3, r31, 0x4c
/* 8081778C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80817790  D0 1F 01 E4 */	stfs f0, 0x1e4(r31)
/* 80817794  38 7F 01 E4 */	addi r3, r31, 0x1e4
/* 80817798  D0 03 00 04 */	stfs f0, 4(r3)
/* 8081779C  D0 03 00 08 */	stfs f0, 8(r3)
/* 808177A0  3C 80 80 81 */	lis r4, __dt__4cXyzFv@ha
/* 808177A4  38 84 64 B4 */	addi r4, r4, __dt__4cXyzFv@l
/* 808177A8  38 BF 01 D4 */	addi r5, r31, 0x1d4
/* 808177AC  4B FF E8 ED */	bl __register_global_object
/* 808177B0  38 00 00 01 */	li r0, 1
/* 808177B4  98 1F 01 E0 */	stb r0, 0x1e0(r31)
lbl_808177B8:
/* 808177B8  3A E0 00 00 */	li r23, 0
/* 808177BC  3B A0 00 00 */	li r29, 0
/* 808177C0  3B 80 00 00 */	li r28, 0
/* 808177C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 808177C8  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l
/* 808177CC  3C 60 80 82 */	lis r3, w_eff_id_4497@ha
/* 808177D0  3B 43 1C 5C */	addi r26, r3, w_eff_id_4497@l
/* 808177D4  3C 60 80 82 */	lis r3, lit_3791@ha
/* 808177D8  3B 63 18 AC */	addi r27, r3, lit_3791@l
lbl_808177DC:
/* 808177DC  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 808177E0  38 00 00 FF */	li r0, 0xff
/* 808177E4  90 01 00 08 */	stw r0, 8(r1)
/* 808177E8  38 80 00 00 */	li r4, 0
/* 808177EC  90 81 00 0C */	stw r4, 0xc(r1)
/* 808177F0  38 00 FF FF */	li r0, -1
/* 808177F4  90 01 00 10 */	stw r0, 0x10(r1)
/* 808177F8  90 81 00 14 */	stw r4, 0x14(r1)
/* 808177FC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80817800  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80817804  3B 1C 14 D8 */	addi r24, r28, 0x14d8
/* 80817808  7C 9E C0 2E */	lwzx r4, r30, r24
/* 8081780C  38 A0 00 00 */	li r5, 0
/* 80817810  7C DA EA 2E */	lhzx r6, r26, r29
/* 80817814  38 E1 00 20 */	addi r7, r1, 0x20
/* 80817818  39 1E 01 0C */	addi r8, r30, 0x10c
/* 8081781C  39 20 00 00 */	li r9, 0
/* 80817820  39 5F 01 E4 */	addi r10, r31, 0x1e4
/* 80817824  C0 3B 00 00 */	lfs f1, 0(r27)
/* 80817828  4B 83 5C A4 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8081782C  7C 7E C1 2E */	stwx r3, r30, r24
/* 80817830  3A F7 00 01 */	addi r23, r23, 1
/* 80817834  2C 17 00 06 */	cmpwi r23, 6
/* 80817838  3B BD 00 02 */	addi r29, r29, 2
/* 8081783C  3B 9C 00 04 */	addi r28, r28, 4
/* 80817840  41 80 FF 9C */	blt lbl_808177DC
/* 80817844  39 61 00 60 */	addi r11, r1, 0x60
/* 80817848  4B B4 A9 C8 */	b _restgpr_23
/* 8081784C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80817850  7C 08 03 A6 */	mtlr r0
/* 80817854  38 21 00 60 */	addi r1, r1, 0x60
/* 80817858  4E 80 00 20 */	blr 

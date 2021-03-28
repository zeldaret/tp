lbl_806EE2A4:
/* 806EE2A4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 806EE2A8  7C 08 02 A6 */	mflr r0
/* 806EE2AC  90 01 00 64 */	stw r0, 0x64(r1)
/* 806EE2B0  39 61 00 60 */	addi r11, r1, 0x60
/* 806EE2B4  4B C7 3F 10 */	b _savegpr_23
/* 806EE2B8  7C 7E 1B 78 */	mr r30, r3
/* 806EE2BC  3C 60 80 6F */	lis r3, lit_1109@ha
/* 806EE2C0  3B E3 0B 30 */	addi r31, r3, lit_1109@l
/* 806EE2C4  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 806EE2C8  C0 3E 06 AC */	lfs f1, 0x6ac(r30)
/* 806EE2CC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 806EE2D0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806EE2D4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 806EE2D8  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 806EE2DC  88 1F 00 A0 */	lbz r0, 0xa0(r31)
/* 806EE2E0  7C 00 07 75 */	extsb. r0, r0
/* 806EE2E4  40 82 00 34 */	bne lbl_806EE318
/* 806EE2E8  3C 60 80 6F */	lis r3, lit_4263@ha
/* 806EE2EC  C0 03 08 C4 */	lfs f0, lit_4263@l(r3)
/* 806EE2F0  D0 1F 00 A4 */	stfs f0, 0xa4(r31)
/* 806EE2F4  38 7F 00 A4 */	addi r3, r31, 0xa4
/* 806EE2F8  D0 03 00 04 */	stfs f0, 4(r3)
/* 806EE2FC  D0 03 00 08 */	stfs f0, 8(r3)
/* 806EE300  3C 80 80 6F */	lis r4, __dt__4cXyzFv@ha
/* 806EE304  38 84 08 10 */	addi r4, r4, __dt__4cXyzFv@l
/* 806EE308  38 BF 00 94 */	addi r5, r31, 0x94
/* 806EE30C  4B FF C2 8D */	bl __register_global_object
/* 806EE310  38 00 00 01 */	li r0, 1
/* 806EE314  98 1F 00 A0 */	stb r0, 0xa0(r31)
lbl_806EE318:
/* 806EE318  3A E0 00 00 */	li r23, 0
/* 806EE31C  3B A0 00 00 */	li r29, 0
/* 806EE320  3B 80 00 00 */	li r28, 0
/* 806EE324  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806EE328  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l
/* 806EE32C  3C 60 80 6F */	lis r3, w_eff_id@ha
/* 806EE330  3B 43 09 B0 */	addi r26, r3, w_eff_id@l
/* 806EE334  3C 60 80 6F */	lis r3, lit_3968@ha
/* 806EE338  3B 63 08 68 */	addi r27, r3, lit_3968@l
lbl_806EE33C:
/* 806EE33C  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 806EE340  38 00 00 FF */	li r0, 0xff
/* 806EE344  90 01 00 08 */	stw r0, 8(r1)
/* 806EE348  38 80 00 00 */	li r4, 0
/* 806EE34C  90 81 00 0C */	stw r4, 0xc(r1)
/* 806EE350  38 00 FF FF */	li r0, -1
/* 806EE354  90 01 00 10 */	stw r0, 0x10(r1)
/* 806EE358  90 81 00 14 */	stw r4, 0x14(r1)
/* 806EE35C  90 81 00 18 */	stw r4, 0x18(r1)
/* 806EE360  90 81 00 1C */	stw r4, 0x1c(r1)
/* 806EE364  3B 1C 12 20 */	addi r24, r28, 0x1220
/* 806EE368  7C 9E C0 2E */	lwzx r4, r30, r24
/* 806EE36C  38 A0 00 00 */	li r5, 0
/* 806EE370  7C DA EA 2E */	lhzx r6, r26, r29
/* 806EE374  38 E1 00 20 */	addi r7, r1, 0x20
/* 806EE378  39 1E 01 0C */	addi r8, r30, 0x10c
/* 806EE37C  39 20 00 00 */	li r9, 0
/* 806EE380  39 5F 00 A4 */	addi r10, r31, 0xa4
/* 806EE384  C0 3B 00 00 */	lfs f1, 0(r27)
/* 806EE388  4B 95 F1 44 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806EE38C  7C 7E C1 2E */	stwx r3, r30, r24
/* 806EE390  3A F7 00 01 */	addi r23, r23, 1
/* 806EE394  2C 17 00 04 */	cmpwi r23, 4
/* 806EE398  3B BD 00 02 */	addi r29, r29, 2
/* 806EE39C  3B 9C 00 04 */	addi r28, r28, 4
/* 806EE3A0  41 80 FF 9C */	blt lbl_806EE33C
/* 806EE3A4  39 61 00 60 */	addi r11, r1, 0x60
/* 806EE3A8  4B C7 3E 68 */	b _restgpr_23
/* 806EE3AC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 806EE3B0  7C 08 03 A6 */	mtlr r0
/* 806EE3B4  38 21 00 60 */	addi r1, r1, 0x60
/* 806EE3B8  4E 80 00 20 */	blr 

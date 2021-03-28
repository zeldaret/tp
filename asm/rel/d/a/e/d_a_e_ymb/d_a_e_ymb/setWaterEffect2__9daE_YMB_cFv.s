lbl_8081785C:
/* 8081785C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80817860  7C 08 02 A6 */	mflr r0
/* 80817864  90 01 00 64 */	stw r0, 0x64(r1)
/* 80817868  39 61 00 60 */	addi r11, r1, 0x60
/* 8081786C  4B B4 A9 58 */	b _savegpr_23
/* 80817870  7C 7E 1B 78 */	mr r30, r3
/* 80817874  3C 60 80 82 */	lis r3, lit_1109@ha
/* 80817878  3B E3 1E 18 */	addi r31, r3, lit_1109@l
/* 8081787C  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80817880  C0 3E 06 CC */	lfs f1, 0x6cc(r30)
/* 80817884  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80817888  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8081788C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80817890  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80817894  88 1F 01 FC */	lbz r0, 0x1fc(r31)
/* 80817898  7C 00 07 75 */	extsb. r0, r0
/* 8081789C  40 82 00 34 */	bne lbl_808178D0
/* 808178A0  38 7F 00 4C */	addi r3, r31, 0x4c
/* 808178A4  C0 03 00 08 */	lfs f0, 8(r3)
/* 808178A8  D0 1F 02 00 */	stfs f0, 0x200(r31)
/* 808178AC  38 7F 02 00 */	addi r3, r31, 0x200
/* 808178B0  D0 03 00 04 */	stfs f0, 4(r3)
/* 808178B4  D0 03 00 08 */	stfs f0, 8(r3)
/* 808178B8  3C 80 80 81 */	lis r4, __dt__4cXyzFv@ha
/* 808178BC  38 84 64 B4 */	addi r4, r4, __dt__4cXyzFv@l
/* 808178C0  38 BF 01 F0 */	addi r5, r31, 0x1f0
/* 808178C4  4B FF E7 D5 */	bl __register_global_object
/* 808178C8  38 00 00 01 */	li r0, 1
/* 808178CC  98 1F 01 FC */	stb r0, 0x1fc(r31)
lbl_808178D0:
/* 808178D0  3A E0 00 00 */	li r23, 0
/* 808178D4  3B A0 00 00 */	li r29, 0
/* 808178D8  3B 80 00 00 */	li r28, 0
/* 808178DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 808178E0  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l
/* 808178E4  3C 60 80 82 */	lis r3, w_eff_id_4533@ha
/* 808178E8  3B 43 1C 68 */	addi r26, r3, w_eff_id_4533@l
/* 808178EC  3C 60 80 82 */	lis r3, lit_3791@ha
/* 808178F0  3B 63 18 AC */	addi r27, r3, lit_3791@l
lbl_808178F4:
/* 808178F4  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 808178F8  38 00 00 FF */	li r0, 0xff
/* 808178FC  90 01 00 08 */	stw r0, 8(r1)
/* 80817900  38 80 00 00 */	li r4, 0
/* 80817904  90 81 00 0C */	stw r4, 0xc(r1)
/* 80817908  38 00 FF FF */	li r0, -1
/* 8081790C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80817910  90 81 00 14 */	stw r4, 0x14(r1)
/* 80817914  90 81 00 18 */	stw r4, 0x18(r1)
/* 80817918  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8081791C  3B 1C 14 F0 */	addi r24, r28, 0x14f0
/* 80817920  7C 9E C0 2E */	lwzx r4, r30, r24
/* 80817924  38 A0 00 00 */	li r5, 0
/* 80817928  7C DA EA 2E */	lhzx r6, r26, r29
/* 8081792C  38 E1 00 20 */	addi r7, r1, 0x20
/* 80817930  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80817934  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80817938  39 5F 02 00 */	addi r10, r31, 0x200
/* 8081793C  C0 3B 00 00 */	lfs f1, 0(r27)
/* 80817940  4B 83 5B 8C */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80817944  7C 7E C1 2E */	stwx r3, r30, r24
/* 80817948  3A F7 00 01 */	addi r23, r23, 1
/* 8081794C  2C 17 00 07 */	cmpwi r23, 7
/* 80817950  3B BD 00 02 */	addi r29, r29, 2
/* 80817954  3B 9C 00 04 */	addi r28, r28, 4
/* 80817958  41 80 FF 9C */	blt lbl_808178F4
/* 8081795C  39 61 00 60 */	addi r11, r1, 0x60
/* 80817960  4B B4 A8 B0 */	b _restgpr_23
/* 80817964  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80817968  7C 08 03 A6 */	mtlr r0
/* 8081796C  38 21 00 60 */	addi r1, r1, 0x60
/* 80817970  4E 80 00 20 */	blr 

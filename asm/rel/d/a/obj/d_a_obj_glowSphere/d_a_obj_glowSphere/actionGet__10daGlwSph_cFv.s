lbl_80BFA130:
/* 80BFA130  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BFA134  7C 08 02 A6 */	mflr r0
/* 80BFA138  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BFA13C  39 61 00 20 */	addi r11, r1, 0x20
/* 80BFA140  4B 76 80 94 */	b _savegpr_27
/* 80BFA144  7C 7B 1B 78 */	mr r27, r3
/* 80BFA148  A8 63 09 80 */	lha r3, 0x980(r3)
/* 80BFA14C  2C 03 00 00 */	cmpwi r3, 0
/* 80BFA150  40 81 00 78 */	ble lbl_80BFA1C8
/* 80BFA154  38 03 FF FF */	addi r0, r3, -1
/* 80BFA158  B0 1B 09 80 */	sth r0, 0x980(r27)
/* 80BFA15C  A8 1B 09 80 */	lha r0, 0x980(r27)
/* 80BFA160  2C 00 00 00 */	cmpwi r0, 0
/* 80BFA164  40 82 00 64 */	bne lbl_80BFA1C8
/* 80BFA168  3B 80 00 00 */	li r28, 0
/* 80BFA16C  3B E0 00 00 */	li r31, 0
/* 80BFA170  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BFA174  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
lbl_80BFA178:
/* 80BFA178  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80BFA17C  38 63 02 10 */	addi r3, r3, 0x210
/* 80BFA180  3B BF 09 84 */	addi r29, r31, 0x984
/* 80BFA184  7C 9B E8 2E */	lwzx r4, r27, r29
/* 80BFA188  4B 45 17 90 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 80BFA18C  28 03 00 00 */	cmplwi r3, 0
/* 80BFA190  41 82 00 18 */	beq lbl_80BFA1A8
/* 80BFA194  4B 68 4A CC */	b deleteAllParticle__14JPABaseEmitterFv
/* 80BFA198  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80BFA19C  38 63 02 10 */	addi r3, r3, 0x210
/* 80BFA1A0  7C 9B E8 2E */	lwzx r4, r27, r29
/* 80BFA1A4  4B 45 17 10 */	b forceOnEventMove__Q213dPa_control_c7level_cFUl
lbl_80BFA1A8:
/* 80BFA1A8  3B 9C 00 01 */	addi r28, r28, 1
/* 80BFA1AC  2C 1C 00 02 */	cmpwi r28, 2
/* 80BFA1B0  3B FF 00 04 */	addi r31, r31, 4
/* 80BFA1B4  41 80 FF C4 */	blt lbl_80BFA178
/* 80BFA1B8  38 00 00 01 */	li r0, 1
/* 80BFA1BC  98 1B 09 50 */	stb r0, 0x950(r27)
/* 80BFA1C0  38 00 FF FF */	li r0, -1
/* 80BFA1C4  B0 1B 09 80 */	sth r0, 0x980(r27)
lbl_80BFA1C8:
/* 80BFA1C8  39 61 00 20 */	addi r11, r1, 0x20
/* 80BFA1CC  4B 76 80 54 */	b _restgpr_27
/* 80BFA1D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BFA1D4  7C 08 03 A6 */	mtlr r0
/* 80BFA1D8  38 21 00 20 */	addi r1, r1, 0x20
/* 80BFA1DC  4E 80 00 20 */	blr 

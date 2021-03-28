lbl_8002E2DC:
/* 8002E2DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8002E2E0  7C 08 02 A6 */	mflr r0
/* 8002E2E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8002E2E8  39 61 00 20 */	addi r11, r1, 0x20
/* 8002E2EC  48 33 3E E9 */	bl _savegpr_27
/* 8002E2F0  3B 60 00 00 */	li r27, 0
/* 8002E2F4  3B E0 00 00 */	li r31, 0
/* 8002E2F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002E2FC  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 8002E300  7F FE FB 78 */	mr r30, r31
lbl_8002E304:
/* 8002E304  7C 7D FA 14 */	add r3, r29, r31
/* 8002E308  3B 83 5E C0 */	addi r28, r3, 0x5ec0
/* 8002E30C  80 63 5E C0 */	lwz r3, 0x5ec0(r3)
/* 8002E310  28 03 00 00 */	cmplwi r3, 0
/* 8002E314  41 82 00 0C */	beq lbl_8002E320
/* 8002E318  4B FE 0E 95 */	bl mDoExt_destroyExpHeap__FP10JKRExpHeap
/* 8002E31C  93 DC 00 00 */	stw r30, 0(r28)
lbl_8002E320:
/* 8002E320  3B 7B 00 01 */	addi r27, r27, 1
/* 8002E324  2C 1B 00 02 */	cmpwi r27, 2
/* 8002E328  3B FF 00 04 */	addi r31, r31, 4
/* 8002E32C  41 80 FF D8 */	blt lbl_8002E304
/* 8002E330  39 61 00 20 */	addi r11, r1, 0x20
/* 8002E334  48 33 3E ED */	bl _restgpr_27
/* 8002E338  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8002E33C  7C 08 03 A6 */	mtlr r0
/* 8002E340  38 21 00 20 */	addi r1, r1, 0x20
/* 8002E344  4E 80 00 20 */	blr 

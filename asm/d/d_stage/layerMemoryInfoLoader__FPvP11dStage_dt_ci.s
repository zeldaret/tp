lbl_80026914:
/* 80026914  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80026918  7C 08 02 A6 */	mflr r0
/* 8002691C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80026920  3C A0 80 3A */	lis r5, l_layerFuncTable_5131@ha
/* 80026924  38 A5 66 20 */	addi r5, r5, l_layerFuncTable_5131@l
/* 80026928  38 C0 00 02 */	li r6, 2
/* 8002692C  4B FF F7 89 */	bl dStage_dt_c_decode__FPvP11dStage_dt_cP9FuncTablei
/* 80026930  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80026934  7C 08 03 A6 */	mtlr r0
/* 80026938  38 21 00 10 */	addi r1, r1, 0x10
/* 8002693C  4E 80 00 20 */	blr 

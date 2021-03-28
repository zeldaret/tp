lbl_80024844:
/* 80024844  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80024848  7C 08 02 A6 */	mflr r0
/* 8002484C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80024850  39 61 00 20 */	addi r11, r1, 0x20
/* 80024854  48 33 D9 89 */	bl _savegpr_29
/* 80024858  7C 9D 23 78 */	mr r29, r4
/* 8002485C  54 7E 10 3A */	slwi r30, r3, 2
/* 80024860  3C 60 80 3A */	lis r3, mMemoryBlock__20dStage_roomControl_c@ha
/* 80024864  3B E3 69 20 */	addi r31, r3, mMemoryBlock__20dStage_roomControl_c@l
/* 80024868  7C 1F F0 2E */	lwzx r0, r31, r30
/* 8002486C  28 00 00 00 */	cmplwi r0, 0
/* 80024870  40 82 00 1C */	bne lbl_8002488C
/* 80024874  4B FE A5 79 */	bl mDoExt_getArchiveHeap__Fv
/* 80024878  7C 64 1B 78 */	mr r4, r3
/* 8002487C  7F A3 EB 78 */	mr r3, r29
/* 80024880  38 A0 00 00 */	li r5, 0
/* 80024884  48 2A A5 A9 */	bl create__10JKRExpHeapFUlP7JKRHeapb
/* 80024888  7C 7F F1 2E */	stwx r3, r31, r30
lbl_8002488C:
/* 8002488C  7C 7F F0 2E */	lwzx r3, r31, r30
/* 80024890  39 61 00 20 */	addi r11, r1, 0x20
/* 80024894  48 33 D9 95 */	bl _restgpr_29
/* 80024898  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8002489C  7C 08 03 A6 */	mtlr r0
/* 800248A0  38 21 00 20 */	addi r1, r1, 0x20
/* 800248A4  4E 80 00 20 */	blr 

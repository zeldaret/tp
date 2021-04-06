lbl_800248A8:
/* 800248A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800248AC  7C 08 02 A6 */	mflr r0
/* 800248B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800248B4  39 61 00 20 */	addi r11, r1, 0x20
/* 800248B8  48 33 D9 21 */	bl _savegpr_28
/* 800248BC  3B 80 00 00 */	li r28, 0
/* 800248C0  3B E0 00 00 */	li r31, 0
/* 800248C4  3C 60 80 3A */	lis r3, mMemoryBlock__20dStage_roomControl_c@ha /* 0x803A6920@ha */
/* 800248C8  3B A3 69 20 */	addi r29, r3, mMemoryBlock__20dStage_roomControl_c@l /* 0x803A6920@l */
/* 800248CC  7F FE FB 78 */	mr r30, r31
lbl_800248D0:
/* 800248D0  7C 7D F8 2E */	lwzx r3, r29, r31
/* 800248D4  28 03 00 00 */	cmplwi r3, 0
/* 800248D8  41 82 00 0C */	beq lbl_800248E4
/* 800248DC  4B FE A8 D1 */	bl mDoExt_destroyExpHeap__FP10JKRExpHeap
/* 800248E0  7F DD F9 2E */	stwx r30, r29, r31
lbl_800248E4:
/* 800248E4  3B 9C 00 01 */	addi r28, r28, 1
/* 800248E8  2C 1C 00 13 */	cmpwi r28, 0x13
/* 800248EC  3B FF 00 04 */	addi r31, r31, 4
/* 800248F0  41 80 FF E0 */	blt lbl_800248D0
/* 800248F4  39 61 00 20 */	addi r11, r1, 0x20
/* 800248F8  48 33 D9 2D */	bl _restgpr_28
/* 800248FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80024900  7C 08 03 A6 */	mtlr r0
/* 80024904  38 21 00 20 */	addi r1, r1, 0x20
/* 80024908  4E 80 00 20 */	blr 

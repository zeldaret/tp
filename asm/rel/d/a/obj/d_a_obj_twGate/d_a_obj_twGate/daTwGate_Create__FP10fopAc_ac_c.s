lbl_80D2022C:
/* 80D2022C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D20230  7C 08 02 A6 */	mflr r0
/* 80D20234  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D20238  4B FF FB 0D */	bl create__10daTwGate_cFv
/* 80D2023C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D20240  7C 08 03 A6 */	mtlr r0
/* 80D20244  38 21 00 10 */	addi r1, r1, 0x10
/* 80D20248  4E 80 00 20 */	blr 

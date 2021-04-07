lbl_80BE0840:
/* 80BE0840  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BE0844  7C 08 02 A6 */	mflr r0
/* 80BE0848  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BE084C  39 61 00 20 */	addi r11, r1, 0x20
/* 80BE0850  4B 78 19 8D */	bl _savegpr_29
/* 80BE0854  7C 7D 1B 78 */	mr r29, r3
/* 80BE0858  3B C0 00 00 */	li r30, 0
/* 80BE085C  3B E0 00 00 */	li r31, 0
lbl_80BE0860:
/* 80BE0860  38 7F 06 2C */	addi r3, r31, 0x62c
/* 80BE0864  7C 7D 1A 14 */	add r3, r29, r3
/* 80BE0868  81 83 00 00 */	lwz r12, 0(r3)
/* 80BE086C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80BE0870  7D 89 03 A6 */	mtctr r12
/* 80BE0874  4E 80 04 21 */	bctrl 
/* 80BE0878  3B DE 00 01 */	addi r30, r30, 1
/* 80BE087C  2C 1E 00 06 */	cmpwi r30, 6
/* 80BE0880  3B FF 00 14 */	addi r31, r31, 0x14
/* 80BE0884  41 80 FF DC */	blt lbl_80BE0860
/* 80BE0888  39 61 00 20 */	addi r11, r1, 0x20
/* 80BE088C  4B 78 19 9D */	bl _restgpr_29
/* 80BE0890  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BE0894  7C 08 03 A6 */	mtlr r0
/* 80BE0898  38 21 00 20 */	addi r1, r1, 0x20
/* 80BE089C  4E 80 00 20 */	blr 

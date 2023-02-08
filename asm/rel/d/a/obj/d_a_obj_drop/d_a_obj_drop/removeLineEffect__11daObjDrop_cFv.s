lbl_80BE071C:
/* 80BE071C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BE0720  7C 08 02 A6 */	mflr r0
/* 80BE0724  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BE0728  39 61 00 20 */	addi r11, r1, 0x20
/* 80BE072C  4B 78 1A B1 */	bl _savegpr_29
/* 80BE0730  7C 7D 1B 78 */	mr r29, r3
/* 80BE0734  3B C0 00 00 */	li r30, 0
/* 80BE0738  3B E0 00 00 */	li r31, 0
lbl_80BE073C:
/* 80BE073C  38 7F 05 D8 */	addi r3, r31, 0x5d8
/* 80BE0740  7C 7D 1A 14 */	add r3, r29, r3
/* 80BE0744  81 83 00 00 */	lwz r12, 0(r3)
/* 80BE0748  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80BE074C  7D 89 03 A6 */	mtctr r12
/* 80BE0750  4E 80 04 21 */	bctrl 
/* 80BE0754  3B DE 00 01 */	addi r30, r30, 1
/* 80BE0758  2C 1E 00 03 */	cmpwi r30, 3
/* 80BE075C  3B FF 00 14 */	addi r31, r31, 0x14
/* 80BE0760  41 80 FF DC */	blt lbl_80BE073C
/* 80BE0764  39 61 00 20 */	addi r11, r1, 0x20
/* 80BE0768  4B 78 1A C1 */	bl _restgpr_29
/* 80BE076C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BE0770  7C 08 03 A6 */	mtlr r0
/* 80BE0774  38 21 00 20 */	addi r1, r1, 0x20
/* 80BE0778  4E 80 00 20 */	blr 

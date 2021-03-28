lbl_80314EB0:
/* 80314EB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80314EB4  7C 08 02 A6 */	mflr r0
/* 80314EB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80314EBC  2C 03 00 19 */	cmpwi r3, 0x19
/* 80314EC0  38 A0 00 01 */	li r5, 1
/* 80314EC4  41 82 00 08 */	beq lbl_80314ECC
/* 80314EC8  38 A3 FF F7 */	addi r5, r3, -9
lbl_80314ECC:
/* 80314ECC  38 05 00 A0 */	addi r0, r5, 0xa0
/* 80314ED0  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80314ED4  54 84 00 7E */	clrlwi r4, r4, 1
/* 80314ED8  4B FF FF C1 */	bl J3DLoadCPCmd__FUcUl
/* 80314EDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80314EE0  7C 08 03 A6 */	mtlr r0
/* 80314EE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80314EE8  4E 80 00 20 */	blr 

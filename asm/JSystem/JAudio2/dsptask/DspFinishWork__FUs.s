lbl_8029E980:
/* 8029E980  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029E984  7C 08 02 A6 */	mflr r0
/* 8029E988  3C 80 80 43 */	lis r4, taskwork@ha /* 0x80433FE0@ha */
/* 8029E98C  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8029E990  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029E994  38 84 3F E0 */	addi r4, r4, taskwork@l /* 0x80433FE0@l */
/* 8029E998  80 CD 8D 80 */	lwz r6, taskreadp(r13)
/* 8029E99C  54 C5 18 38 */	slwi r5, r6, 3
/* 8029E9A0  7C 04 2A 2E */	lhzx r0, r4, r5
/* 8029E9A4  7C 03 00 40 */	cmplw r3, r0
/* 8029E9A8  40 82 00 30 */	bne lbl_8029E9D8
/* 8029E9AC  7C 64 2A 14 */	add r3, r4, r5
/* 8029E9B0  81 83 00 04 */	lwz r12, 4(r3)
/* 8029E9B4  28 0C 00 00 */	cmplwi r12, 0
/* 8029E9B8  41 82 00 10 */	beq lbl_8029E9C8
/* 8029E9BC  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 8029E9C0  7D 89 03 A6 */	mtctr r12
/* 8029E9C4  4E 80 04 21 */	bctrl 
lbl_8029E9C8:
/* 8029E9C8  80 6D 8D 80 */	lwz r3, taskreadp(r13)
/* 8029E9CC  38 03 00 01 */	addi r0, r3, 1
/* 8029E9D0  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 8029E9D4  90 0D 8D 80 */	stw r0, taskreadp(r13)
lbl_8029E9D8:
/* 8029E9D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029E9DC  7C 08 03 A6 */	mtlr r0
/* 8029E9E0  38 21 00 10 */	addi r1, r1, 0x10
/* 8029E9E4  4E 80 00 20 */	blr 

lbl_8084FA58:
/* 8084FA58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8084FA5C  7C 08 02 A6 */	mflr r0
/* 8084FA60  90 01 00 14 */	stw r0, 0x14(r1)
/* 8084FA64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8084FA68  7C 7F 1B 78 */	mr r31, r3
/* 8084FA6C  80 03 07 4C */	lwz r0, 0x74c(r3)
/* 8084FA70  2C 00 00 00 */	cmpwi r0, 0
/* 8084FA74  40 82 00 08 */	bne lbl_8084FA7C
/* 8084FA78  4B FF E2 A1 */	bl initPerchDemo__8daKago_cFv
lbl_8084FA7C:
/* 8084FA7C  7F E3 FB 78 */	mr r3, r31
/* 8084FA80  4B FF E8 55 */	bl executePerchDemo__8daKago_cFv
/* 8084FA84  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8084FA88  41 82 00 0C */	beq lbl_8084FA94
/* 8084FA8C  38 00 00 00 */	li r0, 0
/* 8084FA90  90 1F 07 4C */	stw r0, 0x74c(r31)
lbl_8084FA94:
/* 8084FA94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8084FA98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8084FA9C  7C 08 03 A6 */	mtlr r0
/* 8084FAA0  38 21 00 10 */	addi r1, r1, 0x10
/* 8084FAA4  4E 80 00 20 */	blr 

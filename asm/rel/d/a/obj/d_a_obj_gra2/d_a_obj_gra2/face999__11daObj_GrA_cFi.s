lbl_80C048B8:
/* 80C048B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C048BC  7C 08 02 A6 */	mflr r0
/* 80C048C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C048C4  2C 04 00 00 */	cmpwi r4, 0
/* 80C048C8  41 82 00 1C */	beq lbl_80C048E4
/* 80C048CC  A0 83 08 40 */	lhz r4, 0x840(r3)
/* 80C048D0  38 00 FF DD */	li r0, -35
/* 80C048D4  7C 80 00 38 */	and r0, r4, r0
/* 80C048D8  B0 03 08 40 */	sth r0, 0x840(r3)
/* 80C048DC  38 80 00 00 */	li r4, 0
/* 80C048E0  4B FF CD B9 */	bl setFaceBtp__11daObj_GrA_cFi
lbl_80C048E4:
/* 80C048E4  38 60 00 01 */	li r3, 1
/* 80C048E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C048EC  7C 08 03 A6 */	mtlr r0
/* 80C048F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C048F4  4E 80 00 20 */	blr 

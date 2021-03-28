lbl_80353EB8:
/* 80353EB8  7C 08 02 A6 */	mflr r0
/* 80353EBC  2C 03 00 00 */	cmpwi r3, 0
/* 80353EC0  90 01 00 04 */	stw r0, 4(r1)
/* 80353EC4  94 21 FF F8 */	stwu r1, -8(r1)
/* 80353EC8  40 82 00 2C */	bne lbl_80353EF4
/* 80353ECC  38 60 00 00 */	li r3, 0
/* 80353ED0  48 00 35 09 */	bl CARDUnmount
/* 80353ED4  2C 03 FF FF */	cmpwi r3, -1
/* 80353ED8  41 82 00 14 */	beq lbl_80353EEC
/* 80353EDC  38 60 00 01 */	li r3, 1
/* 80353EE0  48 00 34 F9 */	bl CARDUnmount
/* 80353EE4  2C 03 FF FF */	cmpwi r3, -1
/* 80353EE8  40 82 00 0C */	bne lbl_80353EF4
lbl_80353EEC:
/* 80353EEC  38 60 00 00 */	li r3, 0
/* 80353EF0  48 00 00 08 */	b lbl_80353EF8
lbl_80353EF4:
/* 80353EF4  38 60 00 01 */	li r3, 1
lbl_80353EF8:
/* 80353EF8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80353EFC  38 21 00 08 */	addi r1, r1, 8
/* 80353F00  7C 08 03 A6 */	mtlr r0
/* 80353F04  4E 80 00 20 */	blr 

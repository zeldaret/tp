lbl_80A7AE0C:
/* 80A7AE0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A7AE10  7C 08 02 A6 */	mflr r0
/* 80A7AE14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A7AE18  4B FF A3 25 */	bl chkMoiN__11daNpc_Moi_cFv
/* 80A7AE1C  2C 03 00 00 */	cmpwi r3, 0
/* 80A7AE20  38 60 00 02 */	li r3, 2
/* 80A7AE24  41 82 00 08 */	beq lbl_80A7AE2C
/* 80A7AE28  38 60 00 04 */	li r3, 4
lbl_80A7AE2C:
/* 80A7AE2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A7AE30  7C 08 03 A6 */	mtlr r0
/* 80A7AE34  38 21 00 10 */	addi r1, r1, 0x10
/* 80A7AE38  4E 80 00 20 */	blr 

lbl_80A64C14:
/* 80A64C14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A64C18  7C 08 02 A6 */	mflr r0
/* 80A64C1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A64C20  4B 6E 39 0D */	bl execute__8daNpcT_cFv
/* 80A64C24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A64C28  7C 08 03 A6 */	mtlr r0
/* 80A64C2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A64C30  4E 80 00 20 */	blr 

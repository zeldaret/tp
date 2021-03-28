lbl_80A9E8A0:
/* 80A9E8A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9E8A4  7C 08 02 A6 */	mflr r0
/* 80A9E8A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9E8AC  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80A9E8B0  2C 00 00 02 */	cmpwi r0, 2
/* 80A9E8B4  41 82 00 34 */	beq lbl_80A9E8E8
/* 80A9E8B8  40 80 00 44 */	bge lbl_80A9E8FC
/* 80A9E8BC  2C 00 00 00 */	cmpwi r0, 0
/* 80A9E8C0  40 80 00 0C */	bge lbl_80A9E8CC
/* 80A9E8C4  48 00 00 38 */	b lbl_80A9E8FC
/* 80A9E8C8  48 00 00 34 */	b lbl_80A9E8FC
lbl_80A9E8CC:
/* 80A9E8CC  A8 03 0D 1C */	lha r0, 0xd1c(r3)
/* 80A9E8D0  2C 00 00 00 */	cmpwi r0, 0
/* 80A9E8D4  40 82 00 14 */	bne lbl_80A9E8E8
/* 80A9E8D8  38 00 FF FF */	li r0, -1
/* 80A9E8DC  98 03 0F E8 */	stb r0, 0xfe8(r3)
/* 80A9E8E0  38 00 00 02 */	li r0, 2
/* 80A9E8E4  B0 03 0E 22 */	sth r0, 0xe22(r3)
lbl_80A9E8E8:
/* 80A9E8E8  38 00 00 04 */	li r0, 4
/* 80A9E8EC  B0 03 0E 30 */	sth r0, 0xe30(r3)
/* 80A9E8F0  A0 03 0E 30 */	lhz r0, 0xe30(r3)
/* 80A9E8F4  B0 03 0F DC */	sth r0, 0xfdc(r3)
/* 80A9E8F8  4B 6A B9 2C */	b evtChange__8daNpcT_cFv
lbl_80A9E8FC:
/* 80A9E8FC  38 60 00 00 */	li r3, 0
/* 80A9E900  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9E904  7C 08 03 A6 */	mtlr r0
/* 80A9E908  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9E90C  4E 80 00 20 */	blr 

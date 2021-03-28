lbl_80D5BB08:
/* 80D5BB08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5BB0C  7C 08 02 A6 */	mflr r0
/* 80D5BB10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5BB14  38 80 FF FF */	li r4, -1
/* 80D5BB18  4B FF FF 9D */	bl __dt__11daTagMmsg_cFv
/* 80D5BB1C  38 60 00 01 */	li r3, 1
/* 80D5BB20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5BB24  7C 08 03 A6 */	mtlr r0
/* 80D5BB28  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5BB2C  4E 80 00 20 */	blr 

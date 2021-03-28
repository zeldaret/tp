lbl_80D5BD08:
/* 80D5BD08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5BD0C  7C 08 02 A6 */	mflr r0
/* 80D5BD10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5BD14  4B FF FE 1D */	bl execute__11daTagMmsg_cFv
/* 80D5BD18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5BD1C  7C 08 03 A6 */	mtlr r0
/* 80D5BD20  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5BD24  4E 80 00 20 */	blr 

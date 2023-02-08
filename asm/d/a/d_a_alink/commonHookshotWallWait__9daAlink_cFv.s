lbl_8010BA6C:
/* 8010BA6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010BA70  7C 08 02 A6 */	mflr r0
/* 8010BA74  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010BA78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8010BA7C  7C 7F 1B 78 */	mr r31, r3
/* 8010BA80  4B FA 8E 51 */	bl setJumpMode__9daAlink_cFv
/* 8010BA84  7F E3 FB 78 */	mr r3, r31
/* 8010BA88  4B FF FD C5 */	bl checkLandHookshotHang__9daAlink_cFv
/* 8010BA8C  30 03 FF FF */	addic r0, r3, -1
/* 8010BA90  7C 60 19 10 */	subfe r3, r0, r3
/* 8010BA94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8010BA98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010BA9C  7C 08 03 A6 */	mtlr r0
/* 8010BAA0  38 21 00 10 */	addi r1, r1, 0x10
/* 8010BAA4  4E 80 00 20 */	blr 

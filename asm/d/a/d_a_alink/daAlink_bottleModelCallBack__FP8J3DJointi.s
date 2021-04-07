lbl_8010E52C:
/* 8010E52C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010E530  7C 08 02 A6 */	mflr r0
/* 8010E534  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010E538  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8010E53C  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 8010E540  80 63 00 38 */	lwz r3, 0x38(r3)
/* 8010E544  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8010E548  2C 04 00 00 */	cmpwi r4, 0
/* 8010E54C  40 82 00 08 */	bne lbl_8010E554
/* 8010E550  4B FF FF 3D */	bl bottleModelCallBack__9daAlink_cFv
lbl_8010E554:
/* 8010E554  38 60 00 01 */	li r3, 1
/* 8010E558  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010E55C  7C 08 03 A6 */	mtlr r0
/* 8010E560  38 21 00 10 */	addi r1, r1, 0x10
/* 8010E564  4E 80 00 20 */	blr 

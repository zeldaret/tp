lbl_80371D08:
/* 80371D08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80371D0C  7C 08 02 A6 */	mflr r0
/* 80371D10  3C 60 80 3D */	lis r3, gDBCommTable@ha
/* 80371D14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80371D18  38 63 32 A8 */	addi r3, r3, gDBCommTable@l
/* 80371D1C  81 83 00 20 */	lwz r12, 0x20(r3)
/* 80371D20  7D 89 03 A6 */	mtctr r12
/* 80371D24  4E 80 04 21 */	bctrl 
/* 80371D28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80371D2C  7C 08 03 A6 */	mtlr r0
/* 80371D30  38 21 00 10 */	addi r1, r1, 0x10
/* 80371D34  4E 80 00 20 */	blr 

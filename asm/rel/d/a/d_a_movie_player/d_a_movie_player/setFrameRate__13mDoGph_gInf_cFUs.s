lbl_80878D10:
/* 80878D10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80878D14  7C 08 02 A6 */	mflr r0
/* 80878D18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80878D1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80878D20  7C 7F 1B 78 */	mr r31, r3
/* 80878D24  48 00 00 31 */	bl getManager__10JFWDisplayFv
/* 80878D28  7F E4 FB 78 */	mr r4, r31
/* 80878D2C  48 00 00 19 */	bl setFrameRate__10JFWDisplayFUs
/* 80878D30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80878D34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80878D38  7C 08 03 A6 */	mtlr r0
/* 80878D3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80878D40  4E 80 00 20 */	blr 

lbl_80517CF8:
/* 80517CF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80517CFC  7C 08 02 A6 */	mflr r0
/* 80517D00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80517D04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80517D08  7C 7F 1B 79 */	or. r31, r3, r3
/* 80517D0C  41 82 00 1C */	beq lbl_80517D28
/* 80517D10  3C A0 80 52 */	lis r5, __vt__8cM3dGAab@ha
/* 80517D14  38 05 90 C8 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80517D18  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80517D1C  7C 80 07 35 */	extsh. r0, r4
/* 80517D20  40 81 00 08 */	ble lbl_80517D28
/* 80517D24  4B DB 70 18 */	b __dl__FPv
lbl_80517D28:
/* 80517D28  7F E3 FB 78 */	mr r3, r31
/* 80517D2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80517D30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80517D34  7C 08 03 A6 */	mtlr r0
/* 80517D38  38 21 00 10 */	addi r1, r1, 0x10
/* 80517D3C  4E 80 00 20 */	blr 

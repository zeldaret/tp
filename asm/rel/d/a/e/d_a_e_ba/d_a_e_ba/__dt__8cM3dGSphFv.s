lbl_80681CEC:
/* 80681CEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80681CF0  7C 08 02 A6 */	mflr r0
/* 80681CF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80681CF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80681CFC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80681D00  41 82 00 1C */	beq lbl_80681D1C
/* 80681D04  3C A0 80 68 */	lis r5, __vt__8cM3dGSph@ha
/* 80681D08  38 05 25 E4 */	addi r0, r5, __vt__8cM3dGSph@l
/* 80681D0C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80681D10  7C 80 07 35 */	extsh. r0, r4
/* 80681D14  40 81 00 08 */	ble lbl_80681D1C
/* 80681D18  4B C4 D0 24 */	b __dl__FPv
lbl_80681D1C:
/* 80681D1C  7F E3 FB 78 */	mr r3, r31
/* 80681D20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80681D24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80681D28  7C 08 03 A6 */	mtlr r0
/* 80681D2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80681D30  4E 80 00 20 */	blr 

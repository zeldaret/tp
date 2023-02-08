lbl_80AC6CE4:
/* 80AC6CE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC6CE8  7C 08 02 A6 */	mflr r0
/* 80AC6CEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC6CF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC6CF4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AC6CF8  41 82 00 30 */	beq lbl_80AC6D28
/* 80AC6CFC  3C 60 80 AC */	lis r3, __vt__10dCcD_GStts@ha /* 0x80AC7334@ha */
/* 80AC6D00  38 03 73 34 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80AC7334@l */
/* 80AC6D04  90 1F 00 00 */	stw r0, 0(r31)
/* 80AC6D08  41 82 00 10 */	beq lbl_80AC6D18
/* 80AC6D0C  3C 60 80 AC */	lis r3, __vt__10cCcD_GStts@ha /* 0x80AC7328@ha */
/* 80AC6D10  38 03 73 28 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80AC7328@l */
/* 80AC6D14  90 1F 00 00 */	stw r0, 0(r31)
lbl_80AC6D18:
/* 80AC6D18  7C 80 07 35 */	extsh. r0, r4
/* 80AC6D1C  40 81 00 0C */	ble lbl_80AC6D28
/* 80AC6D20  7F E3 FB 78 */	mr r3, r31
/* 80AC6D24  4B 80 80 19 */	bl __dl__FPv
lbl_80AC6D28:
/* 80AC6D28  7F E3 FB 78 */	mr r3, r31
/* 80AC6D2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC6D30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC6D34  7C 08 03 A6 */	mtlr r0
/* 80AC6D38  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC6D3C  4E 80 00 20 */	blr 

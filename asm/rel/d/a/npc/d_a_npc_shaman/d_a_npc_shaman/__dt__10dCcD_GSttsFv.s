lbl_80AE5F28:
/* 80AE5F28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE5F2C  7C 08 02 A6 */	mflr r0
/* 80AE5F30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE5F34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE5F38  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AE5F3C  41 82 00 30 */	beq lbl_80AE5F6C
/* 80AE5F40  3C 60 80 AE */	lis r3, __vt__10dCcD_GStts@ha
/* 80AE5F44  38 03 77 18 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80AE5F48  90 1F 00 00 */	stw r0, 0(r31)
/* 80AE5F4C  41 82 00 10 */	beq lbl_80AE5F5C
/* 80AE5F50  3C 60 80 AE */	lis r3, __vt__10cCcD_GStts@ha
/* 80AE5F54  38 03 77 0C */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80AE5F58  90 1F 00 00 */	stw r0, 0(r31)
lbl_80AE5F5C:
/* 80AE5F5C  7C 80 07 35 */	extsh. r0, r4
/* 80AE5F60  40 81 00 0C */	ble lbl_80AE5F6C
/* 80AE5F64  7F E3 FB 78 */	mr r3, r31
/* 80AE5F68  4B 7E 8D D4 */	b __dl__FPv
lbl_80AE5F6C:
/* 80AE5F6C  7F E3 FB 78 */	mr r3, r31
/* 80AE5F70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE5F74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE5F78  7C 08 03 A6 */	mtlr r0
/* 80AE5F7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE5F80  4E 80 00 20 */	blr 

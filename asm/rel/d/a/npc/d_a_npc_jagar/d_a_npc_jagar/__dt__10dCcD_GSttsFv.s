lbl_80A19B44:
/* 80A19B44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A19B48  7C 08 02 A6 */	mflr r0
/* 80A19B4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A19B50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A19B54  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A19B58  41 82 00 30 */	beq lbl_80A19B88
/* 80A19B5C  3C 60 80 A2 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80A1ACB4@ha */
/* 80A19B60  38 03 AC B4 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80A1ACB4@l */
/* 80A19B64  90 1F 00 00 */	stw r0, 0(r31)
/* 80A19B68  41 82 00 10 */	beq lbl_80A19B78
/* 80A19B6C  3C 60 80 A2 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80A1ACA8@ha */
/* 80A19B70  38 03 AC A8 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80A1ACA8@l */
/* 80A19B74  90 1F 00 00 */	stw r0, 0(r31)
lbl_80A19B78:
/* 80A19B78  7C 80 07 35 */	extsh. r0, r4
/* 80A19B7C  40 81 00 0C */	ble lbl_80A19B88
/* 80A19B80  7F E3 FB 78 */	mr r3, r31
/* 80A19B84  4B 8B 51 B9 */	bl __dl__FPv
lbl_80A19B88:
/* 80A19B88  7F E3 FB 78 */	mr r3, r31
/* 80A19B8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A19B90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A19B94  7C 08 03 A6 */	mtlr r0
/* 80A19B98  38 21 00 10 */	addi r1, r1, 0x10
/* 80A19B9C  4E 80 00 20 */	blr 

lbl_80A67B58:
/* 80A67B58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A67B5C  7C 08 02 A6 */	mflr r0
/* 80A67B60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A67B64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A67B68  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A67B6C  41 82 00 1C */	beq lbl_80A67B88
/* 80A67B70  3C A0 80 A7 */	lis r5, __vt__10cCcD_GStts@ha
/* 80A67B74  38 05 99 1C */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80A67B78  90 1F 00 00 */	stw r0, 0(r31)
/* 80A67B7C  7C 80 07 35 */	extsh. r0, r4
/* 80A67B80  40 81 00 08 */	ble lbl_80A67B88
/* 80A67B84  4B 86 71 B8 */	b __dl__FPv
lbl_80A67B88:
/* 80A67B88  7F E3 FB 78 */	mr r3, r31
/* 80A67B8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A67B90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A67B94  7C 08 03 A6 */	mtlr r0
/* 80A67B98  38 21 00 10 */	addi r1, r1, 0x10
/* 80A67B9C  4E 80 00 20 */	blr 

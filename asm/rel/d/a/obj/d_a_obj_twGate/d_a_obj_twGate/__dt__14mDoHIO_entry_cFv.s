lbl_80D1FB3C:
/* 80D1FB3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1FB40  7C 08 02 A6 */	mflr r0
/* 80D1FB44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1FB48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D1FB4C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D1FB50  41 82 00 1C */	beq lbl_80D1FB6C
/* 80D1FB54  3C A0 80 D2 */	lis r5, __vt__14mDoHIO_entry_c@ha /* 0x80D2068C@ha */
/* 80D1FB58  38 05 06 8C */	addi r0, r5, __vt__14mDoHIO_entry_c@l /* 0x80D2068C@l */
/* 80D1FB5C  90 1F 00 00 */	stw r0, 0(r31)
/* 80D1FB60  7C 80 07 35 */	extsh. r0, r4
/* 80D1FB64  40 81 00 08 */	ble lbl_80D1FB6C
/* 80D1FB68  4B 5A F1 D5 */	bl __dl__FPv
lbl_80D1FB6C:
/* 80D1FB6C  7F E3 FB 78 */	mr r3, r31
/* 80D1FB70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D1FB74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1FB78  7C 08 03 A6 */	mtlr r0
/* 80D1FB7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1FB80  4E 80 00 20 */	blr 

lbl_80A95B40:
/* 80A95B40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A95B44  7C 08 02 A6 */	mflr r0
/* 80A95B48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A95B4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A95B50  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A95B54  41 82 00 10 */	beq lbl_80A95B64
/* 80A95B58  7C 80 07 35 */	extsh. r0, r4
/* 80A95B5C  40 81 00 08 */	ble lbl_80A95B64
/* 80A95B60  4B 83 91 DC */	b __dl__FPv
lbl_80A95B64:
/* 80A95B64  7F E3 FB 78 */	mr r3, r31
/* 80A95B68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A95B6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A95B70  7C 08 03 A6 */	mtlr r0
/* 80A95B74  38 21 00 10 */	addi r1, r1, 0x10
/* 80A95B78  4E 80 00 20 */	blr 

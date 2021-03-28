lbl_80A44B54:
/* 80A44B54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A44B58  7C 08 02 A6 */	mflr r0
/* 80A44B5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A44B60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A44B64  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A44B68  41 82 00 10 */	beq lbl_80A44B78
/* 80A44B6C  7C 80 07 35 */	extsh. r0, r4
/* 80A44B70  40 81 00 08 */	ble lbl_80A44B78
/* 80A44B74  4B 88 A1 C8 */	b __dl__FPv
lbl_80A44B78:
/* 80A44B78  7F E3 FB 78 */	mr r3, r31
/* 80A44B7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A44B80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A44B84  7C 08 03 A6 */	mtlr r0
/* 80A44B88  38 21 00 10 */	addi r1, r1, 0x10
/* 80A44B8C  4E 80 00 20 */	blr 

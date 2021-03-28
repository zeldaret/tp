lbl_80A62A34:
/* 80A62A34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A62A38  7C 08 02 A6 */	mflr r0
/* 80A62A3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A62A40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A62A44  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A62A48  41 82 00 10 */	beq lbl_80A62A58
/* 80A62A4C  7C 80 07 35 */	extsh. r0, r4
/* 80A62A50  40 81 00 08 */	ble lbl_80A62A58
/* 80A62A54  4B 86 C2 E8 */	b __dl__FPv
lbl_80A62A58:
/* 80A62A58  7F E3 FB 78 */	mr r3, r31
/* 80A62A5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A62A60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A62A64  7C 08 03 A6 */	mtlr r0
/* 80A62A68  38 21 00 10 */	addi r1, r1, 0x10
/* 80A62A6C  4E 80 00 20 */	blr 

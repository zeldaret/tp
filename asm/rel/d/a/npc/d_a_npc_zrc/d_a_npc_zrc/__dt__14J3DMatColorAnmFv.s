lbl_80B8E7DC:
/* 80B8E7DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B8E7E0  7C 08 02 A6 */	mflr r0
/* 80B8E7E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B8E7E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B8E7EC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B8E7F0  41 82 00 10 */	beq lbl_80B8E800
/* 80B8E7F4  7C 80 07 35 */	extsh. r0, r4
/* 80B8E7F8  40 81 00 08 */	ble lbl_80B8E800
/* 80B8E7FC  4B 74 05 41 */	bl __dl__FPv
lbl_80B8E800:
/* 80B8E800  7F E3 FB 78 */	mr r3, r31
/* 80B8E804  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B8E808  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B8E80C  7C 08 03 A6 */	mtlr r0
/* 80B8E810  38 21 00 10 */	addi r1, r1, 0x10
/* 80B8E814  4E 80 00 20 */	blr 

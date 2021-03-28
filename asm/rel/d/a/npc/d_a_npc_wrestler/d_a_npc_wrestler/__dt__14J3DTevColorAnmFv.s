lbl_80B2FC48:
/* 80B2FC48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B2FC4C  7C 08 02 A6 */	mflr r0
/* 80B2FC50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B2FC54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B2FC58  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B2FC5C  41 82 00 10 */	beq lbl_80B2FC6C
/* 80B2FC60  7C 80 07 35 */	extsh. r0, r4
/* 80B2FC64  40 81 00 08 */	ble lbl_80B2FC6C
/* 80B2FC68  4B 79 F0 D4 */	b __dl__FPv
lbl_80B2FC6C:
/* 80B2FC6C  7F E3 FB 78 */	mr r3, r31
/* 80B2FC70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B2FC74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2FC78  7C 08 03 A6 */	mtlr r0
/* 80B2FC7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B2FC80  4E 80 00 20 */	blr 

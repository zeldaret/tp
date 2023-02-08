lbl_80A62B3C:
/* 80A62B3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A62B40  7C 08 02 A6 */	mflr r0
/* 80A62B44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A62B48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A62B4C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A62B50  41 82 00 1C */	beq lbl_80A62B6C
/* 80A62B54  3C A0 80 A6 */	lis r5, __vt__8cM3dGCyl@ha /* 0x80A64130@ha */
/* 80A62B58  38 05 41 30 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80A64130@l */
/* 80A62B5C  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80A62B60  7C 80 07 35 */	extsh. r0, r4
/* 80A62B64  40 81 00 08 */	ble lbl_80A62B6C
/* 80A62B68  4B 86 C1 D5 */	bl __dl__FPv
lbl_80A62B6C:
/* 80A62B6C  7F E3 FB 78 */	mr r3, r31
/* 80A62B70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A62B74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A62B78  7C 08 03 A6 */	mtlr r0
/* 80A62B7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A62B80  4E 80 00 20 */	blr 

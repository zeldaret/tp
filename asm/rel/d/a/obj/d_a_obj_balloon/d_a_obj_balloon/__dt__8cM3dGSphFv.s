lbl_80BA8B30:
/* 80BA8B30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA8B34  7C 08 02 A6 */	mflr r0
/* 80BA8B38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA8B3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA8B40  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BA8B44  41 82 00 1C */	beq lbl_80BA8B60
/* 80BA8B48  3C A0 80 BB */	lis r5, __vt__8cM3dGSph@ha /* 0x80BA8F5C@ha */
/* 80BA8B4C  38 05 8F 5C */	addi r0, r5, __vt__8cM3dGSph@l /* 0x80BA8F5C@l */
/* 80BA8B50  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80BA8B54  7C 80 07 35 */	extsh. r0, r4
/* 80BA8B58  40 81 00 08 */	ble lbl_80BA8B60
/* 80BA8B5C  4B 72 61 E1 */	bl __dl__FPv
lbl_80BA8B60:
/* 80BA8B60  7F E3 FB 78 */	mr r3, r31
/* 80BA8B64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA8B68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA8B6C  7C 08 03 A6 */	mtlr r0
/* 80BA8B70  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA8B74  4E 80 00 20 */	blr 

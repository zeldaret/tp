lbl_80314B00:
/* 80314B00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80314B04  7C 08 02 A6 */	mflr r0
/* 80314B08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80314B0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80314B10  7C 7F 1B 79 */	or. r31, r3, r3
/* 80314B14  41 82 00 1C */	beq lbl_80314B30
/* 80314B18  3C A0 80 3D */	lis r5, __vt__12J3DShapeDraw@ha /* 0x803CDC68@ha */
/* 80314B1C  38 05 DC 68 */	addi r0, r5, __vt__12J3DShapeDraw@l /* 0x803CDC68@l */
/* 80314B20  90 1F 00 00 */	stw r0, 0(r31)
/* 80314B24  7C 80 07 35 */	extsh. r0, r4
/* 80314B28  40 81 00 08 */	ble lbl_80314B30
/* 80314B2C  4B FB A2 11 */	bl __dl__FPv
lbl_80314B30:
/* 80314B30  7F E3 FB 78 */	mr r3, r31
/* 80314B34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80314B38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80314B3C  7C 08 03 A6 */	mtlr r0
/* 80314B40  38 21 00 10 */	addi r1, r1, 0x10
/* 80314B44  4E 80 00 20 */	blr 

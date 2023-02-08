lbl_80D40B1C:
/* 80D40B1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D40B20  7C 08 02 A6 */	mflr r0
/* 80D40B24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D40B28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D40B2C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D40B30  41 82 00 1C */	beq lbl_80D40B4C
/* 80D40B34  3C A0 80 D4 */	lis r5, __vt__8cM3dGCyl@ha /* 0x80D4171C@ha */
/* 80D40B38  38 05 17 1C */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80D4171C@l */
/* 80D40B3C  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80D40B40  7C 80 07 35 */	extsh. r0, r4
/* 80D40B44  40 81 00 08 */	ble lbl_80D40B4C
/* 80D40B48  4B 58 E1 F5 */	bl __dl__FPv
lbl_80D40B4C:
/* 80D40B4C  7F E3 FB 78 */	mr r3, r31
/* 80D40B50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D40B54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D40B58  7C 08 03 A6 */	mtlr r0
/* 80D40B5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D40B60  4E 80 00 20 */	blr 

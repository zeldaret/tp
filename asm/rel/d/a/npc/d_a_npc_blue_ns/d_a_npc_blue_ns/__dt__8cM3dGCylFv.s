lbl_80968AF0:
/* 80968AF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80968AF4  7C 08 02 A6 */	mflr r0
/* 80968AF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80968AFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80968B00  7C 7F 1B 79 */	or. r31, r3, r3
/* 80968B04  41 82 00 1C */	beq lbl_80968B20
/* 80968B08  3C A0 80 97 */	lis r5, __vt__8cM3dGCyl@ha /* 0x8096CE50@ha */
/* 80968B0C  38 05 CE 50 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x8096CE50@l */
/* 80968B10  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80968B14  7C 80 07 35 */	extsh. r0, r4
/* 80968B18  40 81 00 08 */	ble lbl_80968B20
/* 80968B1C  4B 96 62 21 */	bl __dl__FPv
lbl_80968B20:
/* 80968B20  7F E3 FB 78 */	mr r3, r31
/* 80968B24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80968B28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80968B2C  7C 08 03 A6 */	mtlr r0
/* 80968B30  38 21 00 10 */	addi r1, r1, 0x10
/* 80968B34  4E 80 00 20 */	blr 

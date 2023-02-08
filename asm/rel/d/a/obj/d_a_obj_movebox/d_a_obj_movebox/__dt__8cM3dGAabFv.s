lbl_80480B1C:
/* 80480B1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80480B20  7C 08 02 A6 */	mflr r0
/* 80480B24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80480B28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80480B2C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80480B30  41 82 00 1C */	beq lbl_80480B4C
/* 80480B34  3C A0 80 48 */	lis r5, __vt__8cM3dGAab@ha /* 0x804817E0@ha */
/* 80480B38  38 05 17 E0 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x804817E0@l */
/* 80480B3C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80480B40  7C 80 07 35 */	extsh. r0, r4
/* 80480B44  40 81 00 08 */	ble lbl_80480B4C
/* 80480B48  4B E4 E1 F5 */	bl __dl__FPv
lbl_80480B4C:
/* 80480B4C  7F E3 FB 78 */	mr r3, r31
/* 80480B50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80480B54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80480B58  7C 08 03 A6 */	mtlr r0
/* 80480B5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80480B60  4E 80 00 20 */	blr 

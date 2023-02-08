lbl_80A62B84:
/* 80A62B84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A62B88  7C 08 02 A6 */	mflr r0
/* 80A62B8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A62B90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A62B94  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A62B98  41 82 00 1C */	beq lbl_80A62BB4
/* 80A62B9C  3C A0 80 A6 */	lis r5, __vt__8cM3dGAab@ha /* 0x80A64124@ha */
/* 80A62BA0  38 05 41 24 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80A64124@l */
/* 80A62BA4  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80A62BA8  7C 80 07 35 */	extsh. r0, r4
/* 80A62BAC  40 81 00 08 */	ble lbl_80A62BB4
/* 80A62BB0  4B 86 C1 8D */	bl __dl__FPv
lbl_80A62BB4:
/* 80A62BB4  7F E3 FB 78 */	mr r3, r31
/* 80A62BB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A62BBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A62BC0  7C 08 03 A6 */	mtlr r0
/* 80A62BC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A62BC8  4E 80 00 20 */	blr 

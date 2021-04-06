lbl_8046FE20:
/* 8046FE20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046FE24  7C 08 02 A6 */	mflr r0
/* 8046FE28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046FE2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046FE30  7C 7F 1B 79 */	or. r31, r3, r3
/* 8046FE34  41 82 00 1C */	beq lbl_8046FE50
/* 8046FE38  3C A0 80 48 */	lis r5, __vt__8cM3dGAab@ha /* 0x8047B19C@ha */
/* 8046FE3C  38 05 B1 9C */	addi r0, r5, __vt__8cM3dGAab@l /* 0x8047B19C@l */
/* 8046FE40  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8046FE44  7C 80 07 35 */	extsh. r0, r4
/* 8046FE48  40 81 00 08 */	ble lbl_8046FE50
/* 8046FE4C  4B E5 EE F1 */	bl __dl__FPv
lbl_8046FE50:
/* 8046FE50  7F E3 FB 78 */	mr r3, r31
/* 8046FE54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046FE58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046FE5C  7C 08 03 A6 */	mtlr r0
/* 8046FE60  38 21 00 10 */	addi r1, r1, 0x10
/* 8046FE64  4E 80 00 20 */	blr 

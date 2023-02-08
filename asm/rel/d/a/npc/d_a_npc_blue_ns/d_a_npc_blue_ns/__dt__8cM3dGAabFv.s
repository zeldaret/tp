lbl_80968B38:
/* 80968B38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80968B3C  7C 08 02 A6 */	mflr r0
/* 80968B40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80968B44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80968B48  7C 7F 1B 79 */	or. r31, r3, r3
/* 80968B4C  41 82 00 1C */	beq lbl_80968B68
/* 80968B50  3C A0 80 97 */	lis r5, __vt__8cM3dGAab@ha /* 0x8096CE5C@ha */
/* 80968B54  38 05 CE 5C */	addi r0, r5, __vt__8cM3dGAab@l /* 0x8096CE5C@l */
/* 80968B58  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80968B5C  7C 80 07 35 */	extsh. r0, r4
/* 80968B60  40 81 00 08 */	ble lbl_80968B68
/* 80968B64  4B 96 61 D9 */	bl __dl__FPv
lbl_80968B68:
/* 80968B68  7F E3 FB 78 */	mr r3, r31
/* 80968B6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80968B70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80968B74  7C 08 03 A6 */	mtlr r0
/* 80968B78  38 21 00 10 */	addi r1, r1, 0x10
/* 80968B7C  4E 80 00 20 */	blr 

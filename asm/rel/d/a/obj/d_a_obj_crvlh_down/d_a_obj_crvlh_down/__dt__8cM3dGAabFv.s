lbl_80BD4A34:
/* 80BD4A34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD4A38  7C 08 02 A6 */	mflr r0
/* 80BD4A3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD4A40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD4A44  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BD4A48  41 82 00 1C */	beq lbl_80BD4A64
/* 80BD4A4C  3C A0 80 BD */	lis r5, __vt__8cM3dGAab@ha /* 0x80BD4E24@ha */
/* 80BD4A50  38 05 4E 24 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80BD4E24@l */
/* 80BD4A54  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80BD4A58  7C 80 07 35 */	extsh. r0, r4
/* 80BD4A5C  40 81 00 08 */	ble lbl_80BD4A64
/* 80BD4A60  4B 6F A2 DD */	bl __dl__FPv
lbl_80BD4A64:
/* 80BD4A64  7F E3 FB 78 */	mr r3, r31
/* 80BD4A68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD4A6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD4A70  7C 08 03 A6 */	mtlr r0
/* 80BD4A74  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD4A78  4E 80 00 20 */	blr 

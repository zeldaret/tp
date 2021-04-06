lbl_80A07BB8:
/* 80A07BB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A07BBC  7C 08 02 A6 */	mflr r0
/* 80A07BC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A07BC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A07BC8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A07BCC  41 82 00 1C */	beq lbl_80A07BE8
/* 80A07BD0  3C A0 80 A1 */	lis r5, __vt__8cM3dGAab@ha /* 0x80A0C8C8@ha */
/* 80A07BD4  38 05 C8 C8 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80A0C8C8@l */
/* 80A07BD8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80A07BDC  7C 80 07 35 */	extsh. r0, r4
/* 80A07BE0  40 81 00 08 */	ble lbl_80A07BE8
/* 80A07BE4  4B 8C 71 59 */	bl __dl__FPv
lbl_80A07BE8:
/* 80A07BE8  7F E3 FB 78 */	mr r3, r31
/* 80A07BEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A07BF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A07BF4  7C 08 03 A6 */	mtlr r0
/* 80A07BF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A07BFC  4E 80 00 20 */	blr 

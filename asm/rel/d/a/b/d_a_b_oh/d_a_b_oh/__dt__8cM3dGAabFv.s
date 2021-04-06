lbl_8061D8B0:
/* 8061D8B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8061D8B4  7C 08 02 A6 */	mflr r0
/* 8061D8B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061D8BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8061D8C0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8061D8C4  41 82 00 1C */	beq lbl_8061D8E0
/* 8061D8C8  3C A0 80 62 */	lis r5, __vt__8cM3dGAab@ha /* 0x8061DB3C@ha */
/* 8061D8CC  38 05 DB 3C */	addi r0, r5, __vt__8cM3dGAab@l /* 0x8061DB3C@l */
/* 8061D8D0  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8061D8D4  7C 80 07 35 */	extsh. r0, r4
/* 8061D8D8  40 81 00 08 */	ble lbl_8061D8E0
/* 8061D8DC  4B CB 14 61 */	bl __dl__FPv
lbl_8061D8E0:
/* 8061D8E0  7F E3 FB 78 */	mr r3, r31
/* 8061D8E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8061D8E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061D8EC  7C 08 03 A6 */	mtlr r0
/* 8061D8F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8061D8F4  4E 80 00 20 */	blr 

lbl_808211BC:
/* 808211BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808211C0  7C 08 02 A6 */	mflr r0
/* 808211C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 808211C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 808211CC  7C 7F 1B 79 */	or. r31, r3, r3
/* 808211D0  41 82 00 1C */	beq lbl_808211EC
/* 808211D4  3C A0 80 82 */	lis r5, __vt__8cM3dGSph@ha /* 0x80821DDC@ha */
/* 808211D8  38 05 1D DC */	addi r0, r5, __vt__8cM3dGSph@l /* 0x80821DDC@l */
/* 808211DC  90 1F 00 10 */	stw r0, 0x10(r31)
/* 808211E0  7C 80 07 35 */	extsh. r0, r4
/* 808211E4  40 81 00 08 */	ble lbl_808211EC
/* 808211E8  4B AA DB 55 */	bl __dl__FPv
lbl_808211EC:
/* 808211EC  7F E3 FB 78 */	mr r3, r31
/* 808211F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 808211F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 808211F8  7C 08 03 A6 */	mtlr r0
/* 808211FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80821200  4E 80 00 20 */	blr 

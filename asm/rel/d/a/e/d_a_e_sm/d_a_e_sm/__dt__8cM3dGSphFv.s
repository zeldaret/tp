lbl_80797ED0:
/* 80797ED0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80797ED4  7C 08 02 A6 */	mflr r0
/* 80797ED8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80797EDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80797EE0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80797EE4  41 82 00 1C */	beq lbl_80797F00
/* 80797EE8  3C A0 80 7A */	lis r5, __vt__8cM3dGSph@ha /* 0x8079892C@ha */
/* 80797EEC  38 05 89 2C */	addi r0, r5, __vt__8cM3dGSph@l /* 0x8079892C@l */
/* 80797EF0  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80797EF4  7C 80 07 35 */	extsh. r0, r4
/* 80797EF8  40 81 00 08 */	ble lbl_80797F00
/* 80797EFC  4B B3 6E 41 */	bl __dl__FPv
lbl_80797F00:
/* 80797F00  7F E3 FB 78 */	mr r3, r31
/* 80797F04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80797F08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80797F0C  7C 08 03 A6 */	mtlr r0
/* 80797F10  38 21 00 10 */	addi r1, r1, 0x10
/* 80797F14  4E 80 00 20 */	blr 

lbl_80681EB8:
/* 80681EB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80681EBC  7C 08 02 A6 */	mflr r0
/* 80681EC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80681EC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80681EC8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80681ECC  41 82 00 1C */	beq lbl_80681EE8
/* 80681ED0  3C A0 80 68 */	lis r5, __vt__10cCcD_GStts@ha /* 0x806825CC@ha */
/* 80681ED4  38 05 25 CC */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x806825CC@l */
/* 80681ED8  90 1F 00 00 */	stw r0, 0(r31)
/* 80681EDC  7C 80 07 35 */	extsh. r0, r4
/* 80681EE0  40 81 00 08 */	ble lbl_80681EE8
/* 80681EE4  4B C4 CE 59 */	bl __dl__FPv
lbl_80681EE8:
/* 80681EE8  7F E3 FB 78 */	mr r3, r31
/* 80681EEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80681EF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80681EF4  7C 08 03 A6 */	mtlr r0
/* 80681EF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80681EFC  4E 80 00 20 */	blr 

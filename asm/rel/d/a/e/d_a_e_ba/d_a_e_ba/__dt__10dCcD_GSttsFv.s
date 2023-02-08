lbl_80681D7C:
/* 80681D7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80681D80  7C 08 02 A6 */	mflr r0
/* 80681D84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80681D88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80681D8C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80681D90  41 82 00 30 */	beq lbl_80681DC0
/* 80681D94  3C 60 80 68 */	lis r3, __vt__10dCcD_GStts@ha /* 0x806825D8@ha */
/* 80681D98  38 03 25 D8 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x806825D8@l */
/* 80681D9C  90 1F 00 00 */	stw r0, 0(r31)
/* 80681DA0  41 82 00 10 */	beq lbl_80681DB0
/* 80681DA4  3C 60 80 68 */	lis r3, __vt__10cCcD_GStts@ha /* 0x806825CC@ha */
/* 80681DA8  38 03 25 CC */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x806825CC@l */
/* 80681DAC  90 1F 00 00 */	stw r0, 0(r31)
lbl_80681DB0:
/* 80681DB0  7C 80 07 35 */	extsh. r0, r4
/* 80681DB4  40 81 00 0C */	ble lbl_80681DC0
/* 80681DB8  7F E3 FB 78 */	mr r3, r31
/* 80681DBC  4B C4 CF 81 */	bl __dl__FPv
lbl_80681DC0:
/* 80681DC0  7F E3 FB 78 */	mr r3, r31
/* 80681DC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80681DC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80681DCC  7C 08 03 A6 */	mtlr r0
/* 80681DD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80681DD4  4E 80 00 20 */	blr 

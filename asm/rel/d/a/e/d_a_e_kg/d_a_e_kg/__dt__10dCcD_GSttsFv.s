lbl_806F9D64:
/* 806F9D64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F9D68  7C 08 02 A6 */	mflr r0
/* 806F9D6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F9D70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806F9D74  7C 7F 1B 79 */	or. r31, r3, r3
/* 806F9D78  41 82 00 30 */	beq lbl_806F9DA8
/* 806F9D7C  3C 60 80 70 */	lis r3, __vt__10dCcD_GStts@ha /* 0x806FA580@ha */
/* 806F9D80  38 03 A5 80 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x806FA580@l */
/* 806F9D84  90 1F 00 00 */	stw r0, 0(r31)
/* 806F9D88  41 82 00 10 */	beq lbl_806F9D98
/* 806F9D8C  3C 60 80 70 */	lis r3, __vt__10cCcD_GStts@ha /* 0x806FA574@ha */
/* 806F9D90  38 03 A5 74 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x806FA574@l */
/* 806F9D94  90 1F 00 00 */	stw r0, 0(r31)
lbl_806F9D98:
/* 806F9D98  7C 80 07 35 */	extsh. r0, r4
/* 806F9D9C  40 81 00 0C */	ble lbl_806F9DA8
/* 806F9DA0  7F E3 FB 78 */	mr r3, r31
/* 806F9DA4  4B BD 4F 99 */	bl __dl__FPv
lbl_806F9DA8:
/* 806F9DA8  7F E3 FB 78 */	mr r3, r31
/* 806F9DAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806F9DB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F9DB4  7C 08 03 A6 */	mtlr r0
/* 806F9DB8  38 21 00 10 */	addi r1, r1, 0x10
/* 806F9DBC  4E 80 00 20 */	blr 

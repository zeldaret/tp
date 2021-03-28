lbl_80BD9D9C:
/* 80BD9D9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD9DA0  7C 08 02 A6 */	mflr r0
/* 80BD9DA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD9DA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD9DAC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BD9DB0  41 82 00 30 */	beq lbl_80BD9DE0
/* 80BD9DB4  3C 60 80 BE */	lis r3, __vt__10dCcD_GStts@ha
/* 80BD9DB8  38 03 A2 9C */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80BD9DBC  90 1F 00 00 */	stw r0, 0(r31)
/* 80BD9DC0  41 82 00 10 */	beq lbl_80BD9DD0
/* 80BD9DC4  3C 60 80 BE */	lis r3, __vt__10cCcD_GStts@ha
/* 80BD9DC8  38 03 A2 90 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80BD9DCC  90 1F 00 00 */	stw r0, 0(r31)
lbl_80BD9DD0:
/* 80BD9DD0  7C 80 07 35 */	extsh. r0, r4
/* 80BD9DD4  40 81 00 0C */	ble lbl_80BD9DE0
/* 80BD9DD8  7F E3 FB 78 */	mr r3, r31
/* 80BD9DDC  4B 6F 4F 60 */	b __dl__FPv
lbl_80BD9DE0:
/* 80BD9DE0  7F E3 FB 78 */	mr r3, r31
/* 80BD9DE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD9DE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD9DEC  7C 08 03 A6 */	mtlr r0
/* 80BD9DF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD9DF4  4E 80 00 20 */	blr 

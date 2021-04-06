lbl_80AA88D0:
/* 80AA88D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA88D4  7C 08 02 A6 */	mflr r0
/* 80AA88D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA88DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA88E0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AA88E4  41 82 00 30 */	beq lbl_80AA8914
/* 80AA88E8  3C 60 80 AB */	lis r3, __vt__10dCcD_GStts@ha /* 0x80AA8B20@ha */
/* 80AA88EC  38 03 8B 20 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80AA8B20@l */
/* 80AA88F0  90 1F 00 00 */	stw r0, 0(r31)
/* 80AA88F4  41 82 00 10 */	beq lbl_80AA8904
/* 80AA88F8  3C 60 80 AB */	lis r3, __vt__10cCcD_GStts@ha /* 0x80AA8B14@ha */
/* 80AA88FC  38 03 8B 14 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80AA8B14@l */
/* 80AA8900  90 1F 00 00 */	stw r0, 0(r31)
lbl_80AA8904:
/* 80AA8904  7C 80 07 35 */	extsh. r0, r4
/* 80AA8908  40 81 00 0C */	ble lbl_80AA8914
/* 80AA890C  7F E3 FB 78 */	mr r3, r31
/* 80AA8910  4B 82 64 2D */	bl __dl__FPv
lbl_80AA8914:
/* 80AA8914  7F E3 FB 78 */	mr r3, r31
/* 80AA8918  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA891C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA8920  7C 08 03 A6 */	mtlr r0
/* 80AA8924  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA8928  4E 80 00 20 */	blr 

lbl_806AD2EC:
/* 806AD2EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806AD2F0  7C 08 02 A6 */	mflr r0
/* 806AD2F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806AD2F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806AD2FC  7C 7F 1B 79 */	or. r31, r3, r3
/* 806AD300  41 82 00 30 */	beq lbl_806AD330
/* 806AD304  3C 60 80 6B */	lis r3, __vt__10dCcD_GStts@ha
/* 806AD308  38 03 D7 8C */	addi r0, r3, __vt__10dCcD_GStts@l
/* 806AD30C  90 1F 00 00 */	stw r0, 0(r31)
/* 806AD310  41 82 00 10 */	beq lbl_806AD320
/* 806AD314  3C 60 80 6B */	lis r3, __vt__10cCcD_GStts@ha
/* 806AD318  38 03 D7 80 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 806AD31C  90 1F 00 00 */	stw r0, 0(r31)
lbl_806AD320:
/* 806AD320  7C 80 07 35 */	extsh. r0, r4
/* 806AD324  40 81 00 0C */	ble lbl_806AD330
/* 806AD328  7F E3 FB 78 */	mr r3, r31
/* 806AD32C  4B C2 1A 10 */	b __dl__FPv
lbl_806AD330:
/* 806AD330  7F E3 FB 78 */	mr r3, r31
/* 806AD334  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806AD338  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806AD33C  7C 08 03 A6 */	mtlr r0
/* 806AD340  38 21 00 10 */	addi r1, r1, 0x10
/* 806AD344  4E 80 00 20 */	blr 

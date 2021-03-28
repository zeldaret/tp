lbl_806E5254:
/* 806E5254  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E5258  7C 08 02 A6 */	mflr r0
/* 806E525C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E5260  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806E5264  7C 7F 1B 79 */	or. r31, r3, r3
/* 806E5268  41 82 00 30 */	beq lbl_806E5298
/* 806E526C  3C 60 80 6E */	lis r3, __vt__10dCcD_GStts@ha
/* 806E5270  38 03 5B 64 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 806E5274  90 1F 00 00 */	stw r0, 0(r31)
/* 806E5278  41 82 00 10 */	beq lbl_806E5288
/* 806E527C  3C 60 80 6E */	lis r3, __vt__10cCcD_GStts@ha
/* 806E5280  38 03 5B 58 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 806E5284  90 1F 00 00 */	stw r0, 0(r31)
lbl_806E5288:
/* 806E5288  7C 80 07 35 */	extsh. r0, r4
/* 806E528C  40 81 00 0C */	ble lbl_806E5298
/* 806E5290  7F E3 FB 78 */	mr r3, r31
/* 806E5294  4B BE 9A A8 */	b __dl__FPv
lbl_806E5298:
/* 806E5298  7F E3 FB 78 */	mr r3, r31
/* 806E529C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806E52A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E52A4  7C 08 03 A6 */	mtlr r0
/* 806E52A8  38 21 00 10 */	addi r1, r1, 0x10
/* 806E52AC  4E 80 00 20 */	blr 

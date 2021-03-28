lbl_806F52E8:
/* 806F52E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F52EC  7C 08 02 A6 */	mflr r0
/* 806F52F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F52F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806F52F8  7C 7F 1B 79 */	or. r31, r3, r3
/* 806F52FC  41 82 00 30 */	beq lbl_806F532C
/* 806F5300  3C 60 80 6F */	lis r3, __vt__10dCcD_GStts@ha
/* 806F5304  38 03 58 BC */	addi r0, r3, __vt__10dCcD_GStts@l
/* 806F5308  90 1F 00 00 */	stw r0, 0(r31)
/* 806F530C  41 82 00 10 */	beq lbl_806F531C
/* 806F5310  3C 60 80 6F */	lis r3, __vt__10cCcD_GStts@ha
/* 806F5314  38 03 58 B0 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 806F5318  90 1F 00 00 */	stw r0, 0(r31)
lbl_806F531C:
/* 806F531C  7C 80 07 35 */	extsh. r0, r4
/* 806F5320  40 81 00 0C */	ble lbl_806F532C
/* 806F5324  7F E3 FB 78 */	mr r3, r31
/* 806F5328  4B BD 9A 14 */	b __dl__FPv
lbl_806F532C:
/* 806F532C  7F E3 FB 78 */	mr r3, r31
/* 806F5330  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806F5334  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F5338  7C 08 03 A6 */	mtlr r0
/* 806F533C  38 21 00 10 */	addi r1, r1, 0x10
/* 806F5340  4E 80 00 20 */	blr 

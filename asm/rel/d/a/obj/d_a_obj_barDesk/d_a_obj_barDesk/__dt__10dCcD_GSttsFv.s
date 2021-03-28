lbl_80BA9548:
/* 80BA9548  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA954C  7C 08 02 A6 */	mflr r0
/* 80BA9550  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA9554  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA9558  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BA955C  41 82 00 30 */	beq lbl_80BA958C
/* 80BA9560  3C 60 80 BB */	lis r3, __vt__10dCcD_GStts@ha
/* 80BA9564  38 03 9C AC */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80BA9568  90 1F 00 00 */	stw r0, 0(r31)
/* 80BA956C  41 82 00 10 */	beq lbl_80BA957C
/* 80BA9570  3C 60 80 BB */	lis r3, __vt__10cCcD_GStts@ha
/* 80BA9574  38 03 9C A0 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80BA9578  90 1F 00 00 */	stw r0, 0(r31)
lbl_80BA957C:
/* 80BA957C  7C 80 07 35 */	extsh. r0, r4
/* 80BA9580  40 81 00 0C */	ble lbl_80BA958C
/* 80BA9584  7F E3 FB 78 */	mr r3, r31
/* 80BA9588  4B 72 57 B4 */	b __dl__FPv
lbl_80BA958C:
/* 80BA958C  7F E3 FB 78 */	mr r3, r31
/* 80BA9590  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA9594  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA9598  7C 08 03 A6 */	mtlr r0
/* 80BA959C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA95A0  4E 80 00 20 */	blr 

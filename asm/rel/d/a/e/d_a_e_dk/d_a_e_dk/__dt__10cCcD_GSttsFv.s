lbl_806AD448:
/* 806AD448  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806AD44C  7C 08 02 A6 */	mflr r0
/* 806AD450  90 01 00 14 */	stw r0, 0x14(r1)
/* 806AD454  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806AD458  7C 7F 1B 79 */	or. r31, r3, r3
/* 806AD45C  41 82 00 1C */	beq lbl_806AD478
/* 806AD460  3C A0 80 6B */	lis r5, __vt__10cCcD_GStts@ha /* 0x806AD780@ha */
/* 806AD464  38 05 D7 80 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x806AD780@l */
/* 806AD468  90 1F 00 00 */	stw r0, 0(r31)
/* 806AD46C  7C 80 07 35 */	extsh. r0, r4
/* 806AD470  40 81 00 08 */	ble lbl_806AD478
/* 806AD474  4B C2 18 C9 */	bl __dl__FPv
lbl_806AD478:
/* 806AD478  7F E3 FB 78 */	mr r3, r31
/* 806AD47C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806AD480  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806AD484  7C 08 03 A6 */	mtlr r0
/* 806AD488  38 21 00 10 */	addi r1, r1, 0x10
/* 806AD48C  4E 80 00 20 */	blr 

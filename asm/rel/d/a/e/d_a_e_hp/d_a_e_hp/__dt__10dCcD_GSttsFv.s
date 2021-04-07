lbl_806E9B94:
/* 806E9B94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E9B98  7C 08 02 A6 */	mflr r0
/* 806E9B9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E9BA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806E9BA4  7C 7F 1B 79 */	or. r31, r3, r3
/* 806E9BA8  41 82 00 30 */	beq lbl_806E9BD8
/* 806E9BAC  3C 60 80 6F */	lis r3, __vt__10dCcD_GStts@ha /* 0x806EA470@ha */
/* 806E9BB0  38 03 A4 70 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x806EA470@l */
/* 806E9BB4  90 1F 00 00 */	stw r0, 0(r31)
/* 806E9BB8  41 82 00 10 */	beq lbl_806E9BC8
/* 806E9BBC  3C 60 80 6F */	lis r3, __vt__10cCcD_GStts@ha /* 0x806EA464@ha */
/* 806E9BC0  38 03 A4 64 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x806EA464@l */
/* 806E9BC4  90 1F 00 00 */	stw r0, 0(r31)
lbl_806E9BC8:
/* 806E9BC8  7C 80 07 35 */	extsh. r0, r4
/* 806E9BCC  40 81 00 0C */	ble lbl_806E9BD8
/* 806E9BD0  7F E3 FB 78 */	mr r3, r31
/* 806E9BD4  4B BE 51 69 */	bl __dl__FPv
lbl_806E9BD8:
/* 806E9BD8  7F E3 FB 78 */	mr r3, r31
/* 806E9BDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806E9BE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E9BE4  7C 08 03 A6 */	mtlr r0
/* 806E9BE8  38 21 00 10 */	addi r1, r1, 0x10
/* 806E9BEC  4E 80 00 20 */	blr 

lbl_80BC95D0:
/* 80BC95D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC95D4  7C 08 02 A6 */	mflr r0
/* 80BC95D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC95DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC95E0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BC95E4  41 82 00 30 */	beq lbl_80BC9614
/* 80BC95E8  3C 60 80 BD */	lis r3, __vt__10dCcD_GStts@ha /* 0x80BCA18C@ha */
/* 80BC95EC  38 03 A1 8C */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80BCA18C@l */
/* 80BC95F0  90 1F 00 00 */	stw r0, 0(r31)
/* 80BC95F4  41 82 00 10 */	beq lbl_80BC9604
/* 80BC95F8  3C 60 80 BD */	lis r3, __vt__10cCcD_GStts@ha /* 0x80BCA180@ha */
/* 80BC95FC  38 03 A1 80 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80BCA180@l */
/* 80BC9600  90 1F 00 00 */	stw r0, 0(r31)
lbl_80BC9604:
/* 80BC9604  7C 80 07 35 */	extsh. r0, r4
/* 80BC9608  40 81 00 0C */	ble lbl_80BC9614
/* 80BC960C  7F E3 FB 78 */	mr r3, r31
/* 80BC9610  4B 70 57 2D */	bl __dl__FPv
lbl_80BC9614:
/* 80BC9614  7F E3 FB 78 */	mr r3, r31
/* 80BC9618  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC961C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC9620  7C 08 03 A6 */	mtlr r0
/* 80BC9624  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC9628  4E 80 00 20 */	blr 

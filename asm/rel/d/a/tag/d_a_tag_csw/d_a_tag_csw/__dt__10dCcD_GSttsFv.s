lbl_80D57764:
/* 80D57764  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D57768  7C 08 02 A6 */	mflr r0
/* 80D5776C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D57770  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D57774  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D57778  41 82 00 30 */	beq lbl_80D577A8
/* 80D5777C  3C 60 80 D6 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80D5873C@ha */
/* 80D57780  38 03 87 3C */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80D5873C@l */
/* 80D57784  90 1F 00 00 */	stw r0, 0(r31)
/* 80D57788  41 82 00 10 */	beq lbl_80D57798
/* 80D5778C  3C 60 80 D6 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80D58730@ha */
/* 80D57790  38 03 87 30 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80D58730@l */
/* 80D57794  90 1F 00 00 */	stw r0, 0(r31)
lbl_80D57798:
/* 80D57798  7C 80 07 35 */	extsh. r0, r4
/* 80D5779C  40 81 00 0C */	ble lbl_80D577A8
/* 80D577A0  7F E3 FB 78 */	mr r3, r31
/* 80D577A4  4B 57 75 99 */	bl __dl__FPv
lbl_80D577A8:
/* 80D577A8  7F E3 FB 78 */	mr r3, r31
/* 80D577AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D577B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D577B4  7C 08 03 A6 */	mtlr r0
/* 80D577B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D577BC  4E 80 00 20 */	blr 

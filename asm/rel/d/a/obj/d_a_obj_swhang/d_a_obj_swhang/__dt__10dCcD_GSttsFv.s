lbl_80CFBFF0:
/* 80CFBFF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFBFF4  7C 08 02 A6 */	mflr r0
/* 80CFBFF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFBFFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CFC000  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CFC004  41 82 00 30 */	beq lbl_80CFC034
/* 80CFC008  3C 60 80 D0 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80CFD448@ha */
/* 80CFC00C  38 03 D4 48 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80CFD448@l */
/* 80CFC010  90 1F 00 00 */	stw r0, 0(r31)
/* 80CFC014  41 82 00 10 */	beq lbl_80CFC024
/* 80CFC018  3C 60 80 D0 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80CFD43C@ha */
/* 80CFC01C  38 03 D4 3C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80CFD43C@l */
/* 80CFC020  90 1F 00 00 */	stw r0, 0(r31)
lbl_80CFC024:
/* 80CFC024  7C 80 07 35 */	extsh. r0, r4
/* 80CFC028  40 81 00 0C */	ble lbl_80CFC034
/* 80CFC02C  7F E3 FB 78 */	mr r3, r31
/* 80CFC030  4B 5D 2D 0D */	bl __dl__FPv
lbl_80CFC034:
/* 80CFC034  7F E3 FB 78 */	mr r3, r31
/* 80CFC038  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CFC03C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFC040  7C 08 03 A6 */	mtlr r0
/* 80CFC044  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFC048  4E 80 00 20 */	blr 

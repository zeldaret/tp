lbl_805EC5F8:
/* 805EC5F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EC5FC  7C 08 02 A6 */	mflr r0
/* 805EC600  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EC604  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805EC608  7C 7F 1B 79 */	or. r31, r3, r3
/* 805EC60C  41 82 00 30 */	beq lbl_805EC63C
/* 805EC610  3C 60 80 5F */	lis r3, __vt__10dCcD_GStts@ha /* 0x805ED648@ha */
/* 805EC614  38 03 D6 48 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x805ED648@l */
/* 805EC618  90 1F 00 00 */	stw r0, 0(r31)
/* 805EC61C  41 82 00 10 */	beq lbl_805EC62C
/* 805EC620  3C 60 80 5F */	lis r3, __vt__10cCcD_GStts@ha /* 0x805ED63C@ha */
/* 805EC624  38 03 D6 3C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x805ED63C@l */
/* 805EC628  90 1F 00 00 */	stw r0, 0(r31)
lbl_805EC62C:
/* 805EC62C  7C 80 07 35 */	extsh. r0, r4
/* 805EC630  40 81 00 0C */	ble lbl_805EC63C
/* 805EC634  7F E3 FB 78 */	mr r3, r31
/* 805EC638  4B CE 27 05 */	bl __dl__FPv
lbl_805EC63C:
/* 805EC63C  7F E3 FB 78 */	mr r3, r31
/* 805EC640  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805EC644  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EC648  7C 08 03 A6 */	mtlr r0
/* 805EC64C  38 21 00 10 */	addi r1, r1, 0x10
/* 805EC650  4E 80 00 20 */	blr 

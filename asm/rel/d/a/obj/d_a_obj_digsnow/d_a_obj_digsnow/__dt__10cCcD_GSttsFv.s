lbl_80BDD650:
/* 80BDD650  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDD654  7C 08 02 A6 */	mflr r0
/* 80BDD658  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDD65C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BDD660  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BDD664  41 82 00 1C */	beq lbl_80BDD680
/* 80BDD668  3C A0 80 BE */	lis r5, __vt__10cCcD_GStts@ha /* 0x80BDD7B0@ha */
/* 80BDD66C  38 05 D7 B0 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80BDD7B0@l */
/* 80BDD670  90 1F 00 00 */	stw r0, 0(r31)
/* 80BDD674  7C 80 07 35 */	extsh. r0, r4
/* 80BDD678  40 81 00 08 */	ble lbl_80BDD680
/* 80BDD67C  4B 6F 16 C1 */	bl __dl__FPv
lbl_80BDD680:
/* 80BDD680  7F E3 FB 78 */	mr r3, r31
/* 80BDD684  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BDD688  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDD68C  7C 08 03 A6 */	mtlr r0
/* 80BDD690  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDD694  4E 80 00 20 */	blr 

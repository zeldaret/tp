lbl_80BDD4A8:
/* 80BDD4A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDD4AC  7C 08 02 A6 */	mflr r0
/* 80BDD4B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDD4B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BDD4B8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BDD4BC  41 82 00 30 */	beq lbl_80BDD4EC
/* 80BDD4C0  3C 60 80 BE */	lis r3, __vt__10dCcD_GStts@ha /* 0x80BDD7BC@ha */
/* 80BDD4C4  38 03 D7 BC */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80BDD7BC@l */
/* 80BDD4C8  90 1F 00 00 */	stw r0, 0(r31)
/* 80BDD4CC  41 82 00 10 */	beq lbl_80BDD4DC
/* 80BDD4D0  3C 60 80 BE */	lis r3, __vt__10cCcD_GStts@ha /* 0x80BDD7B0@ha */
/* 80BDD4D4  38 03 D7 B0 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80BDD7B0@l */
/* 80BDD4D8  90 1F 00 00 */	stw r0, 0(r31)
lbl_80BDD4DC:
/* 80BDD4DC  7C 80 07 35 */	extsh. r0, r4
/* 80BDD4E0  40 81 00 0C */	ble lbl_80BDD4EC
/* 80BDD4E4  7F E3 FB 78 */	mr r3, r31
/* 80BDD4E8  4B 6F 18 55 */	bl __dl__FPv
lbl_80BDD4EC:
/* 80BDD4EC  7F E3 FB 78 */	mr r3, r31
/* 80BDD4F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BDD4F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDD4F8  7C 08 03 A6 */	mtlr r0
/* 80BDD4FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDD500  4E 80 00 20 */	blr 

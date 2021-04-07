lbl_809BDD50:
/* 809BDD50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BDD54  7C 08 02 A6 */	mflr r0
/* 809BDD58  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BDD5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BDD60  7C 7F 1B 79 */	or. r31, r3, r3
/* 809BDD64  41 82 00 30 */	beq lbl_809BDD94
/* 809BDD68  3C 60 80 9C */	lis r3, __vt__10dCcD_GStts@ha /* 0x809BE728@ha */
/* 809BDD6C  38 03 E7 28 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x809BE728@l */
/* 809BDD70  90 1F 00 00 */	stw r0, 0(r31)
/* 809BDD74  41 82 00 10 */	beq lbl_809BDD84
/* 809BDD78  3C 60 80 9C */	lis r3, __vt__10cCcD_GStts@ha /* 0x809BE71C@ha */
/* 809BDD7C  38 03 E7 1C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x809BE71C@l */
/* 809BDD80  90 1F 00 00 */	stw r0, 0(r31)
lbl_809BDD84:
/* 809BDD84  7C 80 07 35 */	extsh. r0, r4
/* 809BDD88  40 81 00 0C */	ble lbl_809BDD94
/* 809BDD8C  7F E3 FB 78 */	mr r3, r31
/* 809BDD90  4B 91 0F AD */	bl __dl__FPv
lbl_809BDD94:
/* 809BDD94  7F E3 FB 78 */	mr r3, r31
/* 809BDD98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BDD9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BDDA0  7C 08 03 A6 */	mtlr r0
/* 809BDDA4  38 21 00 10 */	addi r1, r1, 0x10
/* 809BDDA8  4E 80 00 20 */	blr 

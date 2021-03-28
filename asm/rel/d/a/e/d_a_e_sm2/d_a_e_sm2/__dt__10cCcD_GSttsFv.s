lbl_8079CE4C:
/* 8079CE4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8079CE50  7C 08 02 A6 */	mflr r0
/* 8079CE54  90 01 00 14 */	stw r0, 0x14(r1)
/* 8079CE58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8079CE5C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8079CE60  41 82 00 1C */	beq lbl_8079CE7C
/* 8079CE64  3C A0 80 7A */	lis r5, __vt__10cCcD_GStts@ha
/* 8079CE68  38 05 DA C8 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 8079CE6C  90 1F 00 00 */	stw r0, 0(r31)
/* 8079CE70  7C 80 07 35 */	extsh. r0, r4
/* 8079CE74  40 81 00 08 */	ble lbl_8079CE7C
/* 8079CE78  4B B3 1E C4 */	b __dl__FPv
lbl_8079CE7C:
/* 8079CE7C  7F E3 FB 78 */	mr r3, r31
/* 8079CE80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8079CE84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8079CE88  7C 08 03 A6 */	mtlr r0
/* 8079CE8C  38 21 00 10 */	addi r1, r1, 0x10
/* 8079CE90  4E 80 00 20 */	blr 

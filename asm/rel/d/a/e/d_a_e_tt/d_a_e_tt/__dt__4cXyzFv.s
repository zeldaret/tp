lbl_807C1F68:
/* 807C1F68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807C1F6C  7C 08 02 A6 */	mflr r0
/* 807C1F70  90 01 00 14 */	stw r0, 0x14(r1)
/* 807C1F74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807C1F78  7C 7F 1B 79 */	or. r31, r3, r3
/* 807C1F7C  41 82 00 10 */	beq lbl_807C1F8C
/* 807C1F80  7C 80 07 35 */	extsh. r0, r4
/* 807C1F84  40 81 00 08 */	ble lbl_807C1F8C
/* 807C1F88  4B B0 CD B4 */	b __dl__FPv
lbl_807C1F8C:
/* 807C1F8C  7F E3 FB 78 */	mr r3, r31
/* 807C1F90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807C1F94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807C1F98  7C 08 03 A6 */	mtlr r0
/* 807C1F9C  38 21 00 10 */	addi r1, r1, 0x10
/* 807C1FA0  4E 80 00 20 */	blr 

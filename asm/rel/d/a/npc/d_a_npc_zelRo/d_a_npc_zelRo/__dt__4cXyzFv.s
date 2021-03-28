lbl_80B73E18:
/* 80B73E18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B73E1C  7C 08 02 A6 */	mflr r0
/* 80B73E20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B73E24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B73E28  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B73E2C  41 82 00 10 */	beq lbl_80B73E3C
/* 80B73E30  7C 80 07 35 */	extsh. r0, r4
/* 80B73E34  40 81 00 08 */	ble lbl_80B73E3C
/* 80B73E38  4B 75 AF 04 */	b __dl__FPv
lbl_80B73E3C:
/* 80B73E3C  7F E3 FB 78 */	mr r3, r31
/* 80B73E40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B73E44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B73E48  7C 08 03 A6 */	mtlr r0
/* 80B73E4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B73E50  4E 80 00 20 */	blr 

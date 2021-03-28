lbl_80C04E14:
/* 80C04E14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C04E18  7C 08 02 A6 */	mflr r0
/* 80C04E1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C04E20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C04E24  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C04E28  41 82 00 10 */	beq lbl_80C04E38
/* 80C04E2C  7C 80 07 35 */	extsh. r0, r4
/* 80C04E30  40 81 00 08 */	ble lbl_80C04E38
/* 80C04E34  4B 6C 9F 08 */	b __dl__FPv
lbl_80C04E38:
/* 80C04E38  7F E3 FB 78 */	mr r3, r31
/* 80C04E3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C04E40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C04E44  7C 08 03 A6 */	mtlr r0
/* 80C04E48  38 21 00 10 */	addi r1, r1, 0x10
/* 80C04E4C  4E 80 00 20 */	blr 

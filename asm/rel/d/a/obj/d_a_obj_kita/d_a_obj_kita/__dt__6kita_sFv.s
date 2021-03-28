lbl_80C45E44:
/* 80C45E44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C45E48  7C 08 02 A6 */	mflr r0
/* 80C45E4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C45E50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C45E54  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C45E58  41 82 00 10 */	beq lbl_80C45E68
/* 80C45E5C  7C 80 07 35 */	extsh. r0, r4
/* 80C45E60  40 81 00 08 */	ble lbl_80C45E68
/* 80C45E64  4B 68 8E D8 */	b __dl__FPv
lbl_80C45E68:
/* 80C45E68  7F E3 FB 78 */	mr r3, r31
/* 80C45E6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C45E70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C45E74  7C 08 03 A6 */	mtlr r0
/* 80C45E78  38 21 00 10 */	addi r1, r1, 0x10
/* 80C45E7C  4E 80 00 20 */	blr 

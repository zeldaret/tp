lbl_809B2F30:
/* 809B2F30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B2F34  7C 08 02 A6 */	mflr r0
/* 809B2F38  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B2F3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809B2F40  93 C1 00 08 */	stw r30, 8(r1)
/* 809B2F44  7C 7E 1B 78 */	mr r30, r3
/* 809B2F48  4B 79 55 E4 */	b execute__8daNpcT_cFv
/* 809B2F4C  7C 7F 1B 78 */	mr r31, r3
/* 809B2F50  38 7E 10 04 */	addi r3, r30, 0x1004
/* 809B2F54  4B 65 A4 D4 */	b play__14mDoExt_baseAnmFv
/* 809B2F58  38 7E 10 1C */	addi r3, r30, 0x101c
/* 809B2F5C  4B 65 A4 CC */	b play__14mDoExt_baseAnmFv
/* 809B2F60  80 7E 0F F8 */	lwz r3, 0xff8(r30)
/* 809B2F64  38 80 00 00 */	li r4, 0
/* 809B2F68  38 A0 00 00 */	li r5, 0
/* 809B2F6C  4B 65 E1 44 */	b play__16mDoExt_McaMorfSOFUlSc
/* 809B2F70  7F E3 FB 78 */	mr r3, r31
/* 809B2F74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809B2F78  83 C1 00 08 */	lwz r30, 8(r1)
/* 809B2F7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B2F80  7C 08 03 A6 */	mtlr r0
/* 809B2F84  38 21 00 10 */	addi r1, r1, 0x10
/* 809B2F88  4E 80 00 20 */	blr 

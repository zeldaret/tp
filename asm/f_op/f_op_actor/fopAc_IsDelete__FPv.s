lbl_80018F78:
/* 80018F78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80018F7C  7C 08 02 A6 */	mflr r0
/* 80018F80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80018F84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80018F88  93 C1 00 08 */	stw r30, 8(r1)
/* 80018F8C  7C 7F 1B 78 */	mr r31, r3
/* 80018F90  80 63 00 EC */	lwz r3, 0xec(r3)
/* 80018F94  7F E4 FB 78 */	mr r4, r31
/* 80018F98  48 00 94 ED */	bl fpcMtd_IsDelete__FP20process_method_classPv
/* 80018F9C  7C 7E 1B 78 */	mr r30, r3
/* 80018FA0  2C 1E 00 01 */	cmpwi r30, 1
/* 80018FA4  40 82 00 0C */	bne lbl_80018FB0
/* 80018FA8  38 7F 00 D8 */	addi r3, r31, 0xd8
/* 80018FAC  48 00 75 29 */	bl fopDwTg_DrawQTo__FP16create_tag_class
lbl_80018FB0:
/* 80018FB0  7F C3 F3 78 */	mr r3, r30
/* 80018FB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80018FB8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80018FBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80018FC0  7C 08 03 A6 */	mtlr r0
/* 80018FC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80018FC8  4E 80 00 20 */	blr 

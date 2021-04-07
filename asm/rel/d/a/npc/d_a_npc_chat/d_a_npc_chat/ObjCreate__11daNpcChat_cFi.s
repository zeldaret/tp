lbl_80980F88:
/* 80980F88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80980F8C  7C 08 02 A6 */	mflr r0
/* 80980F90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80980F94  48 00 03 69 */	bl getObjMdlDataP__11daNpcChat_cFi
/* 80980F98  28 03 00 00 */	cmplwi r3, 0
/* 80980F9C  41 82 00 18 */	beq lbl_80980FB4
/* 80980FA0  3C 80 00 08 */	lis r4, 8
/* 80980FA4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80980FA8  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80980FAC  4B 69 3C A9 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80980FB0  48 00 00 08 */	b lbl_80980FB8
lbl_80980FB4:
/* 80980FB4  38 60 00 00 */	li r3, 0
lbl_80980FB8:
/* 80980FB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80980FBC  7C 08 03 A6 */	mtlr r0
/* 80980FC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80980FC4  4E 80 00 20 */	blr 

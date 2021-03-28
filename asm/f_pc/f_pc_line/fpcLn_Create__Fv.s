lbl_80021F64:
/* 80021F64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80021F68  7C 08 02 A6 */	mflr r0
/* 80021F6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80021F70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80021F74  93 C1 00 08 */	stw r30, 8(r1)
/* 80021F78  3C 60 80 3F */	lis r3, l_fpcLn_Line@ha
/* 80021F7C  38 03 4C F0 */	addi r0, r3, l_fpcLn_Line@l
/* 80021F80  7C 1E 03 78 */	mr r30, r0
/* 80021F84  3B E0 00 0F */	li r31, 0xf
lbl_80021F88:
/* 80021F88  7F C3 F3 78 */	mr r3, r30
/* 80021F8C  3B DE 00 0C */	addi r30, r30, 0xc
/* 80021F90  48 24 40 B1 */	bl cLs_Create__FP15node_list_class
/* 80021F94  2C 1F 00 00 */	cmpwi r31, 0
/* 80021F98  3B FF FF FF */	addi r31, r31, -1
/* 80021F9C  41 81 FF EC */	bgt lbl_80021F88
/* 80021FA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80021FA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80021FA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80021FAC  7C 08 03 A6 */	mtlr r0
/* 80021FB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80021FB4  4E 80 00 20 */	blr 

lbl_80023C64:
/* 80023C64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80023C68  7C 08 02 A6 */	mflr r0
/* 80023C6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80023C70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80023C74  83 E3 00 40 */	lwz r31, 0x40(r3)
/* 80023C78  80 6D 87 C0 */	lwz r3, g_fpcNd_type(r13)
/* 80023C7C  80 9F 00 B4 */	lwz r4, 0xb4(r31)
/* 80023C80  4B FF C9 CD */	bl fpcBs_Is_JustOfType__Fii
/* 80023C84  2C 03 00 01 */	cmpwi r3, 1
/* 80023C88  40 82 00 1C */	bne lbl_80023CA4
/* 80023C8C  38 7F 00 BC */	addi r3, r31, 0xbc
/* 80023C90  4B FF DA 11 */	bl fpcLy_IsCreatingMesg__FP11layer_class
/* 80023C94  2C 03 00 01 */	cmpwi r3, 1
/* 80023C98  40 82 00 0C */	bne lbl_80023CA4
/* 80023C9C  38 60 00 00 */	li r3, 0
/* 80023CA0  48 00 00 08 */	b lbl_80023CA8
lbl_80023CA4:
/* 80023CA4  38 60 00 02 */	li r3, 2
lbl_80023CA8:
/* 80023CA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80023CAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80023CB0  7C 08 03 A6 */	mtlr r0
/* 80023CB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80023CB8  4E 80 00 20 */	blr 

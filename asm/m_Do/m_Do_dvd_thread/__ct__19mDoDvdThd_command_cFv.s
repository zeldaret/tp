lbl_80015B74:
/* 80015B74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80015B78  7C 08 02 A6 */	mflr r0
/* 80015B7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80015B80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80015B84  7C 7F 1B 78 */	mr r31, r3
/* 80015B88  3C 80 80 3A */	lis r4, __vt__19mDoDvdThd_command_c@ha
/* 80015B8C  38 04 34 E8 */	addi r0, r4, __vt__19mDoDvdThd_command_c@l
/* 80015B90  90 03 00 10 */	stw r0, 0x10(r3)
/* 80015B94  38 00 00 00 */	li r0, 0
/* 80015B98  98 03 00 0C */	stb r0, 0xc(r3)
/* 80015B9C  48 25 07 61 */	bl cNd_ForcedClear__FP10node_class
/* 80015BA0  7F E3 FB 78 */	mr r3, r31
/* 80015BA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80015BA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80015BAC  7C 08 03 A6 */	mtlr r0
/* 80015BB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80015BB4  4E 80 00 20 */	blr 

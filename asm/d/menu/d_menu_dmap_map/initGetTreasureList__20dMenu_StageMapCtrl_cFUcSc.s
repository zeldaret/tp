lbl_801C0F94:
/* 801C0F94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C0F98  7C 08 02 A6 */	mflr r0
/* 801C0F9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C0FA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C0FA4  93 C1 00 08 */	stw r30, 8(r1)
/* 801C0FA8  7C 7E 1B 78 */	mr r30, r3
/* 801C0FAC  7C 9F 23 78 */	mr r31, r4
/* 801C0FB0  9B E3 00 F6 */	stb r31, 0xf6(r3)
/* 801C0FB4  98 A3 00 F7 */	stb r5, 0xf7(r3)
/* 801C0FB8  7F E3 FB 78 */	mr r3, r31
/* 801C0FBC  4B ED B3 A5 */	bl getFirstData__7dTres_cFUc
/* 801C0FC0  90 7E 00 8C */	stw r3, 0x8c(r30)
/* 801C0FC4  3C 60 80 42 */	lis r3, mTypeGroupListAll__7dTres_c@ha /* 0x80425438@ha */
/* 801C0FC8  38 63 54 38 */	addi r3, r3, mTypeGroupListAll__7dTres_c@l /* 0x80425438@l */
/* 801C0FCC  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 801C0FD0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801C0FD4  7C 63 02 14 */	add r3, r3, r0
/* 801C0FD8  88 03 00 08 */	lbz r0, 8(r3)
/* 801C0FDC  B0 1E 00 E4 */	sth r0, 0xe4(r30)
/* 801C0FE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C0FE4  83 C1 00 08 */	lwz r30, 8(r1)
/* 801C0FE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C0FEC  7C 08 03 A6 */	mtlr r0
/* 801C0FF0  38 21 00 10 */	addi r1, r1, 0x10
/* 801C0FF4  4E 80 00 20 */	blr 

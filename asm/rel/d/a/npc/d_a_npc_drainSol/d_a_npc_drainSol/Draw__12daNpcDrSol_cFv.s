lbl_809AE5CC:
/* 809AE5CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AE5D0  7C 08 02 A6 */	mflr r0
/* 809AE5D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AE5D8  38 80 00 00 */	li r4, 0
/* 809AE5DC  38 A0 00 00 */	li r5, 0
/* 809AE5E0  3C C0 80 9B */	lis r6, m__18daNpcDrSol_Param_c@ha
/* 809AE5E4  38 C6 F9 A4 */	addi r6, r6, m__18daNpcDrSol_Param_c@l
/* 809AE5E8  C0 26 00 0C */	lfs f1, 0xc(r6)
/* 809AE5EC  38 C0 00 00 */	li r6, 0
/* 809AE5F0  38 E0 00 00 */	li r7, 0
/* 809AE5F4  4B 7A 3C B8 */	b draw__8daNpcF_cFiifP11_GXColorS10i
/* 809AE5F8  38 60 00 01 */	li r3, 1
/* 809AE5FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AE600  7C 08 03 A6 */	mtlr r0
/* 809AE604  38 21 00 10 */	addi r1, r1, 0x10
/* 809AE608  4E 80 00 20 */	blr 

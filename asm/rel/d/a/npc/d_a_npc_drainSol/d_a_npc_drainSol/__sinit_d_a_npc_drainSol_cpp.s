lbl_809AF8F4:
/* 809AF8F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AF8F8  7C 08 02 A6 */	mflr r0
/* 809AF8FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AF900  3C 60 80 9B */	lis r3, __vt__18daNpcDrSol_Param_c@ha /* 0x809AFC28@ha */
/* 809AF904  38 03 FC 28 */	addi r0, r3, __vt__18daNpcDrSol_Param_c@l /* 0x809AFC28@l */
/* 809AF908  3C 60 80 9B */	lis r3, l_HIO@ha /* 0x809AFC4C@ha */
/* 809AF90C  94 03 FC 4C */	stwu r0, l_HIO@l(r3)  /* 0x809AFC4C@l */
/* 809AF910  3C 80 80 9B */	lis r4, __dt__18daNpcDrSol_Param_cFv@ha /* 0x809AF938@ha */
/* 809AF914  38 84 F9 38 */	addi r4, r4, __dt__18daNpcDrSol_Param_cFv@l /* 0x809AF938@l */
/* 809AF918  3C A0 80 9B */	lis r5, lit_3801@ha /* 0x809AFC40@ha */
/* 809AF91C  38 A5 FC 40 */	addi r5, r5, lit_3801@l /* 0x809AFC40@l */
/* 809AF920  4B FF E4 D9 */	bl __register_global_object
/* 809AF924  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AF928  7C 08 03 A6 */	mtlr r0
/* 809AF92C  38 21 00 10 */	addi r1, r1, 0x10
/* 809AF930  4E 80 00 20 */	blr 

lbl_809B17E8:
/* 809B17E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B17EC  7C 08 02 A6 */	mflr r0
/* 809B17F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B17F4  3C 60 80 9B */	lis r3, l_HIO@ha
/* 809B17F8  38 63 19 F8 */	addi r3, r3, l_HIO@l
/* 809B17FC  4B FF E5 51 */	bl __ct__14daNpc_Du_HIO_cFv
/* 809B1800  3C 80 80 9B */	lis r4, __dt__14daNpc_Du_HIO_cFv@ha
/* 809B1804  38 84 17 A0 */	addi r4, r4, __dt__14daNpc_Du_HIO_cFv@l
/* 809B1808  3C A0 80 9B */	lis r5, lit_3757@ha
/* 809B180C  38 A5 19 EC */	addi r5, r5, lit_3757@l
/* 809B1810  4B FF E4 C9 */	bl __register_global_object
/* 809B1814  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B1818  7C 08 03 A6 */	mtlr r0
/* 809B181C  38 21 00 10 */	addi r1, r1, 0x10
/* 809B1820  4E 80 00 20 */	blr 

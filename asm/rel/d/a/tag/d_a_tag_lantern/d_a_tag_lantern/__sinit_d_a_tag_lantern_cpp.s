lbl_8048F0AC:
/* 8048F0AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048F0B0  7C 08 02 A6 */	mflr r0
/* 8048F0B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048F0B8  3C 60 80 49 */	lis r3, __vt__21daTag_Lantern_Param_c@ha
/* 8048F0BC  38 03 F1 B0 */	addi r0, r3, __vt__21daTag_Lantern_Param_c@l
/* 8048F0C0  3C 60 80 49 */	lis r3, l_HIO@ha
/* 8048F0C4  94 03 F1 D4 */	stwu r0, l_HIO@l(r3)
/* 8048F0C8  3C 80 80 49 */	lis r4, __dt__21daTag_Lantern_Param_cFv@ha
/* 8048F0CC  38 84 F0 EC */	addi r4, r4, __dt__21daTag_Lantern_Param_cFv@l
/* 8048F0D0  3C A0 80 49 */	lis r5, lit_3622@ha
/* 8048F0D4  38 A5 F1 C8 */	addi r5, r5, lit_3622@l
/* 8048F0D8  4B FF FB 61 */	bl __register_global_object
/* 8048F0DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048F0E0  7C 08 03 A6 */	mtlr r0
/* 8048F0E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8048F0E8  4E 80 00 20 */	blr 

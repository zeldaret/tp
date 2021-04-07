lbl_80CCE0D8:
/* 80CCE0D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCE0DC  7C 08 02 A6 */	mflr r0
/* 80CCE0E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCE0E4  3C 60 80 CD */	lis r3, __vt__20daObj_Sekizo_Param_c@ha /* 0x80CCE22C@ha */
/* 80CCE0E8  38 03 E2 2C */	addi r0, r3, __vt__20daObj_Sekizo_Param_c@l /* 0x80CCE22C@l */
/* 80CCE0EC  3C 60 80 CD */	lis r3, l_HIO@ha /* 0x80CCE24C@ha */
/* 80CCE0F0  94 03 E2 4C */	stwu r0, l_HIO@l(r3)  /* 0x80CCE24C@l */
/* 80CCE0F4  3C 80 80 CD */	lis r4, __dt__20daObj_Sekizo_Param_cFv@ha /* 0x80CCE118@ha */
/* 80CCE0F8  38 84 E1 18 */	addi r4, r4, __dt__20daObj_Sekizo_Param_cFv@l /* 0x80CCE118@l */
/* 80CCE0FC  3C A0 80 CD */	lis r5, lit_3800@ha /* 0x80CCE240@ha */
/* 80CCE100  38 A5 E2 40 */	addi r5, r5, lit_3800@l /* 0x80CCE240@l */
/* 80CCE104  4B FF FA 95 */	bl __register_global_object
/* 80CCE108  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCE10C  7C 08 03 A6 */	mtlr r0
/* 80CCE110  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCE114  4E 80 00 20 */	blr 

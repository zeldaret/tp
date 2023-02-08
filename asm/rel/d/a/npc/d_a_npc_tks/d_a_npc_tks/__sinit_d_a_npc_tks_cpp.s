lbl_80B1D400:
/* 80B1D400  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B1D404  7C 08 02 A6 */	mflr r0
/* 80B1D408  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1D40C  3C 60 80 B2 */	lis r3, __vt__16daNpcTks_Param_c@ha /* 0x80B1E530@ha */
/* 80B1D410  38 03 E5 30 */	addi r0, r3, __vt__16daNpcTks_Param_c@l /* 0x80B1E530@l */
/* 80B1D414  3C 60 80 B2 */	lis r3, l_HIO@ha /* 0x80B1E554@ha */
/* 80B1D418  94 03 E5 54 */	stwu r0, l_HIO@l(r3)  /* 0x80B1E554@l */
/* 80B1D41C  3C 80 80 B2 */	lis r4, __dt__16daNpcTks_Param_cFv@ha /* 0x80B1DCEC@ha */
/* 80B1D420  38 84 DC EC */	addi r4, r4, __dt__16daNpcTks_Param_cFv@l /* 0x80B1DCEC@l */
/* 80B1D424  3C A0 80 B2 */	lis r5, lit_3935@ha /* 0x80B1E548@ha */
/* 80B1D428  38 A5 E5 48 */	addi r5, r5, lit_3935@l /* 0x80B1E548@l */
/* 80B1D42C  4B FF 71 8D */	bl __register_global_object
/* 80B1D430  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B1D434  7C 08 03 A6 */	mtlr r0
/* 80B1D438  38 21 00 10 */	addi r1, r1, 0x10
/* 80B1D43C  4E 80 00 20 */	blr 

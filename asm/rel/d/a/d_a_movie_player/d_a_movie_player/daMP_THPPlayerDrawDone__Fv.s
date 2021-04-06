lbl_808782A0:
/* 808782A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808782A4  7C 08 02 A6 */	mflr r0
/* 808782A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 808782AC  4B AE 40 49 */	bl GXDrawDone
/* 808782B0  3C 60 80 94 */	lis r3, daMP_Initialized@ha /* 0x80944888@ha */
/* 808782B4  80 03 48 88 */	lwz r0, daMP_Initialized@l(r3)  /* 0x80944888@l */
/* 808782B8  2C 00 00 00 */	cmpwi r0, 0
/* 808782BC  41 82 00 18 */	beq lbl_808782D4
lbl_808782C0:
/* 808782C0  4B FF EE F1 */	bl daMP_PopUsedTextureSet__Fv
/* 808782C4  28 03 00 00 */	cmplwi r3, 0
/* 808782C8  41 82 00 0C */	beq lbl_808782D4
/* 808782CC  4B FF D9 31 */	bl daMP_PushFreeTextureSet__FPv
/* 808782D0  4B FF FF F0 */	b lbl_808782C0
lbl_808782D4:
/* 808782D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 808782D8  7C 08 03 A6 */	mtlr r0
/* 808782DC  38 21 00 10 */	addi r1, r1, 0x10
/* 808782E0  4E 80 00 20 */	blr 

lbl_80781F30:
/* 80781F30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80781F34  7C 08 02 A6 */	mflr r0
/* 80781F38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80781F3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80781F40  7C 7F 1B 78 */	mr r31, r3
/* 80781F44  3C 60 80 78 */	lis r3, s_obj_sub__FPvPv@ha /* 0x80781C2C@ha */
/* 80781F48  38 63 1C 2C */	addi r3, r3, s_obj_sub__FPvPv@l /* 0x80781C2C@l */
/* 80781F4C  7F E4 FB 78 */	mr r4, r31
/* 80781F50  4B 89 F3 E9 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80781F54  3C 80 80 78 */	lis r4, data_80784FC4@ha /* 0x80784FC4@ha */
/* 80781F58  90 64 4F C4 */	stw r3, data_80784FC4@l(r4)  /* 0x80784FC4@l */
/* 80781F5C  28 03 00 00 */	cmplwi r3, 0
/* 80781F60  40 82 00 0C */	bne lbl_80781F6C
/* 80781F64  7F E3 FB 78 */	mr r3, r31
/* 80781F68  4B FF FB 91 */	bl MemberClear__8daE_SB_cFv
lbl_80781F6C:
/* 80781F6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80781F70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80781F74  7C 08 03 A6 */	mtlr r0
/* 80781F78  38 21 00 10 */	addi r1, r1, 0x10
/* 80781F7C  4E 80 00 20 */	blr 

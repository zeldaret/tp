lbl_80024EFC:
/* 80024EFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80024F00  7C 08 02 A6 */	mflr r0
/* 80024F04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80024F08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80024F0C  93 C1 00 08 */	stw r30, 8(r1)
/* 80024F10  7C 9E 23 78 */	mr r30, r4
/* 80024F14  4B FF FE AD */	bl dStage_searchName__FPCc
/* 80024F18  28 03 00 00 */	cmplwi r3, 0
/* 80024F1C  40 82 00 14 */	bne lbl_80024F30
/* 80024F20  7F C3 F3 78 */	mr r3, r30
/* 80024F24  38 80 00 00 */	li r4, 0
/* 80024F28  48 2A 95 D9 */	bl free__7JKRHeapFPvP7JKRHeap
/* 80024F2C  48 00 00 54 */	b lbl_80024F80
lbl_80024F30:
/* 80024F30  88 03 00 0A */	lbz r0, 0xa(r3)
/* 80024F34  98 1E 00 20 */	stb r0, 0x20(r30)
/* 80024F38  AB E3 00 08 */	lha r31, 8(r3)
/* 80024F3C  2C 1F 03 0F */	cmpwi r31, 0x30f
/* 80024F40  40 82 00 28 */	bne lbl_80024F68
/* 80024F44  7F E3 FB 78 */	mr r3, r31
/* 80024F48  38 80 00 00 */	li r4, 0
/* 80024F4C  38 A0 00 00 */	li r5, 0
/* 80024F50  7F C6 F3 78 */	mr r6, r30
/* 80024F54  4B FF 49 51 */	bl fopAcM_FastCreate__FsPFPv_iPvPv
/* 80024F58  28 03 00 00 */	cmplwi r3, 0
/* 80024F5C  41 82 00 24 */	beq lbl_80024F80
/* 80024F60  4B FF 4D 1D */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80024F64  48 00 00 1C */	b lbl_80024F80
lbl_80024F68:
/* 80024F68  4B FF C7 8D */	bl fpcLy_CurrentLayer__Fv
/* 80024F6C  7F E4 FB 78 */	mr r4, r31
/* 80024F70  38 A0 00 00 */	li r5, 0
/* 80024F74  38 C0 00 00 */	li r6, 0
/* 80024F78  7F C7 F3 78 */	mr r7, r30
/* 80024F7C  4B FF EE 19 */	bl fpcSCtRq_Request__FP11layer_classsPFPvPv_iPvPv
lbl_80024F80:
/* 80024F80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80024F84  83 C1 00 08 */	lwz r30, 8(r1)
/* 80024F88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80024F8C  7C 08 03 A6 */	mtlr r0
/* 80024F90  38 21 00 10 */	addi r1, r1, 0x10
/* 80024F94  4E 80 00 20 */	blr 

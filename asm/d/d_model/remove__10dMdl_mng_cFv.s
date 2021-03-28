lbl_8009C864:
/* 8009C864  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009C868  7C 08 02 A6 */	mflr r0
/* 8009C86C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009C870  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8009C874  83 ED 8A 20 */	lwz r31, m_myObj__10dMdl_mng_c(r13)
/* 8009C878  28 1F 00 00 */	cmplwi r31, 0
/* 8009C87C  41 82 00 30 */	beq lbl_8009C8AC
/* 8009C880  41 82 00 24 */	beq lbl_8009C8A4
/* 8009C884  7F E3 FB 78 */	mr r3, r31
/* 8009C888  3C 80 80 0A */	lis r4, __dt__6dMdl_cFv@ha
/* 8009C88C  38 84 C8 08 */	addi r4, r4, __dt__6dMdl_cFv@l
/* 8009C890  38 A0 00 20 */	li r5, 0x20
/* 8009C894  38 C0 00 04 */	li r6, 4
/* 8009C898  48 2C 54 51 */	bl __destroy_arr
/* 8009C89C  7F E3 FB 78 */	mr r3, r31
/* 8009C8A0  48 23 24 9D */	bl __dl__FPv
lbl_8009C8A4:
/* 8009C8A4  38 00 00 00 */	li r0, 0
/* 8009C8A8  90 0D 8A 20 */	stw r0, m_myObj__10dMdl_mng_c(r13)
lbl_8009C8AC:
/* 8009C8AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8009C8B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009C8B4  7C 08 03 A6 */	mtlr r0
/* 8009C8B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8009C8BC  4E 80 00 20 */	blr 

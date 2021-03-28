lbl_8001F368:
/* 8001F368  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001F36C  7C 08 02 A6 */	mflr r0
/* 8001F370  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001F374  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001F378  93 C1 00 08 */	stw r30, 8(r1)
/* 8001F37C  7C 7F 1B 78 */	mr r31, r3
/* 8001F380  80 63 00 D8 */	lwz r3, 0xd8(r3)
/* 8001F384  7F E4 FB 78 */	mr r4, r31
/* 8001F388  48 00 31 21 */	bl fpcMtd_Delete__FP20process_method_classPv
/* 8001F38C  7C 7E 1B 78 */	mr r30, r3
/* 8001F390  38 7F 00 C4 */	addi r3, r31, 0xc4
/* 8001F394  48 00 11 41 */	bl fopDwTg_DrawQTo__FP16create_tag_class
/* 8001F398  7F C3 F3 78 */	mr r3, r30
/* 8001F39C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001F3A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8001F3A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001F3A8  7C 08 03 A6 */	mtlr r0
/* 8001F3AC  38 21 00 10 */	addi r1, r1, 0x10
/* 8001F3B0  4E 80 00 20 */	blr 

lbl_80021188:
/* 80021188  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002118C  7C 08 02 A6 */	mflr r0
/* 80021190  90 01 00 14 */	stw r0, 0x14(r1)
/* 80021194  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80021198  93 C1 00 08 */	stw r30, 8(r1)
/* 8002119C  7C 7E 1B 78 */	mr r30, r3
/* 800211A0  88 03 00 0A */	lbz r0, 0xa(r3)
/* 800211A4  2C 00 00 01 */	cmpwi r0, 1
/* 800211A8  40 82 00 0C */	bne lbl_800211B4
/* 800211AC  38 60 00 00 */	li r3, 0
/* 800211B0  48 00 00 DC */	b lbl_8002128C
lbl_800211B4:
/* 800211B4  38 7E 00 4C */	addi r3, r30, 0x4c
/* 800211B8  48 24 56 C9 */	bl cTg_IsUse__FP16create_tag_class
/* 800211BC  2C 03 00 00 */	cmpwi r3, 0
/* 800211C0  41 82 00 0C */	beq lbl_800211CC
/* 800211C4  38 60 00 01 */	li r3, 1
/* 800211C8  48 00 00 C4 */	b lbl_8002128C
lbl_800211CC:
/* 800211CC  80 6D 87 C0 */	lwz r3, g_fpcNd_type(r13)
/* 800211D0  80 9E 00 B4 */	lwz r4, 0xb4(r30)
/* 800211D4  4B FF F4 79 */	bl fpcBs_Is_JustOfType__Fii
/* 800211D8  2C 03 00 00 */	cmpwi r3, 0
/* 800211DC  41 82 00 4C */	beq lbl_80021228
/* 800211E0  7F C3 F3 78 */	mr r3, r30
/* 800211E4  48 00 14 79 */	bl fpcNd_IsDeleteTiming__FP18process_node_class
/* 800211E8  2C 03 00 00 */	cmpwi r3, 0
/* 800211EC  40 82 00 0C */	bne lbl_800211F8
/* 800211F0  38 60 00 00 */	li r3, 0
/* 800211F4  48 00 00 98 */	b lbl_8002128C
lbl_800211F8:
/* 800211F8  3B FE 00 BC */	addi r31, r30, 0xbc
/* 800211FC  7F E3 FB 78 */	mr r3, r31
/* 80021200  48 00 06 9D */	bl fpcLy_Cancel__FP11layer_class
/* 80021204  7F E3 FB 78 */	mr r3, r31
/* 80021208  3C 80 80 02 */	lis r4, fpcDt_ToDeleteQ__FP18base_process_class@ha
/* 8002120C  38 84 11 88 */	addi r4, r4, fpcDt_ToDeleteQ__FP18base_process_class@l
/* 80021210  38 A0 00 00 */	li r5, 0
/* 80021214  48 00 09 AD */	bl fpcLyIt_OnlyHereLY__FP11layer_classPFPvPv_iPv
/* 80021218  2C 03 00 00 */	cmpwi r3, 0
/* 8002121C  40 82 00 0C */	bne lbl_80021228
/* 80021220  38 60 00 00 */	li r3, 0
/* 80021224  48 00 00 68 */	b lbl_8002128C
lbl_80021228:
/* 80021228  7F C3 F3 78 */	mr r3, r30
/* 8002122C  4B FF FE E1 */	bl fpcDt_ToQueue__FP18base_process_class
/* 80021230  2C 03 00 01 */	cmpwi r3, 1
/* 80021234  40 82 00 54 */	bne lbl_80021288
/* 80021238  80 7E 00 04 */	lwz r3, 4(r30)
/* 8002123C  48 00 01 61 */	bl fpcEx_IsExist__FUi
/* 80021240  2C 03 00 01 */	cmpwi r3, 1
/* 80021244  40 82 00 1C */	bne lbl_80021260
/* 80021248  7F C3 F3 78 */	mr r3, r30
/* 8002124C  48 00 02 79 */	bl fpcEx_ExecuteQTo__FP18base_process_class
/* 80021250  2C 03 00 00 */	cmpwi r3, 0
/* 80021254  40 82 00 24 */	bne lbl_80021278
/* 80021258  38 60 00 00 */	li r3, 0
/* 8002125C  48 00 00 30 */	b lbl_8002128C
lbl_80021260:
/* 80021260  7F C3 F3 78 */	mr r3, r30
/* 80021264  4B FF FC 89 */	bl fpcCt_Abort__FP18base_process_class
/* 80021268  2C 03 00 00 */	cmpwi r3, 0
/* 8002126C  40 82 00 0C */	bne lbl_80021278
/* 80021270  38 60 00 00 */	li r3, 0
/* 80021274  48 00 00 18 */	b lbl_8002128C
lbl_80021278:
/* 80021278  38 00 00 03 */	li r0, 3
/* 8002127C  98 1E 00 0C */	stb r0, 0xc(r30)
/* 80021280  38 60 00 01 */	li r3, 1
/* 80021284  48 00 00 08 */	b lbl_8002128C
lbl_80021288:
/* 80021288  38 60 00 00 */	li r3, 0
lbl_8002128C:
/* 8002128C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80021290  83 C1 00 08 */	lwz r30, 8(r1)
/* 80021294  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80021298  7C 08 03 A6 */	mtlr r0
/* 8002129C  38 21 00 10 */	addi r1, r1, 0x10
/* 800212A0  4E 80 00 20 */	blr 

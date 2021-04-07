lbl_80021418:
/* 80021418  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002141C  7C 08 02 A6 */	mflr r0
/* 80021420  90 01 00 14 */	stw r0, 0x14(r1)
/* 80021424  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80021428  7C 7F 1B 78 */	mr r31, r3
/* 8002142C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80021430  80 83 00 18 */	lwz r4, 0x18(r3)
/* 80021434  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80021438  28 00 00 00 */	cmplwi r0, 0
/* 8002143C  41 82 00 14 */	beq lbl_80021450
/* 80021440  38 64 00 34 */	addi r3, r4, 0x34
/* 80021444  48 24 54 3D */	bl cTg_IsUse__FP16create_tag_class
/* 80021448  2C 03 00 01 */	cmpwi r3, 1
/* 8002144C  40 82 00 60 */	bne lbl_800214AC
lbl_80021450:
/* 80021450  38 7F 00 34 */	addi r3, r31, 0x34
/* 80021454  A0 9F 00 A4 */	lhz r4, 0xa4(r31)
/* 80021458  48 00 21 DD */	bl fpcLnTg_ToQueue__FP8line_tagi
/* 8002145C  2C 03 00 00 */	cmpwi r3, 0
/* 80021460  40 82 00 14 */	bne lbl_80021474
/* 80021464  38 7F 00 18 */	addi r3, r31, 0x18
/* 80021468  48 00 09 65 */	bl fpcLyTg_QueueTo__FP26layer_management_tag_class
/* 8002146C  38 60 00 00 */	li r3, 0
/* 80021470  48 00 00 40 */	b lbl_800214B0
lbl_80021474:
/* 80021474  38 00 00 02 */	li r0, 2
/* 80021478  98 1F 00 0C */	stb r0, 0xc(r31)
/* 8002147C  80 6D 87 C0 */	lwz r3, g_fpcNd_type(r13)
/* 80021480  80 9F 00 B4 */	lwz r4, 0xb4(r31)
/* 80021484  4B FF F1 C9 */	bl fpcBs_Is_JustOfType__Fii
/* 80021488  2C 03 00 00 */	cmpwi r3, 0
/* 8002148C  41 82 00 18 */	beq lbl_800214A4
/* 80021490  38 7F 00 BC */	addi r3, r31, 0xbc
/* 80021494  3C 80 80 02 */	lis r4, fpcEx_ToLineQ__FP18base_process_class@ha /* 0x80021418@ha */
/* 80021498  38 84 14 18 */	addi r4, r4, fpcEx_ToLineQ__FP18base_process_class@l /* 0x80021418@l */
/* 8002149C  7F E5 FB 78 */	mr r5, r31
/* 800214A0  48 00 06 E9 */	bl fpcLyIt_OnlyHere__FP11layer_classPFPvPv_iPv
lbl_800214A4:
/* 800214A4  38 60 00 01 */	li r3, 1
/* 800214A8  48 00 00 08 */	b lbl_800214B0
lbl_800214AC:
/* 800214AC  38 60 00 00 */	li r3, 0
lbl_800214B0:
/* 800214B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800214B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800214B8  7C 08 03 A6 */	mtlr r0
/* 800214BC  38 21 00 10 */	addi r1, r1, 0x10
/* 800214C0  4E 80 00 20 */	blr 

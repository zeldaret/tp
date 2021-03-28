lbl_80022728:
/* 80022728  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002272C  7C 08 02 A6 */	mflr r0
/* 80022730  90 01 00 14 */	stw r0, 0x14(r1)
/* 80022734  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80022738  93 C1 00 08 */	stw r30, 8(r1)
/* 8002273C  7C 7F 1B 78 */	mr r31, r3
/* 80022740  88 03 00 0C */	lbz r0, 0xc(r3)
/* 80022744  7C 00 07 75 */	extsb. r0, r0
/* 80022748  40 82 00 38 */	bne lbl_80022780
/* 8002274C  83 DF 00 10 */	lwz r30, 0x10(r31)
/* 80022750  38 6D 87 C0 */	la r3, g_fpcNd_type(r13) /* 80450D40-_SDA_BASE_ */
/* 80022754  4B FF DF 09 */	bl fpcBs_MakeOfType__FPi
/* 80022758  90 7F 00 B4 */	stw r3, 0xb4(r31)
/* 8002275C  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 80022760  90 1F 00 B8 */	stw r0, 0xb8(r31)
/* 80022764  38 7F 00 BC */	addi r3, r31, 0xbc
/* 80022768  7F E4 FB 78 */	mr r4, r31
/* 8002276C  38 BF 00 E8 */	addi r5, r31, 0xe8
/* 80022770  38 C0 00 10 */	li r6, 0x10
/* 80022774  4B FF F1 55 */	bl fpcLy_Create__FP11layer_classPvP15node_list_classi
/* 80022778  38 00 00 00 */	li r0, 0
/* 8002277C  98 1F 01 A8 */	stb r0, 0x1a8(r31)
lbl_80022780:
/* 80022780  4B FF EF 75 */	bl fpcLy_CurrentLayer__Fv
/* 80022784  7C 7E 1B 78 */	mr r30, r3
/* 80022788  38 7F 00 BC */	addi r3, r31, 0xbc
/* 8002278C  4B FF EF 61 */	bl fpcLy_SetCurrentLayer__FP11layer_class
/* 80022790  80 7F 00 B8 */	lwz r3, 0xb8(r31)
/* 80022794  7F E4 FB 78 */	mr r4, r31
/* 80022798  4B FF FD 35 */	bl fpcMtd_Create__FP20process_method_classPv
/* 8002279C  7C 7F 1B 78 */	mr r31, r3
/* 800227A0  7F C3 F3 78 */	mr r3, r30
/* 800227A4  4B FF EF 49 */	bl fpcLy_SetCurrentLayer__FP11layer_class
/* 800227A8  7F E3 FB 78 */	mr r3, r31
/* 800227AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800227B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 800227B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800227B8  7C 08 03 A6 */	mtlr r0
/* 800227BC  38 21 00 10 */	addi r1, r1, 0x10
/* 800227C0  4E 80 00 20 */	blr 

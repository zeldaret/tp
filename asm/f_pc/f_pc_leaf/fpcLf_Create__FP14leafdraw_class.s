lbl_80021B14:
/* 80021B14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80021B18  7C 08 02 A6 */	mflr r0
/* 80021B1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80021B20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80021B24  93 C1 00 08 */	stw r30, 8(r1)
/* 80021B28  7C 7E 1B 78 */	mr r30, r3
/* 80021B2C  88 03 00 0C */	lbz r0, 0xc(r3)
/* 80021B30  7C 00 07 75 */	extsb. r0, r0
/* 80021B34  40 82 00 30 */	bne lbl_80021B64
/* 80021B38  83 FE 00 10 */	lwz r31, 0x10(r30)
/* 80021B3C  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 80021B40  90 1E 00 B8 */	stw r0, 0xb8(r30)
/* 80021B44  38 6D 87 B0 */	la r3, g_fpcLf_type(r13) /* 80450D30-_SDA_BASE_ */
/* 80021B48  4B FF EB 15 */	bl fpcBs_MakeOfType__FPi
/* 80021B4C  90 7E 00 B4 */	stw r3, 0xb4(r30)
/* 80021B50  38 7E 00 BE */	addi r3, r30, 0xbe
/* 80021B54  A8 9F 00 20 */	lha r4, 0x20(r31)
/* 80021B58  4B FF F7 C1 */	bl fpcDwPi_Init__FP19draw_priority_classs
/* 80021B5C  38 00 00 00 */	li r0, 0
/* 80021B60  98 1E 00 BC */	stb r0, 0xbc(r30)
lbl_80021B64:
/* 80021B64  80 7E 00 B8 */	lwz r3, 0xb8(r30)
/* 80021B68  7F C4 F3 78 */	mr r4, r30
/* 80021B6C  48 00 09 61 */	bl fpcMtd_Create__FP20process_method_classPv
/* 80021B70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80021B74  83 C1 00 08 */	lwz r30, 8(r1)
/* 80021B78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80021B7C  7C 08 03 A6 */	mtlr r0
/* 80021B80  38 21 00 10 */	addi r1, r1, 0x10
/* 80021B84  4E 80 00 20 */	blr 

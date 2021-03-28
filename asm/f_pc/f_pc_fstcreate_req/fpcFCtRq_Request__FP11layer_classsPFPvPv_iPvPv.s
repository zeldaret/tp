lbl_80023AA0:
/* 80023AA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80023AA4  7C 08 02 A6 */	mflr r0
/* 80023AA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80023AAC  39 61 00 20 */	addi r11, r1, 0x20
/* 80023AB0  48 33 E7 21 */	bl _savegpr_26
/* 80023AB4  7C 7A 1B 78 */	mr r26, r3
/* 80023AB8  7C 9B 23 78 */	mr r27, r4
/* 80023ABC  7C BC 2B 78 */	mr r28, r5
/* 80023AC0  7C DD 33 78 */	mr r29, r6
/* 80023AC4  7C FE 3B 78 */	mr r30, r7
/* 80023AC8  7F 63 DB 78 */	mr r3, r27
/* 80023ACC  4B FF E4 ED */	bl fpcLd_Use__Fs
/* 80023AD0  2C 03 00 00 */	cmpwi r3, 0
/* 80023AD4  40 82 00 0C */	bne lbl_80023AE0
/* 80023AD8  38 60 00 00 */	li r3, 0
/* 80023ADC  48 00 00 7C */	b lbl_80023B58
lbl_80023AE0:
/* 80023AE0  7F 43 D3 78 */	mr r3, r26
/* 80023AE4  38 80 00 50 */	li r4, 0x50
/* 80023AE8  3C A0 80 3A */	lis r5, submethod@ha
/* 80023AEC  38 A5 3A E0 */	addi r5, r5, submethod@l
/* 80023AF0  4B FF D2 C1 */	bl fpcCtRq_Create__FP11layer_classUlP27create_request_method_class
/* 80023AF4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80023AF8  41 82 00 5C */	beq lbl_80023B54
/* 80023AFC  7F 43 D3 78 */	mr r3, r26
/* 80023B00  4B FF DB ED */	bl fpcLy_SetCurrentLayer__FP11layer_class
/* 80023B04  4B FF CB 99 */	bl fpcBs_MakeOfId__Fv
/* 80023B08  7C 64 1B 78 */	mr r4, r3
/* 80023B0C  7F 63 DB 78 */	mr r3, r27
/* 80023B10  7F C5 F3 78 */	mr r5, r30
/* 80023B14  4B FF CD 0D */	bl fpcBs_Create__FsUiPv
/* 80023B18  7C 7E 1B 79 */	or. r30, r3, r3
/* 80023B1C  41 82 00 30 */	beq lbl_80023B4C
/* 80023B20  93 FE 00 14 */	stw r31, 0x14(r30)
/* 80023B24  93 DF 00 40 */	stw r30, 0x40(r31)
/* 80023B28  80 1E 00 04 */	lwz r0, 4(r30)
/* 80023B2C  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 80023B30  4B FF CD ED */	bl fpcBs_SubCreate__FP18base_process_class
/* 80023B34  2C 03 00 02 */	cmpwi r3, 2
/* 80023B38  40 82 00 14 */	bne lbl_80023B4C
/* 80023B3C  93 9F 00 48 */	stw r28, 0x48(r31)
/* 80023B40  93 BF 00 4C */	stw r29, 0x4c(r31)
/* 80023B44  7F C3 F3 78 */	mr r3, r30
/* 80023B48  48 00 00 10 */	b lbl_80023B58
lbl_80023B4C:
/* 80023B4C  7F E3 FB 78 */	mr r3, r31
/* 80023B50  4B FF D0 C5 */	bl fpcCtRq_Cancel__FP14create_request
lbl_80023B54:
/* 80023B54  38 60 00 00 */	li r3, 0
lbl_80023B58:
/* 80023B58  39 61 00 20 */	addi r11, r1, 0x20
/* 80023B5C  48 33 E6 C1 */	bl _restgpr_26
/* 80023B60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80023B64  7C 08 03 A6 */	mtlr r0
/* 80023B68  38 21 00 20 */	addi r1, r1, 0x20
/* 80023B6C  4E 80 00 20 */	blr 

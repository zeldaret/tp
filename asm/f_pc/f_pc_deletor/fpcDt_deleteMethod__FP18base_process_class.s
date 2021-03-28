lbl_80021060:
/* 80021060  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80021064  7C 08 02 A6 */	mflr r0
/* 80021068  90 01 00 24 */	stw r0, 0x24(r1)
/* 8002106C  39 61 00 20 */	addi r11, r1, 0x20
/* 80021070  48 34 11 6D */	bl _savegpr_29
/* 80021074  7C 7D 1B 78 */	mr r29, r3
/* 80021078  83 E3 00 60 */	lwz r31, 0x60(r3)
/* 8002107C  AB C3 00 0E */	lha r30, 0xe(r3)
/* 80021080  7F E3 FB 78 */	mr r3, r31
/* 80021084  48 00 06 69 */	bl fpcLy_SetCurrentLayer__FP11layer_class
/* 80021088  38 7D 00 34 */	addi r3, r29, 0x34
/* 8002108C  48 00 25 75 */	bl fpcLnTg_QueueTo__FP8line_tag
/* 80021090  7F A3 EB 78 */	mr r3, r29
/* 80021094  4B FF F7 29 */	bl fpcBs_Delete__FP18base_process_class
/* 80021098  2C 03 00 01 */	cmpwi r3, 1
/* 8002109C  40 82 00 1C */	bne lbl_800210B8
/* 800210A0  7F E3 FB 78 */	mr r3, r31
/* 800210A4  48 00 05 E5 */	bl fpcLy_DeletedMesg__FP11layer_class
/* 800210A8  7F C3 F3 78 */	mr r3, r30
/* 800210AC  48 00 0F 81 */	bl fpcLd_Free__Fs
/* 800210B0  38 60 00 01 */	li r3, 1
/* 800210B4  48 00 00 08 */	b lbl_800210BC
lbl_800210B8:
/* 800210B8  38 60 00 00 */	li r3, 0
lbl_800210BC:
/* 800210BC  39 61 00 20 */	addi r11, r1, 0x20
/* 800210C0  48 34 11 69 */	bl _restgpr_29
/* 800210C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800210C8  7C 08 03 A6 */	mtlr r0
/* 800210CC  38 21 00 20 */	addi r1, r1, 0x20
/* 800210D0  4E 80 00 20 */	blr 

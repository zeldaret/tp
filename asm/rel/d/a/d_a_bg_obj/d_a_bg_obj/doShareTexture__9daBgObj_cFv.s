lbl_8045A83C:
/* 8045A83C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8045A840  7C 08 02 A6 */	mflr r0
/* 8045A844  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8045A848  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8045A84C  4B F0 79 89 */	bl _savegpr_27
/* 8045A850  7C 7B 1B 78 */	mr r27, r3
/* 8045A854  80 63 0C E8 */	lwz r3, 0xce8(r3)
/* 8045A858  3B C3 00 08 */	addi r30, r3, 8
/* 8045A85C  3B A0 00 00 */	li r29, 0
/* 8045A860  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8045A864  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8045A868  3F E3 00 02 */	addis r31, r3, 2
/* 8045A86C  3B FF C2 F8 */	addi r31, r31, -15624
/* 8045A870  48 00 00 AC */	b lbl_8045A91C
lbl_8045A874:
/* 8045A874  38 61 00 48 */	addi r3, r1, 0x48
/* 8045A878  7F C4 F3 78 */	mr r4, r30
/* 8045A87C  4B F0 E2 B1 */	bl strcpy
/* 8045A880  7F C3 F3 78 */	mr r3, r30
/* 8045A884  4B F0 E3 61 */	bl strlen
/* 8045A888  7F C3 F2 14 */	add r30, r3, r30
/* 8045A88C  7F 63 DB 78 */	mr r3, r27
/* 8045A890  3B DE 00 01 */	addi r30, r30, 1
/* 8045A894  4B BD 6F DD */	bl getArcName__12daSetBgObj_cFP10fopAc_ac_c
/* 8045A898  38 81 00 48 */	addi r4, r1, 0x48
/* 8045A89C  7F E5 FB 78 */	mr r5, r31
/* 8045A8A0  38 C0 00 80 */	li r6, 0x80
/* 8045A8A4  4B BE 1A D9 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 8045A8A8  7C 60 1B 78 */	mr r0, r3
/* 8045A8AC  7C 1C 03 78 */	mr r28, r0
/* 8045A8B0  88 1E 00 00 */	lbz r0, 0(r30)
/* 8045A8B4  28 00 00 00 */	cmplwi r0, 0
/* 8045A8B8  41 82 00 48 */	beq lbl_8045A900
/* 8045A8BC  38 61 00 08 */	addi r3, r1, 8
/* 8045A8C0  7F C4 F3 78 */	mr r4, r30
/* 8045A8C4  4B F0 E2 69 */	bl strcpy
/* 8045A8C8  7F C3 F3 78 */	mr r3, r30
/* 8045A8CC  4B F0 E3 19 */	bl strlen
/* 8045A8D0  7F C3 F2 14 */	add r30, r3, r30
/* 8045A8D4  7F 63 DB 78 */	mr r3, r27
/* 8045A8D8  3B DE 00 01 */	addi r30, r30, 1
/* 8045A8DC  4B BD 6F 95 */	bl getArcName__12daSetBgObj_cFP10fopAc_ac_c
/* 8045A8E0  38 81 00 08 */	addi r4, r1, 8
/* 8045A8E4  7F E5 FB 78 */	mr r5, r31
/* 8045A8E8  38 C0 00 80 */	li r6, 0x80
/* 8045A8EC  4B BE 1A 91 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 8045A8F0  7C 64 1B 78 */	mr r4, r3
/* 8045A8F4  7F 83 E3 78 */	mr r3, r28
/* 8045A8F8  4B BB 3F 3D */	bl mDoExt_setupShareTexture__FP12J3DModelDataP12J3DModelData
/* 8045A8FC  48 00 00 1C */	b lbl_8045A918
lbl_8045A900:
/* 8045A900  40 82 00 18 */	bne lbl_8045A918
/* 8045A904  88 1E 00 01 */	lbz r0, 1(r30)
/* 8045A908  28 00 00 01 */	cmplwi r0, 1
/* 8045A90C  40 82 00 0C */	bne lbl_8045A918
/* 8045A910  3B DE 00 02 */	addi r30, r30, 2
/* 8045A914  4B BB 41 6D */	bl mDoExt_setupStageTexture__FP12J3DModelData
lbl_8045A918:
/* 8045A918  3B BD 00 01 */	addi r29, r29, 1
lbl_8045A91C:
/* 8045A91C  88 1B 0C EC */	lbz r0, 0xcec(r27)
/* 8045A920  7C 1D 00 00 */	cmpw r29, r0
/* 8045A924  41 80 FF 50 */	blt lbl_8045A874
/* 8045A928  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8045A92C  4B F0 78 F5 */	bl _restgpr_27
/* 8045A930  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8045A934  7C 08 03 A6 */	mtlr r0
/* 8045A938  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8045A93C  4E 80 00 20 */	blr 

lbl_80C927AC:
/* 80C927AC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C927B0  7C 08 02 A6 */	mflr r0
/* 80C927B4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C927B8  39 61 00 40 */	addi r11, r1, 0x40
/* 80C927BC  4B 6C FA 05 */	bl _savegpr_22
/* 80C927C0  7C 7E 1B 78 */	mr r30, r3
/* 80C927C4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C927C8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C927CC  40 82 00 40 */	bne lbl_80C9280C
/* 80C927D0  7F C0 F3 79 */	or. r0, r30, r30
/* 80C927D4  41 82 00 2C */	beq lbl_80C92800
/* 80C927D8  7C 16 03 78 */	mr r22, r0
/* 80C927DC  4B 38 63 89 */	bl __ct__10fopAc_ac_cFv
/* 80C927E0  38 76 05 74 */	addi r3, r22, 0x574
/* 80C927E4  3C 80 80 C9 */	lis r4, __ct__10MatoData_sFv@ha /* 0x80C92A50@ha */
/* 80C927E8  38 84 2A 50 */	addi r4, r4, __ct__10MatoData_sFv@l /* 0x80C92A50@l */
/* 80C927EC  3C A0 80 C9 */	lis r5, __dt__10MatoData_sFv@ha /* 0x80C92924@ha */
/* 80C927F0  38 A5 29 24 */	addi r5, r5, __dt__10MatoData_sFv@l /* 0x80C92924@l */
/* 80C927F4  38 C0 01 C0 */	li r6, 0x1c0
/* 80C927F8  38 E0 00 1E */	li r7, 0x1e
/* 80C927FC  4B 6C F5 65 */	bl __construct_array
lbl_80C92800:
/* 80C92800  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80C92804  60 00 00 08 */	ori r0, r0, 8
/* 80C92808  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80C9280C:
/* 80C9280C  7F C3 F3 78 */	mr r3, r30
/* 80C92810  4B FF FE 41 */	bl mato_init__11daObjMATO_cFv
/* 80C92814  2C 03 00 00 */	cmpwi r3, 0
/* 80C92818  40 82 00 0C */	bne lbl_80C92824
/* 80C9281C  38 60 00 05 */	li r3, 5
/* 80C92820  48 00 00 EC */	b lbl_80C9290C
lbl_80C92824:
/* 80C92824  38 7E 05 68 */	addi r3, r30, 0x568
/* 80C92828  3C 80 80 C9 */	lis r4, d_a_obj_mato__stringBase0@ha /* 0x80C92CD4@ha */
/* 80C9282C  38 84 2C D4 */	addi r4, r4, d_a_obj_mato__stringBase0@l /* 0x80C92CD4@l */
/* 80C92830  4B 39 A6 8D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C92834  7C 7F 1B 78 */	mr r31, r3
/* 80C92838  2C 1F 00 04 */	cmpwi r31, 4
/* 80C9283C  40 82 00 CC */	bne lbl_80C92908
/* 80C92840  7F C3 F3 78 */	mr r3, r30
/* 80C92844  3C 80 80 C9 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x80C91C1C@ha */
/* 80C92848  38 84 1C 1C */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x80C91C1C@l */
/* 80C9284C  38 A0 48 00 */	li r5, 0x4800
/* 80C92850  4B 38 7C 61 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80C92854  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C92858  40 82 00 0C */	bne lbl_80C92864
/* 80C9285C  38 60 00 05 */	li r3, 5
/* 80C92860  48 00 00 AC */	b lbl_80C9290C
lbl_80C92864:
/* 80C92864  3A C0 00 00 */	li r22, 0
/* 80C92868  3B A0 00 00 */	li r29, 0
/* 80C9286C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C92870  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C92874  3F 23 00 02 */	addis r25, r3, 2
/* 80C92878  3B 03 0F 38 */	addi r24, r3, 0xf38
/* 80C9287C  3C 60 80 C9 */	lis r3, d_a_obj_mato__stringBase0@ha /* 0x80C92CD4@ha */
/* 80C92880  3B 43 2C D4 */	addi r26, r3, d_a_obj_mato__stringBase0@l /* 0x80C92CD4@l */
/* 80C92884  3C 60 80 C9 */	lis r3, l_B_ling_bmd_table@ha /* 0x80C92C50@ha */
/* 80C92888  3B 63 2C 50 */	addi r27, r3, l_B_ling_bmd_table@l /* 0x80C92C50@l */
/* 80C9288C  3A E1 00 08 */	addi r23, r1, 8
/* 80C92890  3B 80 00 01 */	li r28, 1
/* 80C92894  3B 39 C2 F8 */	addi r25, r25, -15624
lbl_80C92898:
/* 80C92898  7F 43 D3 78 */	mr r3, r26
/* 80C9289C  7C 9B E8 2E */	lwzx r4, r27, r29
/* 80C928A0  7F 25 CB 78 */	mr r5, r25
/* 80C928A4  38 C0 00 80 */	li r6, 0x80
/* 80C928A8  4B 3A 9A 45 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C928AC  7C 77 E9 2E */	stwx r3, r23, r29
/* 80C928B0  7F 03 C3 78 */	mr r3, r24
/* 80C928B4  7C 97 E8 2E */	lwzx r4, r23, r29
/* 80C928B8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C928BC  7C 05 07 74 */	extsb r5, r0
/* 80C928C0  38 C0 00 00 */	li r6, 0
/* 80C928C4  4B 39 A2 2D */	bl addSimpleModel__14dComIfG_play_cFP12J3DModelDataiUc
/* 80C928C8  9B 9E 39 F7 */	stb r28, 0x39f7(r30)
/* 80C928CC  3A D6 00 01 */	addi r22, r22, 1
/* 80C928D0  2C 16 00 02 */	cmpwi r22, 2
/* 80C928D4  3B BD 00 04 */	addi r29, r29, 4
/* 80C928D8  41 80 FF C0 */	blt lbl_80C92898
/* 80C928DC  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80C928E0  54 00 00 3E */	slwi r0, r0, 0
/* 80C928E4  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 80C928E8  38 00 00 00 */	li r0, 0
/* 80C928EC  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80C928F0  98 1E 39 F6 */	stb r0, 0x39f6(r30)
/* 80C928F4  38 00 00 0A */	li r0, 0xa
/* 80C928F8  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 80C928FC  B0 1E 05 60 */	sth r0, 0x560(r30)
/* 80C92900  7F C3 F3 78 */	mr r3, r30
/* 80C92904  4B FF FD 2D */	bl daObjMATO_Execute__FP11daObjMATO_c
lbl_80C92908:
/* 80C92908  7F E3 FB 78 */	mr r3, r31
lbl_80C9290C:
/* 80C9290C  39 61 00 40 */	addi r11, r1, 0x40
/* 80C92910  4B 6C F8 FD */	bl _restgpr_22
/* 80C92914  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C92918  7C 08 03 A6 */	mtlr r0
/* 80C9291C  38 21 00 40 */	addi r1, r1, 0x40
/* 80C92920  4E 80 00 20 */	blr 

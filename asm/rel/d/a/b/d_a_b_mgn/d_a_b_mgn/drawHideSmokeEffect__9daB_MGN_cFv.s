lbl_806071C4:
/* 806071C4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806071C8  7C 08 02 A6 */	mflr r0
/* 806071CC  90 01 00 34 */	stw r0, 0x34(r1)
/* 806071D0  39 61 00 30 */	addi r11, r1, 0x30
/* 806071D4  4B D5 AF F9 */	bl _savegpr_25
/* 806071D8  7C 79 1B 78 */	mr r25, r3
/* 806071DC  3B 40 00 00 */	li r26, 0
/* 806071E0  3B E0 00 00 */	li r31, 0
/* 806071E4  3B C0 00 00 */	li r30, 0
lbl_806071E8:
/* 806071E8  7F 79 F2 14 */	add r27, r25, r30
/* 806071EC  80 7B 26 24 */	lwz r3, 0x2624(r27)
/* 806071F0  83 A3 00 04 */	lwz r29, 4(r3)
/* 806071F4  83 9D 00 04 */	lwz r28, 4(r29)
/* 806071F8  38 1A 26 B4 */	addi r0, r26, 0x26b4
/* 806071FC  7C 19 00 AE */	lbzx r0, r25, r0
/* 80607200  28 00 00 00 */	cmplwi r0, 0
/* 80607204  41 82 00 6C */	beq lbl_80607270
/* 80607208  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8060720C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80607210  38 80 00 00 */	li r4, 0
/* 80607214  38 BF 26 64 */	addi r5, r31, 0x2664
/* 80607218  7C B9 2A 14 */	add r5, r25, r5
/* 8060721C  38 D9 01 0C */	addi r6, r25, 0x10c
/* 80607220  4B B9 C5 A5 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80607224  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80607228  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8060722C  80 9D 00 04 */	lwz r4, 4(r29)
/* 80607230  38 B9 01 0C */	addi r5, r25, 0x10c
/* 80607234  4B B9 DB 6D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80607238  80 7B 26 34 */	lwz r3, 0x2634(r27)
/* 8060723C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80607240  38 9C 00 58 */	addi r4, r28, 0x58
/* 80607244  4B A0 65 65 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80607248  80 7B 26 44 */	lwz r3, 0x2644(r27)
/* 8060724C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80607250  38 9C 00 58 */	addi r4, r28, 0x58
/* 80607254  4B A0 65 55 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80607258  80 7B 26 54 */	lwz r3, 0x2654(r27)
/* 8060725C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80607260  38 9C 00 58 */	addi r4, r28, 0x58
/* 80607264  4B A0 64 75 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80607268  80 7B 26 24 */	lwz r3, 0x2624(r27)
/* 8060726C  4B A0 9F 55 */	bl entryDL__16mDoExt_McaMorfSOFv
lbl_80607270:
/* 80607270  3B 5A 00 01 */	addi r26, r26, 1
/* 80607274  2C 1A 00 04 */	cmpwi r26, 4
/* 80607278  3B FF 00 0C */	addi r31, r31, 0xc
/* 8060727C  3B DE 00 04 */	addi r30, r30, 4
/* 80607280  41 80 FF 68 */	blt lbl_806071E8
/* 80607284  39 61 00 30 */	addi r11, r1, 0x30
/* 80607288  4B D5 AF 91 */	bl _restgpr_25
/* 8060728C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80607290  7C 08 03 A6 */	mtlr r0
/* 80607294  38 21 00 30 */	addi r1, r1, 0x30
/* 80607298  4E 80 00 20 */	blr 

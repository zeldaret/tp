lbl_805054CC:
/* 805054CC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805054D0  7C 08 02 A6 */	mflr r0
/* 805054D4  90 01 00 64 */	stw r0, 0x64(r1)
/* 805054D8  39 61 00 60 */	addi r11, r1, 0x60
/* 805054DC  4B E5 CC E5 */	bl _savegpr_22
/* 805054E0  7C 7B 1B 78 */	mr r27, r3
/* 805054E4  3C 60 80 52 */	lis r3, lit_4208@ha /* 0x80518584@ha */
/* 805054E8  3B E3 85 84 */	addi r31, r3, lit_4208@l /* 0x80518584@l */
/* 805054EC  38 00 00 00 */	li r0, 0
/* 805054F0  98 1B 05 BB */	stb r0, 0x5bb(r27)
/* 805054F4  88 1B 0A FB */	lbz r0, 0xafb(r27)
/* 805054F8  7C 00 07 75 */	extsb. r0, r0
/* 805054FC  41 82 00 0C */	beq lbl_80505508
/* 80505500  38 60 00 01 */	li r3, 1
/* 80505504  48 00 04 88 */	b lbl_8050598C
lbl_80505508:
/* 80505508  80 7B 05 D0 */	lwz r3, 0x5d0(r27)
/* 8050550C  83 C3 00 04 */	lwz r30, 4(r3)
/* 80505510  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80505514  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80505518  38 80 00 00 */	li r4, 0
/* 8050551C  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 80505520  38 DB 01 0C */	addi r6, r27, 0x10c
/* 80505524  4B C9 E2 A1 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80505528  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8050552C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80505530  80 9E 00 04 */	lwz r4, 4(r30)
/* 80505534  38 BB 01 0C */	addi r5, r27, 0x10c
/* 80505538  4B C9 F8 69 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8050553C  88 1B 12 9A */	lbz r0, 0x129a(r27)
/* 80505540  7C 00 07 75 */	extsb. r0, r0
/* 80505544  40 82 00 C0 */	bne lbl_80505604
/* 80505548  88 1B 09 68 */	lbz r0, 0x968(r27)
/* 8050554C  7C 00 07 75 */	extsb. r0, r0
/* 80505550  41 82 00 B4 */	beq lbl_80505604
/* 80505554  83 3E 00 04 */	lwz r25, 4(r30)
/* 80505558  3A E0 00 00 */	li r23, 0
/* 8050555C  48 00 00 98 */	b lbl_805055F4
lbl_80505560:
/* 80505560  80 79 00 60 */	lwz r3, 0x60(r25)
/* 80505564  56 E0 13 BA */	rlwinm r0, r23, 2, 0xe, 0x1d
/* 80505568  7F 43 00 2E */	lwzx r26, r3, r0
/* 8050556C  80 7A 00 2C */	lwz r3, 0x2c(r26)
/* 80505570  38 80 00 00 */	li r4, 0
/* 80505574  81 83 00 00 */	lwz r12, 0(r3)
/* 80505578  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8050557C  7D 89 03 A6 */	mtctr r12
/* 80505580  4E 80 04 21 */	bctrl 
/* 80505584  C0 1B 09 6C */	lfs f0, 0x96c(r27)
/* 80505588  FC 00 00 1E */	fctiwz f0, f0
/* 8050558C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80505590  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80505594  B0 03 00 00 */	sth r0, 0(r3)
/* 80505598  80 7A 00 2C */	lwz r3, 0x2c(r26)
/* 8050559C  38 80 00 00 */	li r4, 0
/* 805055A0  81 83 00 00 */	lwz r12, 0(r3)
/* 805055A4  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 805055A8  7D 89 03 A6 */	mtctr r12
/* 805055AC  4E 80 04 21 */	bctrl 
/* 805055B0  C0 1B 09 6C */	lfs f0, 0x96c(r27)
/* 805055B4  FC 00 00 1E */	fctiwz f0, f0
/* 805055B8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805055BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805055C0  B0 03 00 02 */	sth r0, 2(r3)
/* 805055C4  80 7A 00 2C */	lwz r3, 0x2c(r26)
/* 805055C8  38 80 00 00 */	li r4, 0
/* 805055CC  81 83 00 00 */	lwz r12, 0(r3)
/* 805055D0  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 805055D4  7D 89 03 A6 */	mtctr r12
/* 805055D8  4E 80 04 21 */	bctrl 
/* 805055DC  C0 1B 09 6C */	lfs f0, 0x96c(r27)
/* 805055E0  FC 00 00 1E */	fctiwz f0, f0
/* 805055E4  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 805055E8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 805055EC  B0 03 00 04 */	sth r0, 4(r3)
/* 805055F0  3A F7 00 01 */	addi r23, r23, 1
lbl_805055F4:
/* 805055F4  56 E3 04 3E */	clrlwi r3, r23, 0x10
/* 805055F8  A0 19 00 5C */	lhz r0, 0x5c(r25)
/* 805055FC  7C 03 00 40 */	cmplw r3, r0
/* 80505600  41 80 FF 60 */	blt lbl_80505560
lbl_80505604:
/* 80505604  88 1B 12 9A */	lbz r0, 0x129a(r27)
/* 80505608  2C 00 00 03 */	cmpwi r0, 3
/* 8050560C  40 82 00 28 */	bne lbl_80505634
/* 80505610  80 7E 00 04 */	lwz r3, 4(r30)
/* 80505614  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80505618  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8050561C  80 63 00 08 */	lwz r3, 8(r3)
/* 80505620  28 03 00 00 */	cmplwi r3, 0
/* 80505624  41 82 00 10 */	beq lbl_80505634
/* 80505628  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8050562C  60 00 00 01 */	ori r0, r0, 1
/* 80505630  90 03 00 0C */	stw r0, 0xc(r3)
lbl_80505634:
/* 80505634  80 7B 05 D0 */	lwz r3, 0x5d0(r27)
/* 80505638  4B B0 BB 89 */	bl entryDL__16mDoExt_McaMorfSOFv
/* 8050563C  88 1B 12 9A */	lbz r0, 0x129a(r27)
/* 80505640  7C 00 07 75 */	extsb. r0, r0
/* 80505644  40 82 00 9C */	bne lbl_805056E0
/* 80505648  88 1B 09 68 */	lbz r0, 0x968(r27)
/* 8050564C  7C 00 07 75 */	extsb. r0, r0
/* 80505650  41 82 00 90 */	beq lbl_805056E0
/* 80505654  83 3E 00 04 */	lwz r25, 4(r30)
/* 80505658  3A E0 00 00 */	li r23, 0
/* 8050565C  48 00 00 74 */	b lbl_805056D0
lbl_80505660:
/* 80505660  80 79 00 60 */	lwz r3, 0x60(r25)
/* 80505664  56 E0 13 BA */	rlwinm r0, r23, 2, 0xe, 0x1d
/* 80505668  7F 43 00 2E */	lwzx r26, r3, r0
/* 8050566C  80 7A 00 2C */	lwz r3, 0x2c(r26)
/* 80505670  38 80 00 00 */	li r4, 0
/* 80505674  81 83 00 00 */	lwz r12, 0(r3)
/* 80505678  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8050567C  7D 89 03 A6 */	mtctr r12
/* 80505680  4E 80 04 21 */	bctrl 
/* 80505684  38 00 00 00 */	li r0, 0
/* 80505688  B0 03 00 00 */	sth r0, 0(r3)
/* 8050568C  80 7A 00 2C */	lwz r3, 0x2c(r26)
/* 80505690  38 80 00 00 */	li r4, 0
/* 80505694  81 83 00 00 */	lwz r12, 0(r3)
/* 80505698  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8050569C  7D 89 03 A6 */	mtctr r12
/* 805056A0  4E 80 04 21 */	bctrl 
/* 805056A4  38 00 00 00 */	li r0, 0
/* 805056A8  B0 03 00 02 */	sth r0, 2(r3)
/* 805056AC  80 7A 00 2C */	lwz r3, 0x2c(r26)
/* 805056B0  38 80 00 00 */	li r4, 0
/* 805056B4  81 83 00 00 */	lwz r12, 0(r3)
/* 805056B8  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 805056BC  7D 89 03 A6 */	mtctr r12
/* 805056C0  4E 80 04 21 */	bctrl 
/* 805056C4  38 00 00 00 */	li r0, 0
/* 805056C8  B0 03 00 04 */	sth r0, 4(r3)
/* 805056CC  3A F7 00 01 */	addi r23, r23, 1
lbl_805056D0:
/* 805056D0  56 E3 04 3E */	clrlwi r3, r23, 0x10
/* 805056D4  A0 19 00 5C */	lhz r0, 0x5c(r25)
/* 805056D8  7C 03 00 40 */	cmplw r3, r0
/* 805056DC  41 80 FF 84 */	blt lbl_80505660
lbl_805056E0:
/* 805056E0  88 1B 05 BC */	lbz r0, 0x5bc(r27)
/* 805056E4  28 00 00 01 */	cmplwi r0, 1
/* 805056E8  40 82 00 28 */	bne lbl_80505710
/* 805056EC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 805056F0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 805056F4  80 9B 06 94 */	lwz r4, 0x694(r27)
/* 805056F8  80 84 00 04 */	lwz r4, 4(r4)
/* 805056FC  38 BB 01 0C */	addi r5, r27, 0x10c
/* 80505700  4B C9 F6 A1 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80505704  80 7B 06 94 */	lwz r3, 0x694(r27)
/* 80505708  4B B0 85 BD */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 8050570C  48 00 00 5C */	b lbl_80505768
lbl_80505710:
/* 80505710  28 00 00 02 */	cmplwi r0, 2
/* 80505714  41 80 00 54 */	blt lbl_80505768
/* 80505718  80 7B 06 98 */	lwz r3, 0x698(r27)
/* 8050571C  80 83 00 04 */	lwz r4, 4(r3)
/* 80505720  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80505724  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80505728  80 84 00 04 */	lwz r4, 4(r4)
/* 8050572C  38 BB 01 0C */	addi r5, r27, 0x10c
/* 80505730  4B C9 F6 71 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80505734  80 7B 06 98 */	lwz r3, 0x698(r27)
/* 80505738  4B B0 BA 89 */	bl entryDL__16mDoExt_McaMorfSOFv
/* 8050573C  88 1B 09 A2 */	lbz r0, 0x9a2(r27)
/* 80505740  7C 00 07 75 */	extsb. r0, r0
/* 80505744  41 82 00 24 */	beq lbl_80505768
/* 80505748  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8050574C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80505750  80 9B 06 94 */	lwz r4, 0x694(r27)
/* 80505754  80 84 00 04 */	lwz r4, 4(r4)
/* 80505758  38 BB 01 0C */	addi r5, r27, 0x10c
/* 8050575C  4B C9 F6 45 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80505760  80 7B 06 94 */	lwz r3, 0x694(r27)
/* 80505764  4B B0 85 61 */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_80505768:
/* 80505768  88 1B 12 9A */	lbz r0, 0x129a(r27)
/* 8050576C  7C 00 07 75 */	extsb. r0, r0
/* 80505770  41 82 00 7C */	beq lbl_805057EC
/* 80505774  3B 00 00 00 */	li r24, 0
/* 80505778  3B 40 00 00 */	li r26, 0
/* 8050577C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80505780  3B 23 CA 54 */	addi r25, r3, g_env_light@l /* 0x8042CA54@l */
lbl_80505784:
/* 80505784  3A FA 06 D4 */	addi r23, r26, 0x6d4
/* 80505788  7C 9B B8 2E */	lwzx r4, r27, r23
/* 8050578C  28 04 00 00 */	cmplwi r4, 0
/* 80505790  41 82 00 1C */	beq lbl_805057AC
/* 80505794  7F 23 CB 78 */	mr r3, r25
/* 80505798  80 84 00 04 */	lwz r4, 4(r4)
/* 8050579C  38 BB 01 0C */	addi r5, r27, 0x10c
/* 805057A0  4B C9 F6 01 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 805057A4  7C 7B B8 2E */	lwzx r3, r27, r23
/* 805057A8  4B B0 85 1D */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_805057AC:
/* 805057AC  3B 18 00 01 */	addi r24, r24, 1
/* 805057B0  2C 18 00 0E */	cmpwi r24, 0xe
/* 805057B4  3B 5A 00 04 */	addi r26, r26, 4
/* 805057B8  41 80 FF CC */	blt lbl_80505784
/* 805057BC  88 1B 06 A0 */	lbz r0, 0x6a0(r27)
/* 805057C0  7C 00 07 75 */	extsb. r0, r0
/* 805057C4  41 82 00 28 */	beq lbl_805057EC
/* 805057C8  80 7B 06 9C */	lwz r3, 0x69c(r27)
/* 805057CC  80 83 00 04 */	lwz r4, 4(r3)
/* 805057D0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 805057D4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 805057D8  80 84 00 04 */	lwz r4, 4(r4)
/* 805057DC  38 BB 01 0C */	addi r5, r27, 0x10c
/* 805057E0  4B C9 F5 C1 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 805057E4  80 7B 06 9C */	lwz r3, 0x69c(r27)
/* 805057E8  4B B0 AE 99 */	bl entryDL__14mDoExt_McaMorfFv
lbl_805057EC:
/* 805057EC  88 1B 12 97 */	lbz r0, 0x1297(r27)
/* 805057F0  7C 00 07 75 */	extsb. r0, r0
/* 805057F4  41 82 00 D4 */	beq lbl_805058C8
/* 805057F8  3B 80 00 00 */	li r28, 0
/* 805057FC  3B 40 00 00 */	li r26, 0
/* 80505800  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80505804  3B 23 CA 54 */	addi r25, r3, g_env_light@l /* 0x8042CA54@l */
lbl_80505808:
/* 80505808  7F 23 CB 78 */	mr r3, r25
/* 8050580C  3B BA 06 C4 */	addi r29, r26, 0x6c4
/* 80505810  7C 9B E8 2E */	lwzx r4, r27, r29
/* 80505814  80 84 00 04 */	lwz r4, 4(r4)
/* 80505818  38 BB 01 0C */	addi r5, r27, 0x10c
/* 8050581C  4B C9 F5 85 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80505820  7C 7B E8 2E */	lwzx r3, r27, r29
/* 80505824  83 03 00 04 */	lwz r24, 4(r3)
/* 80505828  3A C0 00 00 */	li r22, 0
/* 8050582C  48 00 00 74 */	b lbl_805058A0
lbl_80505830:
/* 80505830  80 78 00 60 */	lwz r3, 0x60(r24)
/* 80505834  56 C0 13 BA */	rlwinm r0, r22, 2, 0xe, 0x1d
/* 80505838  7E E3 00 2E */	lwzx r23, r3, r0
/* 8050583C  80 77 00 2C */	lwz r3, 0x2c(r23)
/* 80505840  38 80 00 01 */	li r4, 1
/* 80505844  81 83 00 00 */	lwz r12, 0(r3)
/* 80505848  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8050584C  7D 89 03 A6 */	mtctr r12
/* 80505850  4E 80 04 21 */	bctrl 
/* 80505854  38 00 00 FF */	li r0, 0xff
/* 80505858  B0 03 00 00 */	sth r0, 0(r3)
/* 8050585C  80 77 00 2C */	lwz r3, 0x2c(r23)
/* 80505860  38 80 00 01 */	li r4, 1
/* 80505864  81 83 00 00 */	lwz r12, 0(r3)
/* 80505868  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8050586C  7D 89 03 A6 */	mtctr r12
/* 80505870  4E 80 04 21 */	bctrl 
/* 80505874  38 00 00 8A */	li r0, 0x8a
/* 80505878  B0 03 00 02 */	sth r0, 2(r3)
/* 8050587C  80 77 00 2C */	lwz r3, 0x2c(r23)
/* 80505880  38 80 00 01 */	li r4, 1
/* 80505884  81 83 00 00 */	lwz r12, 0(r3)
/* 80505888  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8050588C  7D 89 03 A6 */	mtctr r12
/* 80505890  4E 80 04 21 */	bctrl 
/* 80505894  38 00 00 18 */	li r0, 0x18
/* 80505898  B0 03 00 04 */	sth r0, 4(r3)
/* 8050589C  3A D6 00 01 */	addi r22, r22, 1
lbl_805058A0:
/* 805058A0  56 C3 04 3E */	clrlwi r3, r22, 0x10
/* 805058A4  A0 18 00 5C */	lhz r0, 0x5c(r24)
/* 805058A8  7C 03 00 40 */	cmplw r3, r0
/* 805058AC  41 80 FF 84 */	blt lbl_80505830
/* 805058B0  7C 7B E8 2E */	lwzx r3, r27, r29
/* 805058B4  4B B0 84 11 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 805058B8  3B 9C 00 01 */	addi r28, r28, 1
/* 805058BC  2C 1C 00 02 */	cmpwi r28, 2
/* 805058C0  3B 5A 00 04 */	addi r26, r26, 4
/* 805058C4  41 80 FF 44 */	blt lbl_80505808
lbl_805058C8:
/* 805058C8  88 1B 09 BC */	lbz r0, 0x9bc(r27)
/* 805058CC  2C 00 00 02 */	cmpwi r0, 2
/* 805058D0  41 82 00 84 */	beq lbl_80505954
/* 805058D4  C0 5B 04 D8 */	lfs f2, 0x4d8(r27)
/* 805058D8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 805058DC  C0 7B 04 D4 */	lfs f3, 0x4d4(r27)
/* 805058E0  EC 20 18 2A */	fadds f1, f0, f3
/* 805058E4  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 805058E8  D0 01 00 08 */	stfs f0, 8(r1)
/* 805058EC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805058F0  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 805058F4  80 7B 09 88 */	lwz r3, 0x988(r27)
/* 805058F8  38 80 00 01 */	li r4, 1
/* 805058FC  7F C5 F3 78 */	mr r5, r30
/* 80505900  38 C1 00 08 */	addi r6, r1, 8
/* 80505904  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80505908  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8050590C  C0 9B 0B DC */	lfs f4, 0xbdc(r27)
/* 80505910  38 FB 0C 34 */	addi r7, r27, 0xc34
/* 80505914  39 1B 01 0C */	addi r8, r27, 0x10c
/* 80505918  39 20 00 00 */	li r9, 0
/* 8050591C  C0 BF 00 08 */	lfs f5, 8(r31)
/* 80505920  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 80505924  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 80505928  4B B2 8F E9 */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 8050592C  90 7B 09 88 */	stw r3, 0x988(r27)
/* 80505930  88 1B 05 BC */	lbz r0, 0x5bc(r27)
/* 80505934  28 00 00 01 */	cmplwi r0, 1
/* 80505938  40 82 00 1C */	bne lbl_80505954
/* 8050593C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80505940  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80505944  38 63 61 C0 */	addi r3, r3, 0x61c0
/* 80505948  80 9B 09 88 */	lwz r4, 0x988(r27)
/* 8050594C  80 BB 06 94 */	lwz r5, 0x694(r27)
/* 80505950  4B B5 05 CD */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_80505954:
/* 80505954  88 1B 05 B7 */	lbz r0, 0x5b7(r27)
/* 80505958  28 00 00 0E */	cmplwi r0, 0xe
/* 8050595C  40 82 00 2C */	bne lbl_80505988
/* 80505960  88 1B 13 04 */	lbz r0, 0x1304(r27)
/* 80505964  28 00 00 02 */	cmplwi r0, 2
/* 80505968  40 81 00 14 */	ble lbl_8050597C
/* 8050596C  3C 60 80 45 */	lis r3, struct_80450BE4+0x1@ha /* 0x80450BE5@ha */
/* 80505970  98 03 0B E5 */	stb r0, struct_80450BE4+0x1@l(r3)  /* 0x80450BE5@l */
/* 80505974  4B B0 27 05 */	bl onBlure__13mDoGph_gInf_cFv
/* 80505978  48 00 00 10 */	b lbl_80505988
lbl_8050597C:
/* 8050597C  38 00 00 00 */	li r0, 0
/* 80505980  3C 60 80 45 */	lis r3, struct_80450BE4+0x0@ha /* 0x80450BE4@ha */
/* 80505984  98 03 0B E4 */	stb r0, struct_80450BE4+0x0@l(r3)  /* 0x80450BE4@l */
lbl_80505988:
/* 80505988  38 60 00 01 */	li r3, 1
lbl_8050598C:
/* 8050598C  39 61 00 60 */	addi r11, r1, 0x60
/* 80505990  4B E5 C8 7D */	bl _restgpr_22
/* 80505994  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80505998  7C 08 03 A6 */	mtlr r0
/* 8050599C  38 21 00 60 */	addi r1, r1, 0x60
/* 805059A0  4E 80 00 20 */	blr 

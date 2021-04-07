lbl_80C46808:
/* 80C46808  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C4680C  7C 08 02 A6 */	mflr r0
/* 80C46810  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C46814  39 61 00 20 */	addi r11, r1, 0x20
/* 80C46818  4B 71 B9 BD */	bl _savegpr_27
/* 80C4681C  7C 7F 1B 78 */	mr r31, r3
/* 80C46820  3C 80 80 C4 */	lis r4, lit_3715@ha /* 0x80C46F54@ha */
/* 80C46824  3B A4 6F 54 */	addi r29, r4, lit_3715@l /* 0x80C46F54@l */
/* 80C46828  4B FF FF 41 */	bl initBaseMtx__14daObjKKanban_cFv
/* 80C4682C  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C46830  38 03 00 24 */	addi r0, r3, 0x24
/* 80C46834  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80C46838  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C4683C  80 63 00 04 */	lwz r3, 4(r3)
/* 80C46840  83 83 00 54 */	lwz r28, 0x54(r3)
/* 80C46844  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 80C46848  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 80C4684C  B0 1F 07 44 */	sth r0, 0x744(r31)
/* 80C46850  3B 60 00 00 */	li r27, 0
/* 80C46854  3C 60 80 C4 */	lis r3, d_a_obj_kkanban__stringBase0@ha /* 0x80C46F88@ha */
/* 80C46858  3B C3 6F 88 */	addi r30, r3, d_a_obj_kkanban__stringBase0@l /* 0x80C46F88@l */
/* 80C4685C  48 00 00 28 */	b lbl_80C46884
lbl_80C46860:
/* 80C46860  7F 83 E3 78 */	mr r3, r28
/* 80C46864  7F 64 DB 78 */	mr r4, r27
/* 80C46868  4B 69 82 91 */	bl getName__10JUTNameTabCFUs
/* 80C4686C  38 9E 00 0A */	addi r4, r30, 0xa
/* 80C46870  4B 72 21 25 */	bl strcmp
/* 80C46874  2C 03 00 00 */	cmpwi r3, 0
/* 80C46878  40 82 00 08 */	bne lbl_80C46880
/* 80C4687C  B3 7F 07 44 */	sth r27, 0x744(r31)
lbl_80C46880:
/* 80C46880  3B 7B 00 01 */	addi r27, r27, 1
lbl_80C46884:
/* 80C46884  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C46888  80 83 00 04 */	lwz r4, 4(r3)
/* 80C4688C  A0 64 00 2C */	lhz r3, 0x2c(r4)
/* 80C46890  57 60 04 3E */	clrlwi r0, r27, 0x10
/* 80C46894  7C 00 18 40 */	cmplw r0, r3
/* 80C46898  41 80 FF C8 */	blt lbl_80C46860
/* 80C4689C  80 64 00 28 */	lwz r3, 0x28(r4)
/* 80C468A0  A0 1F 07 44 */	lhz r0, 0x744(r31)
/* 80C468A4  54 00 10 3A */	slwi r0, r0, 2
/* 80C468A8  7C 83 00 2E */	lwzx r4, r3, r0
/* 80C468AC  3C 60 80 C4 */	lis r3, nodeCallBack__FP8J3DJointi@ha /* 0x80C46698@ha */
/* 80C468B0  38 03 66 98 */	addi r0, r3, nodeCallBack__FP8J3DJointi@l /* 0x80C46698@l */
/* 80C468B4  90 04 00 04 */	stw r0, 4(r4)
/* 80C468B8  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C468BC  93 E3 00 14 */	stw r31, 0x14(r3)
/* 80C468C0  7F E3 FB 78 */	mr r3, r31
/* 80C468C4  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80C468C8  C0 5D 00 04 */	lfs f2, 4(r29)
/* 80C468CC  C0 7D 00 08 */	lfs f3, 8(r29)
/* 80C468D0  C0 9D 00 0C */	lfs f4, 0xc(r29)
/* 80C468D4  C0 BD 00 10 */	lfs f5, 0x10(r29)
/* 80C468D8  C0 DD 00 14 */	lfs f6, 0x14(r29)
/* 80C468DC  4B 3D 3C 6D */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80C468E0  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80C468E4  38 80 00 FF */	li r4, 0xff
/* 80C468E8  38 A0 00 FF */	li r5, 0xff
/* 80C468EC  7F E6 FB 78 */	mr r6, r31
/* 80C468F0  4B 43 CF 71 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C468F4  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 80C468F8  3C 80 80 C4 */	lis r4, l_tri_src@ha /* 0x80C46F9C@ha */
/* 80C468FC  38 84 6F 9C */	addi r4, r4, l_tri_src@l /* 0x80C46F9C@l */
/* 80C46900  4B 43 DF 85 */	bl Set__8dCcD_TriFRC11dCcD_SrcTri
/* 80C46904  38 1F 05 AC */	addi r0, r31, 0x5ac
/* 80C46908  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80C4690C  38 60 00 01 */	li r3, 1
/* 80C46910  39 61 00 20 */	addi r11, r1, 0x20
/* 80C46914  4B 71 B9 0D */	bl _restgpr_27
/* 80C46918  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C4691C  7C 08 03 A6 */	mtlr r0
/* 80C46920  38 21 00 20 */	addi r1, r1, 0x20
/* 80C46924  4E 80 00 20 */	blr 

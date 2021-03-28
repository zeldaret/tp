lbl_80CAC7F8:
/* 80CAC7F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CAC7FC  7C 08 02 A6 */	mflr r0
/* 80CAC800  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CAC804  39 61 00 20 */	addi r11, r1, 0x20
/* 80CAC808  4B 6B 59 CC */	b _savegpr_27
/* 80CAC80C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CAC810  41 82 00 08 */	beq lbl_80CAC818
/* 80CAC814  38 63 05 A0 */	addi r3, r3, 0x5a0
lbl_80CAC818:
/* 80CAC818  3C 80 80 CB */	lis r4, l_arcName@ha
/* 80CAC81C  38 84 D1 FC */	addi r4, r4, l_arcName@l
/* 80CAC820  80 84 00 00 */	lwz r4, 0(r4)
/* 80CAC824  4B 38 06 98 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CAC828  7C 7C 1B 78 */	mr r28, r3
/* 80CAC82C  2C 1C 00 04 */	cmpwi r28, 4
/* 80CAC830  40 82 00 90 */	bne lbl_80CAC8C0
/* 80CAC834  7F E3 FB 78 */	mr r3, r31
/* 80CAC838  48 00 00 A5 */	bl setMtx__13daObjPDwall_cFv
/* 80CAC83C  7F E3 FB 78 */	mr r3, r31
/* 80CAC840  3C 80 80 CB */	lis r4, l_arcName@ha
/* 80CAC844  38 84 D1 FC */	addi r4, r4, l_arcName@l
/* 80CAC848  80 84 00 00 */	lwz r4, 0(r4)
/* 80CAC84C  38 A0 00 07 */	li r5, 7
/* 80CAC850  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80CAC854  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80CAC858  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000B1C0@ha */
/* 80CAC85C  38 E7 B1 C0 */	addi r7, r7, 0xB1C0 /* 0x0000B1C0@l */
/* 80CAC860  39 1F 05 A8 */	addi r8, r31, 0x5a8
/* 80CAC864  4B 3C BF 58 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80CAC868  7C 7C 1B 78 */	mr r28, r3
/* 80CAC86C  2C 1C 00 05 */	cmpwi r28, 5
/* 80CAC870  40 82 00 08 */	bne lbl_80CAC878
/* 80CAC874  48 00 00 50 */	b lbl_80CAC8C4
lbl_80CAC878:
/* 80CAC878  3B 60 00 00 */	li r27, 0
/* 80CAC87C  3B C0 00 00 */	li r30, 0
/* 80CAC880  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CAC884  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CAC888  3B A3 0F 38 */	addi r29, r3, 0xf38
lbl_80CAC88C:
/* 80CAC88C  7F A3 EB 78 */	mr r3, r29
/* 80CAC890  38 1E 08 3C */	addi r0, r30, 0x83c
/* 80CAC894  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80CAC898  7F E5 FB 78 */	mr r5, r31
/* 80CAC89C  4B 3C 81 6C */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80CAC8A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CAC8A4  41 82 00 0C */	beq lbl_80CAC8B0
/* 80CAC8A8  38 60 00 05 */	li r3, 5
/* 80CAC8AC  48 00 00 18 */	b lbl_80CAC8C4
lbl_80CAC8B0:
/* 80CAC8B0  3B 7B 00 01 */	addi r27, r27, 1
/* 80CAC8B4  2C 1B 00 09 */	cmpwi r27, 9
/* 80CAC8B8  3B DE 00 04 */	addi r30, r30, 4
/* 80CAC8BC  41 80 FF D0 */	blt lbl_80CAC88C
lbl_80CAC8C0:
/* 80CAC8C0  7F 83 E3 78 */	mr r3, r28
lbl_80CAC8C4:
/* 80CAC8C4  39 61 00 20 */	addi r11, r1, 0x20
/* 80CAC8C8  4B 6B 59 58 */	b _restgpr_27
/* 80CAC8CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CAC8D0  7C 08 03 A6 */	mtlr r0
/* 80CAC8D4  38 21 00 20 */	addi r1, r1, 0x20
/* 80CAC8D8  4E 80 00 20 */	blr 

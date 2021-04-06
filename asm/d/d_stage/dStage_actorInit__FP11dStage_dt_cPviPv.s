lbl_80025A38:
/* 80025A38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80025A3C  7C 08 02 A6 */	mflr r0
/* 80025A40  90 01 00 24 */	stw r0, 0x24(r1)
/* 80025A44  39 61 00 20 */	addi r11, r1, 0x20
/* 80025A48  48 33 C7 8D */	bl _savegpr_27
/* 80025A4C  7C 7B 1B 78 */	mr r27, r3
/* 80025A50  7C 9C 23 78 */	mr r28, r4
/* 80025A54  83 C4 00 08 */	lwz r30, 8(r4)
/* 80025A58  3B A0 00 00 */	li r29, 0
/* 80025A5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80025A60  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80025A64  48 00 00 98 */	b lbl_80025AFC
lbl_80025A68:
/* 80025A68  7F E3 FB 78 */	mr r3, r31
/* 80025A6C  A0 9E 00 1E */	lhz r4, 0x1e(r30)
/* 80025A70  88 BB 00 04 */	lbz r5, 4(r27)
/* 80025A74  7C A5 07 74 */	extsb r5, r5
/* 80025A78  48 00 FC AD */	bl isActor__10dSv_info_cCFii
/* 80025A7C  2C 03 00 00 */	cmpwi r3, 0
/* 80025A80  40 82 00 74 */	bne lbl_80025AF4
/* 80025A84  88 7B 00 04 */	lbz r3, 4(r27)
/* 80025A88  38 9E 00 0C */	addi r4, r30, 0xc
/* 80025A8C  48 00 B9 A9 */	bl check__7daSus_cFScRC4cXyz
/* 80025A90  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80025A94  40 82 00 60 */	bne lbl_80025AF4
/* 80025A98  4B FF 40 11 */	bl fopAcM_CreateAppend__Fv
/* 80025A9C  7C 64 1B 79 */	or. r4, r3, r3
/* 80025AA0  41 82 00 54 */	beq lbl_80025AF4
/* 80025AA4  80 1E 00 08 */	lwz r0, 8(r30)
/* 80025AA8  90 04 00 00 */	stw r0, 0(r4)
/* 80025AAC  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80025AB0  D0 04 00 04 */	stfs f0, 4(r4)
/* 80025AB4  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80025AB8  D0 04 00 08 */	stfs f0, 8(r4)
/* 80025ABC  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80025AC0  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 80025AC4  A8 1E 00 18 */	lha r0, 0x18(r30)
/* 80025AC8  B0 04 00 10 */	sth r0, 0x10(r4)
/* 80025ACC  A8 1E 00 1A */	lha r0, 0x1a(r30)
/* 80025AD0  B0 04 00 12 */	sth r0, 0x12(r4)
/* 80025AD4  A8 1E 00 1C */	lha r0, 0x1c(r30)
/* 80025AD8  B0 04 00 14 */	sth r0, 0x14(r4)
/* 80025ADC  A0 1E 00 1E */	lhz r0, 0x1e(r30)
/* 80025AE0  B0 04 00 16 */	sth r0, 0x16(r4)
/* 80025AE4  88 1B 00 04 */	lbz r0, 4(r27)
/* 80025AE8  98 04 00 21 */	stb r0, 0x21(r4)
/* 80025AEC  7F C3 F3 78 */	mr r3, r30
/* 80025AF0  4B FF F4 0D */	bl dStage_actorCreate__FP22stage_actor_data_classP16fopAcM_prm_class
lbl_80025AF4:
/* 80025AF4  3B DE 00 20 */	addi r30, r30, 0x20
/* 80025AF8  3B BD 00 01 */	addi r29, r29, 1
lbl_80025AFC:
/* 80025AFC  80 1C 00 04 */	lwz r0, 4(r28)
/* 80025B00  7C 1D 00 00 */	cmpw r29, r0
/* 80025B04  41 80 FF 64 */	blt lbl_80025A68
/* 80025B08  38 60 00 01 */	li r3, 1
/* 80025B0C  39 61 00 20 */	addi r11, r1, 0x20
/* 80025B10  48 33 C7 11 */	bl _restgpr_27
/* 80025B14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80025B18  7C 08 03 A6 */	mtlr r0
/* 80025B1C  38 21 00 20 */	addi r1, r1, 0x20
/* 80025B20  4E 80 00 20 */	blr 

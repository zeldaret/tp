lbl_80025B24:
/* 80025B24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80025B28  7C 08 02 A6 */	mflr r0
/* 80025B2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80025B30  39 61 00 20 */	addi r11, r1, 0x20
/* 80025B34  48 33 C6 A1 */	bl _savegpr_27
/* 80025B38  7C 7B 1B 78 */	mr r27, r3
/* 80025B3C  7C 9C 23 78 */	mr r28, r4
/* 80025B40  83 C4 00 08 */	lwz r30, 8(r4)
/* 80025B44  3B A0 00 00 */	li r29, 0
/* 80025B48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80025B4C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80025B50  48 00 00 84 */	b lbl_80025BD4
lbl_80025B54:
/* 80025B54  7F E3 FB 78 */	mr r3, r31
/* 80025B58  A0 9E 00 1E */	lhz r4, 0x1e(r30)
/* 80025B5C  88 BB 00 04 */	lbz r5, 4(r27)
/* 80025B60  7C A5 07 74 */	extsb r5, r5
/* 80025B64  48 00 FB C1 */	bl isActor__10dSv_info_cCFii
/* 80025B68  2C 03 00 00 */	cmpwi r3, 0
/* 80025B6C  40 82 00 60 */	bne lbl_80025BCC
/* 80025B70  4B FF 3F 39 */	bl fopAcM_CreateAppend__Fv
/* 80025B74  7C 64 1B 79 */	or. r4, r3, r3
/* 80025B78  41 82 00 54 */	beq lbl_80025BCC
/* 80025B7C  80 1E 00 08 */	lwz r0, 8(r30)
/* 80025B80  90 04 00 00 */	stw r0, 0(r4)
/* 80025B84  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80025B88  D0 04 00 04 */	stfs f0, 4(r4)
/* 80025B8C  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80025B90  D0 04 00 08 */	stfs f0, 8(r4)
/* 80025B94  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80025B98  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 80025B9C  A8 1E 00 18 */	lha r0, 0x18(r30)
/* 80025BA0  B0 04 00 10 */	sth r0, 0x10(r4)
/* 80025BA4  A8 1E 00 1A */	lha r0, 0x1a(r30)
/* 80025BA8  B0 04 00 12 */	sth r0, 0x12(r4)
/* 80025BAC  A8 1E 00 1C */	lha r0, 0x1c(r30)
/* 80025BB0  B0 04 00 14 */	sth r0, 0x14(r4)
/* 80025BB4  A0 1E 00 1E */	lhz r0, 0x1e(r30)
/* 80025BB8  B0 04 00 16 */	sth r0, 0x16(r4)
/* 80025BBC  88 1B 00 04 */	lbz r0, 4(r27)
/* 80025BC0  98 04 00 21 */	stb r0, 0x21(r4)
/* 80025BC4  7F C3 F3 78 */	mr r3, r30
/* 80025BC8  4B FF F3 35 */	bl dStage_actorCreate__FP22stage_actor_data_classP16fopAcM_prm_class
lbl_80025BCC:
/* 80025BCC  3B DE 00 20 */	addi r30, r30, 0x20
/* 80025BD0  3B BD 00 01 */	addi r29, r29, 1
lbl_80025BD4:
/* 80025BD4  80 1C 00 04 */	lwz r0, 4(r28)
/* 80025BD8  7C 1D 00 00 */	cmpw r29, r0
/* 80025BDC  41 80 FF 78 */	blt lbl_80025B54
/* 80025BE0  38 60 00 01 */	li r3, 1
/* 80025BE4  39 61 00 20 */	addi r11, r1, 0x20
/* 80025BE8  48 33 C6 39 */	bl _restgpr_27
/* 80025BEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80025BF0  7C 08 03 A6 */	mtlr r0
/* 80025BF4  38 21 00 20 */	addi r1, r1, 0x20
/* 80025BF8  4E 80 00 20 */	blr 

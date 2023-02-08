lbl_800A093C:
/* 800A093C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 800A0940  7C 08 02 A6 */	mflr r0
/* 800A0944  90 01 00 64 */	stw r0, 0x64(r1)
/* 800A0948  39 61 00 60 */	addi r11, r1, 0x60
/* 800A094C  48 2C 18 7D */	bl _savegpr_24
/* 800A0950  7C 7F 1B 78 */	mr r31, r3
/* 800A0954  7C 9B 23 78 */	mr r27, r4
/* 800A0958  7C BC 2B 78 */	mr r28, r5
/* 800A095C  7C DD 33 78 */	mr r29, r6
/* 800A0960  3B 40 00 00 */	li r26, 0
/* 800A0964  AB C3 31 1C */	lha r30, 0x311c(r3)
/* 800A0968  38 00 00 00 */	li r0, 0
/* 800A096C  B0 03 31 1C */	sth r0, 0x311c(r3)
/* 800A0970  A0 A3 2F E8 */	lhz r5, 0x2fe8(r3)
/* 800A0974  28 05 00 C0 */	cmplwi r5, 0xc0
/* 800A0978  41 82 00 2C */	beq lbl_800A09A4
/* 800A097C  28 05 01 48 */	cmplwi r5, 0x148
/* 800A0980  41 82 00 24 */	beq lbl_800A09A4
/* 800A0984  28 05 01 3C */	cmplwi r5, 0x13c
/* 800A0988  41 82 00 1C */	beq lbl_800A09A4
/* 800A098C  28 05 00 E3 */	cmplwi r5, 0xe3
/* 800A0990  41 82 00 14 */	beq lbl_800A09A4
/* 800A0994  28 05 00 EA */	cmplwi r5, 0xea
/* 800A0998  41 82 00 0C */	beq lbl_800A09A4
/* 800A099C  28 05 00 C1 */	cmplwi r5, 0xc1
/* 800A09A0  40 82 00 0C */	bne lbl_800A09AC
lbl_800A09A4:
/* 800A09A4  83 5F 28 10 */	lwz r26, 0x2810(r31)
/* 800A09A8  48 00 02 64 */	b lbl_800A0C0C
lbl_800A09AC:
/* 800A09AC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800A09B0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800A09B4  80 04 5F 18 */	lwz r0, 0x5f18(r4)
/* 800A09B8  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800A09BC  41 82 00 D8 */	beq lbl_800A0A94
/* 800A09C0  28 05 01 5B */	cmplwi r5, 0x15b
/* 800A09C4  41 82 02 48 */	beq lbl_800A0C0C
/* 800A09C8  28 05 01 5C */	cmplwi r5, 0x15c
/* 800A09CC  41 82 02 40 */	beq lbl_800A0C0C
/* 800A09D0  28 05 01 5D */	cmplwi r5, 0x15d
/* 800A09D4  41 82 02 38 */	beq lbl_800A0C0C
/* 800A09D8  4B F7 B1 3D */	bl fopAcM_getTalkEventPartner__FPC10fopAc_ac_c
/* 800A09DC  7C 7A 1B 79 */	or. r26, r3, r3
/* 800A09E0  41 82 02 2C */	beq lbl_800A0C0C
/* 800A09E4  83 0D 8A 98 */	lwz r24, m_midnaActor__9daPy_py_c(r13)
/* 800A09E8  AB 3A 00 08 */	lha r25, 8(r26)
/* 800A09EC  2C 19 00 FF */	cmpwi r25, 0xff
/* 800A09F0  41 82 00 5C */	beq lbl_800A0A4C
/* 800A09F4  2C 19 02 C7 */	cmpwi r25, 0x2c7
/* 800A09F8  41 82 00 54 */	beq lbl_800A0A4C
/* 800A09FC  2C 19 02 C1 */	cmpwi r25, 0x2c1
/* 800A0A00  40 82 00 10 */	bne lbl_800A0A10
/* 800A0A04  88 1A 05 6D */	lbz r0, 0x56d(r26)
/* 800A0A08  28 00 00 FF */	cmplwi r0, 0xff
/* 800A0A0C  41 82 00 40 */	beq lbl_800A0A4C
lbl_800A0A10:
/* 800A0A10  2C 19 02 C4 */	cmpwi r25, 0x2c4
/* 800A0A14  40 82 00 10 */	bne lbl_800A0A24
/* 800A0A18  88 1A 05 6B */	lbz r0, 0x56b(r26)
/* 800A0A1C  28 00 00 FF */	cmplwi r0, 0xff
/* 800A0A20  41 82 00 2C */	beq lbl_800A0A4C
lbl_800A0A24:
/* 800A0A24  2C 19 02 C3 */	cmpwi r25, 0x2c3
/* 800A0A28  40 82 00 34 */	bne lbl_800A0A5C
/* 800A0A2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800A0A30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800A0A34  88 9A 05 69 */	lbz r4, 0x569(r26)
/* 800A0A38  88 1A 04 BA */	lbz r0, 0x4ba(r26)
/* 800A0A3C  7C 05 07 74 */	extsb r5, r0
/* 800A0A40  4B F9 49 21 */	bl isSwitch__10dSv_info_cCFii
/* 800A0A44  2C 03 00 00 */	cmpwi r3, 0
/* 800A0A48  41 82 00 14 */	beq lbl_800A0A5C
lbl_800A0A4C:
/* 800A0A4C  38 00 00 01 */	li r0, 1
/* 800A0A50  90 1C 00 00 */	stw r0, 0(r28)
/* 800A0A54  38 78 05 38 */	addi r3, r24, 0x538
/* 800A0A58  48 00 09 BC */	b lbl_800A1414
lbl_800A0A5C:
/* 800A0A5C  2C 19 02 C1 */	cmpwi r25, 0x2c1
/* 800A0A60  41 82 00 0C */	beq lbl_800A0A6C
/* 800A0A64  2C 19 02 C4 */	cmpwi r25, 0x2c4
/* 800A0A68  40 82 01 A4 */	bne lbl_800A0C0C
lbl_800A0A6C:
/* 800A0A6C  80 18 08 90 */	lwz r0, 0x890(r24)
/* 800A0A70  64 00 00 02 */	oris r0, r0, 2
/* 800A0A74  90 18 08 90 */	stw r0, 0x890(r24)
/* 800A0A78  C0 1A 05 38 */	lfs f0, 0x538(r26)
/* 800A0A7C  D0 18 09 C4 */	stfs f0, 0x9c4(r24)
/* 800A0A80  C0 1A 05 3C */	lfs f0, 0x53c(r26)
/* 800A0A84  D0 18 09 C8 */	stfs f0, 0x9c8(r24)
/* 800A0A88  C0 1A 05 40 */	lfs f0, 0x540(r26)
/* 800A0A8C  D0 18 09 CC */	stfs f0, 0x9cc(r24)
/* 800A0A90  48 00 01 7C */	b lbl_800A0C0C
lbl_800A0A94:
/* 800A0A94  28 05 00 B4 */	cmplwi r5, 0xb4
/* 800A0A98  40 82 00 18 */	bne lbl_800A0AB0
/* 800A0A9C  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800A0AA0  28 00 00 6C */	cmplwi r0, 0x6c
/* 800A0AA4  40 82 00 0C */	bne lbl_800A0AB0
/* 800A0AA8  83 5F 28 60 */	lwz r26, 0x2860(r31)
/* 800A0AAC  48 00 01 60 */	b lbl_800A0C0C
lbl_800A0AB0:
/* 800A0AB0  28 05 00 A2 */	cmplwi r5, 0xa2
/* 800A0AB4  41 82 00 1C */	beq lbl_800A0AD0
/* 800A0AB8  28 05 00 95 */	cmplwi r5, 0x95
/* 800A0ABC  41 82 00 14 */	beq lbl_800A0AD0
/* 800A0AC0  28 05 00 96 */	cmplwi r5, 0x96
/* 800A0AC4  41 82 00 0C */	beq lbl_800A0AD0
/* 800A0AC8  28 05 00 97 */	cmplwi r5, 0x97
/* 800A0ACC  40 82 00 0C */	bne lbl_800A0AD8
lbl_800A0AD0:
/* 800A0AD0  83 5F 28 28 */	lwz r26, 0x2828(r31)
/* 800A0AD4  48 00 01 38 */	b lbl_800A0C0C
lbl_800A0AD8:
/* 800A0AD8  80 7F 27 EC */	lwz r3, 0x27ec(r31)
/* 800A0ADC  7C 7A 1B 78 */	mr r26, r3
/* 800A0AE0  48 03 BA 69 */	bl checkEnemyGroup__9daAlink_cFP10fopAc_ac_c
/* 800A0AE4  2C 03 00 00 */	cmpwi r3, 0
/* 800A0AE8  41 82 01 14 */	beq lbl_800A0BFC
/* 800A0AEC  80 7F 27 E0 */	lwz r3, 0x27e0(r31)
/* 800A0AF0  38 80 00 01 */	li r4, 1
/* 800A0AF4  4B FC FD 51 */	bl GetLockonList__12dAttention_cFl
/* 800A0AF8  28 03 00 00 */	cmplwi r3, 0
/* 800A0AFC  41 82 00 1C */	beq lbl_800A0B18
/* 800A0B00  80 7F 27 E0 */	lwz r3, 0x27e0(r31)
/* 800A0B04  38 80 00 01 */	li r4, 1
/* 800A0B08  4B FC FD 3D */	bl GetLockonList__12dAttention_cFl
/* 800A0B0C  4B FD 2D 59 */	bl getActor__10dAttList_cFv
/* 800A0B10  7C 79 1B 78 */	mr r25, r3
/* 800A0B14  48 00 00 08 */	b lbl_800A0B1C
lbl_800A0B18:
/* 800A0B18  3B 20 00 00 */	li r25, 0
lbl_800A0B1C:
/* 800A0B1C  80 7F 28 FC */	lwz r3, 0x28fc(r31)
/* 800A0B20  3C 03 00 01 */	addis r0, r3, 1
/* 800A0B24  28 00 FF FF */	cmplwi r0, 0xffff
/* 800A0B28  41 82 00 5C */	beq lbl_800A0B84
/* 800A0B2C  90 61 00 0C */	stw r3, 0xc(r1)
/* 800A0B30  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 800A0B34  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 800A0B38  38 81 00 0C */	addi r4, r1, 0xc
/* 800A0B3C  4B F7 8C BD */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 800A0B40  A8 9F 30 F8 */	lha r4, 0x30f8(r31)
/* 800A0B44  38 04 FF FF */	addi r0, r4, -1
/* 800A0B48  B0 1F 30 F8 */	sth r0, 0x30f8(r31)
/* 800A0B4C  A8 1F 30 F8 */	lha r0, 0x30f8(r31)
/* 800A0B50  2C 00 00 00 */	cmpwi r0, 0
/* 800A0B54  41 82 00 1C */	beq lbl_800A0B70
/* 800A0B58  28 03 00 00 */	cmplwi r3, 0
/* 800A0B5C  41 82 00 14 */	beq lbl_800A0B70
/* 800A0B60  7C 03 C8 40 */	cmplw r3, r25
/* 800A0B64  40 82 00 0C */	bne lbl_800A0B70
/* 800A0B68  7C 7A 1B 78 */	mr r26, r3
/* 800A0B6C  48 00 00 A0 */	b lbl_800A0C0C
lbl_800A0B70:
/* 800A0B70  38 00 00 00 */	li r0, 0
/* 800A0B74  B0 1F 30 F8 */	sth r0, 0x30f8(r31)
/* 800A0B78  38 00 FF FF */	li r0, -1
/* 800A0B7C  90 1F 28 FC */	stw r0, 0x28fc(r31)
/* 800A0B80  48 00 00 8C */	b lbl_800A0C0C
lbl_800A0B84:
/* 800A0B84  7F 23 CB 78 */	mr r3, r25
/* 800A0B88  48 03 B9 C1 */	bl checkEnemyGroup__9daAlink_cFP10fopAc_ac_c
/* 800A0B8C  2C 03 00 00 */	cmpwi r3, 0
/* 800A0B90  41 82 00 7C */	beq lbl_800A0C0C
/* 800A0B94  A8 7F 30 F8 */	lha r3, 0x30f8(r31)
/* 800A0B98  2C 03 FF E2 */	cmpwi r3, -30
/* 800A0B9C  40 82 00 54 */	bne lbl_800A0BF0
/* 800A0BA0  48 1C 6C CD */	bl cM_rnd__Fv
/* 800A0BA4  C0 02 94 44 */	lfs f0, lit_14760(r2)
/* 800A0BA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A0BAC  40 80 00 60 */	bge lbl_800A0C0C
/* 800A0BB0  C0 22 92 E0 */	lfs f1, lit_6845(r2)
/* 800A0BB4  48 1C 6D A1 */	bl cM_rndF__Ff
/* 800A0BB8  C0 02 92 E0 */	lfs f0, lit_6845(r2)
/* 800A0BBC  EC 00 08 2A */	fadds f0, f0, f1
/* 800A0BC0  FC 00 00 1E */	fctiwz f0, f0
/* 800A0BC4  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 800A0BC8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800A0BCC  B0 1F 30 F8 */	sth r0, 0x30f8(r31)
/* 800A0BD0  7F 3A CB 78 */	mr r26, r25
/* 800A0BD4  28 19 00 00 */	cmplwi r25, 0
/* 800A0BD8  41 82 00 0C */	beq lbl_800A0BE4
/* 800A0BDC  80 19 00 04 */	lwz r0, 4(r25)
/* 800A0BE0  48 00 00 08 */	b lbl_800A0BE8
lbl_800A0BE4:
/* 800A0BE4  38 00 FF FF */	li r0, -1
lbl_800A0BE8:
/* 800A0BE8  90 1F 28 FC */	stw r0, 0x28fc(r31)
/* 800A0BEC  48 00 00 20 */	b lbl_800A0C0C
lbl_800A0BF0:
/* 800A0BF0  38 03 FF FF */	addi r0, r3, -1
/* 800A0BF4  B0 1F 30 F8 */	sth r0, 0x30f8(r31)
/* 800A0BF8  48 00 00 14 */	b lbl_800A0C0C
lbl_800A0BFC:
/* 800A0BFC  38 00 FF FF */	li r0, -1
/* 800A0C00  90 1F 28 FC */	stw r0, 0x28fc(r31)
/* 800A0C04  38 00 00 00 */	li r0, 0
/* 800A0C08  B0 1F 30 F8 */	sth r0, 0x30f8(r31)
lbl_800A0C0C:
/* 800A0C0C  80 7F 27 E0 */	lwz r3, 0x27e0(r31)
/* 800A0C10  38 80 00 00 */	li r4, 0
/* 800A0C14  4B FD 29 29 */	bl LockonTarget__12dAttention_cFl
/* 800A0C18  7C 79 1B 78 */	mr r25, r3
/* 800A0C1C  28 1A 00 00 */	cmplwi r26, 0
/* 800A0C20  40 82 00 10 */	bne lbl_800A0C30
/* 800A0C24  48 0E 0A 1D */	bl dCam_getBody__Fv
/* 800A0C28  48 0E 08 D9 */	bl GetForceLockOnActor__9dCamera_cFv
/* 800A0C2C  7C 7A 1B 78 */	mr r26, r3
lbl_800A0C30:
/* 800A0C30  7F E3 FB 78 */	mr r3, r31
/* 800A0C34  7F 44 D3 78 */	mr r4, r26
/* 800A0C38  38 A1 00 10 */	addi r5, r1, 0x10
/* 800A0C3C  4B FF FC 2D */	bl checkActorPosAngle__9daAlink_cFP10fopAc_ac_cPP4cXyz
/* 800A0C40  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A0C44  41 82 00 0C */	beq lbl_800A0C50
/* 800A0C48  80 61 00 10 */	lwz r3, 0x10(r1)
/* 800A0C4C  48 00 07 C8 */	b lbl_800A1414
lbl_800A0C50:
/* 800A0C50  80 9F 31 A0 */	lwz r4, 0x31a0(r31)
/* 800A0C54  3C 60 08 00 */	lis r3, 0x0800 /* 0x08000100@ha */
/* 800A0C58  38 03 01 00 */	addi r0, r3, 0x0100 /* 0x08000100@l */
/* 800A0C5C  7C 80 00 39 */	and. r0, r4, r0
/* 800A0C60  40 82 00 24 */	bne lbl_800A0C84
/* 800A0C64  2C 1D 00 00 */	cmpwi r29, 0
/* 800A0C68  41 82 00 1C */	beq lbl_800A0C84
/* 800A0C6C  7F C0 07 35 */	extsh. r0, r30
/* 800A0C70  40 81 00 0C */	ble lbl_800A0C7C
/* 800A0C74  38 1E FF FF */	addi r0, r30, -1
/* 800A0C78  B0 1F 31 1C */	sth r0, 0x311c(r31)
lbl_800A0C7C:
/* 800A0C7C  38 60 00 00 */	li r3, 0
/* 800A0C80  48 00 07 94 */	b lbl_800A1414
lbl_800A0C84:
/* 800A0C84  7F E3 FB 78 */	mr r3, r31
/* 800A0C88  48 07 4F 99 */	bl checkEventRun__9daAlink_cCFv
/* 800A0C8C  2C 03 00 00 */	cmpwi r3, 0
/* 800A0C90  40 82 06 20 */	bne lbl_800A12B0
/* 800A0C94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800A0C98  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800A0C9C  80 1A 5F 1C */	lwz r0, 0x5f1c(r26)
/* 800A0CA0  74 00 02 01 */	andis. r0, r0, 0x201
/* 800A0CA4  41 82 00 20 */	beq lbl_800A0CC4
/* 800A0CA8  88 1F 20 68 */	lbz r0, 0x2068(r31)
/* 800A0CAC  28 00 00 00 */	cmplwi r0, 0
/* 800A0CB0  41 82 00 0C */	beq lbl_800A0CBC
/* 800A0CB4  38 7F 20 6C */	addi r3, r31, 0x206c
/* 800A0CB8  48 00 07 5C */	b lbl_800A1414
lbl_800A0CBC:
/* 800A0CBC  38 60 00 00 */	li r3, 0
/* 800A0CC0  48 00 07 54 */	b lbl_800A1414
lbl_800A0CC4:
/* 800A0CC4  38 7A 5B 6C */	addi r3, r26, 0x5b6c
/* 800A0CC8  80 9A 5B 78 */	lwz r4, 0x5b78(r26)
/* 800A0CCC  4B FD 2F D9 */	bl convPId__10dAttLook_cFUi
/* 800A0CD0  28 03 00 00 */	cmplwi r3, 0
/* 800A0CD4  41 82 00 38 */	beq lbl_800A0D0C
/* 800A0CD8  38 7A 5B 6C */	addi r3, r26, 0x5b6c
/* 800A0CDC  80 9A 5B 78 */	lwz r4, 0x5b78(r26)
/* 800A0CE0  4B FD 2F C5 */	bl convPId__10dAttLook_cFUi
/* 800A0CE4  A8 03 00 08 */	lha r0, 8(r3)
/* 800A0CE8  2C 00 01 E9 */	cmpwi r0, 0x1e9
/* 800A0CEC  40 82 00 0C */	bne lbl_800A0CF8
/* 800A0CF0  38 00 00 00 */	li r0, 0
/* 800A0CF4  90 1C 00 00 */	stw r0, 0(r28)
lbl_800A0CF8:
/* 800A0CF8  38 7A 5B 6C */	addi r3, r26, 0x5b6c
/* 800A0CFC  80 9A 5B 78 */	lwz r4, 0x5b78(r26)
/* 800A0D00  4B FD 2F A5 */	bl convPId__10dAttLook_cFUi
/* 800A0D04  38 63 05 38 */	addi r3, r3, 0x538
/* 800A0D08  48 00 07 0C */	b lbl_800A1414
lbl_800A0D0C:
/* 800A0D0C  7F E3 FB 78 */	mr r3, r31
/* 800A0D10  80 9F 27 F0 */	lwz r4, 0x27f0(r31)
/* 800A0D14  38 A1 00 10 */	addi r5, r1, 0x10
/* 800A0D18  4B FF FB 51 */	bl checkActorPosAngle__9daAlink_cFP10fopAc_ac_cPP4cXyz
/* 800A0D1C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A0D20  41 82 00 1C */	beq lbl_800A0D3C
/* 800A0D24  80 7F 27 F0 */	lwz r3, 0x27f0(r31)
/* 800A0D28  28 03 00 00 */	cmplwi r3, 0
/* 800A0D2C  41 82 00 40 */	beq lbl_800A0D6C
/* 800A0D30  A8 03 00 08 */	lha r0, 8(r3)
/* 800A0D34  2C 00 01 8B */	cmpwi r0, 0x18b
/* 800A0D38  40 82 00 34 */	bne lbl_800A0D6C
lbl_800A0D3C:
/* 800A0D3C  7F E3 FB 78 */	mr r3, r31
/* 800A0D40  7F 24 CB 78 */	mr r4, r25
/* 800A0D44  38 A1 00 10 */	addi r5, r1, 0x10
/* 800A0D48  4B FF FB 21 */	bl checkActorPosAngle__9daAlink_cFP10fopAc_ac_cPP4cXyz
/* 800A0D4C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A0D50  40 82 00 1C */	bne lbl_800A0D6C
/* 800A0D54  7F E3 FB 78 */	mr r3, r31
/* 800A0D58  80 9F 27 F8 */	lwz r4, 0x27f8(r31)
/* 800A0D5C  38 A1 00 10 */	addi r5, r1, 0x10
/* 800A0D60  4B FF FB 09 */	bl checkActorPosAngle__9daAlink_cFP10fopAc_ac_cPP4cXyz
/* 800A0D64  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A0D68  41 82 00 0C */	beq lbl_800A0D74
lbl_800A0D6C:
/* 800A0D6C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 800A0D70  48 00 06 A4 */	b lbl_800A1414
lbl_800A0D74:
/* 800A0D74  7F E3 FB 78 */	mr r3, r31
/* 800A0D78  80 9F 28 38 */	lwz r4, 0x2838(r31)
/* 800A0D7C  38 A1 00 10 */	addi r5, r1, 0x10
/* 800A0D80  4B FF FA E9 */	bl checkActorPosAngle__9daAlink_cFP10fopAc_ac_cPP4cXyz
/* 800A0D84  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A0D88  41 82 00 0C */	beq lbl_800A0D94
/* 800A0D8C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 800A0D90  48 00 06 84 */	b lbl_800A1414
lbl_800A0D94:
/* 800A0D94  7F E3 FB 78 */	mr r3, r31
/* 800A0D98  80 9F 28 40 */	lwz r4, 0x2840(r31)
/* 800A0D9C  38 A1 00 10 */	addi r5, r1, 0x10
/* 800A0DA0  4B FF FA C9 */	bl checkActorPosAngle__9daAlink_cFP10fopAc_ac_cPP4cXyz
/* 800A0DA4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A0DA8  41 82 00 0C */	beq lbl_800A0DB4
/* 800A0DAC  80 61 00 10 */	lwz r3, 0x10(r1)
/* 800A0DB0  48 00 06 64 */	b lbl_800A1414
lbl_800A0DB4:
/* 800A0DB4  80 1F 05 88 */	lwz r0, 0x588(r31)
/* 800A0DB8  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 800A0DBC  41 82 00 20 */	beq lbl_800A0DDC
/* 800A0DC0  7F E3 FB 78 */	mr r3, r31
/* 800A0DC4  38 9F 35 7C */	addi r4, r31, 0x357c
/* 800A0DC8  4B FF FA 11 */	bl checkAttentionPosAngle__9daAlink_cFP4cXyz
/* 800A0DCC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A0DD0  41 82 00 0C */	beq lbl_800A0DDC
/* 800A0DD4  38 7F 35 7C */	addi r3, r31, 0x357c
/* 800A0DD8  48 00 06 3C */	b lbl_800A1414
lbl_800A0DDC:
/* 800A0DDC  7F E3 FB 78 */	mr r3, r31
/* 800A0DE0  80 9F 28 60 */	lwz r4, 0x2860(r31)
/* 800A0DE4  38 A1 00 10 */	addi r5, r1, 0x10
/* 800A0DE8  4B FF FA 81 */	bl checkActorPosAngle__9daAlink_cFP10fopAc_ac_cPP4cXyz
/* 800A0DEC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A0DF0  41 82 00 0C */	beq lbl_800A0DFC
/* 800A0DF4  80 61 00 10 */	lwz r3, 0x10(r1)
/* 800A0DF8  48 00 06 1C */	b lbl_800A1414
lbl_800A0DFC:
/* 800A0DFC  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800A0E00  28 00 00 A5 */	cmplwi r0, 0xa5
/* 800A0E04  40 82 00 6C */	bne lbl_800A0E70
/* 800A0E08  C0 3F 33 98 */	lfs f1, 0x3398(r31)
/* 800A0E0C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A0E10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A0E14  40 81 00 5C */	ble lbl_800A0E70
/* 800A0E18  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800A0E1C  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800A0E20  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 800A0E24  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800A0E28  7C 64 02 14 */	add r3, r4, r0
/* 800A0E2C  C0 03 00 04 */	lfs f0, 4(r3)
/* 800A0E30  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 800A0E34  C0 42 93 68 */	lfs f2, lit_8472(r2)
/* 800A0E38  EC 02 00 32 */	fmuls f0, f2, f0
/* 800A0E3C  EC 81 00 2A */	fadds f4, f1, f0
/* 800A0E40  C0 22 93 50 */	lfs f1, lit_8247(r2)
/* 800A0E44  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800A0E48  EC 61 00 2A */	fadds f3, f1, f0
/* 800A0E4C  7C 04 04 2E */	lfsx f0, r4, r0
/* 800A0E50  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 800A0E54  EC 02 00 32 */	fmuls f0, f2, f0
/* 800A0E58  EC 01 00 2A */	fadds f0, f1, f0
/* 800A0E5C  D0 1B 00 00 */	stfs f0, 0(r27)
/* 800A0E60  D0 7B 00 04 */	stfs f3, 4(r27)
/* 800A0E64  D0 9B 00 08 */	stfs f4, 8(r27)
/* 800A0E68  7F 63 DB 78 */	mr r3, r27
/* 800A0E6C  48 00 05 A8 */	b lbl_800A1414
lbl_800A0E70:
/* 800A0E70  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800A0E74  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800A0E78  41 82 00 38 */	beq lbl_800A0EB0
/* 800A0E7C  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800A0E80  28 00 02 02 */	cmplwi r0, 0x202
/* 800A0E84  40 82 00 2C */	bne lbl_800A0EB0
/* 800A0E88  7F E3 FB 78 */	mr r3, r31
/* 800A0E8C  48 04 04 E9 */	bl getCopyRodControllActor__9daAlink_cFv
/* 800A0E90  7C 64 1B 78 */	mr r4, r3
/* 800A0E94  7F E3 FB 78 */	mr r3, r31
/* 800A0E98  38 A1 00 10 */	addi r5, r1, 0x10
/* 800A0E9C  4B FF F9 CD */	bl checkActorPosAngle__9daAlink_cFP10fopAc_ac_cPP4cXyz
/* 800A0EA0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A0EA4  41 82 00 0C */	beq lbl_800A0EB0
/* 800A0EA8  80 61 00 10 */	lwz r3, 0x10(r1)
/* 800A0EAC  48 00 05 68 */	b lbl_800A1414
lbl_800A0EB0:
/* 800A0EB0  7F E3 FB 78 */	mr r3, r31
/* 800A0EB4  38 80 00 01 */	li r4, 1
/* 800A0EB8  48 00 6B 35 */	bl checkWindSpeedOnAngleAnime__9daAlink_cCFi
/* 800A0EBC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A0EC0  41 82 01 08 */	beq lbl_800A0FC8
/* 800A0EC4  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800A0EC8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800A0ECC  41 82 00 84 */	beq lbl_800A0F50
/* 800A0ED0  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 800A0ED4  A8 7F 30 CC */	lha r3, 0x30cc(r31)
/* 800A0ED8  3C 63 00 01 */	addis r3, r3, 1
/* 800A0EDC  38 03 80 00 */	addi r0, r3, -32768
/* 800A0EE0  7C 04 00 50 */	subf r0, r4, r0
/* 800A0EE4  7C 00 07 35 */	extsh. r0, r0
/* 800A0EE8  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 800A0EEC  C0 22 93 50 */	lfs f1, lit_8247(r2)
/* 800A0EF0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800A0EF4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800A0EF8  38 04 40 00 */	addi r0, r4, 0x4000
/* 800A0EFC  7C 00 07 34 */	extsh r0, r0
/* 800A0F00  41 80 00 0C */	blt lbl_800A0F0C
/* 800A0F04  38 04 C0 00 */	addi r0, r4, -16384
/* 800A0F08  7C 00 07 34 */	extsh r0, r0
lbl_800A0F0C:
/* 800A0F0C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800A0F10  7C 63 02 14 */	add r3, r3, r0
/* 800A0F14  C0 03 00 04 */	lfs f0, 4(r3)
/* 800A0F18  EC 01 00 32 */	fmuls f0, f1, f0
/* 800A0F1C  EC 82 00 2A */	fadds f4, f2, f0
/* 800A0F20  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 800A0F24  C0 5F 04 D0 */	lfs f2, 0x4d0(r31)
/* 800A0F28  C0 22 93 50 */	lfs f1, lit_8247(r2)
/* 800A0F2C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800A0F30  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800A0F34  7C 03 04 2E */	lfsx f0, r3, r0
/* 800A0F38  EC 01 00 32 */	fmuls f0, f1, f0
/* 800A0F3C  EC 02 00 2A */	fadds f0, f2, f0
/* 800A0F40  D0 1B 00 00 */	stfs f0, 0(r27)
/* 800A0F44  D0 7B 00 04 */	stfs f3, 4(r27)
/* 800A0F48  D0 9B 00 08 */	stfs f4, 8(r27)
/* 800A0F4C  48 00 00 40 */	b lbl_800A0F8C
lbl_800A0F50:
/* 800A0F50  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 800A0F54  C0 42 93 50 */	lfs f2, lit_8247(r2)
/* 800A0F58  C0 1F 35 C0 */	lfs f0, 0x35c0(r31)
/* 800A0F5C  EC 02 00 32 */	fmuls f0, f2, f0
/* 800A0F60  EC 81 00 28 */	fsubs f4, f1, f0
/* 800A0F64  C0 22 93 E0 */	lfs f1, lit_11673(r2)
/* 800A0F68  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800A0F6C  EC 61 00 2A */	fadds f3, f1, f0
/* 800A0F70  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 800A0F74  C0 1F 35 B8 */	lfs f0, 0x35b8(r31)
/* 800A0F78  EC 02 00 32 */	fmuls f0, f2, f0
/* 800A0F7C  EC 01 00 28 */	fsubs f0, f1, f0
/* 800A0F80  D0 1B 00 00 */	stfs f0, 0(r27)
/* 800A0F84  D0 7B 00 04 */	stfs f3, 4(r27)
/* 800A0F88  D0 9B 00 08 */	stfs f4, 8(r27)
lbl_800A0F8C:
/* 800A0F8C  7F E3 FB 78 */	mr r3, r31
/* 800A0F90  7F 64 DB 78 */	mr r4, r27
/* 800A0F94  4B FF F8 45 */	bl checkAttentionPosAngle__9daAlink_cFP4cXyz
/* 800A0F98  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A0F9C  41 82 04 38 */	beq lbl_800A13D4
/* 800A0FA0  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800A0FA4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800A0FA8  41 82 00 10 */	beq lbl_800A0FB8
/* 800A0FAC  80 1F 05 88 */	lwz r0, 0x588(r31)
/* 800A0FB0  60 00 40 00 */	ori r0, r0, 0x4000
/* 800A0FB4  90 1F 05 88 */	stw r0, 0x588(r31)
lbl_800A0FB8:
/* 800A0FB8  38 00 00 00 */	li r0, 0
/* 800A0FBC  90 1C 00 00 */	stw r0, 0(r28)
/* 800A0FC0  7F 63 DB 78 */	mr r3, r27
/* 800A0FC4  48 00 04 50 */	b lbl_800A1414
lbl_800A0FC8:
/* 800A0FC8  C0 3F 35 CC */	lfs f1, 0x35cc(r31)
/* 800A0FCC  C0 1F 35 C4 */	lfs f0, 0x35c4(r31)
/* 800A0FD0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 800A0FD4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A0FD8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800A0FDC  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 800A0FE0  38 61 00 20 */	addi r3, r1, 0x20
/* 800A0FE4  48 2A 61 55 */	bl PSVECSquareMag
/* 800A0FE8  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800A0FEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A0FF0  40 81 00 68 */	ble lbl_800A1058
/* 800A0FF4  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800A0FF8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800A0FFC  41 82 00 5C */	beq lbl_800A1058
/* 800A1000  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800A1004  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800A1008  41 82 00 0C */	beq lbl_800A1014
/* 800A100C  C0 62 93 B0 */	lfs f3, lit_10039(r2)
/* 800A1010  48 00 00 08 */	b lbl_800A1018
lbl_800A1014:
/* 800A1014  C0 62 93 E0 */	lfs f3, lit_11673(r2)
lbl_800A1018:
/* 800A1018  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 800A101C  C0 42 93 50 */	lfs f2, lit_8247(r2)
/* 800A1020  C0 1F 35 CC */	lfs f0, 0x35cc(r31)
/* 800A1024  EC 02 00 32 */	fmuls f0, f2, f0
/* 800A1028  EC 81 00 2A */	fadds f4, f1, f0
/* 800A102C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800A1030  EC 60 18 2A */	fadds f3, f0, f3
/* 800A1034  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 800A1038  C0 1F 35 C4 */	lfs f0, 0x35c4(r31)
/* 800A103C  EC 02 00 32 */	fmuls f0, f2, f0
/* 800A1040  EC 01 00 2A */	fadds f0, f1, f0
/* 800A1044  D0 1B 00 00 */	stfs f0, 0(r27)
/* 800A1048  D0 7B 00 04 */	stfs f3, 4(r27)
/* 800A104C  D0 9B 00 08 */	stfs f4, 8(r27)
/* 800A1050  7F 63 DB 78 */	mr r3, r27
/* 800A1054  48 00 03 C0 */	b lbl_800A1414
lbl_800A1058:
/* 800A1058  C0 3F 35 9C */	lfs f1, 0x359c(r31)
/* 800A105C  C0 1F 35 94 */	lfs f0, 0x3594(r31)
/* 800A1060  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800A1064  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A1068  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800A106C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 800A1070  38 61 00 14 */	addi r3, r1, 0x14
/* 800A1074  48 2A 60 C5 */	bl PSVECSquareMag
/* 800A1078  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A107C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A1080  40 81 00 58 */	ble lbl_800A10D8
/* 800A1084  FC 00 08 34 */	frsqrte f0, f1
/* 800A1088  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800A108C  FC 44 00 32 */	fmul f2, f4, f0
/* 800A1090  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800A1094  FC 00 00 32 */	fmul f0, f0, f0
/* 800A1098  FC 01 00 32 */	fmul f0, f1, f0
/* 800A109C  FC 03 00 28 */	fsub f0, f3, f0
/* 800A10A0  FC 02 00 32 */	fmul f0, f2, f0
/* 800A10A4  FC 44 00 32 */	fmul f2, f4, f0
/* 800A10A8  FC 00 00 32 */	fmul f0, f0, f0
/* 800A10AC  FC 01 00 32 */	fmul f0, f1, f0
/* 800A10B0  FC 03 00 28 */	fsub f0, f3, f0
/* 800A10B4  FC 02 00 32 */	fmul f0, f2, f0
/* 800A10B8  FC 44 00 32 */	fmul f2, f4, f0
/* 800A10BC  FC 00 00 32 */	fmul f0, f0, f0
/* 800A10C0  FC 01 00 32 */	fmul f0, f1, f0
/* 800A10C4  FC 03 00 28 */	fsub f0, f3, f0
/* 800A10C8  FC 02 00 32 */	fmul f0, f2, f0
/* 800A10CC  FC 21 00 32 */	fmul f1, f1, f0
/* 800A10D0  FC 20 08 18 */	frsp f1, f1
/* 800A10D4  48 00 00 88 */	b lbl_800A115C
lbl_800A10D8:
/* 800A10D8  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800A10DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A10E0  40 80 00 10 */	bge lbl_800A10F0
/* 800A10E4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800A10E8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800A10EC  48 00 00 70 */	b lbl_800A115C
lbl_800A10F0:
/* 800A10F0  D0 21 00 08 */	stfs f1, 8(r1)
/* 800A10F4  80 81 00 08 */	lwz r4, 8(r1)
/* 800A10F8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800A10FC  3C 00 7F 80 */	lis r0, 0x7f80
/* 800A1100  7C 03 00 00 */	cmpw r3, r0
/* 800A1104  41 82 00 14 */	beq lbl_800A1118
/* 800A1108  40 80 00 40 */	bge lbl_800A1148
/* 800A110C  2C 03 00 00 */	cmpwi r3, 0
/* 800A1110  41 82 00 20 */	beq lbl_800A1130
/* 800A1114  48 00 00 34 */	b lbl_800A1148
lbl_800A1118:
/* 800A1118  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800A111C  41 82 00 0C */	beq lbl_800A1128
/* 800A1120  38 00 00 01 */	li r0, 1
/* 800A1124  48 00 00 28 */	b lbl_800A114C
lbl_800A1128:
/* 800A1128  38 00 00 02 */	li r0, 2
/* 800A112C  48 00 00 20 */	b lbl_800A114C
lbl_800A1130:
/* 800A1130  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800A1134  41 82 00 0C */	beq lbl_800A1140
/* 800A1138  38 00 00 05 */	li r0, 5
/* 800A113C  48 00 00 10 */	b lbl_800A114C
lbl_800A1140:
/* 800A1140  38 00 00 03 */	li r0, 3
/* 800A1144  48 00 00 08 */	b lbl_800A114C
lbl_800A1148:
/* 800A1148  38 00 00 04 */	li r0, 4
lbl_800A114C:
/* 800A114C  2C 00 00 01 */	cmpwi r0, 1
/* 800A1150  40 82 00 0C */	bne lbl_800A115C
/* 800A1154  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800A1158  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_800A115C:
/* 800A115C  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800A1160  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A1164  40 81 00 70 */	ble lbl_800A11D4
/* 800A1168  7F E3 FB 78 */	mr r3, r31
/* 800A116C  38 80 00 14 */	li r4, 0x14
/* 800A1170  48 00 B3 E9 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800A1174  2C 03 00 00 */	cmpwi r3, 0
/* 800A1178  40 82 00 18 */	bne lbl_800A1190
/* 800A117C  7F E3 FB 78 */	mr r3, r31
/* 800A1180  38 80 00 37 */	li r4, 0x37
/* 800A1184  48 08 76 89 */	bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 800A1188  2C 03 00 00 */	cmpwi r3, 0
/* 800A118C  41 82 00 48 */	beq lbl_800A11D4
lbl_800A1190:
/* 800A1190  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 800A1194  C0 42 93 50 */	lfs f2, lit_8247(r2)
/* 800A1198  C0 1F 35 9C */	lfs f0, 0x359c(r31)
/* 800A119C  EC 02 00 32 */	fmuls f0, f2, f0
/* 800A11A0  EC 81 00 2A */	fadds f4, f1, f0
/* 800A11A4  C0 22 92 E0 */	lfs f1, lit_6845(r2)
/* 800A11A8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800A11AC  EC 61 00 2A */	fadds f3, f1, f0
/* 800A11B0  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 800A11B4  C0 1F 35 94 */	lfs f0, 0x3594(r31)
/* 800A11B8  EC 02 00 32 */	fmuls f0, f2, f0
/* 800A11BC  EC 01 00 2A */	fadds f0, f1, f0
/* 800A11C0  D0 1B 00 00 */	stfs f0, 0(r27)
/* 800A11C4  D0 7B 00 04 */	stfs f3, 4(r27)
/* 800A11C8  D0 9B 00 08 */	stfs f4, 8(r27)
/* 800A11CC  7F 63 DB 78 */	mr r3, r27
/* 800A11D0  48 00 02 44 */	b lbl_800A1414
lbl_800A11D4:
/* 800A11D4  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800A11D8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800A11DC  41 82 01 F8 */	beq lbl_800A13D4
/* 800A11E0  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800A11E4  28 00 01 11 */	cmplwi r0, 0x111
/* 800A11E8  40 82 00 28 */	bne lbl_800A1210
/* 800A11EC  7F E3 FB 78 */	mr r3, r31
/* 800A11F0  38 9F 37 C8 */	addi r4, r31, 0x37c8
/* 800A11F4  4B FF F5 E5 */	bl checkAttentionPosAngle__9daAlink_cFP4cXyz
/* 800A11F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A11FC  41 82 01 D8 */	beq lbl_800A13D4
/* 800A1200  38 00 00 00 */	li r0, 0
/* 800A1204  90 1C 00 00 */	stw r0, 0(r28)
/* 800A1208  38 7F 37 C8 */	addi r3, r31, 0x37c8
/* 800A120C  48 00 02 08 */	b lbl_800A1414
lbl_800A1210:
/* 800A1210  80 1F 27 EC */	lwz r0, 0x27ec(r31)
/* 800A1214  28 00 00 00 */	cmplwi r0, 0
/* 800A1218  40 82 01 BC */	bne lbl_800A13D4
/* 800A121C  7F E3 FB 78 */	mr r3, r31
/* 800A1220  48 01 22 E1 */	bl checkAttentionState__9daAlink_cFv
/* 800A1224  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A1228  41 82 00 10 */	beq lbl_800A1238
/* 800A122C  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800A1230  28 00 00 F6 */	cmplwi r0, 0xf6
/* 800A1234  41 82 00 10 */	beq lbl_800A1244
lbl_800A1238:
/* 800A1238  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800A123C  28 00 01 1B */	cmplwi r0, 0x11b
/* 800A1240  40 82 01 94 */	bne lbl_800A13D4
lbl_800A1244:
/* 800A1244  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800A1248  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800A124C  A8 1F 2F E4 */	lha r0, 0x2fe4(r31)
/* 800A1250  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800A1254  7C 64 02 14 */	add r3, r4, r0
/* 800A1258  C0 03 00 04 */	lfs f0, 4(r3)
/* 800A125C  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 800A1260  C0 42 93 B8 */	lfs f2, lit_10041(r2)
/* 800A1264  EC 02 00 32 */	fmuls f0, f2, f0
/* 800A1268  EC 81 00 2A */	fadds f4, f1, f0
/* 800A126C  C0 7F 05 3C */	lfs f3, 0x53c(r31)
/* 800A1270  7C 04 04 2E */	lfsx f0, r4, r0
/* 800A1274  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 800A1278  EC 02 00 32 */	fmuls f0, f2, f0
/* 800A127C  EC 01 00 2A */	fadds f0, f1, f0
/* 800A1280  D0 1B 00 00 */	stfs f0, 0(r27)
/* 800A1284  D0 7B 00 04 */	stfs f3, 4(r27)
/* 800A1288  D0 9B 00 08 */	stfs f4, 8(r27)
/* 800A128C  7F E3 FB 78 */	mr r3, r31
/* 800A1290  7F 64 DB 78 */	mr r4, r27
/* 800A1294  4B FF F5 45 */	bl checkAttentionPosAngle__9daAlink_cFP4cXyz
/* 800A1298  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A129C  41 82 01 38 */	beq lbl_800A13D4
/* 800A12A0  38 00 00 00 */	li r0, 0
/* 800A12A4  90 1C 00 00 */	stw r0, 0(r28)
/* 800A12A8  7F 63 DB 78 */	mr r3, r27
/* 800A12AC  48 00 01 68 */	b lbl_800A1414
lbl_800A12B0:
/* 800A12B0  83 3F 06 14 */	lwz r25, 0x614(r31)
/* 800A12B4  3B C0 00 00 */	li r30, 0
/* 800A12B8  80 1F 05 90 */	lwz r0, 0x590(r31)
/* 800A12BC  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 800A12C0  41 82 00 60 */	beq lbl_800A1320
/* 800A12C4  3B 40 00 01 */	li r26, 1
/* 800A12C8  48 10 B2 B5 */	bl dKy_darkworld_check__Fv
/* 800A12CC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800A12D0  28 00 00 01 */	cmplwi r0, 1
/* 800A12D4  41 82 00 24 */	beq lbl_800A12F8
/* 800A12D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800A12DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800A12E0  38 63 00 28 */	addi r3, r3, 0x28
/* 800A12E4  38 80 00 03 */	li r4, 3
/* 800A12E8  4B F9 19 05 */	bl isTransformLV__21dSv_player_status_b_cCFi
/* 800A12EC  2C 03 00 00 */	cmpwi r3, 0
/* 800A12F0  40 82 00 08 */	bne lbl_800A12F8
/* 800A12F4  3B 40 00 00 */	li r26, 0
lbl_800A12F8:
/* 800A12F8  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 800A12FC  41 82 00 24 */	beq lbl_800A1320
/* 800A1300  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800A1304  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800A1308  41 82 00 18 */	beq lbl_800A1320
/* 800A130C  38 00 00 01 */	li r0, 1
/* 800A1310  90 1C 00 00 */	stw r0, 0(r28)
/* 800A1314  80 6D 8A 98 */	lwz r3, m_midnaActor__9daPy_py_c(r13)
/* 800A1318  38 63 05 38 */	addi r3, r3, 0x538
/* 800A131C  48 00 00 F8 */	b lbl_800A1414
lbl_800A1320:
/* 800A1320  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800A1324  28 00 01 4A */	cmplwi r0, 0x14a
/* 800A1328  41 82 00 4C */	beq lbl_800A1374
/* 800A132C  28 19 00 17 */	cmplwi r25, 0x17
/* 800A1330  41 82 00 44 */	beq lbl_800A1374
/* 800A1334  7F E3 FB 78 */	mr r3, r31
/* 800A1338  7F 24 CB 78 */	mr r4, r25
/* 800A133C  48 07 5B 25 */	bl checkDemoMoveMode__9daAlink_cCFUl
/* 800A1340  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A1344  40 82 00 30 */	bne lbl_800A1374
/* 800A1348  28 19 00 01 */	cmplwi r25, 1
/* 800A134C  41 82 00 28 */	beq lbl_800A1374
/* 800A1350  28 19 00 04 */	cmplwi r25, 4
/* 800A1354  41 82 00 20 */	beq lbl_800A1374
/* 800A1358  28 19 00 2C */	cmplwi r25, 0x2c
/* 800A135C  41 82 00 18 */	beq lbl_800A1374
/* 800A1360  38 19 FF D1 */	addi r0, r25, -47
/* 800A1364  28 00 00 02 */	cmplwi r0, 2
/* 800A1368  40 81 00 0C */	ble lbl_800A1374
/* 800A136C  28 19 00 0C */	cmplwi r25, 0xc
/* 800A1370  40 82 00 44 */	bne lbl_800A13B4
lbl_800A1374:
/* 800A1374  7F E3 FB 78 */	mr r3, r31
/* 800A1378  48 07 6D 75 */	bl getDemoLookActor__9daAlink_cFv
/* 800A137C  7C 64 1B 79 */	or. r4, r3, r3
/* 800A1380  41 82 00 18 */	beq lbl_800A1398
/* 800A1384  A8 04 00 08 */	lha r0, 8(r4)
/* 800A1388  2C 00 00 FF */	cmpwi r0, 0xff
/* 800A138C  40 82 00 0C */	bne lbl_800A1398
/* 800A1390  38 64 05 38 */	addi r3, r4, 0x538
/* 800A1394  48 00 00 80 */	b lbl_800A1414
lbl_800A1398:
/* 800A1398  7F E3 FB 78 */	mr r3, r31
/* 800A139C  38 A1 00 10 */	addi r5, r1, 0x10
/* 800A13A0  4B FF F4 C9 */	bl checkActorPosAngle__9daAlink_cFP10fopAc_ac_cPP4cXyz
/* 800A13A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A13A8  41 82 00 2C */	beq lbl_800A13D4
/* 800A13AC  80 61 00 10 */	lwz r3, 0x10(r1)
/* 800A13B0  48 00 00 64 */	b lbl_800A1414
lbl_800A13B4:
/* 800A13B4  7F E3 FB 78 */	mr r3, r31
/* 800A13B8  80 9F 28 60 */	lwz r4, 0x2860(r31)
/* 800A13BC  38 A1 00 10 */	addi r5, r1, 0x10
/* 800A13C0  4B FF F4 A9 */	bl checkActorPosAngle__9daAlink_cFP10fopAc_ac_cPP4cXyz
/* 800A13C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A13C8  41 82 00 0C */	beq lbl_800A13D4
/* 800A13CC  80 61 00 10 */	lwz r3, 0x10(r1)
/* 800A13D0  48 00 00 44 */	b lbl_800A1414
lbl_800A13D4:
/* 800A13D4  2C 1D 00 00 */	cmpwi r29, 0
/* 800A13D8  40 82 00 0C */	bne lbl_800A13E4
/* 800A13DC  38 60 00 00 */	li r3, 0
/* 800A13E0  48 00 00 34 */	b lbl_800A1414
lbl_800A13E4:
/* 800A13E4  7F C0 07 35 */	extsh. r0, r30
/* 800A13E8  40 81 00 28 */	ble lbl_800A1410
/* 800A13EC  38 1E FF FF */	addi r0, r30, -1
/* 800A13F0  B0 1F 31 1C */	sth r0, 0x311c(r31)
/* 800A13F4  7F E3 FB 78 */	mr r3, r31
/* 800A13F8  38 9F 35 04 */	addi r4, r31, 0x3504
/* 800A13FC  4B FF F3 DD */	bl checkAttentionPosAngle__9daAlink_cFP4cXyz
/* 800A1400  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A1404  41 82 00 0C */	beq lbl_800A1410
/* 800A1408  38 7F 35 04 */	addi r3, r31, 0x3504
/* 800A140C  48 00 00 08 */	b lbl_800A1414
lbl_800A1410:
/* 800A1410  38 60 00 00 */	li r3, 0
lbl_800A1414:
/* 800A1414  39 61 00 60 */	addi r11, r1, 0x60
/* 800A1418  48 2C 0D FD */	bl _restgpr_24
/* 800A141C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 800A1420  7C 08 03 A6 */	mtlr r0
/* 800A1424  38 21 00 60 */	addi r1, r1, 0x60
/* 800A1428  4E 80 00 20 */	blr 

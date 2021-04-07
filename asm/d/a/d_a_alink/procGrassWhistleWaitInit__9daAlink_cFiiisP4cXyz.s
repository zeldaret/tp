lbl_80111A9C:
/* 80111A9C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80111AA0  7C 08 02 A6 */	mflr r0
/* 80111AA4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80111AA8  39 61 00 30 */	addi r11, r1, 0x30
/* 80111AAC  48 25 07 21 */	bl _savegpr_25
/* 80111AB0  7C 79 1B 78 */	mr r25, r3
/* 80111AB4  7C 9A 23 78 */	mr r26, r4
/* 80111AB8  7C BB 2B 78 */	mr r27, r5
/* 80111ABC  7C DC 33 78 */	mr r28, r6
/* 80111AC0  7C FD 3B 78 */	mr r29, r7
/* 80111AC4  7D 1E 43 78 */	mr r30, r8
/* 80111AC8  2C 1A 00 03 */	cmpwi r26, 3
/* 80111ACC  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFF9@ha */
/* 80111AD0  38 C3 FF F9 */	addi r6, r3, 0xFFF9 /* 0x0000FFF9@l */
/* 80111AD4  40 82 00 08 */	bne lbl_80111ADC
/* 80111AD8  38 C3 FF FF */	addi r6, r3, -1
lbl_80111ADC:
/* 80111ADC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80111AE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80111AE4  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80111AE8  38 7F 3F 90 */	addi r3, r31, 0x3f90
/* 80111AEC  7F 24 CB 78 */	mr r4, r25
/* 80111AF0  38 A0 00 00 */	li r5, 0
/* 80111AF4  4B F3 16 79 */	bl compulsory__14dEvt_control_cFPvPCcUs
/* 80111AF8  2C 03 00 00 */	cmpwi r3, 0
/* 80111AFC  40 82 00 14 */	bne lbl_80111B10
/* 80111B00  7F 23 CB 78 */	mr r3, r25
/* 80111B04  38 80 00 00 */	li r4, 0
/* 80111B08  4B FA 85 C9 */	bl checkNextAction__9daAlink_cFi
/* 80111B0C  48 00 01 80 */	b lbl_80111C8C
lbl_80111B10:
/* 80111B10  38 00 00 05 */	li r0, 5
/* 80111B14  B0 19 06 04 */	sth r0, 0x604(r25)
/* 80111B18  7F 23 CB 78 */	mr r3, r25
/* 80111B1C  38 80 00 BA */	li r4, 0xba
/* 80111B20  4B FB 04 4D */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 80111B24  2C 1A 00 03 */	cmpwi r26, 3
/* 80111B28  40 82 00 34 */	bne lbl_80111B5C
/* 80111B2C  7F 23 CB 78 */	mr r3, r25
/* 80111B30  4B FA DD 25 */	bl keepItemData__9daAlink_cFv
/* 80111B34  7F 23 CB 78 */	mr r3, r25
/* 80111B38  4B FF FC E5 */	bl setHorseWhistleModel__9daAlink_cFv
/* 80111B3C  7F 23 CB 78 */	mr r3, r25
/* 80111B40  38 80 01 0F */	li r4, 0x10f
/* 80111B44  4B F9 B4 3D */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 80111B48  38 00 FF FF */	li r0, -1
/* 80111B4C  90 19 31 98 */	stw r0, 0x3198(r25)
/* 80111B50  38 00 05 32 */	li r0, 0x532
/* 80111B54  90 19 32 CC */	stw r0, 0x32cc(r25)
/* 80111B58  48 00 00 44 */	b lbl_80111B9C
lbl_80111B5C:
/* 80111B5C  7F 23 CB 78 */	mr r3, r25
/* 80111B60  38 80 00 19 */	li r4, 0x19
/* 80111B64  4B F9 B4 1D */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 80111B68  38 00 00 FF */	li r0, 0xff
/* 80111B6C  B0 19 30 CE */	sth r0, 0x30ce(r25)
/* 80111B70  2C 1A 00 00 */	cmpwi r26, 0
/* 80111B74  40 82 00 18 */	bne lbl_80111B8C
/* 80111B78  38 00 01 00 */	li r0, 0x100
/* 80111B7C  90 19 31 98 */	stw r0, 0x3198(r25)
/* 80111B80  38 00 05 35 */	li r0, 0x535
/* 80111B84  90 19 32 CC */	stw r0, 0x32cc(r25)
/* 80111B88  48 00 00 14 */	b lbl_80111B9C
lbl_80111B8C:
/* 80111B8C  38 00 FF FF */	li r0, -1
/* 80111B90  90 19 31 98 */	stw r0, 0x3198(r25)
/* 80111B94  38 00 05 32 */	li r0, 0x532
/* 80111B98  90 19 32 CC */	stw r0, 0x32cc(r25)
lbl_80111B9C:
/* 80111B9C  7F 23 CB 78 */	mr r3, r25
/* 80111BA0  38 80 01 0F */	li r4, 0x10f
/* 80111BA4  4B F9 A8 AD */	bl getMainBckData__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 80111BA8  A0 83 00 00 */	lhz r4, 0(r3)
/* 80111BAC  7F 23 CB 78 */	mr r3, r25
/* 80111BB0  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 80111BB4  4B F9 B7 C1 */	bl setUpperAnimeBaseMorf__9daAlink_cFUsf
/* 80111BB8  7F 23 CB 78 */	mr r3, r25
/* 80111BBC  38 80 01 0F */	li r4, 0x10f
/* 80111BC0  4B F9 DF 55 */	bl setFacePriAnime__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 80111BC4  B3 59 30 0C */	sth r26, 0x300c(r25)
/* 80111BC8  B3 79 30 0E */	sth r27, 0x300e(r25)
/* 80111BCC  28 19 00 00 */	cmplwi r25, 0
/* 80111BD0  41 82 00 0C */	beq lbl_80111BDC
/* 80111BD4  83 59 00 04 */	lwz r26, 4(r25)
/* 80111BD8  48 00 00 08 */	b lbl_80111BE0
lbl_80111BDC:
/* 80111BDC  3B 40 FF FF */	li r26, -1
lbl_80111BE0:
/* 80111BE0  48 06 FA 61 */	bl dCam_getBody__Fv
/* 80111BE4  38 80 00 0C */	li r4, 0xc
/* 80111BE8  7F 45 D3 78 */	mr r5, r26
/* 80111BEC  38 C0 00 00 */	li r6, 0
/* 80111BF0  4C C6 31 82 */	crclr 6
/* 80111BF4  4B F7 6E 89 */	bl StartEventCamera__9dCamera_cFiie
/* 80111BF8  38 00 00 00 */	li r0, 0
/* 80111BFC  B0 19 30 08 */	sth r0, 0x3008(r25)
/* 80111C00  B0 19 30 10 */	sth r0, 0x3010(r25)
/* 80111C04  B0 19 30 12 */	sth r0, 0x3012(r25)
/* 80111C08  38 00 FF FF */	li r0, -1
/* 80111C0C  90 19 28 F0 */	stw r0, 0x28f0(r25)
/* 80111C10  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80111C14  D0 19 33 98 */	stfs f0, 0x3398(r25)
/* 80111C18  A8 19 04 E6 */	lha r0, 0x4e6(r25)
/* 80111C1C  B0 19 04 DE */	sth r0, 0x4de(r25)
/* 80111C20  38 00 00 04 */	li r0, 4
/* 80111C24  98 19 2F 98 */	stb r0, 0x2f98(r25)
/* 80111C28  2C 1C 00 00 */	cmpwi r28, 0
/* 80111C2C  41 82 00 48 */	beq lbl_80111C74
/* 80111C30  38 79 1D 08 */	addi r3, r25, 0x1d08
/* 80111C34  7F C4 F3 78 */	mr r4, r30
/* 80111C38  48 15 60 F1 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80111C3C  7F E3 FB 78 */	mr r3, r31
/* 80111C40  38 99 1D 08 */	addi r4, r25, 0x1d08
/* 80111C44  4B F6 28 5D */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80111C48  C0 02 93 A4 */	lfs f0, lit_9138(r2)
/* 80111C4C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80111C50  41 82 00 18 */	beq lbl_80111C68
/* 80111C54  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80111C58  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80111C5C  D0 19 04 D0 */	stfs f0, 0x4d0(r25)
/* 80111C60  D0 39 04 D4 */	stfs f1, 0x4d4(r25)
/* 80111C64  D0 59 04 D8 */	stfs f2, 0x4d8(r25)
lbl_80111C68:
/* 80111C68  B3 B9 04 E6 */	sth r29, 0x4e6(r25)
/* 80111C6C  A8 19 04 E6 */	lha r0, 0x4e6(r25)
/* 80111C70  B0 19 04 DE */	sth r0, 0x4de(r25)
lbl_80111C74:
/* 80111C74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80111C78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80111C7C  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 80111C80  64 00 04 00 */	oris r0, r0, 0x400
/* 80111C84  90 03 5F 1C */	stw r0, 0x5f1c(r3)
/* 80111C88  38 60 00 01 */	li r3, 1
lbl_80111C8C:
/* 80111C8C  39 61 00 30 */	addi r11, r1, 0x30
/* 80111C90  48 25 05 89 */	bl _restgpr_25
/* 80111C94  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80111C98  7C 08 03 A6 */	mtlr r0
/* 80111C9C  38 21 00 30 */	addi r1, r1, 0x30
/* 80111CA0  4E 80 00 20 */	blr 

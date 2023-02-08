lbl_807ED78C:
/* 807ED78C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 807ED790  7C 08 02 A6 */	mflr r0
/* 807ED794  90 01 00 94 */	stw r0, 0x94(r1)
/* 807ED798  39 61 00 90 */	addi r11, r1, 0x90
/* 807ED79C  4B B7 4A 3D */	bl _savegpr_28
/* 807ED7A0  7C 7E 1B 78 */	mr r30, r3
/* 807ED7A4  3C 80 80 7F */	lis r4, lit_3905@ha /* 0x807EF770@ha */
/* 807ED7A8  3B E4 F7 70 */	addi r31, r4, lit_3905@l /* 0x807EF770@l */
/* 807ED7AC  38 00 00 00 */	li r0, 0
/* 807ED7B0  98 03 07 5A */	stb r0, 0x75a(r3)
/* 807ED7B4  4B FF A8 99 */	bl setGroundAngle__8daE_WW_cFv
/* 807ED7B8  7F C3 F3 78 */	mr r3, r30
/* 807ED7BC  4B FF A4 65 */	bl damage_check__8daE_WW_cFv
/* 807ED7C0  80 1E 0A EC */	lwz r0, 0xaec(r30)
/* 807ED7C4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807ED7C8  90 1E 0A EC */	stw r0, 0xaec(r30)
/* 807ED7CC  3C 60 D8 00 */	lis r3, 0xD800 /* 0xD8000012@ha */
/* 807ED7D0  38 03 00 12 */	addi r0, r3, 0x0012 /* 0xD8000012@l */
/* 807ED7D4  90 1E 0C 4C */	stw r0, 0xc4c(r30)
/* 807ED7D8  90 1E 0D 84 */	stw r0, 0xd84(r30)
/* 807ED7DC  3B A0 00 00 */	li r29, 0
/* 807ED7E0  AB 9E 04 E6 */	lha r28, 0x4e6(r30)
/* 807ED7E4  80 1E 06 B8 */	lwz r0, 0x6b8(r30)
/* 807ED7E8  28 00 00 06 */	cmplwi r0, 6
/* 807ED7EC  41 81 00 7C */	bgt lbl_807ED868
/* 807ED7F0  3C 60 80 7F */	lis r3, lit_6441@ha /* 0x807EFA64@ha */
/* 807ED7F4  38 63 FA 64 */	addi r3, r3, lit_6441@l /* 0x807EFA64@l */
/* 807ED7F8  54 00 10 3A */	slwi r0, r0, 2
/* 807ED7FC  7C 03 00 2E */	lwzx r0, r3, r0
/* 807ED800  7C 09 03 A6 */	mtctr r0
/* 807ED804  4E 80 04 20 */	bctr 
lbl_807ED808:
/* 807ED808  7F C3 F3 78 */	mr r3, r30
/* 807ED80C  4B FF B8 51 */	bl executeMaster__8daE_WW_cFv
/* 807ED810  48 00 02 50 */	b lbl_807EDA60
lbl_807ED814:
/* 807ED814  7F C3 F3 78 */	mr r3, r30
/* 807ED818  4B FF BF 15 */	bl executeWait__8daE_WW_cFv
/* 807ED81C  48 00 00 4C */	b lbl_807ED868
lbl_807ED820:
/* 807ED820  7F C3 F3 78 */	mr r3, r30
/* 807ED824  4B FF C3 F9 */	bl executeAttack__8daE_WW_cFv
/* 807ED828  3B A0 00 01 */	li r29, 1
/* 807ED82C  48 00 00 3C */	b lbl_807ED868
lbl_807ED830:
/* 807ED830  7F C3 F3 78 */	mr r3, r30
/* 807ED834  4B FF D0 3D */	bl executeChase__8daE_WW_cFv
/* 807ED838  3B A0 00 01 */	li r29, 1
/* 807ED83C  48 00 00 2C */	b lbl_807ED868
lbl_807ED840:
/* 807ED840  7F C3 F3 78 */	mr r3, r30
/* 807ED844  4B FF DE 0D */	bl executeDamage__8daE_WW_cFv
/* 807ED848  3B A0 00 01 */	li r29, 1
/* 807ED84C  48 00 00 1C */	b lbl_807ED868
lbl_807ED850:
/* 807ED850  7F C3 F3 78 */	mr r3, r30
/* 807ED854  4B FF E2 8D */	bl executeMoveOut__8daE_WW_cFv
/* 807ED858  48 00 00 10 */	b lbl_807ED868
lbl_807ED85C:
/* 807ED85C  7F C3 F3 78 */	mr r3, r30
/* 807ED860  4B FF F5 F9 */	bl executeWalk__8daE_WW_cFv
/* 807ED864  3B A0 00 01 */	li r29, 1
lbl_807ED868:
/* 807ED868  7F C3 F3 78 */	mr r3, r30
/* 807ED86C  4B FF AD B9 */	bl setBlurEffect__8daE_WW_cFv
/* 807ED870  38 00 00 00 */	li r0, 0
/* 807ED874  98 1E 07 59 */	stb r0, 0x759(r30)
/* 807ED878  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 807ED87C  7C 00 E0 00 */	cmpw r0, r28
/* 807ED880  41 82 00 24 */	beq lbl_807ED8A4
/* 807ED884  7C 1C 00 50 */	subf r0, r28, r0
/* 807ED888  7C 00 07 35 */	extsh. r0, r0
/* 807ED88C  40 80 00 10 */	bge lbl_807ED89C
/* 807ED890  38 00 00 01 */	li r0, 1
/* 807ED894  98 1E 07 59 */	stb r0, 0x759(r30)
/* 807ED898  48 00 00 0C */	b lbl_807ED8A4
lbl_807ED89C:
/* 807ED89C  38 00 00 02 */	li r0, 2
/* 807ED8A0  98 1E 07 59 */	stb r0, 0x759(r30)
lbl_807ED8A4:
/* 807ED8A4  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 807ED8A8  30 1D FF FF */	addic r0, r29, -1
/* 807ED8AC  7C 00 E9 10 */	subfe r0, r0, r29
/* 807ED8B0  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 807ED8B4  4B AD 42 C9 */	bl setLinkSearch__15Z2CreatureEnemyFb
/* 807ED8B8  88 1E 07 5D */	lbz r0, 0x75d(r30)
/* 807ED8BC  28 00 00 00 */	cmplwi r0, 0
/* 807ED8C0  41 82 00 70 */	beq lbl_807ED930
/* 807ED8C4  38 61 00 10 */	addi r3, r1, 0x10
/* 807ED8C8  4B 88 A3 A1 */	bl __ct__11dBgS_LinChkFv
/* 807ED8CC  38 61 00 10 */	addi r3, r1, 0x10
/* 807ED8D0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807ED8D4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807ED8D8  80 84 5D 74 */	lwz r4, 0x5d74(r4)
/* 807ED8DC  38 84 00 D8 */	addi r4, r4, 0xd8
/* 807ED8E0  38 BE 05 50 */	addi r5, r30, 0x550
/* 807ED8E4  7F C6 F3 78 */	mr r6, r30
/* 807ED8E8  4B 88 A4 7D */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 807ED8EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807ED8F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807ED8F4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 807ED8F8  38 81 00 10 */	addi r4, r1, 0x10
/* 807ED8FC  4B 88 6A B9 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 807ED900  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807ED904  41 82 00 14 */	beq lbl_807ED918
/* 807ED908  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 807ED90C  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 807ED910  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 807ED914  48 00 00 10 */	b lbl_807ED924
lbl_807ED918:
/* 807ED918  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 807ED91C  60 00 00 04 */	ori r0, r0, 4
/* 807ED920  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_807ED924:
/* 807ED924  38 61 00 10 */	addi r3, r1, 0x10
/* 807ED928  38 80 FF FF */	li r4, -1
/* 807ED92C  4B 88 A3 B1 */	bl __dt__11dBgS_LinChkFv
lbl_807ED930:
/* 807ED930  7F C3 F3 78 */	mr r3, r30
/* 807ED934  4B FF FD 41 */	bl eWW_posMoveF__8daE_WW_cFv
/* 807ED938  38 7E 07 A0 */	addi r3, r30, 0x7a0
/* 807ED93C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807ED940  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807ED944  38 84 0F 38 */	addi r4, r4, 0xf38
/* 807ED948  4B 88 91 65 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 807ED94C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807ED950  7C 03 07 74 */	extsb r3, r0
/* 807ED954  4B 83 F7 19 */	bl dComIfGp_getReverb__Fi
/* 807ED958  7C 65 1B 78 */	mr r5, r3
/* 807ED95C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807ED960  38 80 00 00 */	li r4, 0
/* 807ED964  4B 82 37 4D */	bl play__16mDoExt_McaMorfSOFUlSc
/* 807ED968  7F C3 F3 78 */	mr r3, r30
/* 807ED96C  38 80 00 0B */	li r4, 0xb
/* 807ED970  4B FF A2 11 */	bl checkBck__8daE_WW_cFi
/* 807ED974  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807ED978  41 82 00 94 */	beq lbl_807EDA0C
/* 807ED97C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807ED980  38 63 00 0C */	addi r3, r3, 0xc
/* 807ED984  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807ED988  4B B3 AA A5 */	bl checkPass__12J3DFrameCtrlFf
/* 807ED98C  2C 03 00 00 */	cmpwi r3, 0
/* 807ED990  40 82 00 4C */	bne lbl_807ED9DC
/* 807ED994  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807ED998  38 63 00 0C */	addi r3, r3, 0xc
/* 807ED99C  C0 3F 01 00 */	lfs f1, 0x100(r31)
/* 807ED9A0  4B B3 AA 8D */	bl checkPass__12J3DFrameCtrlFf
/* 807ED9A4  2C 03 00 00 */	cmpwi r3, 0
/* 807ED9A8  40 82 00 34 */	bne lbl_807ED9DC
/* 807ED9AC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807ED9B0  38 63 00 0C */	addi r3, r3, 0xc
/* 807ED9B4  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 807ED9B8  4B B3 AA 75 */	bl checkPass__12J3DFrameCtrlFf
/* 807ED9BC  2C 03 00 00 */	cmpwi r3, 0
/* 807ED9C0  40 82 00 1C */	bne lbl_807ED9DC
/* 807ED9C4  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807ED9C8  38 63 00 0C */	addi r3, r3, 0xc
/* 807ED9CC  C0 3F 01 04 */	lfs f1, 0x104(r31)
/* 807ED9D0  4B B3 AA 5D */	bl checkPass__12J3DFrameCtrlFf
/* 807ED9D4  2C 03 00 00 */	cmpwi r3, 0
/* 807ED9D8  41 82 00 88 */	beq lbl_807EDA60
lbl_807ED9DC:
/* 807ED9DC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007038D@ha */
/* 807ED9E0  38 03 03 8D */	addi r0, r3, 0x038D /* 0x0007038D@l */
/* 807ED9E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 807ED9E8  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 807ED9EC  38 81 00 0C */	addi r4, r1, 0xc
/* 807ED9F0  38 A0 00 00 */	li r5, 0
/* 807ED9F4  38 C0 FF FF */	li r6, -1
/* 807ED9F8  81 9E 05 B8 */	lwz r12, 0x5b8(r30)
/* 807ED9FC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807EDA00  7D 89 03 A6 */	mtctr r12
/* 807EDA04  4E 80 04 21 */	bctrl 
/* 807EDA08  48 00 00 58 */	b lbl_807EDA60
lbl_807EDA0C:
/* 807EDA0C  7F C3 F3 78 */	mr r3, r30
/* 807EDA10  38 80 00 0F */	li r4, 0xf
/* 807EDA14  4B FF A1 6D */	bl checkBck__8daE_WW_cFi
/* 807EDA18  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807EDA1C  41 82 00 44 */	beq lbl_807EDA60
/* 807EDA20  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807EDA24  38 63 00 0C */	addi r3, r3, 0xc
/* 807EDA28  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 807EDA2C  4B B3 AA 01 */	bl checkPass__12J3DFrameCtrlFf
/* 807EDA30  2C 03 00 00 */	cmpwi r3, 0
/* 807EDA34  41 82 00 2C */	beq lbl_807EDA60
/* 807EDA38  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070388@ha */
/* 807EDA3C  38 03 03 88 */	addi r0, r3, 0x0388 /* 0x00070388@l */
/* 807EDA40  90 01 00 08 */	stw r0, 8(r1)
/* 807EDA44  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 807EDA48  38 81 00 08 */	addi r4, r1, 8
/* 807EDA4C  38 A0 FF FF */	li r5, -1
/* 807EDA50  81 9E 05 B8 */	lwz r12, 0x5b8(r30)
/* 807EDA54  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807EDA58  7D 89 03 A6 */	mtctr r12
/* 807EDA5C  4E 80 04 21 */	bctrl 
lbl_807EDA60:
/* 807EDA60  39 61 00 90 */	addi r11, r1, 0x90
/* 807EDA64  4B B7 47 C1 */	bl _restgpr_28
/* 807EDA68  80 01 00 94 */	lwz r0, 0x94(r1)
/* 807EDA6C  7C 08 03 A6 */	mtlr r0
/* 807EDA70  38 21 00 90 */	addi r1, r1, 0x90
/* 807EDA74  4E 80 00 20 */	blr 

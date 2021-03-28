lbl_80674AF4:
/* 80674AF4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80674AF8  7C 08 02 A6 */	mflr r0
/* 80674AFC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80674B00  39 61 00 50 */	addi r11, r1, 0x50
/* 80674B04  4B CE D6 C8 */	b _savegpr_25
/* 80674B08  7C 7F 1B 78 */	mr r31, r3
/* 80674B0C  3C 60 80 67 */	lis r3, l_staff_name@ha
/* 80674B10  3B A3 75 58 */	addi r29, r3, l_staff_name@l
/* 80674B14  80 7F 05 98 */	lwz r3, 0x598(r31)
/* 80674B18  4B BF 36 BC */	b ChkUsed__9cBgW_BgIdCFv
/* 80674B1C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80674B20  41 82 00 18 */	beq lbl_80674B38
/* 80674B24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80674B28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80674B2C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80674B30  80 9F 05 98 */	lwz r4, 0x598(r31)
/* 80674B34  4B 9F F7 1C */	b Release__4cBgSFP9dBgW_Base
lbl_80674B38:
/* 80674B38  7F E3 FB 78 */	mr r3, r31
/* 80674B3C  4B FF E4 A9 */	bl getOpenAnm__12daMBdoorL1_cFv
/* 80674B40  7C 79 1B 78 */	mr r25, r3
/* 80674B44  7F E3 FB 78 */	mr r3, r31
/* 80674B48  4B FF E3 29 */	bl getAnmArcName__12daMBdoorL1_cFv
/* 80674B4C  7F 24 CB 78 */	mr r4, r25
/* 80674B50  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80674B54  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80674B58  3C A5 00 02 */	addis r5, r5, 2
/* 80674B5C  38 C0 00 80 */	li r6, 0x80
/* 80674B60  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80674B64  4B 9C 78 18 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80674B68  7C 64 1B 78 */	mr r4, r3
/* 80674B6C  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 80674B70  38 A0 00 01 */	li r5, 1
/* 80674B74  38 C0 00 00 */	li r6, 0
/* 80674B78  C0 3D 00 44 */	lfs f1, 0x44(r29)
/* 80674B7C  38 E0 00 00 */	li r7, 0
/* 80674B80  39 00 FF FF */	li r8, -1
/* 80674B84  39 20 00 01 */	li r9, 1
/* 80674B88  4B 99 8C 54 */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80674B8C  7F E3 FB 78 */	mr r3, r31
/* 80674B90  4B FF DC A9 */	bl getNowLevel__FP10fopAc_ac_c
/* 80674B94  7C 7E 1B 78 */	mr r30, r3
/* 80674B98  7F E3 FB 78 */	mr r3, r31
/* 80674B9C  4B 9C 56 4C */	b getSwbit3__13door_param2_cFP10fopAc_ac_c
/* 80674BA0  54 7C 06 3E */	clrlwi r28, r3, 0x18
/* 80674BA4  28 1C 00 FF */	cmplwi r28, 0xff
/* 80674BA8  41 82 01 D8 */	beq lbl_80674D80
/* 80674BAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80674BB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80674BB4  7F 84 E3 78 */	mr r4, r28
/* 80674BB8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80674BBC  7C 05 07 74 */	extsb r5, r0
/* 80674BC0  4B 9C 07 A0 */	b isSwitch__10dSv_info_cCFii
/* 80674BC4  2C 03 00 00 */	cmpwi r3, 0
/* 80674BC8  40 82 01 B8 */	bne lbl_80674D80
/* 80674BCC  38 61 00 20 */	addi r3, r1, 0x20
/* 80674BD0  38 80 00 00 */	li r4, 0
/* 80674BD4  A8 BF 04 B6 */	lha r5, 0x4b6(r31)
/* 80674BD8  38 C0 00 00 */	li r6, 0
/* 80674BDC  4B BF 28 18 */	b __ct__5csXyzFsss
/* 80674BE0  88 1F 05 DF */	lbz r0, 0x5df(r31)
/* 80674BE4  28 00 00 01 */	cmplwi r0, 1
/* 80674BE8  40 82 00 10 */	bne lbl_80674BF8
/* 80674BEC  A8 61 00 22 */	lha r3, 0x22(r1)
/* 80674BF0  38 03 7F FF */	addi r0, r3, 0x7fff
/* 80674BF4  B0 01 00 22 */	sth r0, 0x22(r1)
lbl_80674BF8:
/* 80674BF8  7F E3 FB 78 */	mr r3, r31
/* 80674BFC  4B FF E3 89 */	bl getDoorType__12daMBdoorL1_cFv
/* 80674C00  2C 03 00 00 */	cmpwi r3, 0
/* 80674C04  40 82 00 74 */	bne lbl_80674C78
/* 80674C08  3B C0 00 00 */	li r30, 0
/* 80674C0C  3B 40 00 00 */	li r26, 0
/* 80674C10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80674C14  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 80674C18  3B 3D 00 84 */	addi r25, r29, 0x84
lbl_80674C1C:
/* 80674C1C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80674C20  7C 04 07 74 */	extsb r4, r0
/* 80674C24  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 80674C28  38 00 00 00 */	li r0, 0
/* 80674C2C  90 01 00 08 */	stw r0, 8(r1)
/* 80674C30  90 81 00 0C */	stw r4, 0xc(r1)
/* 80674C34  90 01 00 10 */	stw r0, 0x10(r1)
/* 80674C38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80674C3C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80674C40  38 80 00 00 */	li r4, 0
/* 80674C44  7C B9 D2 2E */	lhzx r5, r25, r26
/* 80674C48  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80674C4C  38 E0 00 00 */	li r7, 0
/* 80674C50  39 01 00 20 */	addi r8, r1, 0x20
/* 80674C54  39 20 00 00 */	li r9, 0
/* 80674C58  39 40 00 FF */	li r10, 0xff
/* 80674C5C  C0 3D 00 44 */	lfs f1, 0x44(r29)
/* 80674C60  4B 9D 7E 30 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80674C64  3B DE 00 01 */	addi r30, r30, 1
/* 80674C68  2C 1E 00 02 */	cmpwi r30, 2
/* 80674C6C  3B 5A 00 02 */	addi r26, r26, 2
/* 80674C70  41 80 FF AC */	blt lbl_80674C1C
/* 80674C74  48 00 00 DC */	b lbl_80674D50
lbl_80674C78:
/* 80674C78  7F E3 FB 78 */	mr r3, r31
/* 80674C7C  4B FF E3 09 */	bl getDoorType__12daMBdoorL1_cFv
/* 80674C80  2C 03 00 01 */	cmpwi r3, 1
/* 80674C84  40 82 00 CC */	bne lbl_80674D50
/* 80674C88  3B 60 00 00 */	li r27, 0
/* 80674C8C  3B 40 00 00 */	li r26, 0
/* 80674C90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80674C94  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l
lbl_80674C98:
/* 80674C98  2C 1E 00 04 */	cmpwi r30, 4
/* 80674C9C  41 82 00 08 */	beq lbl_80674CA4
/* 80674CA0  48 00 00 54 */	b lbl_80674CF4
lbl_80674CA4:
/* 80674CA4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80674CA8  7C 04 07 74 */	extsb r4, r0
/* 80674CAC  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 80674CB0  38 00 00 00 */	li r0, 0
/* 80674CB4  90 01 00 08 */	stw r0, 8(r1)
/* 80674CB8  90 81 00 0C */	stw r4, 0xc(r1)
/* 80674CBC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80674CC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80674CC4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80674CC8  38 80 00 00 */	li r4, 0
/* 80674CCC  38 BD 00 94 */	addi r5, r29, 0x94
/* 80674CD0  7C A5 D2 2E */	lhzx r5, r5, r26
/* 80674CD4  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80674CD8  38 E0 00 00 */	li r7, 0
/* 80674CDC  39 01 00 20 */	addi r8, r1, 0x20
/* 80674CE0  39 20 00 00 */	li r9, 0
/* 80674CE4  39 40 00 FF */	li r10, 0xff
/* 80674CE8  C0 3D 00 44 */	lfs f1, 0x44(r29)
/* 80674CEC  4B 9D 7D A4 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80674CF0  48 00 00 50 */	b lbl_80674D40
lbl_80674CF4:
/* 80674CF4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80674CF8  7C 04 07 74 */	extsb r4, r0
/* 80674CFC  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 80674D00  38 00 00 00 */	li r0, 0
/* 80674D04  90 01 00 08 */	stw r0, 8(r1)
/* 80674D08  90 81 00 0C */	stw r4, 0xc(r1)
/* 80674D0C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80674D10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80674D14  90 01 00 18 */	stw r0, 0x18(r1)
/* 80674D18  38 80 00 00 */	li r4, 0
/* 80674D1C  38 BD 00 88 */	addi r5, r29, 0x88
/* 80674D20  7C A5 D2 2E */	lhzx r5, r5, r26
/* 80674D24  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80674D28  38 E0 00 00 */	li r7, 0
/* 80674D2C  39 01 00 20 */	addi r8, r1, 0x20
/* 80674D30  39 20 00 00 */	li r9, 0
/* 80674D34  39 40 00 FF */	li r10, 0xff
/* 80674D38  C0 3D 00 44 */	lfs f1, 0x44(r29)
/* 80674D3C  4B 9D 7D 54 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_80674D40:
/* 80674D40  3B 7B 00 01 */	addi r27, r27, 1
/* 80674D44  28 1B 00 05 */	cmplwi r27, 5
/* 80674D48  3B 5A 00 02 */	addi r26, r26, 2
/* 80674D4C  41 80 FF 4C */	blt lbl_80674C98
lbl_80674D50:
/* 80674D50  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80674D54  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 80674D58  41 82 00 1C */	beq lbl_80674D74
/* 80674D5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80674D60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80674D64  7F 84 E3 78 */	mr r4, r28
/* 80674D68  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80674D6C  7C 05 07 74 */	extsb r5, r0
/* 80674D70  4B 9C 04 90 */	b onSwitch__10dSv_info_cFii
lbl_80674D74:
/* 80674D74  38 00 00 01 */	li r0, 1
/* 80674D78  98 1F 05 E1 */	stb r0, 0x5e1(r31)
/* 80674D7C  48 00 00 0C */	b lbl_80674D88
lbl_80674D80:
/* 80674D80  38 00 00 00 */	li r0, 0
/* 80674D84  98 1F 05 E1 */	stb r0, 0x5e1(r31)
lbl_80674D88:
/* 80674D88  38 60 00 01 */	li r3, 1
/* 80674D8C  39 61 00 50 */	addi r11, r1, 0x50
/* 80674D90  4B CE D4 88 */	b _restgpr_25
/* 80674D94  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80674D98  7C 08 03 A6 */	mtlr r0
/* 80674D9C  38 21 00 50 */	addi r1, r1, 0x50
/* 80674DA0  4E 80 00 20 */	blr 

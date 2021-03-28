lbl_80461A60:
/* 80461A60  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80461A64  7C 08 02 A6 */	mflr r0
/* 80461A68  90 01 00 54 */	stw r0, 0x54(r1)
/* 80461A6C  39 61 00 50 */	addi r11, r1, 0x50
/* 80461A70  4B F0 07 58 */	b _savegpr_24
/* 80461A74  7C 7F 1B 78 */	mr r31, r3
/* 80461A78  3C 80 80 46 */	lis r4, lit_4018@ha
/* 80461A7C  3B C4 68 20 */	addi r30, r4, lit_4018@l
/* 80461A80  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80461A84  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80461A88  80 84 5D B4 */	lwz r4, 0x5db4(r4)
/* 80461A8C  80 04 05 74 */	lwz r0, 0x574(r4)
/* 80461A90  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80461A94  41 82 00 78 */	beq lbl_80461B0C
/* 80461A98  4B BD 86 F0 */	b getKind__13door_param2_cFP10fopAc_ac_c
/* 80461A9C  2C 03 00 0A */	cmpwi r3, 0xa
/* 80461AA0  40 82 00 38 */	bne lbl_80461AD8
/* 80461AA4  7F E3 FB 78 */	mr r3, r31
/* 80461AA8  4B FF F0 FD */	bl getArcName__10daDoor20_cFv
/* 80461AAC  3C 80 80 46 */	lis r4, struct_804668D8+0x0@ha
/* 80461AB0  38 84 68 D8 */	addi r4, r4, struct_804668D8+0x0@l
/* 80461AB4  38 84 00 DF */	addi r4, r4, 0xdf
/* 80461AB8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80461ABC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80461AC0  3C A5 00 02 */	addis r5, r5, 2
/* 80461AC4  38 C0 00 80 */	li r6, 0x80
/* 80461AC8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80461ACC  4B BD A8 B0 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80461AD0  7C 64 1B 78 */	mr r4, r3
/* 80461AD4  48 00 00 A8 */	b lbl_80461B7C
lbl_80461AD8:
/* 80461AD8  7F E3 FB 78 */	mr r3, r31
/* 80461ADC  4B FF F0 C9 */	bl getArcName__10daDoor20_cFv
/* 80461AE0  3C 80 80 46 */	lis r4, struct_804668D8+0x0@ha
/* 80461AE4  38 84 68 D8 */	addi r4, r4, struct_804668D8+0x0@l
/* 80461AE8  38 84 00 F1 */	addi r4, r4, 0xf1
/* 80461AEC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80461AF0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80461AF4  3C A5 00 02 */	addis r5, r5, 2
/* 80461AF8  38 C0 00 80 */	li r6, 0x80
/* 80461AFC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80461B00  4B BD A8 7C */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80461B04  7C 64 1B 78 */	mr r4, r3
/* 80461B08  48 00 00 74 */	b lbl_80461B7C
lbl_80461B0C:
/* 80461B0C  4B BD 86 7C */	b getKind__13door_param2_cFP10fopAc_ac_c
/* 80461B10  2C 03 00 0A */	cmpwi r3, 0xa
/* 80461B14  40 82 00 38 */	bne lbl_80461B4C
/* 80461B18  7F E3 FB 78 */	mr r3, r31
/* 80461B1C  4B FF F0 89 */	bl getArcName__10daDoor20_cFv
/* 80461B20  3C 80 80 46 */	lis r4, struct_804668D8+0x0@ha
/* 80461B24  38 84 68 D8 */	addi r4, r4, struct_804668D8+0x0@l
/* 80461B28  38 84 00 D0 */	addi r4, r4, 0xd0
/* 80461B2C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80461B30  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80461B34  3C A5 00 02 */	addis r5, r5, 2
/* 80461B38  38 C0 00 80 */	li r6, 0x80
/* 80461B3C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80461B40  4B BD A8 3C */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80461B44  7C 64 1B 78 */	mr r4, r3
/* 80461B48  48 00 00 34 */	b lbl_80461B7C
lbl_80461B4C:
/* 80461B4C  7F E3 FB 78 */	mr r3, r31
/* 80461B50  4B FF F0 55 */	bl getArcName__10daDoor20_cFv
/* 80461B54  3C 80 80 46 */	lis r4, struct_804668D8+0x0@ha
/* 80461B58  38 84 68 D8 */	addi r4, r4, struct_804668D8+0x0@l
/* 80461B5C  38 84 00 B2 */	addi r4, r4, 0xb2
/* 80461B60  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80461B64  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80461B68  3C A5 00 02 */	addis r5, r5, 2
/* 80461B6C  38 C0 00 80 */	li r6, 0x80
/* 80461B70  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80461B74  4B BD A8 08 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80461B78  7C 64 1B 78 */	mr r4, r3
lbl_80461B7C:
/* 80461B7C  38 7F 05 84 */	addi r3, r31, 0x584
/* 80461B80  38 A0 00 01 */	li r5, 1
/* 80461B84  38 C0 00 00 */	li r6, 0
/* 80461B88  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80461B8C  38 E0 00 00 */	li r7, 0
/* 80461B90  39 00 FF FF */	li r8, -1
/* 80461B94  39 20 00 01 */	li r9, 1
/* 80461B98  4B BA BC 44 */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80461B9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80461BA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80461BA4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80461BA8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80461BAC  81 8C 00 E0 */	lwz r12, 0xe0(r12)
/* 80461BB0  7D 89 03 A6 */	mtctr r12
/* 80461BB4  4E 80 04 21 */	bctrl 
/* 80461BB8  D0 3F 05 90 */	stfs f1, 0x590(r31)
/* 80461BBC  7F E3 FB 78 */	mr r3, r31
/* 80461BC0  4B BD 86 28 */	b getSwbit3__13door_param2_cFP10fopAc_ac_c
/* 80461BC4  54 7A 06 3E */	clrlwi r26, r3, 0x18
/* 80461BC8  28 1A 00 FF */	cmplwi r26, 0xff
/* 80461BCC  41 82 01 38 */	beq lbl_80461D04
/* 80461BD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80461BD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80461BD8  7F 44 D3 78 */	mr r4, r26
/* 80461BDC  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80461BE0  7C 05 07 74 */	extsb r5, r0
/* 80461BE4  4B BD 37 7C */	b isSwitch__10dSv_info_cCFii
/* 80461BE8  2C 03 00 00 */	cmpwi r3, 0
/* 80461BEC  40 82 01 18 */	bne lbl_80461D04
/* 80461BF0  38 61 00 20 */	addi r3, r1, 0x20
/* 80461BF4  38 80 00 00 */	li r4, 0
/* 80461BF8  A8 BF 06 70 */	lha r5, 0x670(r31)
/* 80461BFC  38 C0 00 00 */	li r6, 0
/* 80461C00  4B E0 57 F4 */	b __ct__5csXyzFsss
/* 80461C04  3B 20 00 00 */	li r25, 0
/* 80461C08  3B 00 00 00 */	li r24, 0
/* 80461C0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80461C10  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 80461C14  3B 7C 4E 00 */	addi r27, r28, 0x4e00
/* 80461C18  3C 60 80 46 */	lis r3, struct_804668D8+0x0@ha
/* 80461C1C  3B A3 68 D8 */	addi r29, r3, struct_804668D8+0x0@l
lbl_80461C20:
/* 80461C20  7F 63 DB 78 */	mr r3, r27
/* 80461C24  38 9D 01 03 */	addi r4, r29, 0x103
/* 80461C28  4B F0 6D 6C */	b strcmp
/* 80461C2C  2C 03 00 00 */	cmpwi r3, 0
/* 80461C30  40 82 00 54 */	bne lbl_80461C84
/* 80461C34  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80461C38  7C 04 07 74 */	extsb r4, r0
/* 80461C3C  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80461C40  38 00 00 00 */	li r0, 0
/* 80461C44  90 01 00 08 */	stw r0, 8(r1)
/* 80461C48  90 81 00 0C */	stw r4, 0xc(r1)
/* 80461C4C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80461C50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80461C54  90 01 00 18 */	stw r0, 0x18(r1)
/* 80461C58  38 80 00 00 */	li r4, 0
/* 80461C5C  38 BE 00 38 */	addi r5, r30, 0x38
/* 80461C60  7C A5 C2 2E */	lhzx r5, r5, r24
/* 80461C64  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80461C68  38 E0 00 00 */	li r7, 0
/* 80461C6C  39 01 00 20 */	addi r8, r1, 0x20
/* 80461C70  39 20 00 00 */	li r9, 0
/* 80461C74  39 40 00 FF */	li r10, 0xff
/* 80461C78  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80461C7C  4B BE AE 14 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80461C80  48 00 00 50 */	b lbl_80461CD0
lbl_80461C84:
/* 80461C84  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80461C88  7C 04 07 74 */	extsb r4, r0
/* 80461C8C  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80461C90  38 00 00 00 */	li r0, 0
/* 80461C94  90 01 00 08 */	stw r0, 8(r1)
/* 80461C98  90 81 00 0C */	stw r4, 0xc(r1)
/* 80461C9C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80461CA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80461CA4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80461CA8  38 80 00 00 */	li r4, 0
/* 80461CAC  38 BE 00 2C */	addi r5, r30, 0x2c
/* 80461CB0  7C A5 C2 2E */	lhzx r5, r5, r24
/* 80461CB4  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80461CB8  38 E0 00 00 */	li r7, 0
/* 80461CBC  39 01 00 20 */	addi r8, r1, 0x20
/* 80461CC0  39 20 00 00 */	li r9, 0
/* 80461CC4  39 40 00 FF */	li r10, 0xff
/* 80461CC8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80461CCC  4B BE AD C4 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_80461CD0:
/* 80461CD0  3B 39 00 01 */	addi r25, r25, 1
/* 80461CD4  28 19 00 05 */	cmplwi r25, 5
/* 80461CD8  3B 18 00 02 */	addi r24, r24, 2
/* 80461CDC  41 80 FF 44 */	blt lbl_80461C20
/* 80461CE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80461CE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80461CE8  7F 44 D3 78 */	mr r4, r26
/* 80461CEC  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80461CF0  7C 05 07 74 */	extsb r5, r0
/* 80461CF4  4B BD 35 0C */	b onSwitch__10dSv_info_cFii
/* 80461CF8  38 00 00 01 */	li r0, 1
/* 80461CFC  98 1F 06 72 */	stb r0, 0x672(r31)
/* 80461D00  48 00 00 0C */	b lbl_80461D0C
lbl_80461D04:
/* 80461D04  38 00 00 00 */	li r0, 0
/* 80461D08  98 1F 06 72 */	stb r0, 0x672(r31)
lbl_80461D0C:
/* 80461D0C  39 61 00 50 */	addi r11, r1, 0x50
/* 80461D10  4B F0 05 04 */	b _restgpr_24
/* 80461D14  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80461D18  7C 08 03 A6 */	mtlr r0
/* 80461D1C  38 21 00 50 */	addi r1, r1, 0x50
/* 80461D20  4E 80 00 20 */	blr 

lbl_80BE7A38:
/* 80BE7A38  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BE7A3C  7C 08 02 A6 */	mflr r0
/* 80BE7A40  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BE7A44  39 61 00 40 */	addi r11, r1, 0x40
/* 80BE7A48  4B 77 A7 95 */	bl _savegpr_29
/* 80BE7A4C  7C 7F 1B 78 */	mr r31, r3
/* 80BE7A50  3C 60 80 BF */	lis r3, lit_3625@ha /* 0x80BE8004@ha */
/* 80BE7A54  3B C3 80 04 */	addi r30, r3, lit_3625@l /* 0x80BE8004@l */
/* 80BE7A58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BE7A5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BE7A60  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BE7A64  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80BE7A68  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80BE7A6C  7C 05 07 74 */	extsb r5, r0
/* 80BE7A70  4B 44 D8 F1 */	bl isSwitch__10dSv_info_cCFii
/* 80BE7A74  98 7F 06 F8 */	stb r3, 0x6f8(r31)
/* 80BE7A78  88 1F 06 F9 */	lbz r0, 0x6f9(r31)
/* 80BE7A7C  28 00 00 00 */	cmplwi r0, 0
/* 80BE7A80  41 82 02 B0 */	beq lbl_80BE7D30
/* 80BE7A84  88 1F 07 0C */	lbz r0, 0x70c(r31)
/* 80BE7A88  28 00 00 01 */	cmplwi r0, 1
/* 80BE7A8C  40 82 01 60 */	bne lbl_80BE7BEC
/* 80BE7A90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BE7A94  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BE7A98  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80BE7A9C  38 00 00 FF */	li r0, 0xff
/* 80BE7AA0  90 01 00 08 */	stw r0, 8(r1)
/* 80BE7AA4  38 80 00 00 */	li r4, 0
/* 80BE7AA8  90 81 00 0C */	stw r4, 0xc(r1)
/* 80BE7AAC  38 00 FF FF */	li r0, -1
/* 80BE7AB0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BE7AB4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BE7AB8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BE7ABC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80BE7AC0  80 9F 06 FC */	lwz r4, 0x6fc(r31)
/* 80BE7AC4  38 A0 00 00 */	li r5, 0
/* 80BE7AC8  3C C0 00 01 */	lis r6, 0x0001 /* 0x000085A7@ha */
/* 80BE7ACC  38 C6 85 A7 */	addi r6, r6, 0x85A7 /* 0x000085A7@l */
/* 80BE7AD0  38 FF 06 EC */	addi r7, r31, 0x6ec
/* 80BE7AD4  39 00 00 00 */	li r8, 0
/* 80BE7AD8  39 20 00 00 */	li r9, 0
/* 80BE7ADC  39 40 00 00 */	li r10, 0
/* 80BE7AE0  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80BE7AE4  4B 46 59 E9 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BE7AE8  90 7F 06 FC */	stw r3, 0x6fc(r31)
/* 80BE7AEC  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80BE7AF0  38 00 00 FF */	li r0, 0xff
/* 80BE7AF4  90 01 00 08 */	stw r0, 8(r1)
/* 80BE7AF8  38 80 00 00 */	li r4, 0
/* 80BE7AFC  90 81 00 0C */	stw r4, 0xc(r1)
/* 80BE7B00  38 00 FF FF */	li r0, -1
/* 80BE7B04  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BE7B08  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BE7B0C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BE7B10  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80BE7B14  80 9F 07 00 */	lwz r4, 0x700(r31)
/* 80BE7B18  38 A0 00 00 */	li r5, 0
/* 80BE7B1C  3C C0 00 01 */	lis r6, 0x0001 /* 0x000085BB@ha */
/* 80BE7B20  38 C6 85 BB */	addi r6, r6, 0x85BB /* 0x000085BB@l */
/* 80BE7B24  38 FF 06 EC */	addi r7, r31, 0x6ec
/* 80BE7B28  39 00 00 00 */	li r8, 0
/* 80BE7B2C  39 20 00 00 */	li r9, 0
/* 80BE7B30  39 40 00 00 */	li r10, 0
/* 80BE7B34  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80BE7B38  4B 46 59 95 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BE7B3C  90 7F 07 00 */	stw r3, 0x700(r31)
/* 80BE7B40  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80BE7B44  38 00 00 FF */	li r0, 0xff
/* 80BE7B48  90 01 00 08 */	stw r0, 8(r1)
/* 80BE7B4C  38 80 00 00 */	li r4, 0
/* 80BE7B50  90 81 00 0C */	stw r4, 0xc(r1)
/* 80BE7B54  38 00 FF FF */	li r0, -1
/* 80BE7B58  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BE7B5C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BE7B60  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BE7B64  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80BE7B68  80 9F 07 04 */	lwz r4, 0x704(r31)
/* 80BE7B6C  38 A0 00 00 */	li r5, 0
/* 80BE7B70  3C C0 00 01 */	lis r6, 0x0001 /* 0x000085BC@ha */
/* 80BE7B74  38 C6 85 BC */	addi r6, r6, 0x85BC /* 0x000085BC@l */
/* 80BE7B78  38 FF 06 EC */	addi r7, r31, 0x6ec
/* 80BE7B7C  39 00 00 00 */	li r8, 0
/* 80BE7B80  39 20 00 00 */	li r9, 0
/* 80BE7B84  39 40 00 00 */	li r10, 0
/* 80BE7B88  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80BE7B8C  4B 46 59 41 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BE7B90  90 7F 07 04 */	stw r3, 0x704(r31)
/* 80BE7B94  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80BE7B98  38 00 00 FF */	li r0, 0xff
/* 80BE7B9C  90 01 00 08 */	stw r0, 8(r1)
/* 80BE7BA0  38 80 00 00 */	li r4, 0
/* 80BE7BA4  90 81 00 0C */	stw r4, 0xc(r1)
/* 80BE7BA8  38 00 FF FF */	li r0, -1
/* 80BE7BAC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BE7BB0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BE7BB4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BE7BB8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80BE7BBC  80 9F 07 08 */	lwz r4, 0x708(r31)
/* 80BE7BC0  38 A0 00 00 */	li r5, 0
/* 80BE7BC4  3C C0 00 01 */	lis r6, 0x0001 /* 0x000085BD@ha */
/* 80BE7BC8  38 C6 85 BD */	addi r6, r6, 0x85BD /* 0x000085BD@l */
/* 80BE7BCC  38 FF 06 EC */	addi r7, r31, 0x6ec
/* 80BE7BD0  39 00 00 00 */	li r8, 0
/* 80BE7BD4  39 20 00 00 */	li r9, 0
/* 80BE7BD8  39 40 00 00 */	li r10, 0
/* 80BE7BDC  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80BE7BE0  4B 46 58 ED */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BE7BE4  90 7F 07 08 */	stw r3, 0x708(r31)
/* 80BE7BE8  48 00 00 FC */	b lbl_80BE7CE4
lbl_80BE7BEC:
/* 80BE7BEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BE7BF0  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BE7BF4  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80BE7BF8  38 00 00 FF */	li r0, 0xff
/* 80BE7BFC  90 01 00 08 */	stw r0, 8(r1)
/* 80BE7C00  38 80 00 00 */	li r4, 0
/* 80BE7C04  90 81 00 0C */	stw r4, 0xc(r1)
/* 80BE7C08  38 00 FF FF */	li r0, -1
/* 80BE7C0C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BE7C10  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BE7C14  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BE7C18  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80BE7C1C  80 9F 06 FC */	lwz r4, 0x6fc(r31)
/* 80BE7C20  38 A0 00 00 */	li r5, 0
/* 80BE7C24  38 C0 03 AD */	li r6, 0x3ad
/* 80BE7C28  38 FF 06 EC */	addi r7, r31, 0x6ec
/* 80BE7C2C  39 00 00 00 */	li r8, 0
/* 80BE7C30  39 20 00 00 */	li r9, 0
/* 80BE7C34  39 40 00 00 */	li r10, 0
/* 80BE7C38  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80BE7C3C  4B 46 58 91 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BE7C40  90 7F 06 FC */	stw r3, 0x6fc(r31)
/* 80BE7C44  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80BE7C48  38 00 00 FF */	li r0, 0xff
/* 80BE7C4C  90 01 00 08 */	stw r0, 8(r1)
/* 80BE7C50  38 80 00 00 */	li r4, 0
/* 80BE7C54  90 81 00 0C */	stw r4, 0xc(r1)
/* 80BE7C58  38 00 FF FF */	li r0, -1
/* 80BE7C5C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BE7C60  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BE7C64  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BE7C68  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80BE7C6C  80 9F 07 00 */	lwz r4, 0x700(r31)
/* 80BE7C70  38 A0 00 00 */	li r5, 0
/* 80BE7C74  38 C0 03 AF */	li r6, 0x3af
/* 80BE7C78  38 FF 06 EC */	addi r7, r31, 0x6ec
/* 80BE7C7C  39 00 00 00 */	li r8, 0
/* 80BE7C80  39 20 00 00 */	li r9, 0
/* 80BE7C84  39 40 00 00 */	li r10, 0
/* 80BE7C88  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80BE7C8C  4B 46 58 41 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BE7C90  90 7F 07 00 */	stw r3, 0x700(r31)
/* 80BE7C94  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80BE7C98  38 00 00 FF */	li r0, 0xff
/* 80BE7C9C  90 01 00 08 */	stw r0, 8(r1)
/* 80BE7CA0  38 80 00 00 */	li r4, 0
/* 80BE7CA4  90 81 00 0C */	stw r4, 0xc(r1)
/* 80BE7CA8  38 00 FF FF */	li r0, -1
/* 80BE7CAC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BE7CB0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BE7CB4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BE7CB8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80BE7CBC  80 9F 07 04 */	lwz r4, 0x704(r31)
/* 80BE7CC0  38 A0 00 00 */	li r5, 0
/* 80BE7CC4  38 C0 03 AE */	li r6, 0x3ae
/* 80BE7CC8  38 FF 06 EC */	addi r7, r31, 0x6ec
/* 80BE7CCC  39 00 00 00 */	li r8, 0
/* 80BE7CD0  39 20 00 00 */	li r9, 0
/* 80BE7CD4  39 40 00 00 */	li r10, 0
/* 80BE7CD8  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80BE7CDC  4B 46 57 F1 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BE7CE0  90 7F 07 04 */	stw r3, 0x704(r31)
lbl_80BE7CE4:
/* 80BE7CE4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BE7CE8  7C 03 07 74 */	extsb r3, r0
/* 80BE7CEC  4B 44 53 81 */	bl dComIfGp_getReverb__Fi
/* 80BE7CF0  7C 67 1B 78 */	mr r7, r3
/* 80BE7CF4  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080018@ha */
/* 80BE7CF8  38 03 00 18 */	addi r0, r3, 0x0018 /* 0x00080018@l */
/* 80BE7CFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BE7D00  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BE7D04  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BE7D08  80 63 00 00 */	lwz r3, 0(r3)
/* 80BE7D0C  38 81 00 24 */	addi r4, r1, 0x24
/* 80BE7D10  38 BF 06 EC */	addi r5, r31, 0x6ec
/* 80BE7D14  38 C0 00 00 */	li r6, 0
/* 80BE7D18  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80BE7D1C  FC 40 08 90 */	fmr f2, f1
/* 80BE7D20  C0 7E 00 44 */	lfs f3, 0x44(r30)
/* 80BE7D24  FC 80 18 90 */	fmr f4, f3
/* 80BE7D28  39 00 00 00 */	li r8, 0
/* 80BE7D2C  4B 6C 47 E1 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80BE7D30:
/* 80BE7D30  38 7F 05 B0 */	addi r3, r31, 0x5b0
/* 80BE7D34  4B 49 C7 2D */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80BE7D38  28 03 00 00 */	cmplwi r3, 0
/* 80BE7D3C  41 82 00 A0 */	beq lbl_80BE7DDC
/* 80BE7D40  38 7F 05 B0 */	addi r3, r31, 0x5b0
/* 80BE7D44  4B 49 C8 05 */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 80BE7D48  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80BE7D4C  28 00 02 00 */	cmplwi r0, 0x200
/* 80BE7D50  40 82 00 8C */	bne lbl_80BE7DDC
/* 80BE7D54  88 03 00 75 */	lbz r0, 0x75(r3)
/* 80BE7D58  28 00 00 01 */	cmplwi r0, 1
/* 80BE7D5C  40 82 00 80 */	bne lbl_80BE7DDC
/* 80BE7D60  88 1F 06 F9 */	lbz r0, 0x6f9(r31)
/* 80BE7D64  28 00 00 00 */	cmplwi r0, 0
/* 80BE7D68  40 82 00 74 */	bne lbl_80BE7DDC
/* 80BE7D6C  3C 60 80 BF */	lis r3, l_HIO@ha /* 0x80BE8144@ha */
/* 80BE7D70  38 63 81 44 */	addi r3, r3, l_HIO@l /* 0x80BE8144@l */
/* 80BE7D74  88 03 00 0C */	lbz r0, 0xc(r3)
/* 80BE7D78  98 1F 07 3C */	stb r0, 0x73c(r31)
/* 80BE7D7C  38 00 00 01 */	li r0, 1
/* 80BE7D80  98 1F 06 F9 */	stb r0, 0x6f9(r31)
/* 80BE7D84  98 1F 06 25 */	stb r0, 0x625(r31)
/* 80BE7D88  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BE7D8C  7C 03 07 74 */	extsb r3, r0
/* 80BE7D90  4B 44 52 DD */	bl dComIfGp_getReverb__Fi
/* 80BE7D94  7C 67 1B 78 */	mr r7, r3
/* 80BE7D98  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080017@ha */
/* 80BE7D9C  38 03 00 17 */	addi r0, r3, 0x0017 /* 0x00080017@l */
/* 80BE7DA0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80BE7DA4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BE7DA8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BE7DAC  80 63 00 00 */	lwz r3, 0(r3)
/* 80BE7DB0  38 81 00 20 */	addi r4, r1, 0x20
/* 80BE7DB4  38 BF 06 EC */	addi r5, r31, 0x6ec
/* 80BE7DB8  38 C0 00 00 */	li r6, 0
/* 80BE7DBC  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80BE7DC0  FC 40 08 90 */	fmr f2, f1
/* 80BE7DC4  C0 7E 00 44 */	lfs f3, 0x44(r30)
/* 80BE7DC8  FC 80 18 90 */	fmr f4, f3
/* 80BE7DCC  39 00 00 00 */	li r8, 0
/* 80BE7DD0  4B 6C 3B B5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BE7DD4  7F E3 FB 78 */	mr r3, r31
/* 80BE7DD8  4B FF FC 3D */	bl setLight__12daFireWood_cFv
lbl_80BE7DDC:
/* 80BE7DDC  38 7F 06 D4 */	addi r3, r31, 0x6d4
/* 80BE7DE0  3C 80 80 BF */	lis r4, l_HIO@ha /* 0x80BE8144@ha */
/* 80BE7DE4  38 84 81 44 */	addi r4, r4, l_HIO@l /* 0x80BE8144@l */
/* 80BE7DE8  C0 24 00 08 */	lfs f1, 8(r4)
/* 80BE7DEC  4B 68 74 15 */	bl SetR__8cM3dGCylFf
/* 80BE7DF0  38 7F 06 D4 */	addi r3, r31, 0x6d4
/* 80BE7DF4  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 80BE7DF8  4B 68 74 01 */	bl SetH__8cM3dGCylFf
/* 80BE7DFC  38 7F 06 D4 */	addi r3, r31, 0x6d4
/* 80BE7E00  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80BE7E04  4B 68 73 D9 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80BE7E08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BE7E0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BE7E10  38 63 23 3C */	addi r3, r3, 0x233c
/* 80BE7E14  38 9F 05 B0 */	addi r4, r31, 0x5b0
/* 80BE7E18  4B 67 CD 91 */	bl Set__4cCcSFP8cCcD_Obj
/* 80BE7E1C  88 7F 07 3C */	lbz r3, 0x73c(r31)
/* 80BE7E20  28 03 00 00 */	cmplwi r3, 0
/* 80BE7E24  41 82 00 34 */	beq lbl_80BE7E58
/* 80BE7E28  38 03 FF FF */	addi r0, r3, -1
/* 80BE7E2C  98 1F 07 3C */	stb r0, 0x73c(r31)
/* 80BE7E30  88 1F 07 3C */	lbz r0, 0x73c(r31)
/* 80BE7E34  28 00 00 00 */	cmplwi r0, 0
/* 80BE7E38  40 82 00 20 */	bne lbl_80BE7E58
/* 80BE7E3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BE7E40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BE7E44  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BE7E48  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80BE7E4C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80BE7E50  7C 05 07 74 */	extsb r5, r0
/* 80BE7E54  4B 44 D3 AD */	bl onSwitch__10dSv_info_cFii
lbl_80BE7E58:
/* 80BE7E58  38 60 00 01 */	li r3, 1
/* 80BE7E5C  39 61 00 40 */	addi r11, r1, 0x40
/* 80BE7E60  4B 77 A3 C9 */	bl _restgpr_29
/* 80BE7E64  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BE7E68  7C 08 03 A6 */	mtlr r0
/* 80BE7E6C  38 21 00 40 */	addi r1, r1, 0x40
/* 80BE7E70  4E 80 00 20 */	blr 

lbl_80B56B84:
/* 80B56B84  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80B56B88  7C 08 02 A6 */	mflr r0
/* 80B56B8C  90 01 00 84 */	stw r0, 0x84(r1)
/* 80B56B90  39 61 00 80 */	addi r11, r1, 0x80
/* 80B56B94  4B 80 B6 34 */	b _savegpr_24
/* 80B56B98  7C 7A 1B 78 */	mr r26, r3
/* 80B56B9C  7C 98 23 78 */	mr r24, r4
/* 80B56BA0  3C 60 80 B6 */	lis r3, m__17daNpc_ykM_Param_c@ha
/* 80B56BA4  3B E3 D7 94 */	addi r31, r3, m__17daNpc_ykM_Param_c@l
/* 80B56BA8  3B 80 00 00 */	li r28, 0
/* 80B56BAC  3B 60 FF FF */	li r27, -1
/* 80B56BB0  3B 20 00 00 */	li r25, 0
/* 80B56BB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B56BB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B56BBC  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80B56BC0  3B DD 40 C0 */	addi r30, r29, 0x40c0
/* 80B56BC4  7F C3 F3 78 */	mr r3, r30
/* 80B56BC8  3C A0 80 B6 */	lis r5, struct_80B5DA40+0x0@ha
/* 80B56BCC  38 A5 DA 40 */	addi r5, r5, struct_80B5DA40+0x0@l
/* 80B56BD0  38 A5 00 97 */	addi r5, r5, 0x97
/* 80B56BD4  38 C0 00 03 */	li r6, 3
/* 80B56BD8  4B 4F 15 14 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B56BDC  28 03 00 00 */	cmplwi r3, 0
/* 80B56BE0  41 82 00 08 */	beq lbl_80B56BE8
/* 80B56BE4  83 63 00 00 */	lwz r27, 0(r3)
lbl_80B56BE8:
/* 80B56BE8  7F C3 F3 78 */	mr r3, r30
/* 80B56BEC  7F 04 C3 78 */	mr r4, r24
/* 80B56BF0  3C A0 80 B6 */	lis r5, struct_80B5DA40+0x0@ha
/* 80B56BF4  38 A5 DA 40 */	addi r5, r5, struct_80B5DA40+0x0@l
/* 80B56BF8  38 A5 00 9B */	addi r5, r5, 0x9b
/* 80B56BFC  38 C0 00 03 */	li r6, 3
/* 80B56C00  4B 4F 14 EC */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B56C04  28 03 00 00 */	cmplwi r3, 0
/* 80B56C08  41 82 00 08 */	beq lbl_80B56C10
/* 80B56C0C  83 23 00 00 */	lwz r25, 0(r3)
lbl_80B56C10:
/* 80B56C10  7F C3 F3 78 */	mr r3, r30
/* 80B56C14  7F 04 C3 78 */	mr r4, r24
/* 80B56C18  4B 4F 11 34 */	b getIsAddvance__16dEvent_manager_cFi
/* 80B56C1C  2C 03 00 00 */	cmpwi r3, 0
/* 80B56C20  41 82 02 D0 */	beq lbl_80B56EF0
/* 80B56C24  28 1B 00 06 */	cmplwi r27, 6
/* 80B56C28  41 81 02 C8 */	bgt lbl_80B56EF0
/* 80B56C2C  3C 60 80 B6 */	lis r3, lit_6144@ha
/* 80B56C30  38 63 EA A0 */	addi r3, r3, lit_6144@l
/* 80B56C34  57 60 10 3A */	slwi r0, r27, 2
/* 80B56C38  7C 03 00 2E */	lwzx r0, r3, r0
/* 80B56C3C  7C 09 03 A6 */	mtctr r0
/* 80B56C40  4E 80 04 20 */	bctr 
lbl_80B56C44:
/* 80B56C44  93 3A 0D C4 */	stw r25, 0xdc4(r26)
/* 80B56C48  48 00 02 A8 */	b lbl_80B56EF0
lbl_80B56C4C:
/* 80B56C4C  80 1A 0B 58 */	lwz r0, 0xb58(r26)
/* 80B56C50  2C 00 00 0F */	cmpwi r0, 0xf
/* 80B56C54  41 82 00 24 */	beq lbl_80B56C78
/* 80B56C58  83 3A 0B 5C */	lwz r25, 0xb5c(r26)
/* 80B56C5C  38 7A 0B 50 */	addi r3, r26, 0xb50
/* 80B56C60  4B 5E EC 38 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B56C64  93 3A 0B 5C */	stw r25, 0xb5c(r26)
/* 80B56C68  38 00 00 0F */	li r0, 0xf
/* 80B56C6C  90 1A 0B 58 */	stw r0, 0xb58(r26)
/* 80B56C70  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 80B56C74  D0 1A 0B 68 */	stfs f0, 0xb68(r26)
lbl_80B56C78:
/* 80B56C78  80 1A 0B 7C */	lwz r0, 0xb7c(r26)
/* 80B56C7C  2C 00 00 29 */	cmpwi r0, 0x29
/* 80B56C80  41 82 00 24 */	beq lbl_80B56CA4
/* 80B56C84  83 3A 0B 80 */	lwz r25, 0xb80(r26)
/* 80B56C88  38 7A 0B 74 */	addi r3, r26, 0xb74
/* 80B56C8C  4B 5E EC 0C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B56C90  93 3A 0B 80 */	stw r25, 0xb80(r26)
/* 80B56C94  38 00 00 29 */	li r0, 0x29
/* 80B56C98  90 1A 0B 7C */	stw r0, 0xb7c(r26)
/* 80B56C9C  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 80B56CA0  D0 1A 0B 8C */	stfs f0, 0xb8c(r26)
lbl_80B56CA4:
/* 80B56CA4  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80B56CA8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80B56CAC  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 80B56CB0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80B56CB4  C0 1F 01 E0 */	lfs f0, 0x1e0(r31)
/* 80B56CB8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80B56CBC  A8 9A 0D 7A */	lha r4, 0xd7a(r26)
/* 80B56CC0  B0 81 00 1E */	sth r4, 0x1e(r1)
/* 80B56CC4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B56CC8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B56CCC  4B 4B 57 10 */	b mDoMtx_YrotS__FPA4_fs
/* 80B56CD0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B56CD4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B56CD8  38 81 00 48 */	addi r4, r1, 0x48
/* 80B56CDC  7C 85 23 78 */	mr r5, r4
/* 80B56CE0  4B 7F 00 8C */	b PSMTXMultVec
/* 80B56CE4  38 61 00 48 */	addi r3, r1, 0x48
/* 80B56CE8  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80B56CEC  7C 65 1B 78 */	mr r5, r3
/* 80B56CF0  4B 7F 03 A0 */	b PSVECAdd
/* 80B56CF4  38 7A 09 30 */	addi r3, r26, 0x930
/* 80B56CF8  38 81 00 48 */	addi r4, r1, 0x48
/* 80B56CFC  4B 71 10 2C */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 80B56D00  7F A3 EB 78 */	mr r3, r29
/* 80B56D04  38 9A 09 30 */	addi r4, r26, 0x930
/* 80B56D08  4B 51 D7 98 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80B56D0C  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80B56D10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B56D14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B56D18  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B56D1C  38 81 00 48 */	addi r4, r1, 0x48
/* 80B56D20  A8 A1 00 1E */	lha r5, 0x1e(r1)
/* 80B56D24  38 C0 00 00 */	li r6, 0
/* 80B56D28  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80B56D2C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80B56D30  7D 89 03 A6 */	mtctr r12
/* 80B56D34  4E 80 04 21 */	bctrl 
/* 80B56D38  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80B56D3C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80B56D40  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 80B56D44  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80B56D48  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B56D4C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80B56D50  A8 9A 0D 7A */	lha r4, 0xd7a(r26)
/* 80B56D54  B0 81 00 1E */	sth r4, 0x1e(r1)
/* 80B56D58  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B56D5C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B56D60  4B 4B 56 7C */	b mDoMtx_YrotS__FPA4_fs
/* 80B56D64  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B56D68  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B56D6C  38 81 00 48 */	addi r4, r1, 0x48
/* 80B56D70  7C 85 23 78 */	mr r5, r4
/* 80B56D74  4B 7E FF F8 */	b PSMTXMultVec
/* 80B56D78  38 61 00 48 */	addi r3, r1, 0x48
/* 80B56D7C  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80B56D80  7C 65 1B 78 */	mr r5, r3
/* 80B56D84  4B 7F 03 0C */	b PSVECAdd
/* 80B56D88  38 7A 09 30 */	addi r3, r26, 0x930
/* 80B56D8C  38 81 00 48 */	addi r4, r1, 0x48
/* 80B56D90  4B 71 0F 98 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 80B56D94  7F A3 EB 78 */	mr r3, r29
/* 80B56D98  38 9A 09 30 */	addi r4, r26, 0x930
/* 80B56D9C  4B 51 D7 04 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80B56DA0  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80B56DA4  7F C3 F3 78 */	mr r3, r30
/* 80B56DA8  38 81 00 48 */	addi r4, r1, 0x48
/* 80B56DAC  4B 4F 16 18 */	b setGoal__16dEvent_manager_cFP4cXyz
/* 80B56DB0  48 00 01 40 */	b lbl_80B56EF0
lbl_80B56DB4:
/* 80B56DB4  7F 43 D3 78 */	mr r3, r26
/* 80B56DB8  80 9A 0A 7C */	lwz r4, 0xa7c(r26)
/* 80B56DBC  38 A0 00 00 */	li r5, 0
/* 80B56DC0  4B 5F 4E 30 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80B56DC4  93 3A 0D C4 */	stw r25, 0xdc4(r26)
/* 80B56DC8  48 00 01 28 */	b lbl_80B56EF0
lbl_80B56DCC:
/* 80B56DCC  83 3A 0B 80 */	lwz r25, 0xb80(r26)
/* 80B56DD0  38 7A 0B 74 */	addi r3, r26, 0xb74
/* 80B56DD4  4B 5E EA C4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B56DD8  93 3A 0B 80 */	stw r25, 0xb80(r26)
/* 80B56DDC  38 00 00 2A */	li r0, 0x2a
/* 80B56DE0  90 1A 0B 7C */	stw r0, 0xb7c(r26)
/* 80B56DE4  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B56DE8  D0 1A 0B 8C */	stfs f0, 0xb8c(r26)
/* 80B56DEC  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 80B56DF0  2C 00 00 00 */	cmpwi r0, 0
/* 80B56DF4  41 82 00 24 */	beq lbl_80B56E18
/* 80B56DF8  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 80B56DFC  4B 5E E9 00 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B56E00  38 00 00 00 */	li r0, 0
/* 80B56E04  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 80B56E08  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B56E0C  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 80B56E10  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80B56E14  90 1A 0C E0 */	stw r0, 0xce0(r26)
lbl_80B56E18:
/* 80B56E18  38 00 00 00 */	li r0, 0
/* 80B56E1C  B0 1A 0C D4 */	sth r0, 0xcd4(r26)
/* 80B56E20  B0 1A 0C D6 */	sth r0, 0xcd6(r26)
/* 80B56E24  38 00 00 01 */	li r0, 1
/* 80B56E28  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80B56E2C  48 00 00 C4 */	b lbl_80B56EF0
lbl_80B56E30:
/* 80B56E30  7F 43 D3 78 */	mr r3, r26
/* 80B56E34  38 80 00 01 */	li r4, 1
/* 80B56E38  C0 3F 01 04 */	lfs f1, 0x104(r31)
/* 80B56E3C  4B FF F8 AD */	bl setLeafAnm__11daNpc_ykM_cFif
/* 80B56E40  48 00 00 B0 */	b lbl_80B56EF0
lbl_80B56E44:
/* 80B56E44  83 3A 0B 80 */	lwz r25, 0xb80(r26)
/* 80B56E48  38 7A 0B 74 */	addi r3, r26, 0xb74
/* 80B56E4C  4B 5E EA 4C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B56E50  93 3A 0B 80 */	stw r25, 0xb80(r26)
/* 80B56E54  38 00 00 2B */	li r0, 0x2b
/* 80B56E58  90 1A 0B 7C */	stw r0, 0xb7c(r26)
/* 80B56E5C  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B56E60  D0 1A 0B 8C */	stfs f0, 0xb8c(r26)
/* 80B56E64  7F 43 D3 78 */	mr r3, r26
/* 80B56E68  38 80 00 05 */	li r4, 5
/* 80B56E6C  4B FF D6 E1 */	bl getOtherYkmP__11daNpc_ykM_cFi
/* 80B56E70  7C 7E 1B 78 */	mr r30, r3
/* 80B56E74  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80B56E78  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B56E7C  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80B56E80  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B56E84  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80B56E88  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B56E8C  7F 43 D3 78 */	mr r3, r26
/* 80B56E90  38 81 00 30 */	addi r4, r1, 0x30
/* 80B56E94  4B 5F 3A 74 */	b setPos__8daNpcT_cF4cXyz
/* 80B56E98  7F 43 D3 78 */	mr r3, r26
/* 80B56E9C  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80B56EA0  4B 5F 3B 78 */	b setAngle__8daNpcT_cFs
/* 80B56EA4  C0 3F 01 04 */	lfs f1, 0x104(r31)
/* 80B56EA8  D0 3A 15 68 */	stfs f1, 0x1568(r26)
/* 80B56EAC  7F 43 D3 78 */	mr r3, r26
/* 80B56EB0  38 80 00 02 */	li r4, 2
/* 80B56EB4  4B FF F8 35 */	bl setLeafAnm__11daNpc_ykM_cFif
/* 80B56EB8  3C 60 00 05 */	lis r3, 0x0005 /* 0x000501D8@ha */
/* 80B56EBC  38 03 01 D8 */	addi r0, r3, 0x01D8 /* 0x000501D8@l */
/* 80B56EC0  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B56EC4  38 7A 05 80 */	addi r3, r26, 0x580
/* 80B56EC8  38 81 00 18 */	addi r4, r1, 0x18
/* 80B56ECC  38 A0 FF FF */	li r5, -1
/* 80B56ED0  81 9A 05 80 */	lwz r12, 0x580(r26)
/* 80B56ED4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B56ED8  7D 89 03 A6 */	mtctr r12
/* 80B56EDC  4E 80 04 21 */	bctrl 
/* 80B56EE0  48 00 00 10 */	b lbl_80B56EF0
lbl_80B56EE4:
/* 80B56EE4  38 00 00 01 */	li r0, 1
/* 80B56EE8  98 1A 15 7B */	stb r0, 0x157b(r26)
/* 80B56EEC  98 1A 15 82 */	stb r0, 0x1582(r26)
lbl_80B56EF0:
/* 80B56EF0  28 1B 00 06 */	cmplwi r27, 6
/* 80B56EF4  41 81 03 B8 */	bgt lbl_80B572AC
/* 80B56EF8  3C 60 80 B6 */	lis r3, lit_6145@ha
/* 80B56EFC  38 63 EA 84 */	addi r3, r3, lit_6145@l
/* 80B56F00  57 60 10 3A */	slwi r0, r27, 2
/* 80B56F04  7C 03 00 2E */	lwzx r0, r3, r0
/* 80B56F08  7C 09 03 A6 */	mtctr r0
/* 80B56F0C  4E 80 04 20 */	bctr 
lbl_80B56F10:
/* 80B56F10  38 7A 0D C4 */	addi r3, r26, 0xdc4
/* 80B56F14  48 00 64 65 */	bl func_80B5D378
/* 80B56F18  2C 03 00 00 */	cmpwi r3, 0
/* 80B56F1C  40 82 03 90 */	bne lbl_80B572AC
/* 80B56F20  3B 80 00 01 */	li r28, 1
/* 80B56F24  48 00 03 88 */	b lbl_80B572AC
lbl_80B56F28:
/* 80B56F28  3B 80 00 01 */	li r28, 1
/* 80B56F2C  48 00 03 80 */	b lbl_80B572AC
lbl_80B56F30:
/* 80B56F30  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 80B56F34  2C 00 00 01 */	cmpwi r0, 1
/* 80B56F38  41 82 00 28 */	beq lbl_80B56F60
/* 80B56F3C  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 80B56F40  4B 5E E7 BC */	b remove__18daNpcT_ActorMngr_cFv
/* 80B56F44  38 00 00 00 */	li r0, 0
/* 80B56F48  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 80B56F4C  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B56F50  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 80B56F54  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80B56F58  38 00 00 01 */	li r0, 1
/* 80B56F5C  90 1A 0C E0 */	stw r0, 0xce0(r26)
lbl_80B56F60:
/* 80B56F60  38 00 00 00 */	li r0, 0
/* 80B56F64  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80B56F68  38 7A 0D C4 */	addi r3, r26, 0xdc4
/* 80B56F6C  48 00 64 0D */	bl func_80B5D378
/* 80B56F70  2C 03 00 00 */	cmpwi r3, 0
/* 80B56F74  40 82 03 38 */	bne lbl_80B572AC
/* 80B56F78  7F 43 D3 78 */	mr r3, r26
/* 80B56F7C  38 80 00 00 */	li r4, 0
/* 80B56F80  38 A0 00 00 */	li r5, 0
/* 80B56F84  38 C0 00 00 */	li r6, 0
/* 80B56F88  38 E0 00 00 */	li r7, 0
/* 80B56F8C  4B 5F 4C EC */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B56F90  2C 03 00 00 */	cmpwi r3, 0
/* 80B56F94  41 82 03 18 */	beq lbl_80B572AC
/* 80B56F98  88 1A 09 9A */	lbz r0, 0x99a(r26)
/* 80B56F9C  28 00 00 01 */	cmplwi r0, 1
/* 80B56FA0  40 82 03 0C */	bne lbl_80B572AC
/* 80B56FA4  3B 80 00 01 */	li r28, 1
/* 80B56FA8  48 00 03 04 */	b lbl_80B572AC
lbl_80B56FAC:
/* 80B56FAC  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 80B56FB0  2C 00 00 00 */	cmpwi r0, 0
/* 80B56FB4  41 82 00 24 */	beq lbl_80B56FD8
/* 80B56FB8  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 80B56FBC  4B 5E E7 40 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B56FC0  38 00 00 00 */	li r0, 0
/* 80B56FC4  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 80B56FC8  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B56FCC  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 80B56FD0  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80B56FD4  90 1A 0C E0 */	stw r0, 0xce0(r26)
lbl_80B56FD8:
/* 80B56FD8  38 00 00 00 */	li r0, 0
/* 80B56FDC  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80B56FE0  80 1A 0B 84 */	lwz r0, 0xb84(r26)
/* 80B56FE4  2C 00 00 00 */	cmpwi r0, 0
/* 80B56FE8  40 82 02 C4 */	bne lbl_80B572AC
/* 80B56FEC  80 7A 05 78 */	lwz r3, 0x578(r26)
/* 80B56FF0  38 63 00 0C */	addi r3, r3, 0xc
/* 80B56FF4  C0 3F 01 E4 */	lfs f1, 0x1e4(r31)
/* 80B56FF8  4B 7D 14 34 */	b checkPass__12J3DFrameCtrlFf
/* 80B56FFC  2C 03 00 00 */	cmpwi r3, 0
/* 80B57000  41 82 00 0C */	beq lbl_80B5700C
/* 80B57004  3B 80 00 01 */	li r28, 1
/* 80B57008  48 00 02 A4 */	b lbl_80B572AC
lbl_80B5700C:
/* 80B5700C  80 7A 05 78 */	lwz r3, 0x578(r26)
/* 80B57010  38 63 00 0C */	addi r3, r3, 0xc
/* 80B57014  C0 3F 01 58 */	lfs f1, 0x158(r31)
/* 80B57018  4B 7D 14 14 */	b checkPass__12J3DFrameCtrlFf
/* 80B5701C  2C 03 00 00 */	cmpwi r3, 0
/* 80B57020  41 82 00 30 */	beq lbl_80B57050
/* 80B57024  3C 60 00 05 */	lis r3, 0x0005 /* 0x000501D7@ha */
/* 80B57028  38 03 01 D7 */	addi r0, r3, 0x01D7 /* 0x000501D7@l */
/* 80B5702C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B57030  38 7A 05 80 */	addi r3, r26, 0x580
/* 80B57034  38 81 00 14 */	addi r4, r1, 0x14
/* 80B57038  38 A0 FF FF */	li r5, -1
/* 80B5703C  81 9A 05 80 */	lwz r12, 0x580(r26)
/* 80B57040  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B57044  7D 89 03 A6 */	mtctr r12
/* 80B57048  4E 80 04 21 */	bctrl 
/* 80B5704C  48 00 02 60 */	b lbl_80B572AC
lbl_80B57050:
/* 80B57050  80 7A 05 78 */	lwz r3, 0x578(r26)
/* 80B57054  38 63 00 0C */	addi r3, r3, 0xc
/* 80B57058  C0 3F 01 E8 */	lfs f1, 0x1e8(r31)
/* 80B5705C  4B 7D 13 D0 */	b checkPass__12J3DFrameCtrlFf
/* 80B57060  2C 03 00 00 */	cmpwi r3, 0
/* 80B57064  41 82 02 48 */	beq lbl_80B572AC
/* 80B57068  C0 1F 01 EC */	lfs f0, 0x1ec(r31)
/* 80B5706C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B57070  C0 1F 01 F0 */	lfs f0, 0x1f0(r31)
/* 80B57074  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B57078  C0 1F 01 F4 */	lfs f0, 0x1f4(r31)
/* 80B5707C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B57080  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006008E@ha */
/* 80B57084  38 03 00 8E */	addi r0, r3, 0x008E /* 0x0006008E@l */
/* 80B57088  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B5708C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80B57090  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80B57094  80 63 00 00 */	lwz r3, 0(r3)
/* 80B57098  38 81 00 0C */	addi r4, r1, 0xc
/* 80B5709C  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80B570A0  38 C0 00 00 */	li r6, 0
/* 80B570A4  38 E0 00 00 */	li r7, 0
/* 80B570A8  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 80B570AC  FC 40 08 90 */	fmr f2, f1
/* 80B570B0  C0 7F 01 3C */	lfs f3, 0x13c(r31)
/* 80B570B4  FC 80 18 90 */	fmr f4, f3
/* 80B570B8  39 00 00 00 */	li r8, 0
/* 80B570BC  4B 75 48 C8 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80B570C0  C0 3F 01 04 */	lfs f1, 0x104(r31)
/* 80B570C4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80B570C8  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80B570CC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B570D0  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80B570D4  38 7D 4C 9C */	addi r3, r29, 0x4c9c
/* 80B570D8  38 80 00 05 */	li r4, 5
/* 80B570DC  38 A0 00 0F */	li r5, 0xf
/* 80B570E0  38 C1 00 24 */	addi r6, r1, 0x24
/* 80B570E4  4B 51 89 40 */	b StartShock__12dVibration_cFii4cXyz
/* 80B570E8  48 00 01 C4 */	b lbl_80B572AC
lbl_80B570EC:
/* 80B570EC  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 80B570F0  2C 00 00 00 */	cmpwi r0, 0
/* 80B570F4  41 82 00 24 */	beq lbl_80B57118
/* 80B570F8  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 80B570FC  4B 5E E6 00 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B57100  38 00 00 00 */	li r0, 0
/* 80B57104  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 80B57108  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B5710C  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 80B57110  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80B57114  90 1A 0C E0 */	stw r0, 0xce0(r26)
lbl_80B57118:
/* 80B57118  38 60 00 00 */	li r3, 0
/* 80B5711C  98 7A 0C FF */	stb r3, 0xcff(r26)
/* 80B57120  80 9A 0E 44 */	lwz r4, 0xe44(r26)
/* 80B57124  38 A0 00 01 */	li r5, 1
/* 80B57128  88 04 00 11 */	lbz r0, 0x11(r4)
/* 80B5712C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80B57130  40 82 00 18 */	bne lbl_80B57148
/* 80B57134  C0 3F 01 04 */	lfs f1, 0x104(r31)
/* 80B57138  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 80B5713C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80B57140  41 82 00 08 */	beq lbl_80B57148
/* 80B57144  7C 65 1B 78 */	mr r5, r3
lbl_80B57148:
/* 80B57148  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80B5714C  41 82 00 6C */	beq lbl_80B571B8
/* 80B57150  7F 43 D3 78 */	mr r3, r26
/* 80B57154  38 80 00 05 */	li r4, 5
/* 80B57158  4B FF D3 F5 */	bl getOtherYkmP__11daNpc_ykM_cFi
/* 80B5715C  7C 64 1B 78 */	mr r4, r3
/* 80B57160  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B57164  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l
/* 80B57168  80 7A 5D AC */	lwz r3, 0x5dac(r26)
/* 80B5716C  4B 4C 35 A4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B57170  7C 60 1B 78 */	mr r0, r3
/* 80B57174  B0 01 00 1E */	sth r0, 0x1e(r1)
/* 80B57178  80 7A 5D AC */	lwz r3, 0x5dac(r26)
/* 80B5717C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80B57180  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80B57184  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80B57188  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80B5718C  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80B57190  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80B57194  38 81 00 48 */	addi r4, r1, 0x48
/* 80B57198  7C 05 07 34 */	extsh r5, r0
/* 80B5719C  38 C0 00 00 */	li r6, 0
/* 80B571A0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80B571A4  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80B571A8  7D 89 03 A6 */	mtctr r12
/* 80B571AC  4E 80 04 21 */	bctrl 
/* 80B571B0  3B 80 00 01 */	li r28, 1
/* 80B571B4  48 00 00 F8 */	b lbl_80B572AC
lbl_80B571B8:
/* 80B571B8  7F 43 D3 78 */	mr r3, r26
/* 80B571BC  38 80 00 05 */	li r4, 5
/* 80B571C0  4B FF D3 8D */	bl getOtherYkmP__11daNpc_ykM_cFi
/* 80B571C4  7C 7B 1B 79 */	or. r27, r3, r3
/* 80B571C8  41 82 00 E4 */	beq lbl_80B572AC
/* 80B571CC  80 7A 0E 44 */	lwz r3, 0xe44(r26)
/* 80B571D0  38 63 00 0C */	addi r3, r3, 0xc
/* 80B571D4  C0 3F 01 F8 */	lfs f1, 0x1f8(r31)
/* 80B571D8  4B 7D 12 54 */	b checkPass__12J3DFrameCtrlFf
/* 80B571DC  2C 03 00 00 */	cmpwi r3, 0
/* 80B571E0  41 82 00 CC */	beq lbl_80B572AC
/* 80B571E4  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802A2@ha */
/* 80B571E8  38 03 02 A2 */	addi r0, r3, 0x02A2 /* 0x000802A2@l */
/* 80B571EC  90 01 00 08 */	stw r0, 8(r1)
/* 80B571F0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80B571F4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80B571F8  80 63 00 00 */	lwz r3, 0(r3)
/* 80B571FC  38 81 00 08 */	addi r4, r1, 8
/* 80B57200  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 80B57204  38 C0 00 00 */	li r6, 0
/* 80B57208  38 E0 00 00 */	li r7, 0
/* 80B5720C  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 80B57210  FC 40 08 90 */	fmr f2, f1
/* 80B57214  C0 7F 01 3C */	lfs f3, 0x13c(r31)
/* 80B57218  FC 80 18 90 */	fmr f4, f3
/* 80B5721C  39 00 00 00 */	li r8, 0
/* 80B57220  4B 75 47 64 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80B57224  48 00 00 88 */	b lbl_80B572AC
lbl_80B57228:
/* 80B57228  38 7A 0B 74 */	addi r3, r26, 0xb74
/* 80B5722C  4B 5E E7 F8 */	b checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 80B57230  2C 03 00 00 */	cmpwi r3, 0
/* 80B57234  41 82 00 0C */	beq lbl_80B57240
/* 80B57238  3B 80 00 01 */	li r28, 1
/* 80B5723C  48 00 00 70 */	b lbl_80B572AC
lbl_80B57240:
/* 80B57240  80 7A 05 78 */	lwz r3, 0x578(r26)
/* 80B57244  38 63 00 0C */	addi r3, r3, 0xc
/* 80B57248  C0 3F 01 FC */	lfs f1, 0x1fc(r31)
/* 80B5724C  4B 7D 11 E0 */	b checkPass__12J3DFrameCtrlFf
/* 80B57250  2C 03 00 00 */	cmpwi r3, 0
/* 80B57254  41 82 00 58 */	beq lbl_80B572AC
/* 80B57258  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600D4@ha */
/* 80B5725C  38 03 00 D4 */	addi r0, r3, 0x00D4 /* 0x000600D4@l */
/* 80B57260  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B57264  38 7A 05 80 */	addi r3, r26, 0x580
/* 80B57268  38 81 00 10 */	addi r4, r1, 0x10
/* 80B5726C  38 A0 00 00 */	li r5, 0
/* 80B57270  38 C0 FF FF */	li r6, -1
/* 80B57274  81 9A 05 80 */	lwz r12, 0x580(r26)
/* 80B57278  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80B5727C  7D 89 03 A6 */	mtctr r12
/* 80B57280  4E 80 04 21 */	bctrl 
/* 80B57284  48 00 00 28 */	b lbl_80B572AC
lbl_80B57288:
/* 80B57288  7F 43 D3 78 */	mr r3, r26
/* 80B5728C  81 9A 0E 3C */	lwz r12, 0xe3c(r26)
/* 80B57290  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80B57294  7D 89 03 A6 */	mtctr r12
/* 80B57298  4E 80 04 21 */	bctrl 
/* 80B5729C  A0 1A 14 D4 */	lhz r0, 0x14d4(r26)
/* 80B572A0  2C 00 00 11 */	cmpwi r0, 0x11
/* 80B572A4  40 81 00 08 */	ble lbl_80B572AC
/* 80B572A8  3B 80 00 01 */	li r28, 1
lbl_80B572AC:
/* 80B572AC  7F 83 E3 78 */	mr r3, r28
/* 80B572B0  39 61 00 80 */	addi r11, r1, 0x80
/* 80B572B4  4B 80 AF 60 */	b _restgpr_24
/* 80B572B8  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80B572BC  7C 08 03 A6 */	mtlr r0
/* 80B572C0  38 21 00 80 */	addi r1, r1, 0x80
/* 80B572C4  4E 80 00 20 */	blr 

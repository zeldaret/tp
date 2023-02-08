lbl_809F6BFC:
/* 809F6BFC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809F6C00  7C 08 02 A6 */	mflr r0
/* 809F6C04  90 01 00 34 */	stw r0, 0x34(r1)
/* 809F6C08  39 61 00 30 */	addi r11, r1, 0x30
/* 809F6C0C  4B 96 B5 C5 */	bl _savegpr_26
/* 809F6C10  7C 7D 1B 78 */	mr r29, r3
/* 809F6C14  7C 9A 23 78 */	mr r26, r4
/* 809F6C18  3C 60 80 A0 */	lis r3, m__19daNpc_GWolf_Param_c@ha /* 0x809F84F4@ha */
/* 809F6C1C  3B E3 84 F4 */	addi r31, r3, m__19daNpc_GWolf_Param_c@l /* 0x809F84F4@l */
/* 809F6C20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809F6C24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809F6C28  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 809F6C2C  3B C0 00 00 */	li r30, 0
/* 809F6C30  3B 60 FF FF */	li r27, -1
/* 809F6C34  7F 83 E3 78 */	mr r3, r28
/* 809F6C38  3C A0 80 A0 */	lis r5, d_a_npc_gwolf__stringBase0@ha /* 0x809F871C@ha */
/* 809F6C3C  38 A5 87 1C */	addi r5, r5, d_a_npc_gwolf__stringBase0@l /* 0x809F871C@l */
/* 809F6C40  38 A5 00 D3 */	addi r5, r5, 0xd3
/* 809F6C44  38 C0 00 03 */	li r6, 3
/* 809F6C48  4B 65 14 A5 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 809F6C4C  28 03 00 00 */	cmplwi r3, 0
/* 809F6C50  41 82 00 08 */	beq lbl_809F6C58
/* 809F6C54  83 63 00 00 */	lwz r27, 0(r3)
lbl_809F6C58:
/* 809F6C58  7F 83 E3 78 */	mr r3, r28
/* 809F6C5C  7F 44 D3 78 */	mr r4, r26
/* 809F6C60  4B 65 10 ED */	bl getIsAddvance__16dEvent_manager_cFi
/* 809F6C64  2C 03 00 00 */	cmpwi r3, 0
/* 809F6C68  41 82 01 B4 */	beq lbl_809F6E1C
/* 809F6C6C  2C 1B 00 19 */	cmpwi r27, 0x19
/* 809F6C70  41 82 00 80 */	beq lbl_809F6CF0
/* 809F6C74  40 80 00 28 */	bge lbl_809F6C9C
/* 809F6C78  2C 1B 00 0A */	cmpwi r27, 0xa
/* 809F6C7C  41 82 01 A0 */	beq lbl_809F6E1C
/* 809F6C80  40 80 00 10 */	bge lbl_809F6C90
/* 809F6C84  2C 1B 00 00 */	cmpwi r27, 0
/* 809F6C88  41 82 00 38 */	beq lbl_809F6CC0
/* 809F6C8C  48 00 01 90 */	b lbl_809F6E1C
lbl_809F6C90:
/* 809F6C90  2C 1B 00 14 */	cmpwi r27, 0x14
/* 809F6C94  41 82 01 88 */	beq lbl_809F6E1C
/* 809F6C98  48 00 01 84 */	b lbl_809F6E1C
lbl_809F6C9C:
/* 809F6C9C  2C 1B 00 28 */	cmpwi r27, 0x28
/* 809F6CA0  41 82 00 A4 */	beq lbl_809F6D44
/* 809F6CA4  40 80 00 10 */	bge lbl_809F6CB4
/* 809F6CA8  2C 1B 00 1E */	cmpwi r27, 0x1e
/* 809F6CAC  41 82 00 60 */	beq lbl_809F6D0C
/* 809F6CB0  48 00 01 6C */	b lbl_809F6E1C
lbl_809F6CB4:
/* 809F6CB4  2C 1B 00 32 */	cmpwi r27, 0x32
/* 809F6CB8  41 82 00 C0 */	beq lbl_809F6D78
/* 809F6CBC  48 00 01 60 */	b lbl_809F6E1C
lbl_809F6CC0:
/* 809F6CC0  7F A3 EB 78 */	mr r3, r29
/* 809F6CC4  38 80 00 05 */	li r4, 5
/* 809F6CC8  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 809F6CCC  38 A0 00 00 */	li r5, 0
/* 809F6CD0  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809F6CD4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809F6CD8  7D 89 03 A6 */	mtctr r12
/* 809F6CDC  4E 80 04 21 */	bctrl 
/* 809F6CE0  7F A3 EB 78 */	mr r3, r29
/* 809F6CE4  38 80 00 00 */	li r4, 0
/* 809F6CE8  4B FF EE 79 */	bl setLookMode__13daNpc_GWolf_cFi
/* 809F6CEC  48 00 01 30 */	b lbl_809F6E1C
lbl_809F6CF0:
/* 809F6CF0  7F A3 EB 78 */	mr r3, r29
/* 809F6CF4  38 80 0B CB */	li r4, 0xbcb
/* 809F6CF8  38 A0 00 00 */	li r5, 0
/* 809F6CFC  4B 75 D0 21 */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 809F6D00  38 00 00 01 */	li r0, 1
/* 809F6D04  98 1D 09 EB */	stb r0, 0x9eb(r29)
/* 809F6D08  48 00 01 14 */	b lbl_809F6E1C
lbl_809F6D0C:
/* 809F6D0C  7F A3 EB 78 */	mr r3, r29
/* 809F6D10  38 80 00 08 */	li r4, 8
/* 809F6D14  C0 3F 01 E0 */	lfs f1, 0x1e0(r31)
/* 809F6D18  38 A0 00 00 */	li r5, 0
/* 809F6D1C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809F6D20  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809F6D24  7D 89 03 A6 */	mtctr r12
/* 809F6D28  4E 80 04 21 */	bctrl 
/* 809F6D2C  7F A3 EB 78 */	mr r3, r29
/* 809F6D30  38 80 00 00 */	li r4, 0
/* 809F6D34  4B FF EE 2D */	bl setLookMode__13daNpc_GWolf_cFi
/* 809F6D38  C0 1F 01 F0 */	lfs f0, 0x1f0(r31)
/* 809F6D3C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 809F6D40  48 00 00 DC */	b lbl_809F6E1C
lbl_809F6D44:
/* 809F6D44  7F A3 EB 78 */	mr r3, r29
/* 809F6D48  38 80 00 06 */	li r4, 6
/* 809F6D4C  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 809F6D50  38 A0 00 00 */	li r5, 0
/* 809F6D54  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809F6D58  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809F6D5C  7D 89 03 A6 */	mtctr r12
/* 809F6D60  4E 80 04 21 */	bctrl 
/* 809F6D64  C0 1F 01 F4 */	lfs f0, 0x1f4(r31)
/* 809F6D68  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 809F6D6C  C0 1F 01 F8 */	lfs f0, 0x1f8(r31)
/* 809F6D70  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 809F6D74  48 00 00 A8 */	b lbl_809F6E1C
lbl_809F6D78:
/* 809F6D78  7F A3 EB 78 */	mr r3, r29
/* 809F6D7C  38 80 00 07 */	li r4, 7
/* 809F6D80  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 809F6D84  38 A0 00 00 */	li r5, 0
/* 809F6D88  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809F6D8C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809F6D90  7D 89 03 A6 */	mtctr r12
/* 809F6D94  4E 80 04 21 */	bctrl 
/* 809F6D98  38 00 00 3C */	li r0, 0x3c
/* 809F6D9C  90 1D 09 60 */	stw r0, 0x960(r29)
/* 809F6DA0  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 809F6DA4  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 809F6DA8  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 809F6DAC  D0 01 00 08 */	stfs f0, 8(r1)
/* 809F6DB0  C0 1F 01 FC */	lfs f0, 0x1fc(r31)
/* 809F6DB4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809F6DB8  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 809F6DBC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809F6DC0  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 809F6DC4  4B 61 5F A1 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 809F6DC8  38 7D 08 F0 */	addi r3, r29, 0x8f0
/* 809F6DCC  4B 61 61 79 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 809F6DD0  38 7D 04 EC */	addi r3, r29, 0x4ec
/* 809F6DD4  4B 61 60 9D */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 809F6DD8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809F6DDC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809F6DE0  38 81 00 08 */	addi r4, r1, 8
/* 809F6DE4  7C 85 23 78 */	mr r5, r4
/* 809F6DE8  4B 94 FF 85 */	bl PSMTXMultVec
/* 809F6DEC  C0 01 00 08 */	lfs f0, 8(r1)
/* 809F6DF0  D0 1D 04 BC */	stfs f0, 0x4bc(r29)
/* 809F6DF4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 809F6DF8  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 809F6DFC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 809F6E00  D0 1D 04 C4 */	stfs f0, 0x4c4(r29)
/* 809F6E04  C0 1D 04 BC */	lfs f0, 0x4bc(r29)
/* 809F6E08  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 809F6E0C  C0 1D 04 C0 */	lfs f0, 0x4c0(r29)
/* 809F6E10  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 809F6E14  C0 1D 04 C4 */	lfs f0, 0x4c4(r29)
/* 809F6E18  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
lbl_809F6E1C:
/* 809F6E1C  2C 1B 00 19 */	cmpwi r27, 0x19
/* 809F6E20  41 82 00 D0 */	beq lbl_809F6EF0
/* 809F6E24  40 80 00 28 */	bge lbl_809F6E4C
/* 809F6E28  2C 1B 00 0A */	cmpwi r27, 0xa
/* 809F6E2C  41 82 00 7C */	beq lbl_809F6EA8
/* 809F6E30  40 80 00 10 */	bge lbl_809F6E40
/* 809F6E34  2C 1B 00 00 */	cmpwi r27, 0
/* 809F6E38  41 82 00 38 */	beq lbl_809F6E70
/* 809F6E3C  48 00 02 28 */	b lbl_809F7064
lbl_809F6E40:
/* 809F6E40  2C 1B 00 14 */	cmpwi r27, 0x14
/* 809F6E44  41 82 00 6C */	beq lbl_809F6EB0
/* 809F6E48  48 00 02 1C */	b lbl_809F7064
lbl_809F6E4C:
/* 809F6E4C  2C 1B 00 28 */	cmpwi r27, 0x28
/* 809F6E50  41 82 00 EC */	beq lbl_809F6F3C
/* 809F6E54  40 80 00 10 */	bge lbl_809F6E64
/* 809F6E58  2C 1B 00 1E */	cmpwi r27, 0x1e
/* 809F6E5C  41 82 00 B8 */	beq lbl_809F6F14
/* 809F6E60  48 00 02 04 */	b lbl_809F7064
lbl_809F6E64:
/* 809F6E64  2C 1B 00 32 */	cmpwi r27, 0x32
/* 809F6E68  41 82 01 34 */	beq lbl_809F6F9C
/* 809F6E6C  48 00 01 F8 */	b lbl_809F7064
lbl_809F6E70:
/* 809F6E70  80 1D 0E 18 */	lwz r0, 0xe18(r29)
/* 809F6E74  2C 00 00 08 */	cmpwi r0, 8
/* 809F6E78  40 82 01 F0 */	bne lbl_809F7068
/* 809F6E7C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 809F6E80  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 809F6E84  C0 1F 02 00 */	lfs f0, 0x200(r31)
/* 809F6E88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809F6E8C  4C 41 13 82 */	cror 2, 1, 2
/* 809F6E90  40 82 01 D8 */	bne lbl_809F7068
/* 809F6E94  38 00 00 1C */	li r0, 0x1c
/* 809F6E98  B0 03 00 16 */	sth r0, 0x16(r3)
/* 809F6E9C  B0 1D 05 92 */	sth r0, 0x592(r29)
/* 809F6EA0  3B C0 00 01 */	li r30, 1
/* 809F6EA4  48 00 01 C4 */	b lbl_809F7068
lbl_809F6EA8:
/* 809F6EA8  3B C0 00 01 */	li r30, 1
/* 809F6EAC  48 00 01 BC */	b lbl_809F7068
lbl_809F6EB0:
/* 809F6EB0  88 1D 0E 1C */	lbz r0, 0xe1c(r29)
/* 809F6EB4  28 00 00 02 */	cmplwi r0, 2
/* 809F6EB8  40 82 01 B0 */	bne lbl_809F7068
/* 809F6EBC  7F A3 EB 78 */	mr r3, r29
/* 809F6EC0  38 80 00 00 */	li r4, 0
/* 809F6EC4  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 809F6EC8  38 A0 00 00 */	li r5, 0
/* 809F6ECC  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809F6ED0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809F6ED4  7D 89 03 A6 */	mtctr r12
/* 809F6ED8  4E 80 04 21 */	bctrl 
/* 809F6EDC  7F A3 EB 78 */	mr r3, r29
/* 809F6EE0  38 80 00 02 */	li r4, 2
/* 809F6EE4  4B FF EC 7D */	bl setLookMode__13daNpc_GWolf_cFi
/* 809F6EE8  3B C0 00 01 */	li r30, 1
/* 809F6EEC  48 00 01 7C */	b lbl_809F7068
lbl_809F6EF0:
/* 809F6EF0  7F A3 EB 78 */	mr r3, r29
/* 809F6EF4  38 80 00 00 */	li r4, 0
/* 809F6EF8  38 A0 00 01 */	li r5, 1
/* 809F6EFC  38 C0 00 00 */	li r6, 0
/* 809F6F00  4B 75 CE 85 */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 809F6F04  2C 03 00 00 */	cmpwi r3, 0
/* 809F6F08  41 82 01 60 */	beq lbl_809F7068
/* 809F6F0C  3B C0 00 01 */	li r30, 1
/* 809F6F10  48 00 01 58 */	b lbl_809F7068
lbl_809F6F14:
/* 809F6F14  80 1D 0E 18 */	lwz r0, 0xe18(r29)
/* 809F6F18  2C 00 00 0B */	cmpwi r0, 0xb
/* 809F6F1C  40 82 01 4C */	bne lbl_809F7068
/* 809F6F20  80 1D 05 FC */	lwz r0, 0x5fc(r29)
/* 809F6F24  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 809F6F28  40 82 01 40 */	bne lbl_809F7068
/* 809F6F2C  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 809F6F30  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 809F6F34  3B C0 00 01 */	li r30, 1
/* 809F6F38  48 00 01 30 */	b lbl_809F7068
lbl_809F6F3C:
/* 809F6F3C  80 1D 0E 18 */	lwz r0, 0xe18(r29)
/* 809F6F40  2C 00 00 09 */	cmpwi r0, 9
/* 809F6F44  40 82 01 24 */	bne lbl_809F7068
/* 809F6F48  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 809F6F4C  38 80 00 01 */	li r4, 1
/* 809F6F50  88 03 00 11 */	lbz r0, 0x11(r3)
/* 809F6F54  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 809F6F58  40 82 00 18 */	bne lbl_809F6F70
/* 809F6F5C  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 809F6F60  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 809F6F64  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 809F6F68  41 82 00 08 */	beq lbl_809F6F70
/* 809F6F6C  38 80 00 00 */	li r4, 0
lbl_809F6F70:
/* 809F6F70  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 809F6F74  41 82 00 F4 */	beq lbl_809F7068
/* 809F6F78  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 809F6F7C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 809F6F80  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 809F6F84  C0 1F 02 04 */	lfs f0, 0x204(r31)
/* 809F6F88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809F6F8C  4C 40 13 82 */	cror 2, 0, 2
/* 809F6F90  40 82 00 D8 */	bne lbl_809F7068
/* 809F6F94  3B C0 00 01 */	li r30, 1
/* 809F6F98  48 00 00 D0 */	b lbl_809F7068
lbl_809F6F9C:
/* 809F6F9C  38 7D 09 60 */	addi r3, r29, 0x960
/* 809F6FA0  48 00 13 F9 */	bl func_809F8398
/* 809F6FA4  2C 03 00 00 */	cmpwi r3, 0
/* 809F6FA8  40 82 00 C0 */	bne lbl_809F7068
/* 809F6FAC  88 1D 0E 11 */	lbz r0, 0xe11(r29)
/* 809F6FB0  7C 03 07 74 */	extsb r3, r0
/* 809F6FB4  2C 03 FF FF */	cmpwi r3, -1
/* 809F6FB8  41 82 00 20 */	beq lbl_809F6FD8
/* 809F6FBC  7C 00 07 75 */	extsb. r0, r0
/* 809F6FC0  41 82 00 18 */	beq lbl_809F6FD8
/* 809F6FC4  54 60 08 3C */	slwi r0, r3, 1
/* 809F6FC8  3C 60 80 A0 */	lis r3, l_warpAppearFlag@ha /* 0x809F8980@ha */
/* 809F6FCC  38 63 89 80 */	addi r3, r3, l_warpAppearFlag@l /* 0x809F8980@l */
/* 809F6FD0  7C 63 02 AE */	lhax r3, r3, r0
/* 809F6FD4  4B 75 5A 59 */	bl daNpcT_onEvtBit__FUl
lbl_809F6FD8:
/* 809F6FD8  88 9D 0E 1E */	lbz r4, 0xe1e(r29)
/* 809F6FDC  28 04 00 FF */	cmplwi r4, 0xff
/* 809F6FE0  41 82 00 14 */	beq lbl_809F6FF4
/* 809F6FE4  88 7D 0E 1F */	lbz r3, 0xe1f(r29)
/* 809F6FE8  28 03 00 FF */	cmplwi r3, 0xff
/* 809F6FEC  41 82 00 08 */	beq lbl_809F6FF4
/* 809F6FF0  4B 63 66 39 */	bl dComIfGs_onStageSwitch__Fii
lbl_809F6FF4:
/* 809F6FF4  88 1D 0E 11 */	lbz r0, 0xe11(r29)
/* 809F6FF8  7C 04 07 74 */	extsb r4, r0
/* 809F6FFC  2C 04 FF FF */	cmpwi r4, -1
/* 809F7000  41 82 00 0C */	beq lbl_809F700C
/* 809F7004  7C 00 07 75 */	extsb. r0, r0
/* 809F7008  40 82 00 28 */	bne lbl_809F7030
lbl_809F700C:
/* 809F700C  38 60 00 00 */	li r3, 0
/* 809F7010  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 809F7014  38 80 00 00 */	li r4, 0
/* 809F7018  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 809F701C  7C 05 07 74 */	extsb r5, r0
/* 809F7020  38 C0 00 00 */	li r6, 0
/* 809F7024  38 E0 FF FF */	li r7, -1
/* 809F7028  4B 63 01 49 */	bl dStage_changeScene__FifUlScsi
/* 809F702C  48 00 00 3C */	b lbl_809F7068
lbl_809F7030:
/* 809F7030  3C 60 80 A0 */	lis r3, l_warpIdList@ha /* 0x809F8D64@ha */
/* 809F7034  38 63 8D 64 */	addi r3, r3, l_warpIdList@l /* 0x809F8D64@l */
/* 809F7038  54 80 10 3A */	slwi r0, r4, 2
/* 809F703C  7C 63 02 14 */	add r3, r3, r0
/* 809F7040  80 63 FF FC */	lwz r3, -4(r3)
/* 809F7044  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 809F7048  38 80 00 00 */	li r4, 0
/* 809F704C  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 809F7050  7C 05 07 74 */	extsb r5, r0
/* 809F7054  38 C0 00 00 */	li r6, 0
/* 809F7058  38 E0 FF FF */	li r7, -1
/* 809F705C  4B 63 01 15 */	bl dStage_changeScene__FifUlScsi
/* 809F7060  48 00 00 08 */	b lbl_809F7068
lbl_809F7064:
/* 809F7064  3B C0 00 01 */	li r30, 1
lbl_809F7068:
/* 809F7068  7F C3 F3 78 */	mr r3, r30
/* 809F706C  39 61 00 30 */	addi r11, r1, 0x30
/* 809F7070  4B 96 B1 AD */	bl _restgpr_26
/* 809F7074  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809F7078  7C 08 03 A6 */	mtlr r0
/* 809F707C  38 21 00 30 */	addi r1, r1, 0x30
/* 809F7080  4E 80 00 20 */	blr 

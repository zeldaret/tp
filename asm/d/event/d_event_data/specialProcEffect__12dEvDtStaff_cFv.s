lbl_80045C34:
/* 80045C34  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80045C38  7C 08 02 A6 */	mflr r0
/* 80045C3C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80045C40  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80045C44  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80045C48  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80045C4C  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80045C50  39 61 00 50 */	addi r11, r1, 0x50
/* 80045C54  48 31 C5 75 */	bl _savegpr_24
/* 80045C58  7C 7B 1B 78 */	mr r27, r3
/* 80045C5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80045C60  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80045C64  3B 9E 4F F8 */	addi r28, r30, 0x4ff8
/* 80045C68  7F 83 E3 78 */	mr r3, r28
/* 80045C6C  3C 80 80 38 */	lis r4, d_event_d_event_data__stringBase0@ha
/* 80045C70  38 84 9D D0 */	addi r4, r4, d_event_d_event_data__stringBase0@l
/* 80045C74  38 84 01 5E */	addi r4, r4, 0x15e
/* 80045C78  38 A0 00 00 */	li r5, 0
/* 80045C7C  38 C0 00 00 */	li r6, 0
/* 80045C80  48 00 1E 9D */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80045C84  7C 7D 1B 78 */	mr r29, r3
/* 80045C88  2C 1D FF FF */	cmpwi r29, -1
/* 80045C8C  41 82 03 F4 */	beq lbl_80046080
/* 80045C90  7F 83 E3 78 */	mr r3, r28
/* 80045C94  7F A4 EB 78 */	mr r4, r29
/* 80045C98  48 00 22 C5 */	bl getMyNowCutName__16dEvent_manager_cFi
/* 80045C9C  7C 7F 1B 78 */	mr r31, r3
/* 80045CA0  7F 83 E3 78 */	mr r3, r28
/* 80045CA4  7F A4 EB 78 */	mr r4, r29
/* 80045CA8  48 00 20 A5 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80045CAC  2C 03 00 00 */	cmpwi r3, 0
/* 80045CB0  41 82 03 10 */	beq lbl_80045FC0
/* 80045CB4  38 00 00 00 */	li r0, 0
/* 80045CB8  90 1B 00 4A */	stw r0, 0x4a(r27)
/* 80045CBC  80 9F 00 00 */	lwz r4, 0(r31)
/* 80045CC0  3C 60 53 48 */	lis r3, 0x5348 /* 0x53484F43@ha */
/* 80045CC4  38 03 4F 43 */	addi r0, r3, 0x4F43 /* 0x53484F43@l */
/* 80045CC8  7C 04 00 00 */	cmpw r4, r0
/* 80045CCC  41 82 00 7C */	beq lbl_80045D48
/* 80045CD0  40 80 00 2C */	bge lbl_80045CFC
/* 80045CD4  3C 60 51 55 */	lis r3, 0x5155 /* 0x5155414B@ha */
/* 80045CD8  38 03 41 4B */	addi r0, r3, 0x414B /* 0x5155414B@l */
/* 80045CDC  7C 04 00 00 */	cmpw r4, r0
/* 80045CE0  41 82 00 F0 */	beq lbl_80045DD0
/* 80045CE4  40 80 02 DC */	bge lbl_80045FC0
/* 80045CE8  3C 60 42 4C */	lis r3, 0x424C /* 0x424C5552@ha */
/* 80045CEC  38 03 55 52 */	addi r0, r3, 0x5552 /* 0x424C5552@l */
/* 80045CF0  7C 04 00 00 */	cmpw r4, r0
/* 80045CF4  41 82 02 1C */	beq lbl_80045F10
/* 80045CF8  48 00 02 C8 */	b lbl_80045FC0
lbl_80045CFC:
/* 80045CFC  3C 60 57 41 */	lis r3, 0x5741 /* 0x57414954@ha */
/* 80045D00  38 03 49 54 */	addi r0, r3, 0x4954 /* 0x57414954@l */
/* 80045D04  7C 04 00 00 */	cmpw r4, r0
/* 80045D08  41 82 00 08 */	beq lbl_80045D10
/* 80045D0C  48 00 02 B4 */	b lbl_80045FC0
lbl_80045D10:
/* 80045D10  7F 83 E3 78 */	mr r3, r28
/* 80045D14  7F A4 EB 78 */	mr r4, r29
/* 80045D18  3C A0 80 38 */	lis r5, d_event_d_event_data__stringBase0@ha
/* 80045D1C  38 A5 9D D0 */	addi r5, r5, d_event_d_event_data__stringBase0@l
/* 80045D20  38 A5 00 3D */	addi r5, r5, 0x3d
/* 80045D24  38 C0 00 03 */	li r6, 3
/* 80045D28  48 00 23 C5 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80045D2C  28 03 00 00 */	cmplwi r3, 0
/* 80045D30  41 82 00 0C */	beq lbl_80045D3C
/* 80045D34  80 03 00 00 */	lwz r0, 0(r3)
/* 80045D38  48 00 00 08 */	b lbl_80045D40
lbl_80045D3C:
/* 80045D3C  38 00 00 00 */	li r0, 0
lbl_80045D40:
/* 80045D40  90 1B 00 4A */	stw r0, 0x4a(r27)
/* 80045D44  48 00 02 7C */	b lbl_80045FC0
lbl_80045D48:
/* 80045D48  7F 83 E3 78 */	mr r3, r28
/* 80045D4C  7F A4 EB 78 */	mr r4, r29
/* 80045D50  3C A0 80 38 */	lis r5, d_event_d_event_data__stringBase0@ha
/* 80045D54  38 A5 9D D0 */	addi r5, r5, d_event_d_event_data__stringBase0@l
/* 80045D58  38 A5 01 65 */	addi r5, r5, 0x165
/* 80045D5C  38 C0 00 03 */	li r6, 3
/* 80045D60  48 00 23 8D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80045D64  28 03 00 00 */	cmplwi r3, 0
/* 80045D68  41 82 00 0C */	beq lbl_80045D74
/* 80045D6C  83 43 00 00 */	lwz r26, 0(r3)
/* 80045D70  48 00 00 08 */	b lbl_80045D78
lbl_80045D74:
/* 80045D74  3B 40 00 05 */	li r26, 5
lbl_80045D78:
/* 80045D78  7F 83 E3 78 */	mr r3, r28
/* 80045D7C  7F A4 EB 78 */	mr r4, r29
/* 80045D80  3C A0 80 38 */	lis r5, d_event_d_event_data__stringBase0@ha
/* 80045D84  38 A5 9D D0 */	addi r5, r5, d_event_d_event_data__stringBase0@l
/* 80045D88  38 A5 00 62 */	addi r5, r5, 0x62
/* 80045D8C  38 C0 00 03 */	li r6, 3
/* 80045D90  48 00 23 5D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80045D94  28 03 00 00 */	cmplwi r3, 0
/* 80045D98  41 82 00 0C */	beq lbl_80045DA4
/* 80045D9C  80 A3 00 00 */	lwz r5, 0(r3)
/* 80045DA0  48 00 00 08 */	b lbl_80045DA8
lbl_80045DA4:
/* 80045DA4  38 A0 00 0F */	li r5, 0xf
lbl_80045DA8:
/* 80045DA8  C0 22 84 D0 */	lfs f1, lit_4264(r2)
/* 80045DAC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80045DB0  C0 02 84 F0 */	lfs f0, lit_4668(r2)
/* 80045DB4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80045DB8  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80045DBC  38 7E 5B D4 */	addi r3, r30, 0x5bd4
/* 80045DC0  7F 44 D3 78 */	mr r4, r26
/* 80045DC4  38 C1 00 20 */	addi r6, r1, 0x20
/* 80045DC8  48 02 9C 5D */	bl StartShock__12dVibration_cFii4cXyz
/* 80045DCC  48 00 01 F4 */	b lbl_80045FC0
lbl_80045DD0:
/* 80045DD0  7F 83 E3 78 */	mr r3, r28
/* 80045DD4  7F A4 EB 78 */	mr r4, r29
/* 80045DD8  3C A0 80 38 */	lis r5, d_event_d_event_data__stringBase0@ha
/* 80045DDC  38 A5 9D D0 */	addi r5, r5, d_event_d_event_data__stringBase0@l
/* 80045DE0  38 A5 00 3D */	addi r5, r5, 0x3d
/* 80045DE4  38 C0 00 03 */	li r6, 3
/* 80045DE8  48 00 23 05 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80045DEC  28 03 00 00 */	cmplwi r3, 0
/* 80045DF0  41 82 00 0C */	beq lbl_80045DFC
/* 80045DF4  80 03 00 00 */	lwz r0, 0(r3)
/* 80045DF8  48 00 00 08 */	b lbl_80045E00
lbl_80045DFC:
/* 80045DFC  38 00 00 1E */	li r0, 0x1e
lbl_80045E00:
/* 80045E00  90 1B 00 4A */	stw r0, 0x4a(r27)
/* 80045E04  7F 83 E3 78 */	mr r3, r28
/* 80045E08  7F A4 EB 78 */	mr r4, r29
/* 80045E0C  3C A0 80 38 */	lis r5, d_event_d_event_data__stringBase0@ha
/* 80045E10  38 A5 9D D0 */	addi r5, r5, d_event_d_event_data__stringBase0@l
/* 80045E14  38 A5 01 65 */	addi r5, r5, 0x165
/* 80045E18  38 C0 00 03 */	li r6, 3
/* 80045E1C  48 00 22 D1 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80045E20  28 03 00 00 */	cmplwi r3, 0
/* 80045E24  41 82 00 0C */	beq lbl_80045E30
/* 80045E28  83 43 00 00 */	lwz r26, 0(r3)
/* 80045E2C  48 00 00 08 */	b lbl_80045E34
lbl_80045E30:
/* 80045E30  3B 40 00 05 */	li r26, 5
lbl_80045E34:
/* 80045E34  7F 83 E3 78 */	mr r3, r28
/* 80045E38  7F A4 EB 78 */	mr r4, r29
/* 80045E3C  3C A0 80 38 */	lis r5, d_event_d_event_data__stringBase0@ha
/* 80045E40  38 A5 9D D0 */	addi r5, r5, d_event_d_event_data__stringBase0@l
/* 80045E44  38 A5 00 62 */	addi r5, r5, 0x62
/* 80045E48  38 C0 00 03 */	li r6, 3
/* 80045E4C  48 00 22 A1 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80045E50  28 03 00 00 */	cmplwi r3, 0
/* 80045E54  41 82 00 0C */	beq lbl_80045E60
/* 80045E58  83 23 00 00 */	lwz r25, 0(r3)
/* 80045E5C  48 00 00 08 */	b lbl_80045E64
lbl_80045E60:
/* 80045E60  3B 20 00 0F */	li r25, 0xf
lbl_80045E64:
/* 80045E64  7F 83 E3 78 */	mr r3, r28
/* 80045E68  7F A4 EB 78 */	mr r4, r29
/* 80045E6C  3C A0 80 38 */	lis r5, d_event_d_event_data__stringBase0@ha
/* 80045E70  38 A5 9D D0 */	addi r5, r5, d_event_d_event_data__stringBase0@l
/* 80045E74  38 A5 01 15 */	addi r5, r5, 0x115
/* 80045E78  38 C0 00 04 */	li r6, 4
/* 80045E7C  48 00 22 71 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80045E80  7C 78 1B 79 */	or. r24, r3, r3
/* 80045E84  41 82 00 60 */	beq lbl_80045EE4
/* 80045E88  7F 83 E3 78 */	mr r3, r28
/* 80045E8C  7F A4 EB 78 */	mr r4, r29
/* 80045E90  3C A0 80 38 */	lis r5, d_event_d_event_data__stringBase0@ha
/* 80045E94  38 A5 9D D0 */	addi r5, r5, d_event_d_event_data__stringBase0@l
/* 80045E98  38 A5 01 6B */	addi r5, r5, 0x16b
/* 80045E9C  38 C0 00 03 */	li r6, 3
/* 80045EA0  48 00 22 4D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80045EA4  28 03 00 00 */	cmplwi r3, 0
/* 80045EA8  41 82 00 0C */	beq lbl_80045EB4
/* 80045EAC  80 A3 00 00 */	lwz r5, 0(r3)
/* 80045EB0  48 00 00 08 */	b lbl_80045EB8
lbl_80045EB4:
/* 80045EB4  38 A0 00 00 */	li r5, 0
lbl_80045EB8:
/* 80045EB8  C0 22 84 D0 */	lfs f1, lit_4264(r2)
/* 80045EBC  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80045EC0  C0 02 84 F0 */	lfs f0, lit_4668(r2)
/* 80045EC4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80045EC8  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80045ECC  38 7E 5B D4 */	addi r3, r30, 0x5bd4
/* 80045ED0  7F 04 C3 78 */	mr r4, r24
/* 80045ED4  7F 26 CB 78 */	mr r6, r25
/* 80045ED8  38 E1 00 14 */	addi r7, r1, 0x14
/* 80045EDC  48 02 9D 31 */	bl StartQuake__12dVibration_cFPCUcii4cXyz
/* 80045EE0  48 00 00 E0 */	b lbl_80045FC0
lbl_80045EE4:
/* 80045EE4  C0 22 84 D0 */	lfs f1, lit_4264(r2)
/* 80045EE8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80045EEC  C0 02 84 F0 */	lfs f0, lit_4668(r2)
/* 80045EF0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80045EF4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80045EF8  38 7E 5B D4 */	addi r3, r30, 0x5bd4
/* 80045EFC  7F 44 D3 78 */	mr r4, r26
/* 80045F00  7F 25 CB 78 */	mr r5, r25
/* 80045F04  38 C1 00 08 */	addi r6, r1, 8
/* 80045F08  48 02 9C 09 */	bl StartQuake__12dVibration_cFii4cXyz
/* 80045F0C  48 00 00 B4 */	b lbl_80045FC0
lbl_80045F10:
/* 80045F10  7F 83 E3 78 */	mr r3, r28
/* 80045F14  7F A4 EB 78 */	mr r4, r29
/* 80045F18  3C A0 80 38 */	lis r5, d_event_d_event_data__stringBase0@ha
/* 80045F1C  38 A5 9D D0 */	addi r5, r5, d_event_d_event_data__stringBase0@l
/* 80045F20  38 A5 00 3D */	addi r5, r5, 0x3d
/* 80045F24  38 C0 00 03 */	li r6, 3
/* 80045F28  48 00 21 C5 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80045F2C  28 03 00 00 */	cmplwi r3, 0
/* 80045F30  41 82 00 0C */	beq lbl_80045F3C
/* 80045F34  80 03 00 00 */	lwz r0, 0(r3)
/* 80045F38  48 00 00 08 */	b lbl_80045F40
lbl_80045F3C:
/* 80045F3C  38 00 00 1E */	li r0, 0x1e
lbl_80045F40:
/* 80045F40  90 1B 00 4A */	stw r0, 0x4a(r27)
/* 80045F44  7C 18 03 78 */	mr r24, r0
/* 80045F48  7F 83 E3 78 */	mr r3, r28
/* 80045F4C  7F A4 EB 78 */	mr r4, r29
/* 80045F50  3C A0 80 38 */	lis r5, d_event_d_event_data__stringBase0@ha
/* 80045F54  38 A5 9D D0 */	addi r5, r5, d_event_d_event_data__stringBase0@l
/* 80045F58  38 A5 01 72 */	addi r5, r5, 0x172
/* 80045F5C  38 C0 00 00 */	li r6, 0
/* 80045F60  48 00 21 8D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80045F64  28 03 00 00 */	cmplwi r3, 0
/* 80045F68  41 82 00 0C */	beq lbl_80045F74
/* 80045F6C  C3 E3 00 00 */	lfs f31, 0(r3)
/* 80045F70  48 00 00 08 */	b lbl_80045F78
lbl_80045F74:
/* 80045F74  C3 E2 84 FC */	lfs f31, lit_5200(r2)
lbl_80045F78:
/* 80045F78  7F 83 E3 78 */	mr r3, r28
/* 80045F7C  7F A4 EB 78 */	mr r4, r29
/* 80045F80  3C A0 80 38 */	lis r5, d_event_d_event_data__stringBase0@ha
/* 80045F84  38 A5 9D D0 */	addi r5, r5, d_event_d_event_data__stringBase0@l
/* 80045F88  38 A5 01 78 */	addi r5, r5, 0x178
/* 80045F8C  38 C0 00 00 */	li r6, 0
/* 80045F90  48 00 21 5D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80045F94  28 03 00 00 */	cmplwi r3, 0
/* 80045F98  41 82 00 0C */	beq lbl_80045FA4
/* 80045F9C  C3 C3 00 00 */	lfs f30, 0(r3)
/* 80045FA0  48 00 00 08 */	b lbl_80045FA8
lbl_80045FA4:
/* 80045FA4  C3 C2 84 F0 */	lfs f30, lit_4668(r2)
lbl_80045FA8:
/* 80045FA8  48 13 B6 99 */	bl dCam_getBody__Fv
/* 80045FAC  7F 04 C3 78 */	mr r4, r24
/* 80045FB0  38 A0 00 00 */	li r5, 0
/* 80045FB4  FC 20 F8 90 */	fmr f1, f31
/* 80045FB8  FC 40 F0 90 */	fmr f2, f30
/* 80045FBC  48 13 B1 B5 */	bl StartBlure__9dCamera_cFiP10fopAc_ac_cff
lbl_80045FC0:
/* 80045FC0  80 7B 00 4A */	lwz r3, 0x4a(r27)
/* 80045FC4  2C 03 00 00 */	cmpwi r3, 0
/* 80045FC8  41 82 00 0C */	beq lbl_80045FD4
/* 80045FCC  38 03 FF FF */	addi r0, r3, -1
/* 80045FD0  90 1B 00 4A */	stw r0, 0x4a(r27)
lbl_80045FD4:
/* 80045FD4  80 9F 00 00 */	lwz r4, 0(r31)
/* 80045FD8  3C 60 51 55 */	lis r3, 0x5155 /* 0x5155414B@ha */
/* 80045FDC  38 03 41 4B */	addi r0, r3, 0x414B /* 0x5155414B@l */
/* 80045FE0  7C 04 00 00 */	cmpw r4, r0
/* 80045FE4  41 82 00 4C */	beq lbl_80046030
/* 80045FE8  40 80 00 18 */	bge lbl_80046000
/* 80045FEC  3C 60 42 4C */	lis r3, 0x424C /* 0x424C5552@ha */
/* 80045FF0  38 03 55 52 */	addi r0, r3, 0x5552 /* 0x424C5552@l */
/* 80045FF4  7C 04 00 00 */	cmpw r4, r0
/* 80045FF8  41 82 00 60 */	beq lbl_80046058
/* 80045FFC  48 00 00 78 */	b lbl_80046074
lbl_80046000:
/* 80046000  3C 60 57 41 */	lis r3, 0x5741 /* 0x57414954@ha */
/* 80046004  38 03 49 54 */	addi r0, r3, 0x4954 /* 0x57414954@l */
/* 80046008  7C 04 00 00 */	cmpw r4, r0
/* 8004600C  41 82 00 08 */	beq lbl_80046014
/* 80046010  48 00 00 64 */	b lbl_80046074
lbl_80046014:
/* 80046014  80 1B 00 4A */	lwz r0, 0x4a(r27)
/* 80046018  2C 00 00 00 */	cmpwi r0, 0
/* 8004601C  40 82 00 64 */	bne lbl_80046080
/* 80046020  7F 83 E3 78 */	mr r3, r28
/* 80046024  7F A4 EB 78 */	mr r4, r29
/* 80046028  48 00 21 55 */	bl cutEnd__16dEvent_manager_cFi
/* 8004602C  48 00 00 54 */	b lbl_80046080
lbl_80046030:
/* 80046030  80 1B 00 4A */	lwz r0, 0x4a(r27)
/* 80046034  2C 00 00 00 */	cmpwi r0, 0
/* 80046038  40 82 00 48 */	bne lbl_80046080
/* 8004603C  38 7E 5B D4 */	addi r3, r30, 0x5bd4
/* 80046040  38 80 00 1F */	li r4, 0x1f
/* 80046044  48 02 9D 51 */	bl StopQuake__12dVibration_cFi
/* 80046048  7F 83 E3 78 */	mr r3, r28
/* 8004604C  7F A4 EB 78 */	mr r4, r29
/* 80046050  48 00 21 2D */	bl cutEnd__16dEvent_manager_cFi
/* 80046054  48 00 00 2C */	b lbl_80046080
lbl_80046058:
/* 80046058  80 1B 00 4A */	lwz r0, 0x4a(r27)
/* 8004605C  2C 00 00 00 */	cmpwi r0, 0
/* 80046060  40 82 00 20 */	bne lbl_80046080
/* 80046064  7F 83 E3 78 */	mr r3, r28
/* 80046068  7F A4 EB 78 */	mr r4, r29
/* 8004606C  48 00 21 11 */	bl cutEnd__16dEvent_manager_cFi
/* 80046070  48 00 00 10 */	b lbl_80046080
lbl_80046074:
/* 80046074  7F 83 E3 78 */	mr r3, r28
/* 80046078  7F A4 EB 78 */	mr r4, r29
/* 8004607C  48 00 21 01 */	bl cutEnd__16dEvent_manager_cFi
lbl_80046080:
/* 80046080  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80046084  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80046088  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 8004608C  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80046090  39 61 00 50 */	addi r11, r1, 0x50
/* 80046094  48 31 C1 81 */	bl _restgpr_24
/* 80046098  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8004609C  7C 08 03 A6 */	mtlr r0
/* 800460A0  38 21 00 70 */	addi r1, r1, 0x70
/* 800460A4  4E 80 00 20 */	blr 

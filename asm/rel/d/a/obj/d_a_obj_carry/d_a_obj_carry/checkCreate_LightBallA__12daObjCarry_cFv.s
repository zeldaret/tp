lbl_80470CF0:
/* 80470CF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80470CF4  7C 08 02 A6 */	mflr r0
/* 80470CF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80470CFC  39 61 00 20 */	addi r11, r1, 0x20
/* 80470D00  4B EF 14 D5 */	bl _savegpr_27
/* 80470D04  7C 7D 1B 78 */	mr r29, r3
/* 80470D08  3B C0 00 00 */	li r30, 0
/* 80470D0C  4B CE E9 8D */	bl checkCarryStartLightBallA__9daPy_py_cFv
/* 80470D10  28 03 00 00 */	cmplwi r3, 0
/* 80470D14  41 82 01 08 */	beq lbl_80470E1C
/* 80470D18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80470D1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80470D20  3B 83 07 F0 */	addi r28, r3, 0x7f0
/* 80470D24  7F 83 E3 78 */	mr r3, r28
/* 80470D28  38 80 26 40 */	li r4, 0x2640
/* 80470D2C  4B BC 3C 79 */	bl offEventBit__11dSv_event_cFUs
/* 80470D30  7F 83 E3 78 */	mr r3, r28
/* 80470D34  38 80 26 10 */	li r4, 0x2610
/* 80470D38  4B BC 3C 6D */	bl offEventBit__11dSv_event_cFUs
/* 80470D3C  7F 83 E3 78 */	mr r3, r28
/* 80470D40  38 80 26 04 */	li r4, 0x2604
/* 80470D44  4B BC 3C 61 */	bl offEventBit__11dSv_event_cFUs
/* 80470D48  7F 83 E3 78 */	mr r3, r28
/* 80470D4C  38 80 26 01 */	li r4, 0x2601
/* 80470D50  4B BC 3C 55 */	bl offEventBit__11dSv_event_cFUs
/* 80470D54  7F 83 E3 78 */	mr r3, r28
/* 80470D58  38 80 27 40 */	li r4, 0x2740
/* 80470D5C  4B BC 3C 49 */	bl offEventBit__11dSv_event_cFUs
/* 80470D60  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 80470D64  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)  /* 0x80450D64@l */
/* 80470D68  7C 00 07 74 */	extsb r0, r0
/* 80470D6C  2C 00 00 33 */	cmpwi r0, 0x33
/* 80470D70  40 82 00 14 */	bne lbl_80470D84
/* 80470D74  7F 83 E3 78 */	mr r3, r28
/* 80470D78  38 80 26 04 */	li r4, 0x2604
/* 80470D7C  4B BC 3C 11 */	bl onEventBit__11dSv_event_cFUs
/* 80470D80  48 00 00 60 */	b lbl_80470DE0
lbl_80470D84:
/* 80470D84  2C 00 00 34 */	cmpwi r0, 0x34
/* 80470D88  40 82 00 14 */	bne lbl_80470D9C
/* 80470D8C  7F 83 E3 78 */	mr r3, r28
/* 80470D90  38 80 27 40 */	li r4, 0x2740
/* 80470D94  4B BC 3B F9 */	bl onEventBit__11dSv_event_cFUs
/* 80470D98  48 00 00 48 */	b lbl_80470DE0
lbl_80470D9C:
/* 80470D9C  2C 00 00 00 */	cmpwi r0, 0
/* 80470DA0  40 82 00 14 */	bne lbl_80470DB4
/* 80470DA4  7F 83 E3 78 */	mr r3, r28
/* 80470DA8  38 80 26 40 */	li r4, 0x2640
/* 80470DAC  4B BC 3B E1 */	bl onEventBit__11dSv_event_cFUs
/* 80470DB0  48 00 00 30 */	b lbl_80470DE0
lbl_80470DB4:
/* 80470DB4  2C 00 00 01 */	cmpwi r0, 1
/* 80470DB8  41 82 00 0C */	beq lbl_80470DC4
/* 80470DBC  2C 00 00 02 */	cmpwi r0, 2
/* 80470DC0  40 82 00 14 */	bne lbl_80470DD4
lbl_80470DC4:
/* 80470DC4  7F 83 E3 78 */	mr r3, r28
/* 80470DC8  38 80 26 10 */	li r4, 0x2610
/* 80470DCC  4B BC 3B C1 */	bl onEventBit__11dSv_event_cFUs
/* 80470DD0  48 00 00 10 */	b lbl_80470DE0
lbl_80470DD4:
/* 80470DD4  7F 83 E3 78 */	mr r3, r28
/* 80470DD8  38 80 26 01 */	li r4, 0x2601
/* 80470DDC  4B BC 3B B1 */	bl onEventBit__11dSv_event_cFUs
lbl_80470DE0:
/* 80470DE0  7F A3 EB 78 */	mr r3, r29
/* 80470DE4  38 80 00 01 */	li r4, 1
/* 80470DE8  4B BA BD 61 */	bl fopAcM_setCarryNow__FP10fopAc_ac_ci
/* 80470DEC  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 80470DF0  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)  /* 0x80450D64@l */
/* 80470DF4  7C 00 07 75 */	extsb. r0, r0
/* 80470DF8  40 82 02 B8 */	bne lbl_804710B0
/* 80470DFC  3C 60 80 47 */	lis r3, s_setA_sub__FPvPv@ha /* 0x8046F59C@ha */
/* 80470E00  38 63 F5 9C */	addi r3, r3, s_setA_sub__FPvPv@l /* 0x8046F59C@l */
/* 80470E04  7F A4 EB 78 */	mr r4, r29
/* 80470E08  4B BB 05 31 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80470E0C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80470E10  40 82 02 A0 */	bne lbl_804710B0
/* 80470E14  38 60 00 00 */	li r3, 0
/* 80470E18  48 00 03 1C */	b lbl_80471134
lbl_80470E1C:
/* 80470E1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80470E20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80470E24  3B E3 07 F0 */	addi r31, r3, 0x7f0
/* 80470E28  7F E3 FB 78 */	mr r3, r31
/* 80470E2C  38 80 26 40 */	li r4, 0x2640
/* 80470E30  4B BC 3B 8D */	bl isEventBit__11dSv_event_cCFUs
/* 80470E34  2C 03 00 00 */	cmpwi r3, 0
/* 80470E38  40 82 00 88 */	bne lbl_80470EC0
/* 80470E3C  7F E3 FB 78 */	mr r3, r31
/* 80470E40  38 80 26 10 */	li r4, 0x2610
/* 80470E44  4B BC 3B 79 */	bl isEventBit__11dSv_event_cCFUs
/* 80470E48  2C 03 00 00 */	cmpwi r3, 0
/* 80470E4C  40 82 00 74 */	bne lbl_80470EC0
/* 80470E50  7F E3 FB 78 */	mr r3, r31
/* 80470E54  38 80 26 04 */	li r4, 0x2604
/* 80470E58  4B BC 3B 65 */	bl isEventBit__11dSv_event_cCFUs
/* 80470E5C  2C 03 00 00 */	cmpwi r3, 0
/* 80470E60  40 82 00 60 */	bne lbl_80470EC0
/* 80470E64  7F E3 FB 78 */	mr r3, r31
/* 80470E68  38 80 26 01 */	li r4, 0x2601
/* 80470E6C  4B BC 3B 51 */	bl isEventBit__11dSv_event_cCFUs
/* 80470E70  2C 03 00 00 */	cmpwi r3, 0
/* 80470E74  40 82 00 4C */	bne lbl_80470EC0
/* 80470E78  7F E3 FB 78 */	mr r3, r31
/* 80470E7C  38 80 27 40 */	li r4, 0x2740
/* 80470E80  4B BC 3B 3D */	bl isEventBit__11dSv_event_cCFUs
/* 80470E84  2C 03 00 00 */	cmpwi r3, 0
/* 80470E88  40 82 00 38 */	bne lbl_80470EC0
/* 80470E8C  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 80470E90  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)  /* 0x80450D64@l */
/* 80470E94  2C 00 00 33 */	cmpwi r0, 0x33
/* 80470E98  41 82 02 18 */	beq lbl_804710B0
/* 80470E9C  7F E3 FB 78 */	mr r3, r31
/* 80470EA0  38 80 26 40 */	li r4, 0x2640
/* 80470EA4  4B BC 3B 19 */	bl isEventBit__11dSv_event_cCFUs
/* 80470EA8  2C 03 00 00 */	cmpwi r3, 0
/* 80470EAC  40 82 00 0C */	bne lbl_80470EB8
/* 80470EB0  7F A3 EB 78 */	mr r3, r29
/* 80470EB4  48 00 07 CD */	bl resetIconPosForLightBallA__12daObjCarry_cFv
lbl_80470EB8:
/* 80470EB8  38 60 00 05 */	li r3, 5
/* 80470EBC  48 00 02 78 */	b lbl_80471134
lbl_80470EC0:
/* 80470EC0  7F E3 FB 78 */	mr r3, r31
/* 80470EC4  38 80 26 40 */	li r4, 0x2640
/* 80470EC8  4B BC 3A F5 */	bl isEventBit__11dSv_event_cCFUs
/* 80470ECC  2C 03 00 00 */	cmpwi r3, 0
/* 80470ED0  41 82 00 14 */	beq lbl_80470EE4
/* 80470ED4  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 80470ED8  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)  /* 0x80450D64@l */
/* 80470EDC  7C 00 07 75 */	extsb. r0, r0
/* 80470EE0  40 82 00 AC */	bne lbl_80470F8C
lbl_80470EE4:
/* 80470EE4  7F E3 FB 78 */	mr r3, r31
/* 80470EE8  38 80 26 10 */	li r4, 0x2610
/* 80470EEC  4B BC 3A D1 */	bl isEventBit__11dSv_event_cCFUs
/* 80470EF0  2C 03 00 00 */	cmpwi r3, 0
/* 80470EF4  41 82 00 20 */	beq lbl_80470F14
/* 80470EF8  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 80470EFC  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)  /* 0x80450D64@l */
/* 80470F00  7C 00 07 74 */	extsb r0, r0
/* 80470F04  2C 00 00 01 */	cmpwi r0, 1
/* 80470F08  41 82 00 0C */	beq lbl_80470F14
/* 80470F0C  2C 00 00 02 */	cmpwi r0, 2
/* 80470F10  40 82 00 7C */	bne lbl_80470F8C
lbl_80470F14:
/* 80470F14  7F E3 FB 78 */	mr r3, r31
/* 80470F18  38 80 26 04 */	li r4, 0x2604
/* 80470F1C  4B BC 3A A1 */	bl isEventBit__11dSv_event_cCFUs
/* 80470F20  2C 03 00 00 */	cmpwi r3, 0
/* 80470F24  41 82 00 14 */	beq lbl_80470F38
/* 80470F28  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 80470F2C  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)  /* 0x80450D64@l */
/* 80470F30  2C 00 00 33 */	cmpwi r0, 0x33
/* 80470F34  40 82 00 58 */	bne lbl_80470F8C
lbl_80470F38:
/* 80470F38  7F E3 FB 78 */	mr r3, r31
/* 80470F3C  38 80 27 40 */	li r4, 0x2740
/* 80470F40  4B BC 3A 7D */	bl isEventBit__11dSv_event_cCFUs
/* 80470F44  2C 03 00 00 */	cmpwi r3, 0
/* 80470F48  41 82 00 14 */	beq lbl_80470F5C
/* 80470F4C  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 80470F50  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)  /* 0x80450D64@l */
/* 80470F54  2C 00 00 34 */	cmpwi r0, 0x34
/* 80470F58  40 82 00 34 */	bne lbl_80470F8C
lbl_80470F5C:
/* 80470F5C  7F E3 FB 78 */	mr r3, r31
/* 80470F60  38 80 26 01 */	li r4, 0x2601
/* 80470F64  4B BC 3A 59 */	bl isEventBit__11dSv_event_cCFUs
/* 80470F68  2C 03 00 00 */	cmpwi r3, 0
/* 80470F6C  41 82 00 50 */	beq lbl_80470FBC
/* 80470F70  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 80470F74  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)  /* 0x80450D64@l */
/* 80470F78  7C 00 07 74 */	extsb r0, r0
/* 80470F7C  2C 00 00 04 */	cmpwi r0, 4
/* 80470F80  41 82 00 3C */	beq lbl_80470FBC
/* 80470F84  2C 00 00 05 */	cmpwi r0, 5
/* 80470F88  41 82 00 34 */	beq lbl_80470FBC
lbl_80470F8C:
/* 80470F8C  7F E3 FB 78 */	mr r3, r31
/* 80470F90  38 80 26 40 */	li r4, 0x2640
/* 80470F94  4B BC 3A 29 */	bl isEventBit__11dSv_event_cCFUs
/* 80470F98  2C 03 00 00 */	cmpwi r3, 0
/* 80470F9C  40 82 00 10 */	bne lbl_80470FAC
/* 80470FA0  7F A3 EB 78 */	mr r3, r29
/* 80470FA4  48 00 06 DD */	bl resetIconPosForLightBallA__12daObjCarry_cFv
/* 80470FA8  48 00 00 0C */	b lbl_80470FB4
lbl_80470FAC:
/* 80470FAC  7F A3 EB 78 */	mr r3, r29
/* 80470FB0  48 00 07 25 */	bl setIconPosForLightBallAAtR00__12daObjCarry_cFv
lbl_80470FB4:
/* 80470FB4  38 60 00 05 */	li r3, 5
/* 80470FB8  48 00 01 7C */	b lbl_80471134
lbl_80470FBC:
/* 80470FBC  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 80470FC0  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)  /* 0x80450D64@l */
/* 80470FC4  7C 00 07 75 */	extsb. r0, r0
/* 80470FC8  40 82 00 C4 */	bne lbl_8047108C
/* 80470FCC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80470FD0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80470FD4  38 80 00 3F */	li r4, 0x3f
/* 80470FD8  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80470FDC  7C 05 07 74 */	extsb r5, r0
/* 80470FE0  4B BC 43 81 */	bl isSwitch__10dSv_info_cCFii
/* 80470FE4  2C 03 00 00 */	cmpwi r3, 0
/* 80470FE8  41 82 00 0C */	beq lbl_80470FF4
/* 80470FEC  38 60 00 05 */	li r3, 5
/* 80470FF0  48 00 01 44 */	b lbl_80471134
lbl_80470FF4:
/* 80470FF4  38 00 FF FF */	li r0, -1
/* 80470FF8  3C 60 80 48 */	lis r3, l_sw_id@ha /* 0x8047B1D8@ha */
/* 80470FFC  90 03 B1 D8 */	stw r0, l_sw_id@l(r3)  /* 0x8047B1D8@l */
/* 80471000  3B 60 00 00 */	li r27, 0
/* 80471004  3B C0 00 00 */	li r30, 0
/* 80471008  3C 60 80 48 */	lis r3, l_event_bitA@ha /* 0x8047A3D4@ha */
/* 8047100C  3B 83 A3 D4 */	addi r28, r3, l_event_bitA@l /* 0x8047A3D4@l */
lbl_80471010:
/* 80471010  7F E3 FB 78 */	mr r3, r31
/* 80471014  7C 9C F2 2E */	lhzx r4, r28, r30
/* 80471018  4B BC 39 A5 */	bl isEventBit__11dSv_event_cCFUs
/* 8047101C  2C 03 00 00 */	cmpwi r3, 0
/* 80471020  41 82 00 10 */	beq lbl_80471030
/* 80471024  3C 60 80 48 */	lis r3, l_sw_id@ha /* 0x8047B1D8@ha */
/* 80471028  93 63 B1 D8 */	stw r27, l_sw_id@l(r3)  /* 0x8047B1D8@l */
/* 8047102C  48 00 00 14 */	b lbl_80471040
lbl_80471030:
/* 80471030  3B 7B 00 01 */	addi r27, r27, 1
/* 80471034  2C 1B 00 06 */	cmpwi r27, 6
/* 80471038  3B DE 00 02 */	addi r30, r30, 2
/* 8047103C  41 80 FF D4 */	blt lbl_80471010
lbl_80471040:
/* 80471040  3C 60 80 48 */	lis r3, l_sw_id@ha /* 0x8047B1D8@ha */
/* 80471044  80 03 B1 D8 */	lwz r0, l_sw_id@l(r3)  /* 0x8047B1D8@l */
/* 80471048  2C 00 FF FF */	cmpwi r0, -1
/* 8047104C  41 82 00 1C */	beq lbl_80471068
/* 80471050  3C 60 80 47 */	lis r3, s_sw_sub__FPvPv@ha /* 0x8046F52C@ha */
/* 80471054  38 63 F5 2C */	addi r3, r3, s_sw_sub__FPvPv@l /* 0x8046F52C@l */
/* 80471058  7F A4 EB 78 */	mr r4, r29
/* 8047105C  4B BB 02 DD */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80471060  7C 7E 1B 78 */	mr r30, r3
/* 80471064  48 00 00 18 */	b lbl_8047107C
lbl_80471068:
/* 80471068  3C 60 80 47 */	lis r3, s_setA_sub__FPvPv@ha /* 0x8046F59C@ha */
/* 8047106C  38 63 F5 9C */	addi r3, r3, s_setA_sub__FPvPv@l /* 0x8046F59C@l */
/* 80471070  7F A4 EB 78 */	mr r4, r29
/* 80471074  4B BB 02 C5 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80471078  7C 7E 1B 78 */	mr r30, r3
lbl_8047107C:
/* 8047107C  28 1E 00 00 */	cmplwi r30, 0
/* 80471080  40 82 00 1C */	bne lbl_8047109C
/* 80471084  38 60 00 00 */	li r3, 0
/* 80471088  48 00 00 AC */	b lbl_80471134
lbl_8047108C:
/* 8047108C  2C 00 00 33 */	cmpwi r0, 0x33
/* 80471090  41 82 00 0C */	beq lbl_8047109C
/* 80471094  38 60 00 05 */	li r3, 5
/* 80471098  48 00 00 9C */	b lbl_80471134
lbl_8047109C:
/* 8047109C  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 804710A0  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)  /* 0x80450D64@l */
/* 804710A4  98 1D 04 E2 */	stb r0, 0x4e2(r29)
/* 804710A8  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 804710AC  98 1D 04 8C */	stb r0, 0x48c(r29)
lbl_804710B0:
/* 804710B0  28 1E 00 00 */	cmplwi r30, 0
/* 804710B4  41 82 00 7C */	beq lbl_80471130
/* 804710B8  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 804710BC  D0 1D 04 A8 */	stfs f0, 0x4a8(r29)
/* 804710C0  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 804710C4  D0 1D 04 AC */	stfs f0, 0x4ac(r29)
/* 804710C8  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 804710CC  D0 1D 04 B0 */	stfs f0, 0x4b0(r29)
/* 804710D0  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 804710D4  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 804710D8  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 804710DC  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 804710E0  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 804710E4  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 804710E8  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 804710EC  D0 1D 04 BC */	stfs f0, 0x4bc(r29)
/* 804710F0  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 804710F4  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 804710F8  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 804710FC  D0 1D 04 C4 */	stfs f0, 0x4c4(r29)
/* 80471100  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 80471104  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 80471108  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 8047110C  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 80471110  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 80471114  D0 1D 05 40 */	stfs f0, 0x540(r29)
/* 80471118  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 8047111C  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 80471120  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 80471124  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 80471128  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 8047112C  D0 1D 05 58 */	stfs f0, 0x558(r29)
lbl_80471130:
/* 80471130  38 60 00 02 */	li r3, 2
lbl_80471134:
/* 80471134  39 61 00 20 */	addi r11, r1, 0x20
/* 80471138  4B EF 10 E9 */	bl _restgpr_27
/* 8047113C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80471140  7C 08 03 A6 */	mtlr r0
/* 80471144  38 21 00 20 */	addi r1, r1, 0x20
/* 80471148  4E 80 00 20 */	blr 

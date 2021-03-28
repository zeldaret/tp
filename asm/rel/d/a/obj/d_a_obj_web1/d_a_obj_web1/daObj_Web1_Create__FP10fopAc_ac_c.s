lbl_80D35CE4:
/* 80D35CE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D35CE8  7C 08 02 A6 */	mflr r0
/* 80D35CEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D35CF0  39 61 00 20 */	addi r11, r1, 0x20
/* 80D35CF4  4B 62 C4 E8 */	b _savegpr_29
/* 80D35CF8  7C 7E 1B 78 */	mr r30, r3
/* 80D35CFC  3C 80 80 D3 */	lis r4, lit_3703@ha
/* 80D35D00  3B E4 60 C0 */	addi r31, r4, lit_3703@l
/* 80D35D04  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D35D08  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D35D0C  40 82 00 B0 */	bne lbl_80D35DBC
/* 80D35D10  7F C0 F3 79 */	or. r0, r30, r30
/* 80D35D14  41 82 00 9C */	beq lbl_80D35DB0
/* 80D35D18  7C 1D 03 78 */	mr r29, r0
/* 80D35D1C  4B 2E 2E 48 */	b __ct__10fopAc_ac_cFv
/* 80D35D20  38 7D 05 7C */	addi r3, r29, 0x57c
/* 80D35D24  4B 58 8B 20 */	b __ct__16Z2SoundObjSimpleFv
/* 80D35D28  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80D35D2C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80D35D30  90 1D 06 0C */	stw r0, 0x60c(r29)
/* 80D35D34  38 7D 06 10 */	addi r3, r29, 0x610
/* 80D35D38  4B 34 DA 28 */	b __ct__10dCcD_GSttsFv
/* 80D35D3C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80D35D40  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80D35D44  90 7D 06 0C */	stw r3, 0x60c(r29)
/* 80D35D48  38 03 00 20 */	addi r0, r3, 0x20
/* 80D35D4C  90 1D 06 10 */	stw r0, 0x610(r29)
/* 80D35D50  3B BD 06 30 */	addi r29, r29, 0x630
/* 80D35D54  7F A3 EB 78 */	mr r3, r29
/* 80D35D58  4B 34 DC D0 */	b __ct__12dCcD_GObjInfFv
/* 80D35D5C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80D35D60  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80D35D64  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80D35D68  3C 60 80 D3 */	lis r3, __vt__8cM3dGAab@ha
/* 80D35D6C  38 03 61 CC */	addi r0, r3, __vt__8cM3dGAab@l
/* 80D35D70  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80D35D74  3C 60 80 D3 */	lis r3, __vt__8cM3dGCyl@ha
/* 80D35D78  38 03 61 C0 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80D35D7C  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80D35D80  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80D35D84  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80D35D88  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80D35D8C  38 03 00 58 */	addi r0, r3, 0x58
/* 80D35D90  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80D35D94  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80D35D98  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80D35D9C  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80D35DA0  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D35DA4  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80D35DA8  38 03 00 84 */	addi r0, r3, 0x84
/* 80D35DAC  90 1D 01 38 */	stw r0, 0x138(r29)
lbl_80D35DB0:
/* 80D35DB0  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80D35DB4  60 00 00 08 */	ori r0, r0, 8
/* 80D35DB8  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80D35DBC:
/* 80D35DBC  38 7E 05 68 */	addi r3, r30, 0x568
/* 80D35DC0  3C 80 80 D3 */	lis r4, stringBase0@ha
/* 80D35DC4  38 84 61 20 */	addi r4, r4, stringBase0@l
/* 80D35DC8  4B 2F 70 F4 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D35DCC  7C 7D 1B 78 */	mr r29, r3
/* 80D35DD0  2C 1D 00 04 */	cmpwi r29, 4
/* 80D35DD4  40 82 01 A8 */	bne lbl_80D35F7C
/* 80D35DD8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D35DDC  54 04 46 3E */	srwi r4, r0, 0x18
/* 80D35DE0  28 04 00 FF */	cmplwi r4, 0xff
/* 80D35DE4  41 82 00 28 */	beq lbl_80D35E0C
/* 80D35DE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D35DEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D35DF0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80D35DF4  7C 05 07 74 */	extsb r5, r0
/* 80D35DF8  4B 2F F5 68 */	b isSwitch__10dSv_info_cCFii
/* 80D35DFC  2C 03 00 00 */	cmpwi r3, 0
/* 80D35E00  41 82 00 0C */	beq lbl_80D35E0C
/* 80D35E04  38 60 00 05 */	li r3, 5
/* 80D35E08  48 00 01 78 */	b lbl_80D35F80
lbl_80D35E0C:
/* 80D35E0C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D35E10  98 1E 05 70 */	stb r0, 0x570(r30)
/* 80D35E14  88 1E 05 70 */	lbz r0, 0x570(r30)
/* 80D35E18  28 00 00 FF */	cmplwi r0, 0xff
/* 80D35E1C  40 82 00 0C */	bne lbl_80D35E28
/* 80D35E20  38 00 00 00 */	li r0, 0
/* 80D35E24  98 1E 05 70 */	stb r0, 0x570(r30)
lbl_80D35E28:
/* 80D35E28  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D35E2C  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80D35E30  98 1E 05 71 */	stb r0, 0x571(r30)
/* 80D35E34  7F C3 F3 78 */	mr r3, r30
/* 80D35E38  3C 80 80 D3 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 80D35E3C  38 84 5A C0 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 80D35E40  3C A0 00 05 */	lis r5, 0x0005 /* 0x0004B000@ha */
/* 80D35E44  38 A5 B0 00 */	addi r5, r5, 0xB000 /* 0x0004B000@l */
/* 80D35E48  4B 2E 46 68 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80D35E4C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D35E50  40 82 00 0C */	bne lbl_80D35E5C
/* 80D35E54  38 60 00 05 */	li r3, 5
/* 80D35E58  48 00 01 28 */	b lbl_80D35F80
lbl_80D35E5C:
/* 80D35E5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D35E60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D35E64  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D35E68  80 9E 05 F0 */	lwz r4, 0x5f0(r30)
/* 80D35E6C  7F C5 F3 78 */	mr r5, r30
/* 80D35E70  4B 33 EB 98 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80D35E74  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D35E78  41 82 00 0C */	beq lbl_80D35E84
/* 80D35E7C  38 60 00 05 */	li r3, 5
/* 80D35E80  48 00 01 00 */	b lbl_80D35F80
lbl_80D35E84:
/* 80D35E84  3C 60 80 D3 */	lis r3, data_80D361F8@ha
/* 80D35E88  8C 03 61 F8 */	lbzu r0, data_80D361F8@l(r3)
/* 80D35E8C  28 00 00 00 */	cmplwi r0, 0
/* 80D35E90  40 82 00 20 */	bne lbl_80D35EB0
/* 80D35E94  38 00 00 01 */	li r0, 1
/* 80D35E98  98 1E 07 6C */	stb r0, 0x76c(r30)
/* 80D35E9C  98 03 00 00 */	stb r0, 0(r3)
/* 80D35EA0  38 00 FF FF */	li r0, -1
/* 80D35EA4  3C 60 80 D3 */	lis r3, l_HIO@ha
/* 80D35EA8  38 63 62 08 */	addi r3, r3, l_HIO@l
/* 80D35EAC  98 03 00 04 */	stb r0, 4(r3)
lbl_80D35EB0:
/* 80D35EB0  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80D35EB4  38 03 00 24 */	addi r0, r3, 0x24
/* 80D35EB8  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80D35EBC  7F C3 F3 78 */	mr r3, r30
/* 80D35EC0  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80D35EC4  FC 40 08 90 */	fmr f2, f1
/* 80D35EC8  FC 60 08 90 */	fmr f3, f1
/* 80D35ECC  4B 2E 46 5C */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80D35ED0  7F C3 F3 78 */	mr r3, r30
/* 80D35ED4  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80D35ED8  FC 40 08 90 */	fmr f2, f1
/* 80D35EDC  FC 60 08 90 */	fmr f3, f1
/* 80D35EE0  4B 2E 46 58 */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80D35EE4  88 1E 05 71 */	lbz r0, 0x571(r30)
/* 80D35EE8  28 00 00 FF */	cmplwi r0, 0xff
/* 80D35EEC  41 82 00 28 */	beq lbl_80D35F14
/* 80D35EF0  28 00 00 00 */	cmplwi r0, 0
/* 80D35EF4  41 82 00 20 */	beq lbl_80D35F14
/* 80D35EF8  C8 3F 00 58 */	lfd f1, 0x58(r31)
/* 80D35EFC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D35F00  3C 00 43 30 */	lis r0, 0x4330
/* 80D35F04  90 01 00 08 */	stw r0, 8(r1)
/* 80D35F08  C8 01 00 08 */	lfd f0, 8(r1)
/* 80D35F0C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D35F10  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
lbl_80D35F14:
/* 80D35F14  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80D35F18  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80D35F1C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D35F20  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80D35F24  38 7E 05 F4 */	addi r3, r30, 0x5f4
/* 80D35F28  38 80 00 FF */	li r4, 0xff
/* 80D35F2C  38 A0 00 00 */	li r5, 0
/* 80D35F30  7F C6 F3 78 */	mr r6, r30
/* 80D35F34  4B 34 D9 2C */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80D35F38  38 7E 06 30 */	addi r3, r30, 0x630
/* 80D35F3C  3C 80 80 D3 */	lis r4, cc_cyl_src@ha
/* 80D35F40  38 84 61 2C */	addi r4, r4, cc_cyl_src@l
/* 80D35F44  4B 34 E9 70 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80D35F48  38 1E 05 F4 */	addi r0, r30, 0x5f4
/* 80D35F4C  90 1E 06 74 */	stw r0, 0x674(r30)
/* 80D35F50  80 1E 06 CC */	lwz r0, 0x6cc(r30)
/* 80D35F54  60 00 00 04 */	ori r0, r0, 4
/* 80D35F58  90 1E 06 CC */	stw r0, 0x6cc(r30)
/* 80D35F5C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80D35F60  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80D35F64  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80D35F68  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80D35F6C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80D35F70  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 80D35F74  7F C3 F3 78 */	mr r3, r30
/* 80D35F78  4B FF F7 FD */	bl daObj_Web1_Execute__FP14obj_web1_class
lbl_80D35F7C:
/* 80D35F7C  7F A3 EB 78 */	mr r3, r29
lbl_80D35F80:
/* 80D35F80  39 61 00 20 */	addi r11, r1, 0x20
/* 80D35F84  4B 62 C2 A4 */	b _restgpr_29
/* 80D35F88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D35F8C  7C 08 03 A6 */	mtlr r0
/* 80D35F90  38 21 00 20 */	addi r1, r1, 0x20
/* 80D35F94  4E 80 00 20 */	blr 

lbl_806F4B1C:
/* 806F4B1C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806F4B20  7C 08 02 A6 */	mflr r0
/* 806F4B24  90 01 00 34 */	stw r0, 0x34(r1)
/* 806F4B28  39 61 00 30 */	addi r11, r1, 0x30
/* 806F4B2C  4B C6 D6 A1 */	bl _savegpr_25
/* 806F4B30  7C 7D 1B 78 */	mr r29, r3
/* 806F4B34  3C 80 80 6F */	lis r4, cNullVec__6Z2Calc@ha /* 0x806F565C@ha */
/* 806F4B38  3B C4 56 5C */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x806F565C@l */
/* 806F4B3C  3C 80 80 6F */	lis r4, lit_3767@ha /* 0x806F5514@ha */
/* 806F4B40  3B E4 55 14 */	addi r31, r4, lit_3767@l /* 0x806F5514@l */
/* 806F4B44  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 806F4B48  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 806F4B4C  40 82 00 1C */	bne lbl_806F4B68
/* 806F4B50  28 1D 00 00 */	cmplwi r29, 0
/* 806F4B54  41 82 00 08 */	beq lbl_806F4B5C
/* 806F4B58  48 00 02 F1 */	bl __ct__14e_hzelda_classFv
lbl_806F4B5C:
/* 806F4B5C  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 806F4B60  60 00 00 08 */	ori r0, r0, 8
/* 806F4B64  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_806F4B68:
/* 806F4B68  38 7D 05 AC */	addi r3, r29, 0x5ac
/* 806F4B6C  3C 80 80 6F */	lis r4, d_a_e_hzelda__stringBase0@ha /* 0x806F5654@ha */
/* 806F4B70  38 84 56 54 */	addi r4, r4, d_a_e_hzelda__stringBase0@l /* 0x806F5654@l */
/* 806F4B74  4B 93 83 49 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 806F4B78  7C 7C 1B 78 */	mr r28, r3
/* 806F4B7C  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 806F4B80  98 1D 05 B4 */	stb r0, 0x5b4(r29)
/* 806F4B84  2C 1C 00 04 */	cmpwi r28, 4
/* 806F4B88  40 82 02 A4 */	bne lbl_806F4E2C
/* 806F4B8C  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 806F4B90  54 04 46 3E */	srwi r4, r0, 0x18
/* 806F4B94  2C 04 00 FF */	cmpwi r4, 0xff
/* 806F4B98  41 82 00 28 */	beq lbl_806F4BC0
/* 806F4B9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806F4BA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806F4BA4  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 806F4BA8  7C 05 07 74 */	extsb r5, r0
/* 806F4BAC  4B 94 07 B5 */	bl isSwitch__10dSv_info_cCFii
/* 806F4BB0  2C 03 00 00 */	cmpwi r3, 0
/* 806F4BB4  41 82 00 0C */	beq lbl_806F4BC0
/* 806F4BB8  38 60 00 05 */	li r3, 5
/* 806F4BBC  48 00 02 74 */	b lbl_806F4E30
lbl_806F4BC0:
/* 806F4BC0  7F A3 EB 78 */	mr r3, r29
/* 806F4BC4  3C 80 80 6F */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x806F47C4@ha */
/* 806F4BC8  38 84 47 C4 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x806F47C4@l */
/* 806F4BCC  3C A0 00 05 */	lis r5, 0x0005 /* 0x0004B000@ha */
/* 806F4BD0  38 A5 B0 00 */	addi r5, r5, 0xB000 /* 0x0004B000@l */
/* 806F4BD4  4B 92 58 DD */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 806F4BD8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806F4BDC  40 82 00 0C */	bne lbl_806F4BE8
/* 806F4BE0  38 60 00 05 */	li r3, 5
/* 806F4BE4  48 00 02 4C */	b lbl_806F4E30
lbl_806F4BE8:
/* 806F4BE8  3C 60 80 6F */	lis r3, data_806F5928@ha /* 0x806F5928@ha */
/* 806F4BEC  8C 03 59 28 */	lbzu r0, data_806F5928@l(r3)  /* 0x806F5928@l */
/* 806F4BF0  28 00 00 00 */	cmplwi r0, 0
/* 806F4BF4  40 82 00 20 */	bne lbl_806F4C14
/* 806F4BF8  38 00 00 01 */	li r0, 1
/* 806F4BFC  98 1D 14 15 */	stb r0, 0x1415(r29)
/* 806F4C00  98 03 00 00 */	stb r0, 0(r3)
/* 806F4C04  38 00 FF FF */	li r0, -1
/* 806F4C08  3C 60 80 6F */	lis r3, l_HIO@ha /* 0x806F5938@ha */
/* 806F4C0C  38 63 59 38 */	addi r3, r3, l_HIO@l /* 0x806F5938@l */
/* 806F4C10  98 03 00 04 */	stb r0, 4(r3)
lbl_806F4C14:
/* 806F4C14  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 806F4C18  80 63 00 04 */	lwz r3, 4(r3)
/* 806F4C1C  38 03 00 24 */	addi r0, r3, 0x24
/* 806F4C20  90 1D 05 04 */	stw r0, 0x504(r29)
/* 806F4C24  7F A3 EB 78 */	mr r3, r29
/* 806F4C28  C0 3F 01 38 */	lfs f1, 0x138(r31)
/* 806F4C2C  FC 40 08 90 */	fmr f2, f1
/* 806F4C30  FC 60 08 90 */	fmr f3, f1
/* 806F4C34  4B 92 58 F5 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 806F4C38  7F A3 EB 78 */	mr r3, r29
/* 806F4C3C  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 806F4C40  FC 40 08 90 */	fmr f2, f1
/* 806F4C44  FC 60 08 90 */	fmr f3, f1
/* 806F4C48  4B 92 58 F1 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 806F4C4C  38 00 00 00 */	li r0, 0
/* 806F4C50  90 01 00 08 */	stw r0, 8(r1)
/* 806F4C54  38 7D 07 80 */	addi r3, r29, 0x780
/* 806F4C58  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806F4C5C  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 806F4C60  7F A6 EB 78 */	mr r6, r29
/* 806F4C64  38 E0 00 01 */	li r7, 1
/* 806F4C68  39 1D 07 40 */	addi r8, r29, 0x740
/* 806F4C6C  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 806F4C70  39 40 00 00 */	li r10, 0
/* 806F4C74  4B 98 15 D5 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 806F4C78  38 7D 07 40 */	addi r3, r29, 0x740
/* 806F4C7C  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 806F4C80  C0 5F 01 3C */	lfs f2, 0x13c(r31)
/* 806F4C84  4B 98 12 D5 */	bl SetWall__12dBgS_AcchCirFff
/* 806F4C88  38 00 00 03 */	li r0, 3
/* 806F4C8C  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 806F4C90  B0 1D 05 60 */	sth r0, 0x560(r29)
/* 806F4C94  38 7D 09 58 */	addi r3, r29, 0x958
/* 806F4C98  38 80 00 C8 */	li r4, 0xc8
/* 806F4C9C  38 A0 00 00 */	li r5, 0
/* 806F4CA0  7F A6 EB 78 */	mr r6, r29
/* 806F4CA4  4B 98 EB BD */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 806F4CA8  3B 20 00 00 */	li r25, 0
/* 806F4CAC  3B E0 00 00 */	li r31, 0
/* 806F4CB0  3B 7D 09 58 */	addi r27, r29, 0x958
lbl_806F4CB4:
/* 806F4CB4  7F 5D FA 14 */	add r26, r29, r31
/* 806F4CB8  38 7A 09 94 */	addi r3, r26, 0x994
/* 806F4CBC  38 9E 00 78 */	addi r4, r30, 0x78
/* 806F4CC0  4B 98 FD 75 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806F4CC4  93 7A 09 D8 */	stw r27, 0x9d8(r26)
/* 806F4CC8  3B 39 00 01 */	addi r25, r25, 1
/* 806F4CCC  2C 19 00 02 */	cmpwi r25, 2
/* 806F4CD0  3B FF 01 38 */	addi r31, r31, 0x138
/* 806F4CD4  40 81 FF E0 */	ble lbl_806F4CB4
/* 806F4CD8  38 7D 0D 3C */	addi r3, r29, 0xd3c
/* 806F4CDC  38 80 00 FF */	li r4, 0xff
/* 806F4CE0  38 A0 00 00 */	li r5, 0
/* 806F4CE4  7F A6 EB 78 */	mr r6, r29
/* 806F4CE8  4B 98 EB 79 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 806F4CEC  38 7D 0D 78 */	addi r3, r29, 0xd78
/* 806F4CF0  38 9E 00 B8 */	addi r4, r30, 0xb8
/* 806F4CF4  4B 98 FD 41 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806F4CF8  38 1D 0D 3C */	addi r0, r29, 0xd3c
/* 806F4CFC  90 1D 0D BC */	stw r0, 0xdbc(r29)
/* 806F4D00  80 1D 0E 14 */	lwz r0, 0xe14(r29)
/* 806F4D04  60 00 00 01 */	ori r0, r0, 1
/* 806F4D08  90 1D 0E 14 */	stw r0, 0xe14(r29)
/* 806F4D0C  38 00 00 02 */	li r0, 2
/* 806F4D10  98 1D 0E 32 */	stb r0, 0xe32(r29)
/* 806F4D14  38 7D 10 0C */	addi r3, r29, 0x100c
/* 806F4D18  38 9E 00 F8 */	addi r4, r30, 0xf8
/* 806F4D1C  4B 98 FD 19 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806F4D20  38 1D 0D 3C */	addi r0, r29, 0xd3c
/* 806F4D24  90 1D 10 50 */	stw r0, 0x1050(r29)
/* 806F4D28  38 00 00 05 */	li r0, 5
/* 806F4D2C  98 1D 10 81 */	stb r0, 0x1081(r29)
/* 806F4D30  38 7D 0E D4 */	addi r3, r29, 0xed4
/* 806F4D34  38 9E 01 38 */	addi r4, r30, 0x138
/* 806F4D38  4B 98 FC FD */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806F4D3C  38 1D 09 58 */	addi r0, r29, 0x958
/* 806F4D40  90 1D 0F 18 */	stw r0, 0xf18(r29)
/* 806F4D44  80 1D 0F 70 */	lwz r0, 0xf70(r29)
/* 806F4D48  60 00 00 04 */	ori r0, r0, 4
/* 806F4D4C  90 1D 0F 70 */	stw r0, 0xf70(r29)
/* 806F4D50  38 7D 11 44 */	addi r3, r29, 0x1144
/* 806F4D54  38 9E 01 78 */	addi r4, r30, 0x178
/* 806F4D58  4B 98 FC DD */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806F4D5C  38 1D 09 58 */	addi r0, r29, 0x958
/* 806F4D60  90 1D 11 88 */	stw r0, 0x1188(r29)
/* 806F4D64  38 7D 12 7C */	addi r3, r29, 0x127c
/* 806F4D68  38 80 00 FF */	li r4, 0xff
/* 806F4D6C  38 A0 00 00 */	li r5, 0
/* 806F4D70  3C C0 80 40 */	lis r6, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806F4D74  38 C6 61 C0 */	addi r6, r6, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806F4D78  80 C6 5D AC */	lwz r6, 0x5dac(r6)
/* 806F4D7C  4B 98 EA E5 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 806F4D80  38 7D 12 B8 */	addi r3, r29, 0x12b8
/* 806F4D84  38 9E 01 B8 */	addi r4, r30, 0x1b8
/* 806F4D88  4B 98 FC AD */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806F4D8C  38 1D 12 7C */	addi r0, r29, 0x127c
/* 806F4D90  90 1D 12 FC */	stw r0, 0x12fc(r29)
/* 806F4D94  38 7D 05 D8 */	addi r3, r29, 0x5d8
/* 806F4D98  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806F4D9C  38 BD 05 38 */	addi r5, r29, 0x538
/* 806F4DA0  38 C0 00 03 */	li r6, 3
/* 806F4DA4  38 E0 00 01 */	li r7, 1
/* 806F4DA8  4B BC C2 ED */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 806F4DAC  38 1D 05 D8 */	addi r0, r29, 0x5d8
/* 806F4DB0  90 1D 0E B8 */	stw r0, 0xeb8(r29)
/* 806F4DB4  38 00 00 00 */	li r0, 0
/* 806F4DB8  B0 1D 06 96 */	sth r0, 0x696(r29)
/* 806F4DBC  38 00 FF FF */	li r0, -1
/* 806F4DC0  B0 1D 06 98 */	sth r0, 0x698(r29)
/* 806F4DC4  38 00 00 16 */	li r0, 0x16
/* 806F4DC8  98 1D 05 46 */	stb r0, 0x546(r29)
/* 806F4DCC  38 7D 13 F0 */	addi r3, r29, 0x13f0
/* 806F4DD0  38 9D 06 F8 */	addi r4, r29, 0x6f8
/* 806F4DD4  38 A0 00 01 */	li r5, 1
/* 806F4DD8  81 9D 14 00 */	lwz r12, 0x1400(r29)
/* 806F4DDC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806F4DE0  7D 89 03 A6 */	mtctr r12
/* 806F4DE4  4E 80 04 21 */	bctrl 
/* 806F4DE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806F4DEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806F4DF0  3B 43 09 78 */	addi r26, r3, 0x978
/* 806F4DF4  7F 43 D3 78 */	mr r3, r26
/* 806F4DF8  38 80 00 02 */	li r4, 2
/* 806F4DFC  4B 93 FD ED */	bl isSwitch__12dSv_danBit_cCFi
/* 806F4E00  2C 03 00 00 */	cmpwi r3, 0
/* 806F4E04  40 82 00 18 */	bne lbl_806F4E1C
/* 806F4E08  38 00 00 1E */	li r0, 0x1e
/* 806F4E0C  98 1D 14 14 */	stb r0, 0x1414(r29)
/* 806F4E10  7F 43 D3 78 */	mr r3, r26
/* 806F4E14  38 80 00 02 */	li r4, 2
/* 806F4E18  4B 93 FD 81 */	bl onSwitch__12dSv_danBit_cFi
lbl_806F4E1C:
/* 806F4E1C  38 00 00 01 */	li r0, 1
/* 806F4E20  98 1D 14 10 */	stb r0, 0x1410(r29)
/* 806F4E24  7F A3 EB 78 */	mr r3, r29
/* 806F4E28  4B FF E7 69 */	bl daE_HZELDA_Execute__FP14e_hzelda_class
lbl_806F4E2C:
/* 806F4E2C  7F 83 E3 78 */	mr r3, r28
lbl_806F4E30:
/* 806F4E30  39 61 00 30 */	addi r11, r1, 0x30
/* 806F4E34  4B C6 D3 E5 */	bl _restgpr_25
/* 806F4E38  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806F4E3C  7C 08 03 A6 */	mtlr r0
/* 806F4E40  38 21 00 30 */	addi r1, r1, 0x30
/* 806F4E44  4E 80 00 20 */	blr 

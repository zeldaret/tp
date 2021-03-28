lbl_80CA2B68:
/* 80CA2B68  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80CA2B6C  7C 08 02 A6 */	mflr r0
/* 80CA2B70  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CA2B74  39 61 00 40 */	addi r11, r1, 0x40
/* 80CA2B78  4B 6B F6 5C */	b _savegpr_27
/* 80CA2B7C  7C 7B 1B 78 */	mr r27, r3
/* 80CA2B80  3C 80 80 CA */	lis r4, cNullVec__6Z2Calc@ha
/* 80CA2B84  3B C4 32 B0 */	addi r30, r4, cNullVec__6Z2Calc@l
/* 80CA2B88  3C 80 80 CA */	lis r4, lit_3774@ha
/* 80CA2B8C  3B E4 31 BC */	addi r31, r4, lit_3774@l
/* 80CA2B90  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80CA2B94  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 80CA2B98  7C 1D 03 78 */	mr r29, r0
/* 80CA2B9C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CA2BA0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CA2BA4  40 82 00 BC */	bne lbl_80CA2C60
/* 80CA2BA8  7F 60 DB 79 */	or. r0, r27, r27
/* 80CA2BAC  41 82 00 A8 */	beq lbl_80CA2C54
/* 80CA2BB0  7C 1C 03 78 */	mr r28, r0
/* 80CA2BB4  4B 4B B4 5C */	b __ct__9dInsect_cFv
/* 80CA2BB8  3C 60 80 CA */	lis r3, __vt__10daObjNAN_c@ha
/* 80CA2BBC  38 03 34 5C */	addi r0, r3, __vt__10daObjNAN_c@l
/* 80CA2BC0  90 1C 05 68 */	stw r0, 0x568(r28)
/* 80CA2BC4  38 7C 05 98 */	addi r3, r28, 0x598
/* 80CA2BC8  4B 61 D8 00 */	b __ct__10Z2CreatureFv
/* 80CA2BCC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80CA2BD0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80CA2BD4  90 1C 06 4C */	stw r0, 0x64c(r28)
/* 80CA2BD8  38 7C 06 50 */	addi r3, r28, 0x650
/* 80CA2BDC  4B 3E 0B 84 */	b __ct__10dCcD_GSttsFv
/* 80CA2BE0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80CA2BE4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80CA2BE8  90 7C 06 4C */	stw r3, 0x64c(r28)
/* 80CA2BEC  38 03 00 20 */	addi r0, r3, 0x20
/* 80CA2BF0  90 1C 06 50 */	stw r0, 0x650(r28)
/* 80CA2BF4  3B 9C 06 70 */	addi r28, r28, 0x670
/* 80CA2BF8  7F 83 E3 78 */	mr r3, r28
/* 80CA2BFC  4B 3E 0E 2C */	b __ct__12dCcD_GObjInfFv
/* 80CA2C00  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80CA2C04  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80CA2C08  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80CA2C0C  3C 60 80 CA */	lis r3, __vt__8cM3dGAab@ha
/* 80CA2C10  38 03 34 50 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80CA2C14  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 80CA2C18  3C 60 80 CA */	lis r3, __vt__8cM3dGSph@ha
/* 80CA2C1C  38 03 34 44 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80CA2C20  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80CA2C24  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80CA2C28  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80CA2C2C  90 7C 01 20 */	stw r3, 0x120(r28)
/* 80CA2C30  38 03 00 58 */	addi r0, r3, 0x58
/* 80CA2C34  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80CA2C38  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80CA2C3C  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80CA2C40  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 80CA2C44  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CA2C48  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80CA2C4C  38 03 00 84 */	addi r0, r3, 0x84
/* 80CA2C50  90 1C 01 34 */	stw r0, 0x134(r28)
lbl_80CA2C54:
/* 80CA2C54  80 1B 04 A0 */	lwz r0, 0x4a0(r27)
/* 80CA2C58  60 00 00 08 */	ori r0, r0, 8
/* 80CA2C5C  90 1B 04 A0 */	stw r0, 0x4a0(r27)
lbl_80CA2C60:
/* 80CA2C60  38 7B 05 90 */	addi r3, r27, 0x590
/* 80CA2C64  3C 80 80 CA */	lis r4, stringBase0@ha
/* 80CA2C68  38 84 32 A0 */	addi r4, r4, stringBase0@l
/* 80CA2C6C  4B 38 A2 50 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CA2C70  7C 7C 1B 78 */	mr r28, r3
/* 80CA2C74  2C 1C 00 04 */	cmpwi r28, 4
/* 80CA2C78  40 82 03 48 */	bne lbl_80CA2FC0
/* 80CA2C7C  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 80CA2C80  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 80CA2C84  98 1B 07 FA */	stb r0, 0x7fa(r27)
/* 80CA2C88  88 1B 07 FA */	lbz r0, 0x7fa(r27)
/* 80CA2C8C  28 00 00 03 */	cmplwi r0, 3
/* 80CA2C90  40 82 00 0C */	bne lbl_80CA2C9C
/* 80CA2C94  38 00 00 00 */	li r0, 0
/* 80CA2C98  98 1B 07 FA */	stb r0, 0x7fa(r27)
lbl_80CA2C9C:
/* 80CA2C9C  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 80CA2CA0  54 00 E7 FE */	rlwinm r0, r0, 0x1c, 0x1f, 0x1f
/* 80CA2CA4  98 1B 07 FB */	stb r0, 0x7fb(r27)
/* 80CA2CA8  88 1B 07 FB */	lbz r0, 0x7fb(r27)
/* 80CA2CAC  28 00 00 00 */	cmplwi r0, 0
/* 80CA2CB0  41 82 00 20 */	beq lbl_80CA2CD0
/* 80CA2CB4  3C 60 80 CA */	lis r3, l_HIO@ha
/* 80CA2CB8  38 63 34 A8 */	addi r3, r3, l_HIO@l
/* 80CA2CBC  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CA2CC0  D0 1B 04 EC */	stfs f0, 0x4ec(r27)
/* 80CA2CC4  D0 1B 04 F0 */	stfs f0, 0x4f0(r27)
/* 80CA2CC8  D0 1B 04 F4 */	stfs f0, 0x4f4(r27)
/* 80CA2CCC  48 00 00 1C */	b lbl_80CA2CE8
lbl_80CA2CD0:
/* 80CA2CD0  3C 60 80 CA */	lis r3, l_HIO@ha
/* 80CA2CD4  38 63 34 A8 */	addi r3, r3, l_HIO@l
/* 80CA2CD8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80CA2CDC  D0 1B 04 EC */	stfs f0, 0x4ec(r27)
/* 80CA2CE0  D0 1B 04 F0 */	stfs f0, 0x4f0(r27)
/* 80CA2CE4  D0 1B 04 F4 */	stfs f0, 0x4f4(r27)
lbl_80CA2CE8:
/* 80CA2CE8  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 80CA2CEC  28 00 00 0F */	cmplwi r0, 0xf
/* 80CA2CF0  40 82 00 08 */	bne lbl_80CA2CF8
/* 80CA2CF4  3B A0 00 00 */	li r29, 0
lbl_80CA2CF8:
/* 80CA2CF8  88 1B 07 FB */	lbz r0, 0x7fb(r27)
/* 80CA2CFC  38 7F 00 B4 */	addi r3, r31, 0xb4
/* 80CA2D00  7C 03 00 AE */	lbzx r0, r3, r0
/* 80CA2D04  98 1B 05 80 */	stb r0, 0x580(r27)
/* 80CA2D08  88 1B 07 FB */	lbz r0, 0x7fb(r27)
/* 80CA2D0C  54 00 08 3C */	slwi r0, r0, 1
/* 80CA2D10  38 7F 00 D8 */	addi r3, r31, 0xd8
/* 80CA2D14  7C 03 02 2E */	lhzx r0, r3, r0
/* 80CA2D18  B0 1B 05 82 */	sth r0, 0x582(r27)
/* 80CA2D1C  88 1B 07 FA */	lbz r0, 0x7fa(r27)
/* 80CA2D20  28 00 00 02 */	cmplwi r0, 2
/* 80CA2D24  41 82 01 38 */	beq lbl_80CA2E5C
/* 80CA2D28  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80CA2D2C  41 82 00 64 */	beq lbl_80CA2D90
/* 80CA2D30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CA2D34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CA2D38  3B A3 07 F0 */	addi r29, r3, 0x7f0
/* 80CA2D3C  7F A3 EB 78 */	mr r3, r29
/* 80CA2D40  A0 1F 00 D8 */	lhz r0, 0xd8(r31)
/* 80CA2D44  54 00 08 3C */	slwi r0, r0, 1
/* 80CA2D48  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80CA2D4C  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80CA2D50  7C 84 02 2E */	lhzx r4, r4, r0
/* 80CA2D54  4B 39 1C 68 */	b isEventBit__11dSv_event_cCFUs
/* 80CA2D58  2C 03 00 00 */	cmpwi r3, 0
/* 80CA2D5C  41 82 00 2C */	beq lbl_80CA2D88
/* 80CA2D60  7F A3 EB 78 */	mr r3, r29
/* 80CA2D64  38 9F 00 D8 */	addi r4, r31, 0xd8
/* 80CA2D68  A0 04 00 02 */	lhz r0, 2(r4)
/* 80CA2D6C  54 00 08 3C */	slwi r0, r0, 1
/* 80CA2D70  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80CA2D74  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80CA2D78  7C 84 02 2E */	lhzx r4, r4, r0
/* 80CA2D7C  4B 39 1C 40 */	b isEventBit__11dSv_event_cCFUs
/* 80CA2D80  2C 03 00 00 */	cmpwi r3, 0
/* 80CA2D84  40 82 00 D8 */	bne lbl_80CA2E5C
lbl_80CA2D88:
/* 80CA2D88  38 60 00 05 */	li r3, 5
/* 80CA2D8C  48 00 02 38 */	b lbl_80CA2FC4
lbl_80CA2D90:
/* 80CA2D90  3C 60 80 CA */	lis r3, stringBase0@ha
/* 80CA2D94  38 63 32 A0 */	addi r3, r3, stringBase0@l
/* 80CA2D98  38 63 00 06 */	addi r3, r3, 6
/* 80CA2D9C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80CA2DA0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80CA2DA4  38 84 4E 00 */	addi r4, r4, 0x4e00
/* 80CA2DA8  4B 6C 5B EC */	b strcmp
/* 80CA2DAC  2C 03 00 00 */	cmpwi r3, 0
/* 80CA2DB0  40 82 00 AC */	bne lbl_80CA2E5C
/* 80CA2DB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CA2DB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CA2DBC  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80CA2DC0  2C 00 00 03 */	cmpwi r0, 3
/* 80CA2DC4  40 82 00 98 */	bne lbl_80CA2E5C
/* 80CA2DC8  88 7B 05 80 */	lbz r3, 0x580(r27)
/* 80CA2DCC  4B 53 71 70 */	b isCatchNotGiveInsect__14dMenu_Insect_cFUc
/* 80CA2DD0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CA2DD4  41 82 00 0C */	beq lbl_80CA2DE0
/* 80CA2DD8  38 60 00 05 */	li r3, 5
/* 80CA2DDC  48 00 01 E8 */	b lbl_80CA2FC4
lbl_80CA2DE0:
/* 80CA2DE0  88 1B 07 FB */	lbz r0, 0x7fb(r27)
/* 80CA2DE4  28 00 00 00 */	cmplwi r0, 0
/* 80CA2DE8  40 82 00 30 */	bne lbl_80CA2E18
/* 80CA2DEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CA2DF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CA2DF4  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80CA2DF8  A0 1F 00 D8 */	lhz r0, 0xd8(r31)
/* 80CA2DFC  54 00 08 3C */	slwi r0, r0, 1
/* 80CA2E00  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80CA2E04  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80CA2E08  7C 84 02 2E */	lhzx r4, r4, r0
/* 80CA2E0C  4B 39 1B B0 */	b isEventBit__11dSv_event_cCFUs
/* 80CA2E10  2C 03 00 00 */	cmpwi r3, 0
/* 80CA2E14  41 82 00 40 */	beq lbl_80CA2E54
lbl_80CA2E18:
/* 80CA2E18  88 1B 07 FB */	lbz r0, 0x7fb(r27)
/* 80CA2E1C  28 00 00 00 */	cmplwi r0, 0
/* 80CA2E20  41 82 00 3C */	beq lbl_80CA2E5C
/* 80CA2E24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CA2E28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CA2E2C  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80CA2E30  38 9F 00 D8 */	addi r4, r31, 0xd8
/* 80CA2E34  A0 04 00 02 */	lhz r0, 2(r4)
/* 80CA2E38  54 00 08 3C */	slwi r0, r0, 1
/* 80CA2E3C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80CA2E40  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80CA2E44  7C 84 02 2E */	lhzx r4, r4, r0
/* 80CA2E48  4B 39 1B 74 */	b isEventBit__11dSv_event_cCFUs
/* 80CA2E4C  2C 03 00 00 */	cmpwi r3, 0
/* 80CA2E50  40 82 00 0C */	bne lbl_80CA2E5C
lbl_80CA2E54:
/* 80CA2E54  38 60 00 05 */	li r3, 5
/* 80CA2E58  48 00 01 6C */	b lbl_80CA2FC4
lbl_80CA2E5C:
/* 80CA2E5C  7F 63 DB 78 */	mr r3, r27
/* 80CA2E60  3C 80 80 CA */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 80CA2E64  38 84 06 78 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 80CA2E68  88 1B 07 FB */	lbz r0, 0x7fb(r27)
/* 80CA2E6C  54 00 08 3C */	slwi r0, r0, 1
/* 80CA2E70  38 BF 00 DC */	addi r5, r31, 0xdc
/* 80CA2E74  7C A5 02 2E */	lhzx r5, r5, r0
/* 80CA2E78  4B 37 76 38 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80CA2E7C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CA2E80  40 82 00 0C */	bne lbl_80CA2E8C
/* 80CA2E84  38 60 00 05 */	li r3, 5
/* 80CA2E88  48 00 01 3C */	b lbl_80CA2FC4
lbl_80CA2E8C:
/* 80CA2E8C  3C 60 80 CA */	lis r3, data_80CA3498@ha
/* 80CA2E90  8C 03 34 98 */	lbzu r0, data_80CA3498@l(r3)
/* 80CA2E94  28 00 00 00 */	cmplwi r0, 0
/* 80CA2E98  40 82 00 20 */	bne lbl_80CA2EB8
/* 80CA2E9C  38 00 00 01 */	li r0, 1
/* 80CA2EA0  98 03 00 00 */	stb r0, 0(r3)
/* 80CA2EA4  98 1B 07 FD */	stb r0, 0x7fd(r27)
/* 80CA2EA8  38 00 FF FF */	li r0, -1
/* 80CA2EAC  3C 60 80 CA */	lis r3, l_HIO@ha
/* 80CA2EB0  38 63 34 A8 */	addi r3, r3, l_HIO@l
/* 80CA2EB4  98 03 00 04 */	stb r0, 4(r3)
lbl_80CA2EB8:
/* 80CA2EB8  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80CA2EBC  D0 1B 05 30 */	stfs f0, 0x530(r27)
/* 80CA2EC0  80 7B 06 28 */	lwz r3, 0x628(r27)
/* 80CA2EC4  80 63 00 04 */	lwz r3, 4(r3)
/* 80CA2EC8  38 03 00 24 */	addi r0, r3, 0x24
/* 80CA2ECC  90 1B 05 04 */	stw r0, 0x504(r27)
/* 80CA2ED0  7F 63 DB 78 */	mr r3, r27
/* 80CA2ED4  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 80CA2ED8  FC 40 08 90 */	fmr f2, f1
/* 80CA2EDC  FC 60 08 90 */	fmr f3, f1
/* 80CA2EE0  4B 37 76 48 */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80CA2EE4  7F 63 DB 78 */	mr r3, r27
/* 80CA2EE8  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80CA2EEC  FC 40 08 90 */	fmr f2, f1
/* 80CA2EF0  FC 60 08 90 */	fmr f3, f1
/* 80CA2EF4  4B 37 76 44 */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80CA2EF8  38 00 00 00 */	li r0, 0
/* 80CA2EFC  90 1B 05 5C */	stw r0, 0x55c(r27)
/* 80CA2F00  38 00 00 0A */	li r0, 0xa
/* 80CA2F04  B0 1B 05 62 */	sth r0, 0x562(r27)
/* 80CA2F08  B0 1B 05 60 */	sth r0, 0x560(r27)
/* 80CA2F0C  38 7B 05 98 */	addi r3, r27, 0x598
/* 80CA2F10  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80CA2F14  38 BB 05 38 */	addi r5, r27, 0x538
/* 80CA2F18  38 C0 00 03 */	li r6, 3
/* 80CA2F1C  38 E0 00 01 */	li r7, 1
/* 80CA2F20  4B 61 D6 10 */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 80CA2F24  88 1B 07 FA */	lbz r0, 0x7fa(r27)
/* 80CA2F28  28 00 00 00 */	cmplwi r0, 0
/* 80CA2F2C  40 82 00 34 */	bne lbl_80CA2F60
/* 80CA2F30  38 00 00 5D */	li r0, 0x5d
/* 80CA2F34  98 1B 05 48 */	stb r0, 0x548(r27)
/* 80CA2F38  38 7B 06 34 */	addi r3, r27, 0x634
/* 80CA2F3C  38 80 00 64 */	li r4, 0x64
/* 80CA2F40  38 A0 00 00 */	li r5, 0
/* 80CA2F44  7F 66 DB 78 */	mr r6, r27
/* 80CA2F48  4B 3E 09 18 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80CA2F4C  38 7B 06 70 */	addi r3, r27, 0x670
/* 80CA2F50  38 9E 00 20 */	addi r4, r30, 0x20
/* 80CA2F54  4B 3E 1A E0 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80CA2F58  38 1B 06 34 */	addi r0, r27, 0x634
/* 80CA2F5C  90 1B 06 B4 */	stw r0, 0x6b4(r27)
lbl_80CA2F60:
/* 80CA2F60  88 1B 07 FA */	lbz r0, 0x7fa(r27)
/* 80CA2F64  28 00 00 02 */	cmplwi r0, 2
/* 80CA2F68  40 82 00 2C */	bne lbl_80CA2F94
/* 80CA2F6C  80 7E 01 08 */	lwz r3, 0x108(r30)
/* 80CA2F70  80 1E 01 0C */	lwz r0, 0x10c(r30)
/* 80CA2F74  90 61 00 14 */	stw r3, 0x14(r1)
/* 80CA2F78  90 01 00 18 */	stw r0, 0x18(r1)
/* 80CA2F7C  80 1E 01 10 */	lwz r0, 0x110(r30)
/* 80CA2F80  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80CA2F84  7F 63 DB 78 */	mr r3, r27
/* 80CA2F88  38 81 00 14 */	addi r4, r1, 0x14
/* 80CA2F8C  4B FF D6 49 */	bl setAction__10daObjNAN_cFM10daObjNAN_cFPCvPv_v
/* 80CA2F90  48 00 00 28 */	b lbl_80CA2FB8
lbl_80CA2F94:
/* 80CA2F94  80 7E 01 14 */	lwz r3, 0x114(r30)
/* 80CA2F98  80 1E 01 18 */	lwz r0, 0x118(r30)
/* 80CA2F9C  90 61 00 08 */	stw r3, 8(r1)
/* 80CA2FA0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CA2FA4  80 1E 01 1C */	lwz r0, 0x11c(r30)
/* 80CA2FA8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CA2FAC  7F 63 DB 78 */	mr r3, r27
/* 80CA2FB0  38 81 00 08 */	addi r4, r1, 8
/* 80CA2FB4  4B FF D6 21 */	bl setAction__10daObjNAN_cFM10daObjNAN_cFPCvPv_v
lbl_80CA2FB8:
/* 80CA2FB8  7F 63 DB 78 */	mr r3, r27
/* 80CA2FBC  4B FF FB 8D */	bl daObjNAN_Execute__FP10daObjNAN_c
lbl_80CA2FC0:
/* 80CA2FC0  7F 83 E3 78 */	mr r3, r28
lbl_80CA2FC4:
/* 80CA2FC4  39 61 00 40 */	addi r11, r1, 0x40
/* 80CA2FC8  4B 6B F2 58 */	b _restgpr_27
/* 80CA2FCC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CA2FD0  7C 08 03 A6 */	mtlr r0
/* 80CA2FD4  38 21 00 40 */	addi r1, r1, 0x40
/* 80CA2FD8  4E 80 00 20 */	blr 

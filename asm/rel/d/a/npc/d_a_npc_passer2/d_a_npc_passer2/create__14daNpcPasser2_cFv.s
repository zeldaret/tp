lbl_80AA7CD8:
/* 80AA7CD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AA7CDC  7C 08 02 A6 */	mflr r0
/* 80AA7CE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AA7CE4  39 61 00 20 */	addi r11, r1, 0x20
/* 80AA7CE8  4B 8B A4 F4 */	b _savegpr_29
/* 80AA7CEC  7C 7F 1B 78 */	mr r31, r3
/* 80AA7CF0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80AA7CF4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80AA7CF8  40 82 01 00 */	bne lbl_80AA7DF8
/* 80AA7CFC  28 1F 00 00 */	cmplwi r31, 0
/* 80AA7D00  41 82 00 EC */	beq lbl_80AA7DEC
/* 80AA7D04  7F FE FB 78 */	mr r30, r31
/* 80AA7D08  4B 57 0E 5C */	b __ct__10fopAc_ac_cFv
/* 80AA7D0C  3C 60 80 AB */	lis r3, __vt__9daNpcCd_c@ha
/* 80AA7D10  38 03 8B 74 */	addi r0, r3, __vt__9daNpcCd_c@l
/* 80AA7D14  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80AA7D18  38 7E 05 90 */	addi r3, r30, 0x590
/* 80AA7D1C  4B 81 8E F4 */	b __ct__17Z2CreatureCitizenFv
/* 80AA7D20  3B BE 06 34 */	addi r29, r30, 0x634
/* 80AA7D24  7F A3 EB 78 */	mr r3, r29
/* 80AA7D28  4B 5C E3 78 */	b __ct__9dBgS_AcchFv
/* 80AA7D2C  3C 60 80 AB */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80AA7D30  38 63 8B 50 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80AA7D34  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80AA7D38  38 03 00 0C */	addi r0, r3, 0xc
/* 80AA7D3C  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80AA7D40  38 03 00 18 */	addi r0, r3, 0x18
/* 80AA7D44  90 1D 00 24 */	stw r0, 0x24(r29)
/* 80AA7D48  38 7D 00 14 */	addi r3, r29, 0x14
/* 80AA7D4C  4B 5D 11 1C */	b SetObj__16dBgS_PolyPassChkFv
/* 80AA7D50  38 7E 08 0C */	addi r3, r30, 0x80c
/* 80AA7D54  4B 5C E1 58 */	b __ct__12dBgS_AcchCirFv
/* 80AA7D58  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80AA7D5C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80AA7D60  90 1E 08 64 */	stw r0, 0x864(r30)
/* 80AA7D64  38 7E 08 68 */	addi r3, r30, 0x868
/* 80AA7D68  4B 5D B9 F8 */	b __ct__10dCcD_GSttsFv
/* 80AA7D6C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80AA7D70  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80AA7D74  90 7E 08 64 */	stw r3, 0x864(r30)
/* 80AA7D78  38 03 00 20 */	addi r0, r3, 0x20
/* 80AA7D7C  90 1E 08 68 */	stw r0, 0x868(r30)
/* 80AA7D80  3B BE 08 88 */	addi r29, r30, 0x888
/* 80AA7D84  7F A3 EB 78 */	mr r3, r29
/* 80AA7D88  4B 5D BC A0 */	b __ct__12dCcD_GObjInfFv
/* 80AA7D8C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80AA7D90  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80AA7D94  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80AA7D98  3C 60 80 AB */	lis r3, __vt__8cM3dGAab@ha
/* 80AA7D9C  38 03 8B 44 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80AA7DA0  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80AA7DA4  3C 60 80 AB */	lis r3, __vt__8cM3dGCyl@ha
/* 80AA7DA8  38 03 8B 38 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80AA7DAC  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80AA7DB0  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80AA7DB4  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80AA7DB8  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80AA7DBC  38 03 00 58 */	addi r0, r3, 0x58
/* 80AA7DC0  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80AA7DC4  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80AA7DC8  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80AA7DCC  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80AA7DD0  38 03 00 2C */	addi r0, r3, 0x2c
/* 80AA7DD4  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80AA7DD8  38 03 00 84 */	addi r0, r3, 0x84
/* 80AA7DDC  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80AA7DE0  3C 60 80 AB */	lis r3, __vt__14daNpcPasser2_c@ha
/* 80AA7DE4  38 03 8B 2C */	addi r0, r3, __vt__14daNpcPasser2_c@l
/* 80AA7DE8  90 1F 05 68 */	stw r0, 0x568(r31)
lbl_80AA7DEC:
/* 80AA7DEC  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80AA7DF0  60 00 00 08 */	ori r0, r0, 8
/* 80AA7DF4  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80AA7DF8:
/* 80AA7DF8  4B 70 47 84 */	b dKy_darkworld_check__Fv
/* 80AA7DFC  98 7F 09 E8 */	stb r3, 0x9e8(r31)
/* 80AA7E00  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80AA7E04  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80AA7E08  90 1F 09 C4 */	stw r0, 0x9c4(r31)
/* 80AA7E0C  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80AA7E10  2C 00 00 FF */	cmpwi r0, 0xff
/* 80AA7E14  40 80 00 94 */	bge lbl_80AA7EA8
/* 80AA7E18  90 1F 0A 2C */	stw r0, 0xa2c(r31)
/* 80AA7E1C  4B 70 47 60 */	b dKy_darkworld_check__Fv
/* 80AA7E20  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AA7E24  41 82 00 10 */	beq lbl_80AA7E34
/* 80AA7E28  4B 6F 7D 94 */	b dKy_getDarktime_week__Fv
/* 80AA7E2C  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80AA7E30  48 00 00 08 */	b lbl_80AA7E38
lbl_80AA7E34:
/* 80AA7E34  4B 70 0D 04 */	b dKy_get_dayofweek__Fv
lbl_80AA7E38:
/* 80AA7E38  90 7F 0A 28 */	stw r3, 0xa28(r31)
/* 80AA7E3C  4B 70 47 40 */	b dKy_darkworld_check__Fv
/* 80AA7E40  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AA7E44  41 82 00 10 */	beq lbl_80AA7E54
/* 80AA7E48  4B 6F 7C E8 */	b dKy_getDarktime_minute__Fv
/* 80AA7E4C  7C 7E 1B 78 */	mr r30, r3
/* 80AA7E50  48 00 00 0C */	b lbl_80AA7E5C
lbl_80AA7E54:
/* 80AA7E54  4B 6F 7B E8 */	b dKy_getdaytime_minute__Fv
/* 80AA7E58  7C 7E 1B 78 */	mr r30, r3
lbl_80AA7E5C:
/* 80AA7E5C  4B 70 47 20 */	b dKy_darkworld_check__Fv
/* 80AA7E60  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AA7E64  41 82 00 0C */	beq lbl_80AA7E70
/* 80AA7E68  4B 6F 7C 8C */	b dKy_getDarktime_hour__Fv
/* 80AA7E6C  48 00 00 08 */	b lbl_80AA7E74
lbl_80AA7E70:
/* 80AA7E70  4B 6F 7B A0 */	b dKy_getdaytime_hour__Fv
lbl_80AA7E74:
/* 80AA7E74  1C 03 00 3C */	mulli r0, r3, 0x3c
/* 80AA7E78  7C 7E 02 14 */	add r3, r30, r0
/* 80AA7E7C  80 1F 0A 2C */	lwz r0, 0xa2c(r31)
/* 80AA7E80  7C 03 00 00 */	cmpw r3, r0
/* 80AA7E84  40 81 00 30 */	ble lbl_80AA7EB4
/* 80AA7E88  80 7F 0A 28 */	lwz r3, 0xa28(r31)
/* 80AA7E8C  38 83 00 01 */	addi r4, r3, 1
/* 80AA7E90  38 60 00 07 */	li r3, 7
/* 80AA7E94  7C 04 1B D6 */	divw r0, r4, r3
/* 80AA7E98  7C 00 19 D6 */	mullw r0, r0, r3
/* 80AA7E9C  7C 00 20 50 */	subf r0, r0, r4
/* 80AA7EA0  90 1F 0A 28 */	stw r0, 0xa28(r31)
/* 80AA7EA4  48 00 00 10 */	b lbl_80AA7EB4
lbl_80AA7EA8:
/* 80AA7EA8  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 80AA7EAC  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 80AA7EB0  90 1F 0A 2C */	stw r0, 0xa2c(r31)
lbl_80AA7EB4:
/* 80AA7EB4  80 7F 09 C4 */	lwz r3, 0x9c4(r31)
/* 80AA7EB8  2C 03 00 1E */	cmpwi r3, 0x1e
/* 80AA7EBC  40 80 00 10 */	bge lbl_80AA7ECC
/* 80AA7EC0  80 1F 0A 24 */	lwz r0, 0xa24(r31)
/* 80AA7EC4  2C 00 00 09 */	cmpwi r0, 9
/* 80AA7EC8  41 80 00 0C */	blt lbl_80AA7ED4
lbl_80AA7ECC:
/* 80AA7ECC  38 60 00 05 */	li r3, 5
/* 80AA7ED0  48 00 00 90 */	b lbl_80AA7F60
lbl_80AA7ED4:
/* 80AA7ED4  2C 03 00 00 */	cmpwi r3, 0
/* 80AA7ED8  41 80 00 0C */	blt lbl_80AA7EE4
/* 80AA7EDC  2C 03 00 1E */	cmpwi r3, 0x1e
/* 80AA7EE0  40 81 00 0C */	ble lbl_80AA7EEC
lbl_80AA7EE4:
/* 80AA7EE4  38 60 00 05 */	li r3, 5
/* 80AA7EE8  48 00 00 78 */	b lbl_80AA7F60
lbl_80AA7EEC:
/* 80AA7EEC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80AA7EF0  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80AA7EF4  90 1F 0A 24 */	stw r0, 0xa24(r31)
/* 80AA7EF8  80 BF 0A 24 */	lwz r5, 0xa24(r31)
/* 80AA7EFC  2C 05 00 00 */	cmpwi r5, 0
/* 80AA7F00  41 80 00 0C */	blt lbl_80AA7F0C
/* 80AA7F04  2C 05 00 0D */	cmpwi r5, 0xd
/* 80AA7F08  40 81 00 0C */	ble lbl_80AA7F14
lbl_80AA7F0C:
/* 80AA7F0C  38 60 00 05 */	li r3, 5
/* 80AA7F10  48 00 00 50 */	b lbl_80AA7F60
lbl_80AA7F14:
/* 80AA7F14  7F E3 FB 78 */	mr r3, r31
/* 80AA7F18  80 9F 09 C4 */	lwz r4, 0x9c4(r31)
/* 80AA7F1C  4B 6A EC 30 */	b loadResrc__9daNpcCd_cFii
/* 80AA7F20  7C 7E 1B 78 */	mr r30, r3
/* 80AA7F24  2C 1E 00 04 */	cmpwi r30, 4
/* 80AA7F28  40 82 00 34 */	bne lbl_80AA7F5C
/* 80AA7F2C  7F E3 FB 78 */	mr r3, r31
/* 80AA7F30  3C 80 80 AA */	lis r4, createHeapCallBack__FP10fopAc_ac_c@ha
/* 80AA7F34  38 84 74 D8 */	addi r4, r4, createHeapCallBack__FP10fopAc_ac_c@l
/* 80AA7F38  3C A0 80 00 */	lis r5, 0x8000 /* 0x800015A0@ha */
/* 80AA7F3C  38 A5 15 A0 */	addi r5, r5, 0x15A0 /* 0x800015A0@l */
/* 80AA7F40  4B 57 25 70 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80AA7F44  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AA7F48  40 82 00 0C */	bne lbl_80AA7F54
/* 80AA7F4C  38 60 00 05 */	li r3, 5
/* 80AA7F50  48 00 00 10 */	b lbl_80AA7F60
lbl_80AA7F54:
/* 80AA7F54  7F E3 FB 78 */	mr r3, r31
/* 80AA7F58  48 00 00 21 */	bl create_init__14daNpcPasser2_cFv
lbl_80AA7F5C:
/* 80AA7F5C  7F C3 F3 78 */	mr r3, r30
lbl_80AA7F60:
/* 80AA7F60  39 61 00 20 */	addi r11, r1, 0x20
/* 80AA7F64  4B 8B A2 C4 */	b _restgpr_29
/* 80AA7F68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AA7F6C  7C 08 03 A6 */	mtlr r0
/* 80AA7F70  38 21 00 20 */	addi r1, r1, 0x20
/* 80AA7F74  4E 80 00 20 */	blr 

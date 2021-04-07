lbl_80AA2D40:
/* 80AA2D40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AA2D44  7C 08 02 A6 */	mflr r0
/* 80AA2D48  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AA2D4C  39 61 00 20 */	addi r11, r1, 0x20
/* 80AA2D50  4B 8B F4 8D */	bl _savegpr_29
/* 80AA2D54  7C 7F 1B 78 */	mr r31, r3
/* 80AA2D58  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80AA2D5C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80AA2D60  40 82 01 08 */	bne lbl_80AA2E68
/* 80AA2D64  28 1F 00 00 */	cmplwi r31, 0
/* 80AA2D68  41 82 00 F4 */	beq lbl_80AA2E5C
/* 80AA2D6C  7F FE FB 78 */	mr r30, r31
/* 80AA2D70  4B 57 5D F5 */	bl __ct__10fopAc_ac_cFv
/* 80AA2D74  3C 60 80 AA */	lis r3, __vt__10daNpcCd2_c@ha /* 0x80AA7438@ha */
/* 80AA2D78  38 03 74 38 */	addi r0, r3, __vt__10daNpcCd2_c@l /* 0x80AA7438@l */
/* 80AA2D7C  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80AA2D80  38 7E 05 94 */	addi r3, r30, 0x594
/* 80AA2D84  4B 81 DE 8D */	bl __ct__17Z2CreatureCitizenFv
/* 80AA2D88  3B BE 06 38 */	addi r29, r30, 0x638
/* 80AA2D8C  7F A3 EB 78 */	mr r3, r29
/* 80AA2D90  4B 5D 33 11 */	bl __ct__9dBgS_AcchFv
/* 80AA2D94  3C 60 80 AA */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80AA73CC@ha */
/* 80AA2D98  38 63 73 CC */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80AA73CC@l */
/* 80AA2D9C  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80AA2DA0  38 03 00 0C */	addi r0, r3, 0xc
/* 80AA2DA4  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80AA2DA8  38 03 00 18 */	addi r0, r3, 0x18
/* 80AA2DAC  90 1D 00 24 */	stw r0, 0x24(r29)
/* 80AA2DB0  38 7D 00 14 */	addi r3, r29, 0x14
/* 80AA2DB4  4B 5D 60 B5 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80AA2DB8  38 7E 08 10 */	addi r3, r30, 0x810
/* 80AA2DBC  4B 5D 30 F1 */	bl __ct__12dBgS_AcchCirFv
/* 80AA2DC0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80AA2DC4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80AA2DC8  90 1E 08 68 */	stw r0, 0x868(r30)
/* 80AA2DCC  38 7E 08 6C */	addi r3, r30, 0x86c
/* 80AA2DD0  4B 5E 09 91 */	bl __ct__10dCcD_GSttsFv
/* 80AA2DD4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80AA2DD8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80AA2DDC  90 7E 08 68 */	stw r3, 0x868(r30)
/* 80AA2DE0  38 03 00 20 */	addi r0, r3, 0x20
/* 80AA2DE4  90 1E 08 6C */	stw r0, 0x86c(r30)
/* 80AA2DE8  3B BE 08 8C */	addi r29, r30, 0x88c
/* 80AA2DEC  7F A3 EB 78 */	mr r3, r29
/* 80AA2DF0  4B 5E 0C 39 */	bl __ct__12dCcD_GObjInfFv
/* 80AA2DF4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80AA2DF8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80AA2DFC  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80AA2E00  3C 60 80 AA */	lis r3, __vt__8cM3dGAab@ha /* 0x80AA7414@ha */
/* 80AA2E04  38 03 74 14 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80AA7414@l */
/* 80AA2E08  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80AA2E0C  3C 60 80 AA */	lis r3, __vt__8cM3dGCyl@ha /* 0x80AA7420@ha */
/* 80AA2E10  38 03 74 20 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80AA7420@l */
/* 80AA2E14  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80AA2E18  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80AA2E1C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80AA2E20  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80AA2E24  38 03 00 58 */	addi r0, r3, 0x58
/* 80AA2E28  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80AA2E2C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80AA2E30  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80AA2E34  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80AA2E38  38 03 00 2C */	addi r0, r3, 0x2c
/* 80AA2E3C  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80AA2E40  38 03 00 84 */	addi r0, r3, 0x84
/* 80AA2E44  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80AA2E48  38 7E 09 C8 */	addi r3, r30, 0x9c8
/* 80AA2E4C  4B 7A E4 C9 */	bl __ct__16dNpcLib_lookat_cFv
/* 80AA2E50  3C 60 80 AA */	lis r3, __vt__13daNpcPasser_c@ha /* 0x80AA7444@ha */
/* 80AA2E54  38 03 74 44 */	addi r0, r3, __vt__13daNpcPasser_c@l /* 0x80AA7444@l */
/* 80AA2E58  90 1F 05 68 */	stw r0, 0x568(r31)
lbl_80AA2E5C:
/* 80AA2E5C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80AA2E60  60 00 00 08 */	ori r0, r0, 8
/* 80AA2E64  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80AA2E68:
/* 80AA2E68  4B 70 97 15 */	bl dKy_darkworld_check__Fv
/* 80AA2E6C  98 7F 0A C6 */	stb r3, 0xac6(r31)
/* 80AA2E70  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80AA2E74  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80AA2E78  90 1F 0A 98 */	stw r0, 0xa98(r31)
/* 80AA2E7C  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80AA2E80  2C 00 00 FF */	cmpwi r0, 0xff
/* 80AA2E84  40 80 00 94 */	bge lbl_80AA2F18
/* 80AA2E88  90 1F 0B 0C */	stw r0, 0xb0c(r31)
/* 80AA2E8C  4B 70 96 F1 */	bl dKy_darkworld_check__Fv
/* 80AA2E90  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AA2E94  41 82 00 10 */	beq lbl_80AA2EA4
/* 80AA2E98  4B 6F CD 25 */	bl dKy_getDarktime_week__Fv
/* 80AA2E9C  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80AA2EA0  48 00 00 08 */	b lbl_80AA2EA8
lbl_80AA2EA4:
/* 80AA2EA4  4B 70 5C 95 */	bl dKy_get_dayofweek__Fv
lbl_80AA2EA8:
/* 80AA2EA8  90 7F 0B 08 */	stw r3, 0xb08(r31)
/* 80AA2EAC  4B 70 96 D1 */	bl dKy_darkworld_check__Fv
/* 80AA2EB0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AA2EB4  41 82 00 10 */	beq lbl_80AA2EC4
/* 80AA2EB8  4B 6F CC 79 */	bl dKy_getDarktime_minute__Fv
/* 80AA2EBC  7C 7E 1B 78 */	mr r30, r3
/* 80AA2EC0  48 00 00 0C */	b lbl_80AA2ECC
lbl_80AA2EC4:
/* 80AA2EC4  4B 6F CB 79 */	bl dKy_getdaytime_minute__Fv
/* 80AA2EC8  7C 7E 1B 78 */	mr r30, r3
lbl_80AA2ECC:
/* 80AA2ECC  4B 70 96 B1 */	bl dKy_darkworld_check__Fv
/* 80AA2ED0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AA2ED4  41 82 00 0C */	beq lbl_80AA2EE0
/* 80AA2ED8  4B 6F CC 1D */	bl dKy_getDarktime_hour__Fv
/* 80AA2EDC  48 00 00 08 */	b lbl_80AA2EE4
lbl_80AA2EE0:
/* 80AA2EE0  4B 6F CB 31 */	bl dKy_getdaytime_hour__Fv
lbl_80AA2EE4:
/* 80AA2EE4  1C 03 00 3C */	mulli r0, r3, 0x3c
/* 80AA2EE8  7C 7E 02 14 */	add r3, r30, r0
/* 80AA2EEC  80 1F 0B 0C */	lwz r0, 0xb0c(r31)
/* 80AA2EF0  7C 03 00 00 */	cmpw r3, r0
/* 80AA2EF4  40 81 00 30 */	ble lbl_80AA2F24
/* 80AA2EF8  80 7F 0B 08 */	lwz r3, 0xb08(r31)
/* 80AA2EFC  38 83 00 01 */	addi r4, r3, 1
/* 80AA2F00  38 60 00 07 */	li r3, 7
/* 80AA2F04  7C 04 1B D6 */	divw r0, r4, r3
/* 80AA2F08  7C 00 19 D6 */	mullw r0, r0, r3
/* 80AA2F0C  7C 00 20 50 */	subf r0, r0, r4
/* 80AA2F10  90 1F 0B 08 */	stw r0, 0xb08(r31)
/* 80AA2F14  48 00 00 10 */	b lbl_80AA2F24
lbl_80AA2F18:
/* 80AA2F18  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 80AA2F1C  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 80AA2F20  90 1F 0B 0C */	stw r0, 0xb0c(r31)
lbl_80AA2F24:
/* 80AA2F24  38 00 00 00 */	li r0, 0
/* 80AA2F28  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 80AA2F2C  80 1F 0A 98 */	lwz r0, 0xa98(r31)
/* 80AA2F30  2C 00 00 00 */	cmpwi r0, 0
/* 80AA2F34  41 80 00 0C */	blt lbl_80AA2F40
/* 80AA2F38  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80AA2F3C  40 81 00 0C */	ble lbl_80AA2F48
lbl_80AA2F40:
/* 80AA2F40  38 60 00 05 */	li r3, 5
/* 80AA2F44  48 00 00 78 */	b lbl_80AA2FBC
lbl_80AA2F48:
/* 80AA2F48  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80AA2F4C  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80AA2F50  90 1F 0B 00 */	stw r0, 0xb00(r31)
/* 80AA2F54  80 BF 0B 00 */	lwz r5, 0xb00(r31)
/* 80AA2F58  2C 05 00 00 */	cmpwi r5, 0
/* 80AA2F5C  41 80 00 0C */	blt lbl_80AA2F68
/* 80AA2F60  2C 05 00 0D */	cmpwi r5, 0xd
/* 80AA2F64  40 81 00 0C */	ble lbl_80AA2F70
lbl_80AA2F68:
/* 80AA2F68  38 60 00 05 */	li r3, 5
/* 80AA2F6C  48 00 00 50 */	b lbl_80AA2FBC
lbl_80AA2F70:
/* 80AA2F70  7F E3 FB 78 */	mr r3, r31
/* 80AA2F74  80 9F 0A 98 */	lwz r4, 0xa98(r31)
/* 80AA2F78  4B 6B 5C 41 */	bl loadResrc__10daNpcCd2_cFii
/* 80AA2F7C  7C 7E 1B 78 */	mr r30, r3
/* 80AA2F80  2C 1E 00 04 */	cmpwi r30, 4
/* 80AA2F84  40 82 00 34 */	bne lbl_80AA2FB8
/* 80AA2F88  7F E3 FB 78 */	mr r3, r31
/* 80AA2F8C  3C 80 80 AA */	lis r4, createHeapCallBack__FP10fopAc_ac_c@ha /* 0x80AA2D20@ha */
/* 80AA2F90  38 84 2D 20 */	addi r4, r4, createHeapCallBack__FP10fopAc_ac_c@l /* 0x80AA2D20@l */
/* 80AA2F94  3C A0 80 00 */	lis r5, 0x8000 /* 0x80002300@ha */
/* 80AA2F98  38 A5 23 00 */	addi r5, r5, 0x2300 /* 0x80002300@l */
/* 80AA2F9C  4B 57 75 15 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80AA2FA0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AA2FA4  40 82 00 0C */	bne lbl_80AA2FB0
/* 80AA2FA8  38 60 00 05 */	li r3, 5
/* 80AA2FAC  48 00 00 10 */	b lbl_80AA2FBC
lbl_80AA2FB0:
/* 80AA2FB0  7F E3 FB 78 */	mr r3, r31
/* 80AA2FB4  48 00 12 31 */	bl create_init__13daNpcPasser_cFv
lbl_80AA2FB8:
/* 80AA2FB8  7F C3 F3 78 */	mr r3, r30
lbl_80AA2FBC:
/* 80AA2FBC  39 61 00 20 */	addi r11, r1, 0x20
/* 80AA2FC0  4B 8B F2 69 */	bl _restgpr_29
/* 80AA2FC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AA2FC8  7C 08 03 A6 */	mtlr r0
/* 80AA2FCC  38 21 00 20 */	addi r1, r1, 0x20
/* 80AA2FD0  4E 80 00 20 */	blr 

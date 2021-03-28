lbl_80C40AB8:
/* 80C40AB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C40ABC  7C 08 02 A6 */	mflr r0
/* 80C40AC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C40AC4  39 61 00 20 */	addi r11, r1, 0x20
/* 80C40AC8  4B 72 17 10 */	b _savegpr_28
/* 80C40ACC  7C 7E 1B 78 */	mr r30, r3
/* 80C40AD0  3C 80 80 C4 */	lis r4, lit_3778@ha
/* 80C40AD4  3B E4 0F EC */	addi r31, r4, lit_3778@l
/* 80C40AD8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C40ADC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C40AE0  40 82 01 48 */	bne lbl_80C40C28
/* 80C40AE4  7F C0 F3 79 */	or. r0, r30, r30
/* 80C40AE8  41 82 01 34 */	beq lbl_80C40C1C
/* 80C40AEC  7C 1D 03 78 */	mr r29, r0
/* 80C40AF0  4B 3D 80 74 */	b __ct__10fopAc_ac_cFv
/* 80C40AF4  38 7D 05 7C */	addi r3, r29, 0x57c
/* 80C40AF8  3C 80 80 C4 */	lis r4, __ct__4cXyzFv@ha
/* 80C40AFC  38 84 0F 24 */	addi r4, r4, __ct__4cXyzFv@l
/* 80C40B00  3C A0 80 C4 */	lis r5, __dt__4cXyzFv@ha
/* 80C40B04  38 A5 FB 84 */	addi r5, r5, __dt__4cXyzFv@l
/* 80C40B08  38 C0 00 0C */	li r6, 0xc
/* 80C40B0C  38 E0 00 03 */	li r7, 3
/* 80C40B10  4B 72 12 50 */	b __construct_array
/* 80C40B14  38 7D 05 A0 */	addi r3, r29, 0x5a0
/* 80C40B18  3C 80 80 C4 */	lis r4, __ct__4cXyzFv@ha
/* 80C40B1C  38 84 0F 24 */	addi r4, r4, __ct__4cXyzFv@l
/* 80C40B20  3C A0 80 C4 */	lis r5, __dt__4cXyzFv@ha
/* 80C40B24  38 A5 FB 84 */	addi r5, r5, __dt__4cXyzFv@l
/* 80C40B28  38 C0 00 0C */	li r6, 0xc
/* 80C40B2C  38 E0 00 03 */	li r7, 3
/* 80C40B30  4B 72 12 30 */	b __construct_array
/* 80C40B34  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80C40B38  3C 80 80 C4 */	lis r4, __ct__5csXyzFv@ha
/* 80C40B3C  38 84 0F 20 */	addi r4, r4, __ct__5csXyzFv@l
/* 80C40B40  3C A0 80 C4 */	lis r5, __dt__5csXyzFv@ha
/* 80C40B44  38 A5 0E E4 */	addi r5, r5, __dt__5csXyzFv@l
/* 80C40B48  38 C0 00 06 */	li r6, 6
/* 80C40B4C  38 E0 00 03 */	li r7, 3
/* 80C40B50  4B 72 12 10 */	b __construct_array
/* 80C40B54  38 7D 05 E8 */	addi r3, r29, 0x5e8
/* 80C40B58  4B 67 DC EC */	b __ct__16Z2SoundObjSimpleFv
/* 80C40B5C  38 7D 06 20 */	addi r3, r29, 0x620
/* 80C40B60  4B 43 53 4C */	b __ct__12dBgS_AcchCirFv
/* 80C40B64  3B 9D 06 60 */	addi r28, r29, 0x660
/* 80C40B68  7F 83 E3 78 */	mr r3, r28
/* 80C40B6C  4B 43 55 34 */	b __ct__9dBgS_AcchFv
/* 80C40B70  3C 60 80 C4 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80C40B74  38 63 11 00 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80C40B78  90 7C 00 10 */	stw r3, 0x10(r28)
/* 80C40B7C  38 03 00 0C */	addi r0, r3, 0xc
/* 80C40B80  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80C40B84  38 03 00 18 */	addi r0, r3, 0x18
/* 80C40B88  90 1C 00 24 */	stw r0, 0x24(r28)
/* 80C40B8C  38 7C 00 14 */	addi r3, r28, 0x14
/* 80C40B90  4B 43 82 D8 */	b SetObj__16dBgS_PolyPassChkFv
/* 80C40B94  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80C40B98  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80C40B9C  90 1D 08 50 */	stw r0, 0x850(r29)
/* 80C40BA0  38 7D 08 54 */	addi r3, r29, 0x854
/* 80C40BA4  4B 44 2B BC */	b __ct__10dCcD_GSttsFv
/* 80C40BA8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80C40BAC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80C40BB0  90 7D 08 50 */	stw r3, 0x850(r29)
/* 80C40BB4  38 03 00 20 */	addi r0, r3, 0x20
/* 80C40BB8  90 1D 08 54 */	stw r0, 0x854(r29)
/* 80C40BBC  3B 9D 08 74 */	addi r28, r29, 0x874
/* 80C40BC0  7F 83 E3 78 */	mr r3, r28
/* 80C40BC4  4B 44 2E 64 */	b __ct__12dCcD_GObjInfFv
/* 80C40BC8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80C40BCC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80C40BD0  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80C40BD4  3C 60 80 C4 */	lis r3, __vt__8cM3dGAab@ha
/* 80C40BD8  38 03 10 F4 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80C40BDC  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 80C40BE0  3C 60 80 C4 */	lis r3, __vt__8cM3dGSph@ha
/* 80C40BE4  38 03 10 E8 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80C40BE8  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80C40BEC  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80C40BF0  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80C40BF4  90 7C 01 20 */	stw r3, 0x120(r28)
/* 80C40BF8  38 03 00 58 */	addi r0, r3, 0x58
/* 80C40BFC  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80C40C00  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80C40C04  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80C40C08  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 80C40C0C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C40C10  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80C40C14  38 03 00 84 */	addi r0, r3, 0x84
/* 80C40C18  90 1C 01 34 */	stw r0, 0x134(r28)
lbl_80C40C1C:
/* 80C40C1C  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80C40C20  60 00 00 08 */	ori r0, r0, 8
/* 80C40C24  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80C40C28:
/* 80C40C28  38 7E 05 68 */	addi r3, r30, 0x568
/* 80C40C2C  3C 80 80 C4 */	lis r4, stringBase0@ha
/* 80C40C30  38 84 10 7C */	addi r4, r4, stringBase0@l
/* 80C40C34  4B 3E C2 88 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C40C38  7C 7D 1B 78 */	mr r29, r3
/* 80C40C3C  2C 1D 00 04 */	cmpwi r29, 4
/* 80C40C40  40 82 01 88 */	bne lbl_80C40DC8
/* 80C40C44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C40C48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C40C4C  3B 83 4E 00 */	addi r28, r3, 0x4e00
/* 80C40C50  7F 83 E3 78 */	mr r3, r28
/* 80C40C54  3C 80 80 C4 */	lis r4, stringBase0@ha
/* 80C40C58  38 84 10 7C */	addi r4, r4, stringBase0@l
/* 80C40C5C  38 84 00 08 */	addi r4, r4, 8
/* 80C40C60  4B 72 7D 34 */	b strcmp
/* 80C40C64  2C 03 00 00 */	cmpwi r3, 0
/* 80C40C68  41 82 00 78 */	beq lbl_80C40CE0
/* 80C40C6C  7F 83 E3 78 */	mr r3, r28
/* 80C40C70  3C 80 80 C4 */	lis r4, stringBase0@ha
/* 80C40C74  38 84 10 7C */	addi r4, r4, stringBase0@l
/* 80C40C78  38 84 00 10 */	addi r4, r4, 0x10
/* 80C40C7C  4B 72 7D 18 */	b strcmp
/* 80C40C80  2C 03 00 00 */	cmpwi r3, 0
/* 80C40C84  40 82 00 28 */	bne lbl_80C40CAC
/* 80C40C88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C40C8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C40C90  38 63 09 58 */	addi r3, r3, 0x958
/* 80C40C94  38 80 00 07 */	li r4, 7
/* 80C40C98  4B 3F 3C 9C */	b isDungeonItem__12dSv_memBit_cCFi
/* 80C40C9C  2C 03 00 00 */	cmpwi r3, 0
/* 80C40CA0  41 82 00 0C */	beq lbl_80C40CAC
/* 80C40CA4  38 60 00 05 */	li r3, 5
/* 80C40CA8  48 00 01 24 */	b lbl_80C40DCC
lbl_80C40CAC:
/* 80C40CAC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C40CB0  54 04 46 3E */	srwi r4, r0, 0x18
/* 80C40CB4  2C 04 00 FF */	cmpwi r4, 0xff
/* 80C40CB8  41 82 00 28 */	beq lbl_80C40CE0
/* 80C40CBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C40CC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C40CC4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C40CC8  7C 05 07 74 */	extsb r5, r0
/* 80C40CCC  4B 3F 46 94 */	b isSwitch__10dSv_info_cCFii
/* 80C40CD0  2C 03 00 00 */	cmpwi r3, 0
/* 80C40CD4  41 82 00 0C */	beq lbl_80C40CE0
/* 80C40CD8  38 60 00 05 */	li r3, 5
/* 80C40CDC  48 00 00 F0 */	b lbl_80C40DCC
lbl_80C40CE0:
/* 80C40CE0  7F C3 F3 78 */	mr r3, r30
/* 80C40CE4  3C 80 80 C4 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 80C40CE8  38 84 09 AC */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 80C40CEC  38 A0 10 20 */	li r5, 0x1020
/* 80C40CF0  4B 3D 97 C0 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80C40CF4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C40CF8  40 82 00 0C */	bne lbl_80C40D04
/* 80C40CFC  38 60 00 05 */	li r3, 5
/* 80C40D00  48 00 00 CC */	b lbl_80C40DCC
lbl_80C40D04:
/* 80C40D04  3C 60 80 C4 */	lis r3, data_80C41138@ha
/* 80C40D08  8C 03 11 38 */	lbzu r0, data_80C41138@l(r3)
/* 80C40D0C  28 00 00 00 */	cmplwi r0, 0
/* 80C40D10  40 82 00 20 */	bne lbl_80C40D30
/* 80C40D14  38 00 00 01 */	li r0, 1
/* 80C40D18  98 1E 09 B4 */	stb r0, 0x9b4(r30)
/* 80C40D1C  98 03 00 00 */	stb r0, 0(r3)
/* 80C40D20  38 00 FF FF */	li r0, -1
/* 80C40D24  3C 60 80 C4 */	lis r3, l_HIO@ha
/* 80C40D28  38 63 11 48 */	addi r3, r3, l_HIO@l
/* 80C40D2C  98 03 00 04 */	stb r0, 4(r3)
lbl_80C40D30:
/* 80C40D30  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80C40D34  38 03 00 24 */	addi r0, r3, 0x24
/* 80C40D38  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80C40D3C  7F C3 F3 78 */	mr r3, r30
/* 80C40D40  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80C40D44  FC 40 08 90 */	fmr f2, f1
/* 80C40D48  FC 60 08 90 */	fmr f3, f1
/* 80C40D4C  4B 3D 97 DC */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80C40D50  7F C3 F3 78 */	mr r3, r30
/* 80C40D54  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80C40D58  FC 40 08 90 */	fmr f2, f1
/* 80C40D5C  FC 60 08 90 */	fmr f3, f1
/* 80C40D60  4B 3D 97 D8 */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80C40D64  38 00 00 00 */	li r0, 0
/* 80C40D68  90 01 00 08 */	stw r0, 8(r1)
/* 80C40D6C  38 7E 06 60 */	addi r3, r30, 0x660
/* 80C40D70  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C40D74  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80C40D78  7F C6 F3 78 */	mr r6, r30
/* 80C40D7C  38 E0 00 01 */	li r7, 1
/* 80C40D80  39 1E 06 20 */	addi r8, r30, 0x620
/* 80C40D84  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 80C40D88  39 40 00 00 */	li r10, 0
/* 80C40D8C  4B 43 54 BC */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80C40D90  38 7E 06 20 */	addi r3, r30, 0x620
/* 80C40D94  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80C40D98  FC 40 08 90 */	fmr f2, f1
/* 80C40D9C  4B 43 51 BC */	b SetWall__12dBgS_AcchCirFff
/* 80C40DA0  38 00 00 00 */	li r0, 0
/* 80C40DA4  B0 1E 06 0A */	sth r0, 0x60a(r30)
/* 80C40DA8  38 00 00 0A */	li r0, 0xa
/* 80C40DAC  B0 1E 06 0E */	sth r0, 0x60e(r30)
/* 80C40DB0  38 00 FF FF */	li r0, -1
/* 80C40DB4  90 1E 05 E4 */	stw r0, 0x5e4(r30)
/* 80C40DB8  38 00 00 01 */	li r0, 1
/* 80C40DBC  98 1E 06 1C */	stb r0, 0x61c(r30)
/* 80C40DC0  7F C3 F3 78 */	mr r3, r30
/* 80C40DC4  4B FF FA F1 */	bl daObj_Key_Execute__FP13obj_key_class
lbl_80C40DC8:
/* 80C40DC8  7F A3 EB 78 */	mr r3, r29
lbl_80C40DCC:
/* 80C40DCC  39 61 00 20 */	addi r11, r1, 0x20
/* 80C40DD0  4B 72 14 54 */	b _restgpr_28
/* 80C40DD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C40DD8  7C 08 03 A6 */	mtlr r0
/* 80C40DDC  38 21 00 20 */	addi r1, r1, 0x20
/* 80C40DE0  4E 80 00 20 */	blr 

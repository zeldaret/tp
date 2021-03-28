lbl_80CA3E24:
/* 80CA3E24  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CA3E28  7C 08 02 A6 */	mflr r0
/* 80CA3E2C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CA3E30  39 61 00 30 */	addi r11, r1, 0x30
/* 80CA3E34  4B 6B E3 94 */	b _savegpr_24
/* 80CA3E38  7C 7D 1B 78 */	mr r29, r3
/* 80CA3E3C  3C 80 80 CA */	lis r4, m__19daObj_Nougu_Param_c@ha
/* 80CA3E40  3B E4 49 B8 */	addi r31, r4, m__19daObj_Nougu_Param_c@l
/* 80CA3E44  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CA3E48  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CA3E4C  40 82 00 B4 */	bne lbl_80CA3F00
/* 80CA3E50  7F A0 EB 79 */	or. r0, r29, r29
/* 80CA3E54  41 82 00 A0 */	beq lbl_80CA3EF4
/* 80CA3E58  7C 18 03 78 */	mr r24, r0
/* 80CA3E5C  4B 37 4D 08 */	b __ct__10fopAc_ac_cFv
/* 80CA3E60  3C 60 80 CA */	lis r3, __vt__13daObj_Nougu_c@ha
/* 80CA3E64  38 03 4A F4 */	addi r0, r3, __vt__13daObj_Nougu_c@l
/* 80CA3E68  90 18 0E 2C */	stw r0, 0xe2c(r24)
/* 80CA3E6C  3B 38 05 78 */	addi r25, r24, 0x578
/* 80CA3E70  7F 23 CB 78 */	mr r3, r25
/* 80CA3E74  4B 3D 22 2C */	b __ct__9dBgS_AcchFv
/* 80CA3E78  3C 60 80 CA */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80CA3E7C  38 63 4A AC */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80CA3E80  90 79 00 10 */	stw r3, 0x10(r25)
/* 80CA3E84  38 03 00 0C */	addi r0, r3, 0xc
/* 80CA3E88  90 19 00 14 */	stw r0, 0x14(r25)
/* 80CA3E8C  38 03 00 18 */	addi r0, r3, 0x18
/* 80CA3E90  90 19 00 24 */	stw r0, 0x24(r25)
/* 80CA3E94  38 79 00 14 */	addi r3, r25, 0x14
/* 80CA3E98  4B 3D 4F D0 */	b SetObj__16dBgS_PolyPassChkFv
/* 80CA3E9C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80CA3EA0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80CA3EA4  90 18 07 68 */	stw r0, 0x768(r24)
/* 80CA3EA8  38 78 07 6C */	addi r3, r24, 0x76c
/* 80CA3EAC  4B 3D F8 B4 */	b __ct__10dCcD_GSttsFv
/* 80CA3EB0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80CA3EB4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80CA3EB8  90 78 07 68 */	stw r3, 0x768(r24)
/* 80CA3EBC  38 03 00 20 */	addi r0, r3, 0x20
/* 80CA3EC0  90 18 07 6C */	stw r0, 0x76c(r24)
/* 80CA3EC4  38 78 07 8C */	addi r3, r24, 0x78c
/* 80CA3EC8  4B 3D 1F E4 */	b __ct__12dBgS_AcchCirFv
/* 80CA3ECC  38 78 07 CC */	addi r3, r24, 0x7cc
/* 80CA3ED0  4B 5C 3D 4C */	b __ct__11cBgS_GndChkFv
/* 80CA3ED4  38 78 08 08 */	addi r3, r24, 0x808
/* 80CA3ED8  3C 80 80 CA */	lis r4, __ct__8dCcD_SphFv@ha
/* 80CA3EDC  38 84 40 D8 */	addi r4, r4, __ct__8dCcD_SphFv@l
/* 80CA3EE0  3C A0 80 CA */	lis r5, __dt__8dCcD_SphFv@ha
/* 80CA3EE4  38 A5 3D 58 */	addi r5, r5, __dt__8dCcD_SphFv@l
/* 80CA3EE8  38 C0 01 38 */	li r6, 0x138
/* 80CA3EEC  38 E0 00 05 */	li r7, 5
/* 80CA3EF0  4B 6B DE 70 */	b __construct_array
lbl_80CA3EF4:
/* 80CA3EF4  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80CA3EF8  60 00 00 08 */	ori r0, r0, 8
/* 80CA3EFC  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80CA3F00:
/* 80CA3F00  38 00 00 00 */	li r0, 0
/* 80CA3F04  98 1D 0E 28 */	stb r0, 0xe28(r29)
/* 80CA3F08  7F A3 EB 78 */	mr r3, r29
/* 80CA3F0C  48 00 07 CD */	bl getResName__13daObj_Nougu_cFv
/* 80CA3F10  7C 64 1B 78 */	mr r4, r3
/* 80CA3F14  38 7D 05 6C */	addi r3, r29, 0x56c
/* 80CA3F18  4B 38 8F A4 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CA3F1C  7C 7E 1B 78 */	mr r30, r3
/* 80CA3F20  2C 1E 00 04 */	cmpwi r30, 4
/* 80CA3F24  40 82 01 98 */	bne lbl_80CA40BC
/* 80CA3F28  7F A3 EB 78 */	mr r3, r29
/* 80CA3F2C  48 00 07 BD */	bl isDelete__13daObj_Nougu_cFv
/* 80CA3F30  2C 03 00 00 */	cmpwi r3, 0
/* 80CA3F34  41 82 00 0C */	beq lbl_80CA3F40
/* 80CA3F38  38 60 00 05 */	li r3, 5
/* 80CA3F3C  48 00 01 84 */	b lbl_80CA40C0
lbl_80CA3F40:
/* 80CA3F40  7F A3 EB 78 */	mr r3, r29
/* 80CA3F44  3C 80 80 CA */	lis r4, createHeapCallBack__13daObj_Nougu_cFP10fopAc_ac_c@ha
/* 80CA3F48  38 84 46 B8 */	addi r4, r4, createHeapCallBack__13daObj_Nougu_cFP10fopAc_ac_c@l
/* 80CA3F4C  38 A0 08 00 */	li r5, 0x800
/* 80CA3F50  4B 37 65 60 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80CA3F54  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CA3F58  40 82 00 0C */	bne lbl_80CA3F64
/* 80CA3F5C  38 60 00 05 */	li r3, 5
/* 80CA3F60  48 00 01 60 */	b lbl_80CA40C0
lbl_80CA3F64:
/* 80CA3F64  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 80CA3F68  38 03 00 24 */	addi r0, r3, 0x24
/* 80CA3F6C  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80CA3F70  7F A3 EB 78 */	mr r3, r29
/* 80CA3F74  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80CA3F78  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 80CA3F7C  C0 7F 00 18 */	lfs f3, 0x18(r31)
/* 80CA3F80  C0 9F 00 1C */	lfs f4, 0x1c(r31)
/* 80CA3F84  C0 BF 00 20 */	lfs f5, 0x20(r31)
/* 80CA3F88  C0 DF 00 24 */	lfs f6, 0x24(r31)
/* 80CA3F8C  4B 37 65 BC */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80CA3F90  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80CA3F94  90 01 00 08 */	stw r0, 8(r1)
/* 80CA3F98  38 7D 05 78 */	addi r3, r29, 0x578
/* 80CA3F9C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80CA3FA0  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80CA3FA4  7F A6 EB 78 */	mr r6, r29
/* 80CA3FA8  38 E0 00 01 */	li r7, 1
/* 80CA3FAC  39 1D 07 8C */	addi r8, r29, 0x78c
/* 80CA3FB0  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80CA3FB4  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80CA3FB8  4B 3D 22 90 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80CA3FBC  38 7D 07 50 */	addi r3, r29, 0x750
/* 80CA3FC0  38 80 00 FF */	li r4, 0xff
/* 80CA3FC4  38 A0 00 00 */	li r5, 0
/* 80CA3FC8  7F A6 EB 78 */	mr r6, r29
/* 80CA3FCC  4B 3D F8 94 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80CA3FD0  3B 00 00 00 */	li r24, 0
/* 80CA3FD4  3B 80 00 00 */	li r28, 0
/* 80CA3FD8  3C 60 80 CA */	lis r3, mCcDSph__13daObj_Nougu_c@ha
/* 80CA3FDC  3B 43 4A 00 */	addi r26, r3, mCcDSph__13daObj_Nougu_c@l
/* 80CA3FE0  3B 7D 07 50 */	addi r27, r29, 0x750
lbl_80CA3FE4:
/* 80CA3FE4  7F 3D E2 14 */	add r25, r29, r28
/* 80CA3FE8  38 79 08 08 */	addi r3, r25, 0x808
/* 80CA3FEC  7F 44 D3 78 */	mr r4, r26
/* 80CA3FF0  4B 3E 0A 44 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80CA3FF4  93 79 08 4C */	stw r27, 0x84c(r25)
/* 80CA3FF8  3B 18 00 01 */	addi r24, r24, 1
/* 80CA3FFC  2C 18 00 05 */	cmpwi r24, 5
/* 80CA4000  3B 9C 01 38 */	addi r28, r28, 0x138
/* 80CA4004  41 80 FF E0 */	blt lbl_80CA3FE4
/* 80CA4008  38 7D 05 78 */	addi r3, r29, 0x578
/* 80CA400C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80CA4010  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80CA4014  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80CA4018  4B 3D 2A 94 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80CA401C  80 1D 06 54 */	lwz r0, 0x654(r29)
/* 80CA4020  90 1D 07 CC */	stw r0, 0x7cc(r29)
/* 80CA4024  80 1D 06 58 */	lwz r0, 0x658(r29)
/* 80CA4028  90 1D 07 D0 */	stw r0, 0x7d0(r29)
/* 80CA402C  80 1D 06 5C */	lwz r0, 0x65c(r29)
/* 80CA4030  90 1D 07 D4 */	stw r0, 0x7d4(r29)
/* 80CA4034  88 1D 06 60 */	lbz r0, 0x660(r29)
/* 80CA4038  98 1D 07 D8 */	stb r0, 0x7d8(r29)
/* 80CA403C  A0 1D 06 68 */	lhz r0, 0x668(r29)
/* 80CA4040  B0 1D 07 E0 */	sth r0, 0x7e0(r29)
/* 80CA4044  A0 1D 06 6A */	lhz r0, 0x66a(r29)
/* 80CA4048  B0 1D 07 E2 */	sth r0, 0x7e2(r29)
/* 80CA404C  80 1D 06 6C */	lwz r0, 0x66c(r29)
/* 80CA4050  90 1D 07 E4 */	stw r0, 0x7e4(r29)
/* 80CA4054  80 1D 06 70 */	lwz r0, 0x670(r29)
/* 80CA4058  90 1D 07 E8 */	stw r0, 0x7e8(r29)
/* 80CA405C  C0 1D 06 78 */	lfs f0, 0x678(r29)
/* 80CA4060  D0 1D 07 F0 */	stfs f0, 0x7f0(r29)
/* 80CA4064  C0 1D 06 7C */	lfs f0, 0x67c(r29)
/* 80CA4068  D0 1D 07 F4 */	stfs f0, 0x7f4(r29)
/* 80CA406C  C0 1D 06 80 */	lfs f0, 0x680(r29)
/* 80CA4070  D0 1D 07 F8 */	stfs f0, 0x7f8(r29)
/* 80CA4074  80 1D 06 84 */	lwz r0, 0x684(r29)
/* 80CA4078  90 1D 07 FC */	stw r0, 0x7fc(r29)
/* 80CA407C  C0 1D 06 88 */	lfs f0, 0x688(r29)
/* 80CA4080  D0 1D 08 00 */	stfs f0, 0x800(r29)
/* 80CA4084  80 1D 06 8C */	lwz r0, 0x68c(r29)
/* 80CA4088  90 1D 08 04 */	stw r0, 0x804(r29)
/* 80CA408C  C0 1D 06 10 */	lfs f0, 0x610(r29)
/* 80CA4090  D0 1D 0E 20 */	stfs f0, 0xe20(r29)
/* 80CA4094  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80CA4098  C0 1D 0E 20 */	lfs f0, 0xe20(r29)
/* 80CA409C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80CA40A0  41 82 00 14 */	beq lbl_80CA40B4
/* 80CA40A4  7F A3 EB 78 */	mr r3, r29
/* 80CA40A8  48 00 06 61 */	bl setEnvTevColor__13daObj_Nougu_cFv
/* 80CA40AC  7F A3 EB 78 */	mr r3, r29
/* 80CA40B0  48 00 06 B5 */	bl setRoomNo__13daObj_Nougu_cFv
lbl_80CA40B4:
/* 80CA40B4  7F A3 EB 78 */	mr r3, r29
/* 80CA40B8  48 00 03 1D */	bl Execute__13daObj_Nougu_cFv
lbl_80CA40BC:
/* 80CA40BC  7F C3 F3 78 */	mr r3, r30
lbl_80CA40C0:
/* 80CA40C0  39 61 00 30 */	addi r11, r1, 0x30
/* 80CA40C4  4B 6B E1 50 */	b _restgpr_24
/* 80CA40C8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CA40CC  7C 08 03 A6 */	mtlr r0
/* 80CA40D0  38 21 00 30 */	addi r1, r1, 0x30
/* 80CA40D4  4E 80 00 20 */	blr 

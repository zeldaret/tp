lbl_80CB0F08:
/* 80CB0F08  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CB0F0C  7C 08 02 A6 */	mflr r0
/* 80CB0F10  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CB0F14  39 61 00 30 */	addi r11, r1, 0x30
/* 80CB0F18  4B 6B 12 C0 */	b _savegpr_28
/* 80CB0F1C  7C 7E 1B 78 */	mr r30, r3
/* 80CB0F20  3C 80 80 CB */	lis r4, m__19daObj_Pleaf_Param_c@ha
/* 80CB0F24  3B E4 18 64 */	addi r31, r4, m__19daObj_Pleaf_Param_c@l
/* 80CB0F28  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CB0F2C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CB0F30  40 82 00 F4 */	bne lbl_80CB1024
/* 80CB0F34  7F C0 F3 79 */	or. r0, r30, r30
/* 80CB0F38  41 82 00 E0 */	beq lbl_80CB1018
/* 80CB0F3C  7C 1D 03 78 */	mr r29, r0
/* 80CB0F40  4B 36 7C 24 */	b __ct__10fopAc_ac_cFv
/* 80CB0F44  3C 60 80 CB */	lis r3, __vt__13daObj_Pleaf_c@ha
/* 80CB0F48  38 03 19 50 */	addi r0, r3, __vt__13daObj_Pleaf_c@l
/* 80CB0F4C  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 80CB0F50  3B 9D 05 78 */	addi r28, r29, 0x578
/* 80CB0F54  7F 83 E3 78 */	mr r3, r28
/* 80CB0F58  4B 3C 51 48 */	b __ct__9dBgS_AcchFv
/* 80CB0F5C  3C 60 80 CB */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80CB0F60  38 63 18 F0 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80CB0F64  90 7C 00 10 */	stw r3, 0x10(r28)
/* 80CB0F68  38 03 00 0C */	addi r0, r3, 0xc
/* 80CB0F6C  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80CB0F70  38 03 00 18 */	addi r0, r3, 0x18
/* 80CB0F74  90 1C 00 24 */	stw r0, 0x24(r28)
/* 80CB0F78  38 7C 00 14 */	addi r3, r28, 0x14
/* 80CB0F7C  4B 3C 7E EC */	b SetObj__16dBgS_PolyPassChkFv
/* 80CB0F80  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80CB0F84  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80CB0F88  90 1D 07 68 */	stw r0, 0x768(r29)
/* 80CB0F8C  38 7D 07 6C */	addi r3, r29, 0x76c
/* 80CB0F90  4B 3D 27 D0 */	b __ct__10dCcD_GSttsFv
/* 80CB0F94  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80CB0F98  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80CB0F9C  90 7D 07 68 */	stw r3, 0x768(r29)
/* 80CB0FA0  38 03 00 20 */	addi r0, r3, 0x20
/* 80CB0FA4  90 1D 07 6C */	stw r0, 0x76c(r29)
/* 80CB0FA8  38 7D 07 8C */	addi r3, r29, 0x78c
/* 80CB0FAC  4B 3C 4F 00 */	b __ct__12dBgS_AcchCirFv
/* 80CB0FB0  38 7D 07 CC */	addi r3, r29, 0x7cc
/* 80CB0FB4  4B 5B 6C 68 */	b __ct__11cBgS_GndChkFv
/* 80CB0FB8  3B 9D 08 08 */	addi r28, r29, 0x808
/* 80CB0FBC  7F 83 E3 78 */	mr r3, r28
/* 80CB0FC0  4B 3D 2A 68 */	b __ct__12dCcD_GObjInfFv
/* 80CB0FC4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80CB0FC8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80CB0FCC  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80CB0FD0  3C 60 80 CB */	lis r3, __vt__8cM3dGAab@ha
/* 80CB0FD4  38 03 19 38 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80CB0FD8  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 80CB0FDC  3C 60 80 CB */	lis r3, __vt__8cM3dGSph@ha
/* 80CB0FE0  38 03 19 44 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80CB0FE4  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80CB0FE8  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80CB0FEC  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80CB0FF0  90 7C 01 20 */	stw r3, 0x120(r28)
/* 80CB0FF4  38 03 00 58 */	addi r0, r3, 0x58
/* 80CB0FF8  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80CB0FFC  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80CB1000  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80CB1004  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 80CB1008  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CB100C  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80CB1010  38 03 00 84 */	addi r0, r3, 0x84
/* 80CB1014  90 1C 01 34 */	stw r0, 0x134(r28)
lbl_80CB1018:
/* 80CB1018  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80CB101C  60 00 00 08 */	ori r0, r0, 8
/* 80CB1020  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80CB1024:
/* 80CB1024  38 00 00 00 */	li r0, 0
/* 80CB1028  98 1E 09 48 */	stb r0, 0x948(r30)
/* 80CB102C  7F C3 F3 78 */	mr r3, r30
/* 80CB1030  48 00 05 89 */	bl getResName__13daObj_Pleaf_cFv
/* 80CB1034  7C 64 1B 78 */	mr r4, r3
/* 80CB1038  38 7E 05 6C */	addi r3, r30, 0x56c
/* 80CB103C  4B 37 BE 80 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CB1040  7C 7D 1B 78 */	mr r29, r3
/* 80CB1044  2C 1D 00 04 */	cmpwi r29, 4
/* 80CB1048  40 82 01 1C */	bne lbl_80CB1164
/* 80CB104C  7F C3 F3 78 */	mr r3, r30
/* 80CB1050  48 00 05 79 */	bl isDelete__13daObj_Pleaf_cFv
/* 80CB1054  2C 03 00 00 */	cmpwi r3, 0
/* 80CB1058  41 82 00 0C */	beq lbl_80CB1064
/* 80CB105C  38 60 00 05 */	li r3, 5
/* 80CB1060  48 00 01 08 */	b lbl_80CB1168
lbl_80CB1064:
/* 80CB1064  7F C3 F3 78 */	mr r3, r30
/* 80CB1068  3C 80 80 CB */	lis r4, createHeapCallBack__13daObj_Pleaf_cFP10fopAc_ac_c@ha
/* 80CB106C  38 84 15 98 */	addi r4, r4, createHeapCallBack__13daObj_Pleaf_cFP10fopAc_ac_c@l
/* 80CB1070  38 A0 08 10 */	li r5, 0x810
/* 80CB1074  4B 36 94 3C */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80CB1078  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CB107C  40 82 00 0C */	bne lbl_80CB1088
/* 80CB1080  38 60 00 05 */	li r3, 5
/* 80CB1084  48 00 00 E4 */	b lbl_80CB1168
lbl_80CB1088:
/* 80CB1088  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80CB108C  38 03 00 24 */	addi r0, r3, 0x24
/* 80CB1090  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80CB1094  7F C3 F3 78 */	mr r3, r30
/* 80CB1098  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80CB109C  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 80CB10A0  FC 60 08 90 */	fmr f3, f1
/* 80CB10A4  C0 9F 00 18 */	lfs f4, 0x18(r31)
/* 80CB10A8  C0 BF 00 1C */	lfs f5, 0x1c(r31)
/* 80CB10AC  FC C0 20 90 */	fmr f6, f4
/* 80CB10B0  4B 36 94 98 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80CB10B4  38 1E 04 E4 */	addi r0, r30, 0x4e4
/* 80CB10B8  90 01 00 08 */	stw r0, 8(r1)
/* 80CB10BC  38 7E 05 78 */	addi r3, r30, 0x578
/* 80CB10C0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80CB10C4  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80CB10C8  7F C6 F3 78 */	mr r6, r30
/* 80CB10CC  38 E0 00 01 */	li r7, 1
/* 80CB10D0  39 1E 07 8C */	addi r8, r30, 0x78c
/* 80CB10D4  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 80CB10D8  39 5E 04 DC */	addi r10, r30, 0x4dc
/* 80CB10DC  4B 3C 51 6C */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80CB10E0  38 7E 07 50 */	addi r3, r30, 0x750
/* 80CB10E4  38 80 00 FF */	li r4, 0xff
/* 80CB10E8  38 A0 00 00 */	li r5, 0
/* 80CB10EC  7F C6 F3 78 */	mr r6, r30
/* 80CB10F0  4B 3D 27 70 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80CB10F4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80CB10F8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CB10FC  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80CB1100  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80CB1104  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80CB1108  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CB110C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80CB1110  EC 01 00 2A */	fadds f0, f1, f0
/* 80CB1114  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CB1118  38 7E 07 CC */	addi r3, r30, 0x7cc
/* 80CB111C  38 81 00 10 */	addi r4, r1, 0x10
/* 80CB1120  4B 5B 6C 08 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 80CB1124  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CB1128  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CB112C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CB1130  38 9E 07 CC */	addi r4, r30, 0x7cc
/* 80CB1134  4B 3C 33 6C */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80CB1138  D0 3E 09 40 */	stfs f1, 0x940(r30)
/* 80CB113C  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80CB1140  C0 1E 09 40 */	lfs f0, 0x940(r30)
/* 80CB1144  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80CB1148  41 82 00 14 */	beq lbl_80CB115C
/* 80CB114C  7F C3 F3 78 */	mr r3, r30
/* 80CB1150  48 00 04 99 */	bl setEnvTevColor__13daObj_Pleaf_cFv
/* 80CB1154  7F C3 F3 78 */	mr r3, r30
/* 80CB1158  48 00 04 ED */	bl setRoomNo__13daObj_Pleaf_cFv
lbl_80CB115C:
/* 80CB115C  7F C3 F3 78 */	mr r3, r30
/* 80CB1160  48 00 02 99 */	bl Execute__13daObj_Pleaf_cFv
lbl_80CB1164:
/* 80CB1164  7F A3 EB 78 */	mr r3, r29
lbl_80CB1168:
/* 80CB1168  39 61 00 30 */	addi r11, r1, 0x30
/* 80CB116C  4B 6B 10 B8 */	b _restgpr_28
/* 80CB1170  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CB1174  7C 08 03 A6 */	mtlr r0
/* 80CB1178  38 21 00 30 */	addi r1, r1, 0x30
/* 80CB117C  4E 80 00 20 */	blr 

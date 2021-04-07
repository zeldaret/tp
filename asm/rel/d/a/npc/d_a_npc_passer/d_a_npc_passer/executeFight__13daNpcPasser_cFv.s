lbl_80AA3F10:
/* 80AA3F10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AA3F14  7C 08 02 A6 */	mflr r0
/* 80AA3F18  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AA3F1C  39 61 00 20 */	addi r11, r1, 0x20
/* 80AA3F20  4B 8B E2 BD */	bl _savegpr_29
/* 80AA3F24  7C 7D 1B 78 */	mr r29, r3
/* 80AA3F28  3C 60 80 AA */	lis r3, lit_4109@ha /* 0x80AA698C@ha */
/* 80AA3F2C  3B E3 69 8C */	addi r31, r3, lit_4109@l /* 0x80AA698C@l */
/* 80AA3F30  80 7D 05 8C */	lwz r3, 0x58c(r29)
/* 80AA3F34  38 80 00 01 */	li r4, 1
/* 80AA3F38  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80AA3F3C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80AA3F40  40 82 00 18 */	bne lbl_80AA3F58
/* 80AA3F44  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80AA3F48  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80AA3F4C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80AA3F50  41 82 00 08 */	beq lbl_80AA3F58
/* 80AA3F54  38 80 00 00 */	li r4, 0
lbl_80AA3F58:
/* 80AA3F58  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80AA3F5C  41 82 00 34 */	beq lbl_80AA3F90
/* 80AA3F60  7F A3 EB 78 */	mr r3, r29
/* 80AA3F64  38 80 00 2A */	li r4, 0x2a
/* 80AA3F68  80 BD 0B 00 */	lwz r5, 0xb00(r29)
/* 80AA3F6C  4B 6B 41 85 */	bl getAnmP__10daNpcCd2_cFii
/* 80AA3F70  7C 64 1B 78 */	mr r4, r3
/* 80AA3F74  7F A3 EB 78 */	mr r3, r29
/* 80AA3F78  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80AA3F7C  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 80AA3F80  38 A0 00 02 */	li r5, 2
/* 80AA3F84  38 C0 00 00 */	li r6, 0
/* 80AA3F88  38 E0 FF FF */	li r7, -1
/* 80AA3F8C  4B 6B 4F 75 */	bl setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
lbl_80AA3F90:
/* 80AA3F90  7F A3 EB 78 */	mr r3, r29
/* 80AA3F94  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AA3F98  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AA3F9C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80AA3FA0  4B 57 67 71 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80AA3FA4  B0 7D 0B 20 */	sth r3, 0xb20(r29)
/* 80AA3FA8  80 7D 05 8C */	lwz r3, 0x58c(r29)
/* 80AA3FAC  83 C3 00 08 */	lwz r30, 8(r3)
/* 80AA3FB0  7F A3 EB 78 */	mr r3, r29
/* 80AA3FB4  38 80 00 29 */	li r4, 0x29
/* 80AA3FB8  80 BD 0B 00 */	lwz r5, 0xb00(r29)
/* 80AA3FBC  4B 6B 41 35 */	bl getAnmP__10daNpcCd2_cFii
/* 80AA3FC0  7C 1E 18 40 */	cmplw r30, r3
/* 80AA3FC4  41 82 00 A0 */	beq lbl_80AA4064
/* 80AA3FC8  80 7D 05 8C */	lwz r3, 0x58c(r29)
/* 80AA3FCC  38 63 00 0C */	addi r3, r3, 0xc
/* 80AA3FD0  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80AA3FD4  4B 88 44 59 */	bl checkPass__12J3DFrameCtrlFf
/* 80AA3FD8  2C 03 00 00 */	cmpwi r3, 0
/* 80AA3FDC  41 82 00 10 */	beq lbl_80AA3FEC
/* 80AA3FE0  38 7D 05 94 */	addi r3, r29, 0x594
/* 80AA3FE4  38 80 00 02 */	li r4, 2
/* 80AA3FE8  4B 81 CE 31 */	bl playVoice__17Z2CreatureCitizenFi
lbl_80AA3FEC:
/* 80AA3FEC  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 80AA3FF0  A8 9D 0B 20 */	lha r4, 0xb20(r29)
/* 80AA3FF4  4B 7C CE 31 */	bl cLib_distanceAngleS__Fss
/* 80AA3FF8  2C 03 06 00 */	cmpwi r3, 0x600
/* 80AA3FFC  40 81 00 38 */	ble lbl_80AA4034
/* 80AA4000  7F A3 EB 78 */	mr r3, r29
/* 80AA4004  38 80 00 2C */	li r4, 0x2c
/* 80AA4008  80 BD 0B 00 */	lwz r5, 0xb00(r29)
/* 80AA400C  4B 6B 40 E5 */	bl getAnmP__10daNpcCd2_cFii
/* 80AA4010  7C 64 1B 78 */	mr r4, r3
/* 80AA4014  7F A3 EB 78 */	mr r3, r29
/* 80AA4018  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80AA401C  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 80AA4020  38 A0 00 02 */	li r5, 2
/* 80AA4024  38 C0 00 00 */	li r6, 0
/* 80AA4028  38 E0 FF FF */	li r7, -1
/* 80AA402C  4B 6B 4E D5 */	bl setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 80AA4030  48 00 00 34 */	b lbl_80AA4064
lbl_80AA4034:
/* 80AA4034  7F A3 EB 78 */	mr r3, r29
/* 80AA4038  38 80 00 2A */	li r4, 0x2a
/* 80AA403C  80 BD 0B 00 */	lwz r5, 0xb00(r29)
/* 80AA4040  4B 6B 40 B1 */	bl getAnmP__10daNpcCd2_cFii
/* 80AA4044  7C 64 1B 78 */	mr r4, r3
/* 80AA4048  7F A3 EB 78 */	mr r3, r29
/* 80AA404C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80AA4050  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 80AA4054  38 A0 00 02 */	li r5, 2
/* 80AA4058  38 C0 00 00 */	li r6, 0
/* 80AA405C  38 E0 FF FF */	li r7, -1
/* 80AA4060  4B 6B 4E A1 */	bl setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
lbl_80AA4064:
/* 80AA4064  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80AA4068  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80AA406C  41 82 00 0C */	beq lbl_80AA4078
/* 80AA4070  7F A3 EB 78 */	mr r3, r29
/* 80AA4074  4B 57 5C 09 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80AA4078:
/* 80AA4078  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 80AA407C  A8 9D 0B 20 */	lha r4, 0xb20(r29)
/* 80AA4080  38 A0 00 03 */	li r5, 3
/* 80AA4084  38 C0 06 00 */	li r6, 0x600
/* 80AA4088  4B 7C C5 81 */	bl cLib_addCalcAngleS2__FPssss
/* 80AA408C  39 61 00 20 */	addi r11, r1, 0x20
/* 80AA4090  4B 8B E1 99 */	bl _restgpr_29
/* 80AA4094  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AA4098  7C 08 03 A6 */	mtlr r0
/* 80AA409C  38 21 00 20 */	addi r1, r1, 0x20
/* 80AA40A0  4E 80 00 20 */	blr 

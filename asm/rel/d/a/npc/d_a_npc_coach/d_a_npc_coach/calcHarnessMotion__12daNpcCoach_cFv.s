lbl_809A0E00:
/* 809A0E00  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 809A0E04  7C 08 02 A6 */	mflr r0
/* 809A0E08  90 01 00 64 */	stw r0, 0x64(r1)
/* 809A0E0C  39 61 00 60 */	addi r11, r1, 0x60
/* 809A0E10  4B 9C 13 C9 */	bl _savegpr_28
/* 809A0E14  7C 7E 1B 78 */	mr r30, r3
/* 809A0E18  3C 60 80 9A */	lis r3, M_attr__12daNpcCoach_c@ha /* 0x809A4ED0@ha */
/* 809A0E1C  3B E3 4E D0 */	addi r31, r3, M_attr__12daNpcCoach_c@l /* 0x809A4ED0@l */
/* 809A0E20  38 61 00 14 */	addi r3, r1, 0x14
/* 809A0E24  38 9E 15 5C */	addi r4, r30, 0x155c
/* 809A0E28  38 BE 15 68 */	addi r5, r30, 0x1568
/* 809A0E2C  4B 8C 5D 09 */	bl __mi__4cXyzCFRC3Vec
/* 809A0E30  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 809A0E34  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 809A0E38  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 809A0E3C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 809A0E40  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 809A0E44  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 809A0E48  C0 1E 15 5C */	lfs f0, 0x155c(r30)
/* 809A0E4C  D0 1E 15 68 */	stfs f0, 0x1568(r30)
/* 809A0E50  C0 1E 15 60 */	lfs f0, 0x1560(r30)
/* 809A0E54  D0 1E 15 6C */	stfs f0, 0x156c(r30)
/* 809A0E58  C0 1E 15 64 */	lfs f0, 0x1564(r30)
/* 809A0E5C  D0 1E 15 70 */	stfs f0, 0x1570(r30)
/* 809A0E60  A8 1E 15 7C */	lha r0, 0x157c(r30)
/* 809A0E64  B0 1E 15 82 */	sth r0, 0x1582(r30)
/* 809A0E68  A8 1E 15 7E */	lha r0, 0x157e(r30)
/* 809A0E6C  B0 1E 15 84 */	sth r0, 0x1584(r30)
/* 809A0E70  A8 1E 15 80 */	lha r0, 0x1580(r30)
/* 809A0E74  B0 1E 15 86 */	sth r0, 0x1586(r30)
/* 809A0E78  C0 3E 15 54 */	lfs f1, 0x1554(r30)
/* 809A0E7C  C0 1E 05 30 */	lfs f0, 0x530(r30)
/* 809A0E80  EC 01 00 2A */	fadds f0, f1, f0
/* 809A0E84  D0 1E 15 54 */	stfs f0, 0x1554(r30)
/* 809A0E88  C0 1E 15 54 */	lfs f0, 0x1554(r30)
/* 809A0E8C  C0 3E 15 78 */	lfs f1, 0x1578(r30)
/* 809A0E90  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 809A0E94  40 80 00 08 */	bge lbl_809A0E9C
/* 809A0E98  D0 3E 15 54 */	stfs f1, 0x1554(r30)
lbl_809A0E9C:
/* 809A0E9C  C0 3E 15 60 */	lfs f1, 0x1560(r30)
/* 809A0EA0  C0 1E 15 54 */	lfs f0, 0x1554(r30)
/* 809A0EA4  EC 01 00 2A */	fadds f0, f1, f0
/* 809A0EA8  D0 1E 15 60 */	stfs f0, 0x1560(r30)
/* 809A0EAC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 809A0EB0  D0 1E 15 50 */	stfs f0, 0x1550(r30)
/* 809A0EB4  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 809A0EB8  D0 1E 15 58 */	stfs f0, 0x1558(r30)
/* 809A0EBC  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 809A0EC0  D0 01 00 08 */	stfs f0, 8(r1)
/* 809A0EC4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809A0EC8  C0 1F 01 D8 */	lfs f0, 0x1d8(r31)
/* 809A0ECC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809A0ED0  38 7E 15 5C */	addi r3, r30, 0x155c
/* 809A0ED4  4B 66 BE 91 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 809A0ED8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809A0EDC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809A0EE0  A8 9E 15 7E */	lha r4, 0x157e(r30)
/* 809A0EE4  4B 66 B5 51 */	bl mDoMtx_YrotM__FPA4_fs
/* 809A0EE8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809A0EEC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809A0EF0  38 81 00 08 */	addi r4, r1, 8
/* 809A0EF4  7C 85 23 78 */	mr r5, r4
/* 809A0EF8  4B 9A 5E 75 */	bl PSMTXMultVec
/* 809A0EFC  38 7E 15 04 */	addi r3, r30, 0x1504
/* 809A0F00  38 81 00 08 */	addi r4, r1, 8
/* 809A0F04  4B 8C E2 D9 */	bl SetC__8cM3dGCylFRC4cXyz
/* 809A0F08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809A0F0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809A0F10  38 63 23 3C */	addi r3, r3, 0x233c
/* 809A0F14  38 9E 13 E0 */	addi r4, r30, 0x13e0
/* 809A0F18  4B 8C 3C 91 */	bl Set__4cCcSFP8cCcD_Obj
/* 809A0F1C  38 7E 12 08 */	addi r3, r30, 0x1208
/* 809A0F20  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809A0F24  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809A0F28  3B 84 0F 38 */	addi r28, r4, 0xf38
/* 809A0F2C  7F 84 E3 78 */	mr r4, r28
/* 809A0F30  4B 6D 5B 7D */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 809A0F34  C0 3E 15 60 */	lfs f1, 0x1560(r30)
/* 809A0F38  C0 1E 12 A0 */	lfs f0, 0x12a0(r30)
/* 809A0F3C  EC 21 00 28 */	fsubs f1, f1, f0
/* 809A0F40  C0 1F 01 AC */	lfs f0, 0x1ac(r31)
/* 809A0F44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809A0F48  40 81 00 10 */	ble lbl_809A0F58
/* 809A0F4C  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 809A0F50  D0 1E 15 78 */	stfs f0, 0x1578(r30)
/* 809A0F54  48 00 00 10 */	b lbl_809A0F64
lbl_809A0F58:
/* 809A0F58  38 7F 00 00 */	addi r3, r31, 0
/* 809A0F5C  C0 03 00 04 */	lfs f0, 4(r3)
/* 809A0F60  D0 1E 15 78 */	stfs f0, 0x1578(r30)
lbl_809A0F64:
/* 809A0F64  7F 83 E3 78 */	mr r3, r28
/* 809A0F68  38 9E 12 F8 */	addi r4, r30, 0x12f8
/* 809A0F6C  4B 6D 41 95 */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 809A0F70  80 9E 15 1C */	lwz r4, 0x151c(r30)
/* 809A0F74  98 64 00 09 */	stb r3, 9(r4)
/* 809A0F78  80 7E 12 34 */	lwz r3, 0x1234(r30)
/* 809A0F7C  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 809A0F80  41 82 00 1C */	beq lbl_809A0F9C
/* 809A0F84  C0 3E 15 54 */	lfs f1, 0x1554(r30)
/* 809A0F88  38 7F 00 00 */	addi r3, r31, 0
/* 809A0F8C  C0 03 00 08 */	lfs f0, 8(r3)
/* 809A0F90  EC 01 00 32 */	fmuls f0, f1, f0
/* 809A0F94  D0 1E 15 54 */	stfs f0, 0x1554(r30)
/* 809A0F98  48 00 00 14 */	b lbl_809A0FAC
lbl_809A0F9C:
/* 809A0F9C  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 809A0FA0  41 82 00 0C */	beq lbl_809A0FAC
/* 809A0FA4  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 809A0FA8  D0 1E 15 54 */	stfs f0, 0x1554(r30)
lbl_809A0FAC:
/* 809A0FAC  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 809A0FB0  38 9E 15 5C */	addi r4, r30, 0x155c
/* 809A0FB4  4B 8C FC C1 */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 809A0FB8  B0 7E 15 7C */	sth r3, 0x157c(r30)
/* 809A0FBC  38 7E 15 5C */	addi r3, r30, 0x155c
/* 809A0FC0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 809A0FC4  4B 8C FC 41 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 809A0FC8  B0 7E 15 7E */	sth r3, 0x157e(r30)
/* 809A0FCC  A8 7E 15 7E */	lha r3, 0x157e(r30)
/* 809A0FD0  38 03 C0 00 */	addi r0, r3, -16384
/* 809A0FD4  7C 1D 07 34 */	extsh r29, r0
/* 809A0FD8  3C 60 80 9A */	lis r3, __vt__8cM3dGPla@ha /* 0x809A5280@ha */
/* 809A0FDC  38 03 52 80 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x809A5280@l */
/* 809A0FE0  90 01 00 48 */	stw r0, 0x48(r1)
/* 809A0FE4  7F 83 E3 78 */	mr r3, r28
/* 809A0FE8  38 9E 12 F8 */	addi r4, r30, 0x12f8
/* 809A0FEC  38 A1 00 38 */	addi r5, r1, 0x38
/* 809A0FF0  4B 6D 37 55 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 809A0FF4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809A0FF8  41 82 00 24 */	beq lbl_809A101C
/* 809A0FFC  38 61 00 38 */	addi r3, r1, 0x38
/* 809A1000  7F A4 EB 78 */	mr r4, r29
/* 809A1004  4B 67 CB D5 */	bl fopAcM_getPolygonAngle__FPC8cM3dGPlas
/* 809A1008  3C 80 80 9A */	lis r4, __vt__8cM3dGPla@ha /* 0x809A5280@ha */
/* 809A100C  38 04 52 80 */	addi r0, r4, __vt__8cM3dGPla@l /* 0x809A5280@l */
/* 809A1010  90 01 00 48 */	stw r0, 0x48(r1)
/* 809A1014  7C 64 1B 78 */	mr r4, r3
/* 809A1018  48 00 00 14 */	b lbl_809A102C
lbl_809A101C:
/* 809A101C  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 809A1020  3C 60 80 9A */	lis r3, __vt__8cM3dGPla@ha /* 0x809A5280@ha */
/* 809A1024  38 03 52 80 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x809A5280@l */
/* 809A1028  90 01 00 48 */	stw r0, 0x48(r1)
lbl_809A102C:
/* 809A102C  38 7E 15 80 */	addi r3, r30, 0x1580
/* 809A1030  38 A0 00 0F */	li r5, 0xf
/* 809A1034  38 C0 02 00 */	li r6, 0x200
/* 809A1038  38 E0 00 40 */	li r7, 0x40
/* 809A103C  4B 8C F5 05 */	bl cLib_addCalcAngleS__FPsssss
/* 809A1040  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 809A1044  4B 66 BD 21 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 809A1048  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809A104C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809A1050  A8 9E 15 7E */	lha r4, 0x157e(r30)
/* 809A1054  4B 66 B3 E1 */	bl mDoMtx_YrotM__FPA4_fs
/* 809A1058  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809A105C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809A1060  A8 9E 15 7C */	lha r4, 0x157c(r30)
/* 809A1064  4B 66 B3 39 */	bl mDoMtx_XrotM__FPA4_fs
/* 809A1068  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809A106C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809A1070  A8 9E 15 80 */	lha r4, 0x1580(r30)
/* 809A1074  4B 66 B4 59 */	bl mDoMtx_ZrotM__FPA4_fs
/* 809A1078  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 809A107C  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 809A1080  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809A1084  40 81 00 9C */	ble lbl_809A1120
/* 809A1088  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 809A108C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 809A1090  3B 9F 00 00 */	addi r28, r31, 0
/* 809A1094  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 809A1098  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 809A109C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809A10A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809A10A4  38 81 00 20 */	addi r4, r1, 0x20
/* 809A10A8  7C 85 23 78 */	mr r5, r4
/* 809A10AC  4B 9A 5C C1 */	bl PSMTXMultVec
/* 809A10B0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 809A10B4  D0 1E 15 5C */	stfs f0, 0x155c(r30)
/* 809A10B8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 809A10BC  D0 1E 15 64 */	stfs f0, 0x1564(r30)
/* 809A10C0  7F 9D E3 78 */	mr r29, r28
/* 809A10C4  C0 1C 00 14 */	lfs f0, 0x14(r28)
/* 809A10C8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 809A10CC  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 809A10D0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 809A10D4  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 809A10D8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 809A10DC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809A10E0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809A10E4  38 81 00 20 */	addi r4, r1, 0x20
/* 809A10E8  38 BE 15 88 */	addi r5, r30, 0x1588
/* 809A10EC  4B 9A 5C 81 */	bl PSMTXMultVec
/* 809A10F0  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 809A10F4  FC 00 00 50 */	fneg f0, f0
/* 809A10F8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 809A10FC  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 809A1100  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 809A1104  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 809A1108  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 809A110C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809A1110  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809A1114  38 81 00 20 */	addi r4, r1, 0x20
/* 809A1118  38 BE 15 AC */	addi r5, r30, 0x15ac
/* 809A111C  4B 9A 5C 51 */	bl PSMTXMultVec
lbl_809A1120:
/* 809A1120  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809A1124  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809A1128  80 9E 0E 7C */	lwz r4, 0xe7c(r30)
/* 809A112C  38 84 00 24 */	addi r4, r4, 0x24
/* 809A1130  4B 9A 53 81 */	bl PSMTXCopy
/* 809A1134  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809A1138  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809A113C  38 9E 15 20 */	addi r4, r30, 0x1520
/* 809A1140  4B 9A 53 71 */	bl PSMTXCopy
/* 809A1144  80 7E 15 1C */	lwz r3, 0x151c(r30)
/* 809A1148  4B 6D A8 79 */	bl Move__4dBgWFv
/* 809A114C  80 7E 0E 7C */	lwz r3, 0xe7c(r30)
/* 809A1150  81 83 00 00 */	lwz r12, 0(r3)
/* 809A1154  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 809A1158  7D 89 03 A6 */	mtctr r12
/* 809A115C  4E 80 04 21 */	bctrl 
/* 809A1160  7F C3 F3 78 */	mr r3, r30
/* 809A1164  48 00 00 1D */	bl calcFrontWheelRotate__12daNpcCoach_cFv
/* 809A1168  39 61 00 60 */	addi r11, r1, 0x60
/* 809A116C  4B 9C 10 B9 */	bl _restgpr_28
/* 809A1170  80 01 00 64 */	lwz r0, 0x64(r1)
/* 809A1174  7C 08 03 A6 */	mtlr r0
/* 809A1178  38 21 00 60 */	addi r1, r1, 0x60
/* 809A117C  4E 80 00 20 */	blr 

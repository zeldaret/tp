lbl_80D40E0C:
/* 80D40E0C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80D40E10  7C 08 02 A6 */	mflr r0
/* 80D40E14  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D40E18  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80D40E1C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80D40E20  7C 7E 1B 78 */	mr r30, r3
/* 80D40E24  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 80D40E28  7C 03 07 74 */	extsb r3, r0
/* 80D40E2C  4B 2E C2 40 */	b dComIfGp_getReverb__Fi
/* 80D40E30  7C 67 1B 78 */	mr r7, r3
/* 80D40E34  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008024F@ha */
/* 80D40E38  38 03 02 4F */	addi r0, r3, 0x024F /* 0x0008024F@l */
/* 80D40E3C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80D40E40  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D40E44  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D40E48  80 63 00 00 */	lwz r3, 0(r3)
/* 80D40E4C  38 81 00 20 */	addi r4, r1, 0x20
/* 80D40E50  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80D40E54  38 C0 00 00 */	li r6, 0
/* 80D40E58  3D 00 80 D4 */	lis r8, lit_3699@ha
/* 80D40E5C  C0 28 15 D0 */	lfs f1, lit_3699@l(r8)
/* 80D40E60  FC 40 08 90 */	fmr f2, f1
/* 80D40E64  3D 00 80 D4 */	lis r8, lit_4013@ha
/* 80D40E68  C0 68 15 F0 */	lfs f3, lit_4013@l(r8)
/* 80D40E6C  FC 80 18 90 */	fmr f4, f3
/* 80D40E70  39 00 00 00 */	li r8, 0
/* 80D40E74  4B 56 AB 10 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D40E78  80 9E 07 2C */	lwz r4, 0x72c(r30)
/* 80D40E7C  28 04 00 00 */	cmplwi r4, 0
/* 80D40E80  41 82 00 1C */	beq lbl_80D40E9C
/* 80D40E84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D40E88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D40E8C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D40E90  4B 33 33 C0 */	b Release__4cBgSFP9dBgW_Base
/* 80D40E94  80 7E 07 2C */	lwz r3, 0x72c(r30)
/* 80D40E98  4B 33 AB 28 */	b Move__4dBgWFv
lbl_80D40E9C:
/* 80D40E9C  38 80 00 00 */	li r4, 0
/* 80D40EA0  98 9E 07 2A */	stb r4, 0x72a(r30)
/* 80D40EA4  80 1E 05 F4 */	lwz r0, 0x5f4(r30)
/* 80D40EA8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80D40EAC  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 80D40EB0  C0 1E 07 60 */	lfs f0, 0x760(r30)
/* 80D40EB4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80D40EB8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80D40EBC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80D40EC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D40EC4  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80D40EC8  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80D40ECC  90 81 00 08 */	stw r4, 8(r1)
/* 80D40ED0  38 00 FF FF */	li r0, -1
/* 80D40ED4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D40ED8  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D40EDC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D40EE0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D40EE4  38 80 00 00 */	li r4, 0
/* 80D40EE8  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008A93@ha */
/* 80D40EEC  38 A5 8A 93 */	addi r5, r5, 0x8A93 /* 0x00008A93@l */
/* 80D40EF0  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80D40EF4  38 E0 00 00 */	li r7, 0
/* 80D40EF8  39 00 00 00 */	li r8, 0
/* 80D40EFC  39 21 00 24 */	addi r9, r1, 0x24
/* 80D40F00  39 40 00 FF */	li r10, 0xff
/* 80D40F04  3D 60 80 D4 */	lis r11, lit_3699@ha
/* 80D40F08  C0 2B 15 D0 */	lfs f1, lit_3699@l(r11)
/* 80D40F0C  4B 30 BB 84 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D40F10  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80D40F14  38 80 00 00 */	li r4, 0
/* 80D40F18  90 81 00 08 */	stw r4, 8(r1)
/* 80D40F1C  38 00 FF FF */	li r0, -1
/* 80D40F20  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D40F24  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D40F28  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D40F2C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D40F30  38 80 00 00 */	li r4, 0
/* 80D40F34  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008A94@ha */
/* 80D40F38  38 A5 8A 94 */	addi r5, r5, 0x8A94 /* 0x00008A94@l */
/* 80D40F3C  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80D40F40  38 E0 00 00 */	li r7, 0
/* 80D40F44  39 00 00 00 */	li r8, 0
/* 80D40F48  39 21 00 24 */	addi r9, r1, 0x24
/* 80D40F4C  39 40 00 FF */	li r10, 0xff
/* 80D40F50  3D 60 80 D4 */	lis r11, lit_3699@ha
/* 80D40F54  C0 2B 15 D0 */	lfs f1, lit_3699@l(r11)
/* 80D40F58  4B 30 BB 38 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D40F5C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80D40F60  38 80 00 00 */	li r4, 0
/* 80D40F64  90 81 00 08 */	stw r4, 8(r1)
/* 80D40F68  38 00 FF FF */	li r0, -1
/* 80D40F6C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D40F70  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D40F74  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D40F78  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D40F7C  38 80 00 00 */	li r4, 0
/* 80D40F80  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008A95@ha */
/* 80D40F84  38 A5 8A 95 */	addi r5, r5, 0x8A95 /* 0x00008A95@l */
/* 80D40F88  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80D40F8C  38 E0 00 00 */	li r7, 0
/* 80D40F90  39 00 00 00 */	li r8, 0
/* 80D40F94  39 21 00 24 */	addi r9, r1, 0x24
/* 80D40F98  39 40 00 FF */	li r10, 0xff
/* 80D40F9C  3D 60 80 D4 */	lis r11, lit_3699@ha
/* 80D40FA0  C0 2B 15 D0 */	lfs f1, lit_3699@l(r11)
/* 80D40FA4  4B 30 BA EC */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D40FA8  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80D40FAC  38 80 00 00 */	li r4, 0
/* 80D40FB0  90 81 00 08 */	stw r4, 8(r1)
/* 80D40FB4  38 00 FF FF */	li r0, -1
/* 80D40FB8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D40FBC  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D40FC0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D40FC4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D40FC8  38 80 00 00 */	li r4, 0
/* 80D40FCC  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008A96@ha */
/* 80D40FD0  38 A5 8A 96 */	addi r5, r5, 0x8A96 /* 0x00008A96@l */
/* 80D40FD4  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80D40FD8  38 E0 00 00 */	li r7, 0
/* 80D40FDC  39 00 00 00 */	li r8, 0
/* 80D40FE0  39 21 00 24 */	addi r9, r1, 0x24
/* 80D40FE4  39 40 00 FF */	li r10, 0xff
/* 80D40FE8  3D 60 80 D4 */	lis r11, lit_3699@ha
/* 80D40FEC  C0 2B 15 D0 */	lfs f1, lit_3699@l(r11)
/* 80D40FF0  4B 30 BA A0 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D40FF4  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80D40FF8  38 80 00 00 */	li r4, 0
/* 80D40FFC  90 81 00 08 */	stw r4, 8(r1)
/* 80D41000  38 00 FF FF */	li r0, -1
/* 80D41004  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D41008  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D4100C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D41010  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D41014  38 80 00 00 */	li r4, 0
/* 80D41018  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008A97@ha */
/* 80D4101C  38 A5 8A 97 */	addi r5, r5, 0x8A97 /* 0x00008A97@l */
/* 80D41020  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80D41024  38 E0 00 00 */	li r7, 0
/* 80D41028  39 00 00 00 */	li r8, 0
/* 80D4102C  39 21 00 24 */	addi r9, r1, 0x24
/* 80D41030  39 40 00 FF */	li r10, 0xff
/* 80D41034  3D 60 80 D4 */	lis r11, lit_3699@ha
/* 80D41038  C0 2B 15 D0 */	lfs f1, lit_3699@l(r11)
/* 80D4103C  4B 30 BA 54 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D41040  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80D41044  38 00 00 FF */	li r0, 0xff
/* 80D41048  90 01 00 08 */	stw r0, 8(r1)
/* 80D4104C  38 80 00 00 */	li r4, 0
/* 80D41050  90 81 00 0C */	stw r4, 0xc(r1)
/* 80D41054  38 00 FF FF */	li r0, -1
/* 80D41058  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D4105C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D41060  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D41064  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80D41068  80 9E 07 64 */	lwz r4, 0x764(r30)
/* 80D4106C  38 A0 00 00 */	li r5, 0
/* 80D41070  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008A98@ha */
/* 80D41074  38 C6 8A 98 */	addi r6, r6, 0x8A98 /* 0x00008A98@l */
/* 80D41078  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 80D4107C  39 00 00 00 */	li r8, 0
/* 80D41080  39 20 00 00 */	li r9, 0
/* 80D41084  39 41 00 24 */	addi r10, r1, 0x24
/* 80D41088  3D 60 80 D4 */	lis r11, lit_3699@ha
/* 80D4108C  C0 2B 15 D0 */	lfs f1, lit_3699@l(r11)
/* 80D41090  4B 30 C4 3C */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D41094  90 7E 07 64 */	stw r3, 0x764(r30)
/* 80D41098  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D4109C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D410A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D410A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D410A8  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80D410AC  7C 05 07 74 */	extsb r5, r0
/* 80D410B0  4B 2F 41 50 */	b onSwitch__10dSv_info_cFii
/* 80D410B4  38 00 00 00 */	li r0, 0
/* 80D410B8  98 1E 07 68 */	stb r0, 0x768(r30)
/* 80D410BC  98 1E 07 2B */	stb r0, 0x72b(r30)
/* 80D410C0  38 00 00 01 */	li r0, 1
/* 80D410C4  98 1E 07 28 */	stb r0, 0x728(r30)
/* 80D410C8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80D410CC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80D410D0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D410D4  7C 08 03 A6 */	mtlr r0
/* 80D410D8  38 21 00 40 */	addi r1, r1, 0x40
/* 80D410DC  4E 80 00 20 */	blr 

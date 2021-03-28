lbl_80781DD4:
/* 80781DD4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80781DD8  7C 08 02 A6 */	mflr r0
/* 80781DDC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80781DE0  39 61 00 30 */	addi r11, r1, 0x30
/* 80781DE4  4B BE 03 F8 */	b _savegpr_29
/* 80781DE8  7C 7E 1B 78 */	mr r30, r3
/* 80781DEC  3C 60 80 78 */	lis r3, lit_3658@ha
/* 80781DF0  3B E3 4D 68 */	addi r31, r3, lit_3658@l
/* 80781DF4  3C 60 80 78 */	lis r3, stringBase0@ha
/* 80781DF8  38 63 4E 64 */	addi r3, r3, stringBase0@l
/* 80781DFC  38 80 00 0B */	li r4, 0xb
/* 80781E00  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80781E04  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80781E08  3C A5 00 02 */	addis r5, r5, 2
/* 80781E0C  38 C0 00 80 */	li r6, 0x80
/* 80781E10  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80781E14  4B 8B A4 D8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80781E18  7C 64 1B 78 */	mr r4, r3
/* 80781E1C  80 7E 06 1C */	lwz r3, 0x61c(r30)
/* 80781E20  38 A0 00 00 */	li r5, 0
/* 80781E24  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80781E28  3C C0 80 78 */	lis r6, l_HIO@ha
/* 80781E2C  38 C6 4F 84 */	addi r6, r6, l_HIO@l
/* 80781E30  C0 46 00 2C */	lfs f2, 0x2c(r6)
/* 80781E34  C0 7F 00 70 */	lfs f3, 0x70(r31)
/* 80781E38  C0 9F 00 74 */	lfs f4, 0x74(r31)
/* 80781E3C  4B 88 F0 34 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80781E40  38 00 00 01 */	li r0, 1
/* 80781E44  98 1E 06 02 */	stb r0, 0x602(r30)
/* 80781E48  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80781E4C  3C 80 80 78 */	lis r4, data_80784FCC@ha
/* 80781E50  38 84 4F CC */	addi r4, r4, data_80784FCC@l
/* 80781E54  80 84 00 00 */	lwz r4, 0(r4)
/* 80781E58  4B AE ED AC */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80781E5C  B0 7E 04 DE */	sth r3, 0x4de(r30)
/* 80781E60  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80781E64  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80781E68  38 00 00 05 */	li r0, 5
/* 80781E6C  90 1E 05 B0 */	stw r0, 0x5b0(r30)
/* 80781E70  38 80 00 00 */	li r4, 0
/* 80781E74  90 9E 05 B8 */	stw r4, 0x5b8(r30)
/* 80781E78  80 1E 0A 5C */	lwz r0, 0xa5c(r30)
/* 80781E7C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80781E80  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80781E84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80781E88  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 80781E8C  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80781E90  90 81 00 08 */	stw r4, 8(r1)
/* 80781E94  38 00 FF FF */	li r0, -1
/* 80781E98  90 01 00 0C */	stw r0, 0xc(r1)
/* 80781E9C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80781EA0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80781EA4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80781EA8  38 80 00 00 */	li r4, 0
/* 80781EAC  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000849E@ha */
/* 80781EB0  38 A5 84 9E */	addi r5, r5, 0x849E /* 0x0000849E@l */
/* 80781EB4  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80781EB8  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80781EBC  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 80781EC0  39 20 00 00 */	li r9, 0
/* 80781EC4  39 40 00 FF */	li r10, 0xff
/* 80781EC8  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80781ECC  4B 8C AB C4 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80781ED0  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80781ED4  38 80 00 00 */	li r4, 0
/* 80781ED8  90 81 00 08 */	stw r4, 8(r1)
/* 80781EDC  38 00 FF FF */	li r0, -1
/* 80781EE0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80781EE4  90 81 00 10 */	stw r4, 0x10(r1)
/* 80781EE8  90 81 00 14 */	stw r4, 0x14(r1)
/* 80781EEC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80781EF0  38 80 00 00 */	li r4, 0
/* 80781EF4  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008478@ha */
/* 80781EF8  38 A5 84 78 */	addi r5, r5, 0x8478 /* 0x00008478@l */
/* 80781EFC  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80781F00  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80781F04  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 80781F08  39 20 00 00 */	li r9, 0
/* 80781F0C  39 40 00 FF */	li r10, 0xff
/* 80781F10  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80781F14  4B 8C AB 7C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80781F18  39 61 00 30 */	addi r11, r1, 0x30
/* 80781F1C  4B BE 03 0C */	b _restgpr_29
/* 80781F20  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80781F24  7C 08 03 A6 */	mtlr r0
/* 80781F28  38 21 00 30 */	addi r1, r1, 0x30
/* 80781F2C  4E 80 00 20 */	blr 

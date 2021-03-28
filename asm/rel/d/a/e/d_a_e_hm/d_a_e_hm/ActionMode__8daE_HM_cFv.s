lbl_806E3BE4:
/* 806E3BE4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806E3BE8  7C 08 02 A6 */	mflr r0
/* 806E3BEC  90 01 00 34 */	stw r0, 0x34(r1)
/* 806E3BF0  39 61 00 30 */	addi r11, r1, 0x30
/* 806E3BF4  4B C7 E5 E0 */	b _savegpr_27
/* 806E3BF8  7C 7C 1B 78 */	mr r28, r3
/* 806E3BFC  3C 60 80 6E */	lis r3, lit_3791@ha
/* 806E3C00  3B E3 59 20 */	addi r31, r3, lit_3791@l
/* 806E3C04  AB BC 04 DE */	lha r29, 0x4de(r28)
/* 806E3C08  A8 1C 05 D4 */	lha r0, 0x5d4(r28)
/* 806E3C0C  2C 00 00 05 */	cmpwi r0, 5
/* 806E3C10  41 82 00 30 */	beq lbl_806E3C40
/* 806E3C14  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070249@ha */
/* 806E3C18  38 03 02 49 */	addi r0, r3, 0x0249 /* 0x00070249@l */
/* 806E3C1C  90 01 00 08 */	stw r0, 8(r1)
/* 806E3C20  38 7C 06 30 */	addi r3, r28, 0x630
/* 806E3C24  38 81 00 08 */	addi r4, r1, 8
/* 806E3C28  38 A0 00 00 */	li r5, 0
/* 806E3C2C  38 C0 FF FF */	li r6, -1
/* 806E3C30  81 9C 06 30 */	lwz r12, 0x630(r28)
/* 806E3C34  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 806E3C38  7D 89 03 A6 */	mtctr r12
/* 806E3C3C  4E 80 04 21 */	bctrl 
lbl_806E3C40:
/* 806E3C40  A8 1C 05 D4 */	lha r0, 0x5d4(r28)
/* 806E3C44  2C 00 00 01 */	cmpwi r0, 1
/* 806E3C48  41 82 00 0C */	beq lbl_806E3C54
/* 806E3C4C  7F 83 E3 78 */	mr r3, r28
/* 806E3C50  4B FF FD 99 */	bl Obj_Damage__8daE_HM_cFv
lbl_806E3C54:
/* 806E3C54  A8 1C 05 D2 */	lha r0, 0x5d2(r28)
/* 806E3C58  2C 00 00 03 */	cmpwi r0, 3
/* 806E3C5C  41 82 00 28 */	beq lbl_806E3C84
/* 806E3C60  40 80 00 14 */	bge lbl_806E3C74
/* 806E3C64  2C 00 00 01 */	cmpwi r0, 1
/* 806E3C68  41 82 00 58 */	beq lbl_806E3CC0
/* 806E3C6C  40 80 01 DC */	bge lbl_806E3E48
/* 806E3C70  48 00 02 F0 */	b lbl_806E3F60
lbl_806E3C74:
/* 806E3C74  2C 00 00 05 */	cmpwi r0, 5
/* 806E3C78  41 82 02 CC */	beq lbl_806E3F44
/* 806E3C7C  40 80 02 E4 */	bge lbl_806E3F60
/* 806E3C80  48 00 02 B8 */	b lbl_806E3F38
lbl_806E3C84:
/* 806E3C84  7F 83 E3 78 */	mr r3, r28
/* 806E3C88  4B FF E8 E1 */	bl UpExecute__8daE_HM_cFv
/* 806E3C8C  7F 83 E3 78 */	mr r3, r28
/* 806E3C90  4B FF CA BD */	bl setCcCylinder__8daE_HM_cFv
/* 806E3C94  7F 83 E3 78 */	mr r3, r28
/* 806E3C98  48 00 03 71 */	bl Yazirushi__8daE_HM_cFv
/* 806E3C9C  7F 83 E3 78 */	mr r3, r28
/* 806E3CA0  38 9C 08 EC */	addi r4, r28, 0x8ec
/* 806E3CA4  4B 93 6A 28 */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 806E3CA8  38 7C 07 14 */	addi r3, r28, 0x714
/* 806E3CAC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806E3CB0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806E3CB4  38 84 0F 38 */	addi r4, r4, 0xf38
/* 806E3CB8  4B 99 2D F4 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 806E3CBC  48 00 02 A4 */	b lbl_806E3F60
lbl_806E3CC0:
/* 806E3CC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806E3CC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806E3CC8  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 806E3CCC  3B 7E 47 80 */	addi r27, r30, 0x4780
/* 806E3CD0  7F 63 DB 78 */	mr r3, r27
/* 806E3CD4  4B 98 FB 10 */	b LockonTruth__12dAttention_cFv
/* 806E3CD8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806E3CDC  41 82 00 A0 */	beq lbl_806E3D7C
/* 806E3CE0  7F 63 DB 78 */	mr r3, r27
/* 806E3CE4  38 80 00 00 */	li r4, 0
/* 806E3CE8  4B 98 F8 54 */	b LockonTarget__12dAttention_cFl
/* 806E3CEC  7C 03 E0 40 */	cmplw r3, r28
/* 806E3CF0  40 82 00 B4 */	bne lbl_806E3DA4
/* 806E3CF4  A0 1C 05 8E */	lhz r0, 0x58e(r28)
/* 806E3CF8  60 00 00 01 */	ori r0, r0, 1
/* 806E3CFC  B0 1C 05 8E */	sth r0, 0x58e(r28)
/* 806E3D00  7F 83 E3 78 */	mr r3, r28
/* 806E3D04  48 00 03 B5 */	bl setStabPos__8daE_HM_cFv
/* 806E3D08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806E3D0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806E3D10  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 806E3D14  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 806E3D18  41 82 00 34 */	beq lbl_806E3D4C
/* 806E3D1C  A8 1C 05 D4 */	lha r0, 0x5d4(r28)
/* 806E3D20  2C 00 00 02 */	cmpwi r0, 2
/* 806E3D24  40 82 00 18 */	bne lbl_806E3D3C
/* 806E3D28  80 7C 06 18 */	lwz r3, 0x618(r28)
/* 806E3D2C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 806E3D30  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 806E3D34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E3D38  41 81 00 14 */	bgt lbl_806E3D4C
lbl_806E3D3C:
/* 806E3D3C  80 1C 09 28 */	lwz r0, 0x928(r28)
/* 806E3D40  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806E3D44  90 1C 09 28 */	stw r0, 0x928(r28)
/* 806E3D48  48 00 00 5C */	b lbl_806E3DA4
lbl_806E3D4C:
/* 806E3D4C  A8 1C 05 D4 */	lha r0, 0x5d4(r28)
/* 806E3D50  2C 00 00 02 */	cmpwi r0, 2
/* 806E3D54  40 82 00 50 */	bne lbl_806E3DA4
/* 806E3D58  80 7C 06 18 */	lwz r3, 0x618(r28)
/* 806E3D5C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 806E3D60  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 806E3D64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E3D68  40 81 00 3C */	ble lbl_806E3DA4
/* 806E3D6C  80 1C 09 28 */	lwz r0, 0x928(r28)
/* 806E3D70  60 00 00 01 */	ori r0, r0, 1
/* 806E3D74  90 1C 09 28 */	stw r0, 0x928(r28)
/* 806E3D78  48 00 00 2C */	b lbl_806E3DA4
lbl_806E3D7C:
/* 806E3D7C  A0 7C 05 8E */	lhz r3, 0x58e(r28)
/* 806E3D80  38 00 FF E8 */	li r0, -24
/* 806E3D84  7C 60 00 38 */	and r0, r3, r0
/* 806E3D88  B0 1C 05 8E */	sth r0, 0x58e(r28)
/* 806E3D8C  A8 1C 05 D4 */	lha r0, 0x5d4(r28)
/* 806E3D90  2C 00 00 05 */	cmpwi r0, 5
/* 806E3D94  41 82 00 10 */	beq lbl_806E3DA4
/* 806E3D98  80 1C 09 28 */	lwz r0, 0x928(r28)
/* 806E3D9C  60 00 00 01 */	ori r0, r0, 1
/* 806E3DA0  90 1C 09 28 */	stw r0, 0x928(r28)
lbl_806E3DA4:
/* 806E3DA4  7F 83 E3 78 */	mr r3, r28
/* 806E3DA8  4B FF FA 59 */	bl DownExecute__8daE_HM_cFv
/* 806E3DAC  80 7C 06 18 */	lwz r3, 0x618(r28)
/* 806E3DB0  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 806E3DB4  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 806E3DB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E3DBC  40 81 00 24 */	ble lbl_806E3DE0
/* 806E3DC0  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 806E3DC4  A8 9C 05 B4 */	lha r4, 0x5b4(r28)
/* 806E3DC8  38 A0 03 00 */	li r5, 0x300
/* 806E3DCC  4B B8 CD C4 */	b cLib_chaseAngleS__FPsss
/* 806E3DD0  38 7C 04 DE */	addi r3, r28, 0x4de
/* 806E3DD4  A8 9C 05 B4 */	lha r4, 0x5b4(r28)
/* 806E3DD8  38 A0 03 00 */	li r5, 0x300
/* 806E3DDC  4B B8 CD B4 */	b cLib_chaseAngleS__FPsss
lbl_806E3DE0:
/* 806E3DE0  80 1C 07 40 */	lwz r0, 0x740(r28)
/* 806E3DE4  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 806E3DE8  41 82 00 20 */	beq lbl_806E3E08
/* 806E3DEC  38 00 00 01 */	li r0, 1
/* 806E3DF0  98 1C 06 20 */	stb r0, 0x620(r28)
/* 806E3DF4  88 1C 06 20 */	lbz r0, 0x620(r28)
/* 806E3DF8  28 00 00 01 */	cmplwi r0, 1
/* 806E3DFC  40 82 00 0C */	bne lbl_806E3E08
/* 806E3E00  7F 83 E3 78 */	mr r3, r28
/* 806E3E04  4B 93 5E 78 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_806E3E08:
/* 806E3E08  7F 83 E3 78 */	mr r3, r28
/* 806E3E0C  4B FF C9 41 */	bl setCcCylinder__8daE_HM_cFv
/* 806E3E10  34 9C 08 EC */	addic. r4, r28, 0x8ec
/* 806E3E14  41 82 00 10 */	beq lbl_806E3E24
/* 806E3E18  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 806E3E1C  7C 65 1B 78 */	mr r5, r3
/* 806E3E20  4B C6 32 70 */	b PSVECAdd
lbl_806E3E24:
/* 806E3E24  7F 83 E3 78 */	mr r3, r28
/* 806E3E28  38 9C 08 EC */	addi r4, r28, 0x8ec
/* 806E3E2C  4B 93 68 A0 */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 806E3E30  38 7C 07 14 */	addi r3, r28, 0x714
/* 806E3E34  7F C4 F3 78 */	mr r4, r30
/* 806E3E38  4B 99 2C 74 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 806E3E3C  7F 83 E3 78 */	mr r3, r28
/* 806E3E40  48 00 01 C9 */	bl Yazirushi__8daE_HM_cFv
/* 806E3E44  48 00 01 1C */	b lbl_806E3F60
lbl_806E3E48:
/* 806E3E48  7F 83 E3 78 */	mr r3, r28
/* 806E3E4C  4B FF DB B5 */	bl WallExecute__8daE_HM_cFv
/* 806E3E50  80 7C 06 18 */	lwz r3, 0x618(r28)
/* 806E3E54  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 806E3E58  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 806E3E5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E3E60  40 81 00 24 */	ble lbl_806E3E84
/* 806E3E64  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 806E3E68  A8 9C 05 B4 */	lha r4, 0x5b4(r28)
/* 806E3E6C  38 A0 03 00 */	li r5, 0x300
/* 806E3E70  4B B8 CD 20 */	b cLib_chaseAngleS__FPsss
/* 806E3E74  38 7C 04 DE */	addi r3, r28, 0x4de
/* 806E3E78  A8 9C 05 B4 */	lha r4, 0x5b4(r28)
/* 806E3E7C  38 A0 03 00 */	li r5, 0x300
/* 806E3E80  4B B8 CD 10 */	b cLib_chaseAngleS__FPsss
lbl_806E3E84:
/* 806E3E84  7F 83 E3 78 */	mr r3, r28
/* 806E3E88  4B FF C8 C5 */	bl setCcCylinder__8daE_HM_cFv
/* 806E3E8C  88 1C 05 AF */	lbz r0, 0x5af(r28)
/* 806E3E90  28 00 00 00 */	cmplwi r0, 0
/* 806E3E94  41 82 00 54 */	beq lbl_806E3EE8
/* 806E3E98  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 806E3E9C  D0 1C 05 38 */	stfs f0, 0x538(r28)
/* 806E3EA0  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 806E3EA4  D0 1C 05 3C */	stfs f0, 0x53c(r28)
/* 806E3EA8  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 806E3EAC  D0 1C 05 40 */	stfs f0, 0x540(r28)
/* 806E3EB0  C0 1C 05 3C */	lfs f0, 0x53c(r28)
/* 806E3EB4  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 806E3EB8  EC 00 08 2A */	fadds f0, f0, f1
/* 806E3EBC  D0 1C 05 3C */	stfs f0, 0x53c(r28)
/* 806E3EC0  C0 1C 05 38 */	lfs f0, 0x538(r28)
/* 806E3EC4  D0 1C 05 50 */	stfs f0, 0x550(r28)
/* 806E3EC8  C0 1C 05 3C */	lfs f0, 0x53c(r28)
/* 806E3ECC  D0 1C 05 54 */	stfs f0, 0x554(r28)
/* 806E3ED0  C0 1C 05 40 */	lfs f0, 0x540(r28)
/* 806E3ED4  D0 1C 05 58 */	stfs f0, 0x558(r28)
/* 806E3ED8  C0 1C 05 54 */	lfs f0, 0x554(r28)
/* 806E3EDC  EC 00 08 2A */	fadds f0, f0, f1
/* 806E3EE0  D0 1C 05 54 */	stfs f0, 0x554(r28)
/* 806E3EE4  48 00 00 7C */	b lbl_806E3F60
lbl_806E3EE8:
/* 806E3EE8  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 806E3EEC  D0 1C 05 38 */	stfs f0, 0x538(r28)
/* 806E3EF0  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 806E3EF4  D0 1C 05 3C */	stfs f0, 0x53c(r28)
/* 806E3EF8  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 806E3EFC  D0 1C 05 40 */	stfs f0, 0x540(r28)
/* 806E3F00  C0 1C 05 3C */	lfs f0, 0x53c(r28)
/* 806E3F04  C0 3F 01 00 */	lfs f1, 0x100(r31)
/* 806E3F08  EC 00 08 2A */	fadds f0, f0, f1
/* 806E3F0C  D0 1C 05 3C */	stfs f0, 0x53c(r28)
/* 806E3F10  C0 1C 05 38 */	lfs f0, 0x538(r28)
/* 806E3F14  D0 1C 05 50 */	stfs f0, 0x550(r28)
/* 806E3F18  C0 1C 05 3C */	lfs f0, 0x53c(r28)
/* 806E3F1C  D0 1C 05 54 */	stfs f0, 0x554(r28)
/* 806E3F20  C0 1C 05 40 */	lfs f0, 0x540(r28)
/* 806E3F24  D0 1C 05 58 */	stfs f0, 0x558(r28)
/* 806E3F28  C0 1C 05 54 */	lfs f0, 0x554(r28)
/* 806E3F2C  EC 00 08 2A */	fadds f0, f0, f1
/* 806E3F30  D0 1C 05 54 */	stfs f0, 0x554(r28)
/* 806E3F34  48 00 00 2C */	b lbl_806E3F60
lbl_806E3F38:
/* 806E3F38  7F 83 E3 78 */	mr r3, r28
/* 806E3F3C  4B FF DC 21 */	bl CreateExecute__8daE_HM_cFv
/* 806E3F40  48 00 00 20 */	b lbl_806E3F60
lbl_806E3F44:
/* 806E3F44  7F 83 E3 78 */	mr r3, r28
/* 806E3F48  4B FF DB 59 */	bl WallCreateExecute__8daE_HM_cFv
/* 806E3F4C  7F 83 E3 78 */	mr r3, r28
/* 806E3F50  38 9C 08 EC */	addi r4, r28, 0x8ec
/* 806E3F54  4B 93 67 78 */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 806E3F58  7F 83 E3 78 */	mr r3, r28
/* 806E3F5C  4B FF C7 F1 */	bl setCcCylinder__8daE_HM_cFv
lbl_806E3F60:
/* 806E3F60  A8 1C 05 D4 */	lha r0, 0x5d4(r28)
/* 806E3F64  2C 00 00 05 */	cmpwi r0, 5
/* 806E3F68  41 82 00 0C */	beq lbl_806E3F74
/* 806E3F6C  2C 00 00 01 */	cmpwi r0, 1
/* 806E3F70  40 82 00 14 */	bne lbl_806E3F84
lbl_806E3F74:
/* 806E3F74  38 00 00 00 */	li r0, 0
/* 806E3F78  90 1C 05 FC */	stw r0, 0x5fc(r28)
/* 806E3F7C  90 1C 06 08 */	stw r0, 0x608(r28)
/* 806E3F80  48 00 00 2C */	b lbl_806E3FAC
lbl_806E3F84:
/* 806E3F84  7F 83 E3 78 */	mr r3, r28
/* 806E3F88  38 9C 05 FC */	addi r4, r28, 0x5fc
/* 806E3F8C  3C A0 00 01 */	lis r5, 0x0001 /* 0x000084F6@ha */
/* 806E3F90  38 A5 84 F6 */	addi r5, r5, 0x84F6 /* 0x000084F6@l */
/* 806E3F94  4B FF CE 1D */	bl Particle_Set__8daE_HM_cFRUlUs
/* 806E3F98  7F 83 E3 78 */	mr r3, r28
/* 806E3F9C  38 9C 06 08 */	addi r4, r28, 0x608
/* 806E3FA0  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000852A@ha */
/* 806E3FA4  38 A5 85 2A */	addi r5, r5, 0x852A /* 0x0000852A@l */
/* 806E3FA8  4B FF CE 09 */	bl Particle_Set__8daE_HM_cFRUlUs
lbl_806E3FAC:
/* 806E3FAC  80 7C 06 18 */	lwz r3, 0x618(r28)
/* 806E3FB0  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 806E3FB4  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 806E3FB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E3FBC  40 81 00 34 */	ble lbl_806E3FF0
/* 806E3FC0  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 806E3FC4  7C 1D 00 51 */	subf. r0, r29, r0
/* 806E3FC8  41 82 00 18 */	beq lbl_806E3FE0
/* 806E3FCC  38 7C 05 C0 */	addi r3, r28, 0x5c0
/* 806E3FD0  7C 04 07 34 */	extsh r4, r0
/* 806E3FD4  38 A0 00 50 */	li r5, 0x50
/* 806E3FD8  4B B8 CB B8 */	b cLib_chaseAngleS__FPsss
/* 806E3FDC  48 00 00 14 */	b lbl_806E3FF0
lbl_806E3FE0:
/* 806E3FE0  38 7C 05 C0 */	addi r3, r28, 0x5c0
/* 806E3FE4  7C 04 07 34 */	extsh r4, r0
/* 806E3FE8  38 A0 00 20 */	li r5, 0x20
/* 806E3FEC  4B B8 CB A4 */	b cLib_chaseAngleS__FPsss
lbl_806E3FF0:
/* 806E3FF0  39 61 00 30 */	addi r11, r1, 0x30
/* 806E3FF4  4B C7 E2 2C */	b _restgpr_27
/* 806E3FF8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806E3FFC  7C 08 03 A6 */	mtlr r0
/* 806E4000  38 21 00 30 */	addi r1, r1, 0x30
/* 806E4004  4E 80 00 20 */	blr 

lbl_806C0CD0:
/* 806C0CD0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806C0CD4  7C 08 02 A6 */	mflr r0
/* 806C0CD8  90 01 00 44 */	stw r0, 0x44(r1)
/* 806C0CDC  39 61 00 40 */	addi r11, r1, 0x40
/* 806C0CE0  4B CA 14 ED */	bl _savegpr_25
/* 806C0CE4  7C 7D 1B 78 */	mr r29, r3
/* 806C0CE8  3C 80 80 6C */	lis r4, lit_3803@ha /* 0x806C1938@ha */
/* 806C0CEC  3B E4 19 38 */	addi r31, r4, lit_3803@l /* 0x806C1938@l */
/* 806C0CF0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 806C0CF4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 806C0CF8  40 82 01 7C */	bne lbl_806C0E74
/* 806C0CFC  7F A0 EB 79 */	or. r0, r29, r29
/* 806C0D00  41 82 01 68 */	beq lbl_806C0E68
/* 806C0D04  7C 1E 03 78 */	mr r30, r0
/* 806C0D08  4B 95 7E 5D */	bl __ct__10fopAc_ac_cFv
/* 806C0D0C  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 806C0D10  4B C0 02 55 */	bl __ct__15Z2CreatureEnemyFv
/* 806C0D14  38 7E 06 7C */	addi r3, r30, 0x67c
/* 806C0D18  3C 80 80 6C */	lis r4, __ct__4cXyzFv@ha /* 0x806C13D4@ha */
/* 806C0D1C  38 84 13 D4 */	addi r4, r4, __ct__4cXyzFv@l /* 0x806C13D4@l */
/* 806C0D20  3C A0 80 6C */	lis r5, __dt__4cXyzFv@ha /* 0x806C18E8@ha */
/* 806C0D24  38 A5 18 E8 */	addi r5, r5, __dt__4cXyzFv@l /* 0x806C18E8@l */
/* 806C0D28  38 C0 00 0C */	li r6, 0xc
/* 806C0D2C  38 E0 00 04 */	li r7, 4
/* 806C0D30  4B CA 10 31 */	bl __construct_array
/* 806C0D34  38 7E 06 AC */	addi r3, r30, 0x6ac
/* 806C0D38  3C 80 80 6C */	lis r4, __ct__4cXyzFv@ha /* 0x806C13D4@ha */
/* 806C0D3C  38 84 13 D4 */	addi r4, r4, __ct__4cXyzFv@l /* 0x806C13D4@l */
/* 806C0D40  3C A0 80 6C */	lis r5, __dt__4cXyzFv@ha /* 0x806C18E8@ha */
/* 806C0D44  38 A5 18 E8 */	addi r5, r5, __dt__4cXyzFv@l /* 0x806C18E8@l */
/* 806C0D48  38 C0 00 0C */	li r6, 0xc
/* 806C0D4C  38 E0 00 04 */	li r7, 4
/* 806C0D50  4B CA 10 11 */	bl __construct_array
/* 806C0D54  38 7E 07 2C */	addi r3, r30, 0x72c
/* 806C0D58  4B 9B 51 55 */	bl __ct__12dBgS_AcchCirFv
/* 806C0D5C  3B 5E 07 6C */	addi r26, r30, 0x76c
/* 806C0D60  7F 43 D3 78 */	mr r3, r26
/* 806C0D64  4B 9B 53 3D */	bl __ct__9dBgS_AcchFv
/* 806C0D68  3C 60 80 6C */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x806C1B68@ha */
/* 806C0D6C  38 63 1B 68 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x806C1B68@l */
/* 806C0D70  90 7A 00 10 */	stw r3, 0x10(r26)
/* 806C0D74  38 03 00 0C */	addi r0, r3, 0xc
/* 806C0D78  90 1A 00 14 */	stw r0, 0x14(r26)
/* 806C0D7C  38 03 00 18 */	addi r0, r3, 0x18
/* 806C0D80  90 1A 00 24 */	stw r0, 0x24(r26)
/* 806C0D84  38 7A 00 14 */	addi r3, r26, 0x14
/* 806C0D88  4B 9B 80 E1 */	bl SetObj__16dBgS_PolyPassChkFv
/* 806C0D8C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 806C0D90  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 806C0D94  90 1E 09 5C */	stw r0, 0x95c(r30)
/* 806C0D98  38 7E 09 60 */	addi r3, r30, 0x960
/* 806C0D9C  4B 9C 29 C5 */	bl __ct__10dCcD_GSttsFv
/* 806C0DA0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 806C0DA4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 806C0DA8  90 7E 09 5C */	stw r3, 0x95c(r30)
/* 806C0DAC  38 03 00 20 */	addi r0, r3, 0x20
/* 806C0DB0  90 1E 09 60 */	stw r0, 0x960(r30)
/* 806C0DB4  3B 3E 09 80 */	addi r25, r30, 0x980
/* 806C0DB8  7F 23 CB 78 */	mr r3, r25
/* 806C0DBC  4B 9C 2C 6D */	bl __ct__12dCcD_GObjInfFv
/* 806C0DC0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 806C0DC4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 806C0DC8  90 19 01 20 */	stw r0, 0x120(r25)
/* 806C0DCC  3C 60 80 6C */	lis r3, __vt__8cM3dGAab@ha /* 0x806C1B5C@ha */
/* 806C0DD0  38 03 1B 5C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x806C1B5C@l */
/* 806C0DD4  90 19 01 1C */	stw r0, 0x11c(r25)
/* 806C0DD8  3C 60 80 6C */	lis r3, __vt__8cM3dGSph@ha /* 0x806C1B50@ha */
/* 806C0DDC  38 03 1B 50 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x806C1B50@l */
/* 806C0DE0  90 19 01 34 */	stw r0, 0x134(r25)
/* 806C0DE4  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 806C0DE8  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 806C0DEC  90 79 01 20 */	stw r3, 0x120(r25)
/* 806C0DF0  3B 83 00 58 */	addi r28, r3, 0x58
/* 806C0DF4  93 99 01 34 */	stw r28, 0x134(r25)
/* 806C0DF8  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 806C0DFC  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 806C0E00  90 79 00 3C */	stw r3, 0x3c(r25)
/* 806C0E04  3B 63 00 2C */	addi r27, r3, 0x2c
/* 806C0E08  93 79 01 20 */	stw r27, 0x120(r25)
/* 806C0E0C  3B 43 00 84 */	addi r26, r3, 0x84
/* 806C0E10  93 59 01 34 */	stw r26, 0x134(r25)
/* 806C0E14  3B 3E 0A B8 */	addi r25, r30, 0xab8
/* 806C0E18  7F 23 CB 78 */	mr r3, r25
/* 806C0E1C  4B 9C 2C 0D */	bl __ct__12dCcD_GObjInfFv
/* 806C0E20  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 806C0E24  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 806C0E28  90 19 01 20 */	stw r0, 0x120(r25)
/* 806C0E2C  3C 60 80 6C */	lis r3, __vt__8cM3dGAab@ha /* 0x806C1B5C@ha */
/* 806C0E30  38 03 1B 5C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x806C1B5C@l */
/* 806C0E34  90 19 01 1C */	stw r0, 0x11c(r25)
/* 806C0E38  3C 60 80 6C */	lis r3, __vt__8cM3dGSph@ha /* 0x806C1B50@ha */
/* 806C0E3C  38 03 1B 50 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x806C1B50@l */
/* 806C0E40  90 19 01 34 */	stw r0, 0x134(r25)
/* 806C0E44  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 806C0E48  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 806C0E4C  90 19 01 20 */	stw r0, 0x120(r25)
/* 806C0E50  93 99 01 34 */	stw r28, 0x134(r25)
/* 806C0E54  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 806C0E58  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 806C0E5C  90 19 00 3C */	stw r0, 0x3c(r25)
/* 806C0E60  93 79 01 20 */	stw r27, 0x120(r25)
/* 806C0E64  93 59 01 34 */	stw r26, 0x134(r25)
lbl_806C0E68:
/* 806C0E68  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 806C0E6C  60 00 00 08 */	ori r0, r0, 8
/* 806C0E70  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_806C0E74:
/* 806C0E74  38 7D 05 AC */	addi r3, r29, 0x5ac
/* 806C0E78  3C 80 80 6C */	lis r4, d_a_e_fz__stringBase0@ha /* 0x806C19F4@ha */
/* 806C0E7C  38 84 19 F4 */	addi r4, r4, d_a_e_fz__stringBase0@l /* 0x806C19F4@l */
/* 806C0E80  4B 96 C0 3D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 806C0E84  7C 7E 1B 78 */	mr r30, r3
/* 806C0E88  2C 1E 00 04 */	cmpwi r30, 4
/* 806C0E8C  40 82 03 60 */	bne lbl_806C11EC
/* 806C0E90  7F A3 EB 78 */	mr r3, r29
/* 806C0E94  3C 80 80 6C */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x806C0CB0@ha */
/* 806C0E98  38 84 0C B0 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x806C0CB0@l */
/* 806C0E9C  38 A0 19 50 */	li r5, 0x1950
/* 806C0EA0  4B 95 96 11 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 806C0EA4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806C0EA8  40 82 00 0C */	bne lbl_806C0EB4
/* 806C0EAC  38 60 00 05 */	li r3, 5
/* 806C0EB0  48 00 03 40 */	b lbl_806C11F0
lbl_806C0EB4:
/* 806C0EB4  3C 60 80 6C */	lis r3, data_806C1BA0@ha /* 0x806C1BA0@ha */
/* 806C0EB8  8C 03 1B A0 */	lbzu r0, data_806C1BA0@l(r3)  /* 0x806C1BA0@l */
/* 806C0EBC  28 00 00 00 */	cmplwi r0, 0
/* 806C0EC0  40 82 00 20 */	bne lbl_806C0EE0
/* 806C0EC4  38 00 00 01 */	li r0, 1
/* 806C0EC8  98 03 00 00 */	stb r0, 0(r3)
/* 806C0ECC  98 1D 0C 21 */	stb r0, 0xc21(r29)
/* 806C0ED0  38 00 FF FF */	li r0, -1
/* 806C0ED4  3C 60 80 6C */	lis r3, l_HIO@ha /* 0x806C1BB0@ha */
/* 806C0ED8  38 63 1B B0 */	addi r3, r3, l_HIO@l /* 0x806C1BB0@l */
/* 806C0EDC  98 03 00 04 */	stb r0, 4(r3)
lbl_806C0EE0:
/* 806C0EE0  38 00 00 04 */	li r0, 4
/* 806C0EE4  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 806C0EE8  38 00 00 45 */	li r0, 0x45
/* 806C0EEC  98 1D 05 46 */	stb r0, 0x546(r29)
/* 806C0EF0  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 806C0EF4  38 03 00 24 */	addi r0, r3, 0x24
/* 806C0EF8  90 1D 05 04 */	stw r0, 0x504(r29)
/* 806C0EFC  7F A3 EB 78 */	mr r3, r29
/* 806C0F00  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 806C0F04  FC 40 08 90 */	fmr f2, f1
/* 806C0F08  FC 60 08 90 */	fmr f3, f1
/* 806C0F0C  4B 95 96 1D */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 806C0F10  7F A3 EB 78 */	mr r3, r29
/* 806C0F14  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 806C0F18  FC 40 08 90 */	fmr f2, f1
/* 806C0F1C  FC 60 08 90 */	fmr f3, f1
/* 806C0F20  4B 95 96 19 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 806C0F24  38 7D 09 44 */	addi r3, r29, 0x944
/* 806C0F28  38 80 00 64 */	li r4, 0x64
/* 806C0F2C  38 A0 00 00 */	li r5, 0
/* 806C0F30  7F A6 EB 78 */	mr r6, r29
/* 806C0F34  4B 9C 29 2D */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 806C0F38  38 00 00 50 */	li r0, 0x50
/* 806C0F3C  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 806C0F40  B0 1D 05 60 */	sth r0, 0x560(r29)
/* 806C0F44  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 806C0F48  98 1D 07 14 */	stb r0, 0x714(r29)
/* 806C0F4C  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 806C0F50  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 806C0F54  98 1D 07 15 */	stb r0, 0x715(r29)
/* 806C0F58  88 1D 07 14 */	lbz r0, 0x714(r29)
/* 806C0F5C  28 00 00 FF */	cmplwi r0, 0xff
/* 806C0F60  40 82 00 0C */	bne lbl_806C0F6C
/* 806C0F64  38 00 00 00 */	li r0, 0
/* 806C0F68  98 1D 07 14 */	stb r0, 0x714(r29)
lbl_806C0F6C:
/* 806C0F6C  88 1D 07 14 */	lbz r0, 0x714(r29)
/* 806C0F70  28 00 00 01 */	cmplwi r0, 1
/* 806C0F74  41 82 00 0C */	beq lbl_806C0F80
/* 806C0F78  28 00 00 03 */	cmplwi r0, 3
/* 806C0F7C  40 82 00 48 */	bne lbl_806C0FC4
lbl_806C0F80:
/* 806C0F80  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 806C0F84  4B BA 6A 09 */	bl cM_rndFX__Ff
/* 806C0F88  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 806C0F8C  EC 00 08 2A */	fadds f0, f0, f1
/* 806C0F90  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 806C0F94  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806C0F98  4B BA 69 F5 */	bl cM_rndFX__Ff
/* 806C0F9C  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 806C0FA0  EC 00 08 2A */	fadds f0, f0, f1
/* 806C0FA4  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 806C0FA8  D0 1D 06 FC */	stfs f0, 0x6fc(r29)
/* 806C0FAC  88 1D 07 14 */	lbz r0, 0x714(r29)
/* 806C0FB0  28 00 00 01 */	cmplwi r0, 1
/* 806C0FB4  40 82 00 10 */	bne lbl_806C0FC4
/* 806C0FB8  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 806C0FBC  60 00 40 00 */	ori r0, r0, 0x4000
/* 806C0FC0  90 1D 04 9C */	stw r0, 0x49c(r29)
lbl_806C0FC4:
/* 806C0FC4  38 00 00 00 */	li r0, 0
/* 806C0FC8  90 01 00 08 */	stw r0, 8(r1)
/* 806C0FCC  38 7D 07 6C */	addi r3, r29, 0x76c
/* 806C0FD0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806C0FD4  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 806C0FD8  7F A6 EB 78 */	mr r6, r29
/* 806C0FDC  38 E0 00 01 */	li r7, 1
/* 806C0FE0  39 1D 07 2C */	addi r8, r29, 0x72c
/* 806C0FE4  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 806C0FE8  39 40 00 00 */	li r10, 0
/* 806C0FEC  4B 9B 52 5D */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 806C0FF0  88 1D 07 14 */	lbz r0, 0x714(r29)
/* 806C0FF4  28 00 00 03 */	cmplwi r0, 3
/* 806C0FF8  40 82 00 18 */	bne lbl_806C1010
/* 806C0FFC  38 7D 07 2C */	addi r3, r29, 0x72c
/* 806C1000  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 806C1004  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 806C1008  4B 9B 4F 51 */	bl SetWall__12dBgS_AcchCirFff
/* 806C100C  48 00 00 14 */	b lbl_806C1020
lbl_806C1010:
/* 806C1010  38 7D 07 2C */	addi r3, r29, 0x72c
/* 806C1014  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 806C1018  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 806C101C  4B 9B 4F 3D */	bl SetWall__12dBgS_AcchCirFff
lbl_806C1020:
/* 806C1020  38 7D 07 6C */	addi r3, r29, 0x76c
/* 806C1024  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806C1028  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806C102C  38 84 0F 38 */	addi r4, r4, 0xf38
/* 806C1030  4B 9B 5A 7D */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 806C1034  38 7D 09 80 */	addi r3, r29, 0x980
/* 806C1038  3C 80 80 6C */	lis r4, cc_fz_src@ha /* 0x806C1A38@ha */
/* 806C103C  38 84 1A 38 */	addi r4, r4, cc_fz_src@l /* 0x806C1A38@l */
/* 806C1040  4B 9C 39 F5 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806C1044  38 1D 09 44 */	addi r0, r29, 0x944
/* 806C1048  90 1D 09 C4 */	stw r0, 0x9c4(r29)
/* 806C104C  38 7D 0A B8 */	addi r3, r29, 0xab8
/* 806C1050  3C 80 80 6C */	lis r4, cc_fz_at_src@ha /* 0x806C1A78@ha */
/* 806C1054  38 84 1A 78 */	addi r4, r4, cc_fz_at_src@l /* 0x806C1A78@l */
/* 806C1058  4B 9C 39 DD */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806C105C  38 1D 09 44 */	addi r0, r29, 0x944
/* 806C1060  90 1D 0A FC */	stw r0, 0xafc(r29)
/* 806C1064  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 806C1068  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806C106C  38 BD 05 38 */	addi r5, r29, 0x538
/* 806C1070  38 C0 00 03 */	li r6, 3
/* 806C1074  38 E0 00 01 */	li r7, 1
/* 806C1078  4B C0 00 1D */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 806C107C  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 806C1080  3C 80 80 6C */	lis r4, d_a_e_fz__stringBase0@ha /* 0x806C19F4@ha */
/* 806C1084  38 84 19 F4 */	addi r4, r4, d_a_e_fz__stringBase0@l /* 0x806C19F4@l */
/* 806C1088  38 84 00 05 */	addi r4, r4, 5
/* 806C108C  4B C0 0B 05 */	bl setEnemyName__15Z2CreatureEnemyFPCc
/* 806C1090  38 1D 05 C0 */	addi r0, r29, 0x5c0
/* 806C1094  90 1D 0B F8 */	stw r0, 0xbf8(r29)
/* 806C1098  38 00 00 01 */	li r0, 1
/* 806C109C  98 1D 0C 0E */	stb r0, 0xc0e(r29)
/* 806C10A0  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 806C10A4  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 806C10A8  38 00 00 00 */	li r0, 0
/* 806C10AC  B0 1D 04 E8 */	sth r0, 0x4e8(r29)
/* 806C10B0  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 806C10B4  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 806C10B8  4B BA 68 D5 */	bl cM_rndFX__Ff
/* 806C10BC  FC 00 08 1E */	fctiwz f0, f1
/* 806C10C0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 806C10C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806C10C8  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 806C10CC  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 806C10D0  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 806C10D4  D0 1D 06 70 */	stfs f0, 0x670(r29)
/* 806C10D8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 806C10DC  D0 1D 06 74 */	stfs f0, 0x674(r29)
/* 806C10E0  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 806C10E4  D0 1D 06 78 */	stfs f0, 0x678(r29)
/* 806C10E8  38 60 00 00 */	li r3, 0
/* 806C10EC  38 00 00 04 */	li r0, 4
/* 806C10F0  7C 09 03 A6 */	mtctr r0
lbl_806C10F4:
/* 806C10F4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 806C10F8  7C 9D 1A 14 */	add r4, r29, r3
/* 806C10FC  D0 04 06 7C */	stfs f0, 0x67c(r4)
/* 806C1100  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 806C1104  D0 04 06 80 */	stfs f0, 0x680(r4)
/* 806C1108  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 806C110C  D0 04 06 84 */	stfs f0, 0x684(r4)
/* 806C1110  38 63 00 0C */	addi r3, r3, 0xc
/* 806C1114  42 00 FF E0 */	bdnz lbl_806C10F4
/* 806C1118  88 1D 07 14 */	lbz r0, 0x714(r29)
/* 806C111C  28 00 00 02 */	cmplwi r0, 2
/* 806C1120  40 82 00 3C */	bne lbl_806C115C
/* 806C1124  38 60 00 42 */	li r3, 0x42
/* 806C1128  38 80 00 01 */	li r4, 1
/* 806C112C  4B 9D 6D B5 */	bl checkItemGet__FUci
/* 806C1130  2C 03 00 00 */	cmpwi r3, 0
/* 806C1134  40 82 00 28 */	bne lbl_806C115C
/* 806C1138  38 00 00 00 */	li r0, 0
/* 806C113C  98 1D 05 46 */	stb r0, 0x546(r29)
/* 806C1140  98 1D 04 96 */	stb r0, 0x496(r29)
/* 806C1144  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 806C1148  54 00 00 3E */	slwi r0, r0, 0
/* 806C114C  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 806C1150  80 1D 05 5C */	lwz r0, 0x55c(r29)
/* 806C1154  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 806C1158  90 1D 05 5C */	stw r0, 0x55c(r29)
lbl_806C115C:
/* 806C115C  88 1D 07 14 */	lbz r0, 0x714(r29)
/* 806C1160  28 00 00 03 */	cmplwi r0, 3
/* 806C1164  40 82 00 3C */	bne lbl_806C11A0
/* 806C1168  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806C116C  D0 1D 07 00 */	stfs f0, 0x700(r29)
/* 806C1170  80 1D 05 5C */	lwz r0, 0x55c(r29)
/* 806C1174  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 806C1178  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 806C117C  38 00 04 00 */	li r0, 0x400
/* 806C1180  90 1D 0A C8 */	stw r0, 0xac8(r29)
/* 806C1184  38 00 00 01 */	li r0, 1
/* 806C1188  98 1D 0B 2F */	stb r0, 0xb2f(r29)
/* 806C118C  7F A3 EB 78 */	mr r3, r29
/* 806C1190  38 80 00 04 */	li r4, 4
/* 806C1194  38 A0 00 00 */	li r5, 0
/* 806C1198  4B FF D9 61 */	bl setActionMode__8daE_FZ_cFii
/* 806C119C  48 00 00 48 */	b lbl_806C11E4
lbl_806C11A0:
/* 806C11A0  38 00 00 02 */	li r0, 2
/* 806C11A4  98 1D 0B 2D */	stb r0, 0xb2d(r29)
/* 806C11A8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 806C11AC  D0 1D 07 00 */	stfs f0, 0x700(r29)
/* 806C11B0  4B BA 66 BD */	bl cM_rnd__Fv
/* 806C11B4  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 806C11B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C11BC  40 80 00 18 */	bge lbl_806C11D4
/* 806C11C0  7F A3 EB 78 */	mr r3, r29
/* 806C11C4  38 80 00 00 */	li r4, 0
/* 806C11C8  38 A0 00 00 */	li r5, 0
/* 806C11CC  4B FF D9 2D */	bl setActionMode__8daE_FZ_cFii
/* 806C11D0  48 00 00 14 */	b lbl_806C11E4
lbl_806C11D4:
/* 806C11D4  7F A3 EB 78 */	mr r3, r29
/* 806C11D8  38 80 00 01 */	li r4, 1
/* 806C11DC  38 A0 00 00 */	li r5, 0
/* 806C11E0  4B FF D9 19 */	bl setActionMode__8daE_FZ_cFii
lbl_806C11E4:
/* 806C11E4  7F A3 EB 78 */	mr r3, r29
/* 806C11E8  4B FF F4 F5 */	bl mtx_set__8daE_FZ_cFv
lbl_806C11EC:
/* 806C11EC  7F C3 F3 78 */	mr r3, r30
lbl_806C11F0:
/* 806C11F0  39 61 00 40 */	addi r11, r1, 0x40
/* 806C11F4  4B CA 10 25 */	bl _restgpr_25
/* 806C11F8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806C11FC  7C 08 03 A6 */	mtlr r0
/* 806C1200  38 21 00 40 */	addi r1, r1, 0x40
/* 806C1204  4E 80 00 20 */	blr 

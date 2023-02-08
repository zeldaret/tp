lbl_806A0B54:
/* 806A0B54  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806A0B58  7C 08 02 A6 */	mflr r0
/* 806A0B5C  90 01 00 44 */	stw r0, 0x44(r1)
/* 806A0B60  39 61 00 40 */	addi r11, r1, 0x40
/* 806A0B64  4B CC 16 65 */	bl _savegpr_24
/* 806A0B68  7C 7F 1B 78 */	mr r31, r3
/* 806A0B6C  3C 80 80 6A */	lis r4, cNullVec__6Z2Calc@ha /* 0x806A1A74@ha */
/* 806A0B70  3B A4 1A 74 */	addi r29, r4, cNullVec__6Z2Calc@l /* 0x806A1A74@l */
/* 806A0B74  3C 80 80 6A */	lis r4, lit_3902@ha /* 0x806A190C@ha */
/* 806A0B78  3B C4 19 0C */	addi r30, r4, lit_3902@l /* 0x806A190C@l */
/* 806A0B7C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 806A0B80  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 806A0B84  40 82 01 B4 */	bne lbl_806A0D38
/* 806A0B88  7F E0 FB 79 */	or. r0, r31, r31
/* 806A0B8C  41 82 01 A0 */	beq lbl_806A0D2C
/* 806A0B90  7C 19 03 78 */	mr r25, r0
/* 806A0B94  4B 97 7F D1 */	bl __ct__10fopAc_ac_cFv
/* 806A0B98  38 79 05 BC */	addi r3, r25, 0x5bc
/* 806A0B9C  4B C2 03 C9 */	bl __ct__15Z2CreatureEnemyFv
/* 806A0BA0  38 79 06 9C */	addi r3, r25, 0x69c
/* 806A0BA4  3C 80 80 6A */	lis r4, __ct__4cXyzFv@ha /* 0x806A138C@ha */
/* 806A0BA8  38 84 13 8C */	addi r4, r4, __ct__4cXyzFv@l /* 0x806A138C@l */
/* 806A0BAC  3C A0 80 6A */	lis r5, __dt__4cXyzFv@ha /* 0x806A18BC@ha */
/* 806A0BB0  38 A5 18 BC */	addi r5, r5, __dt__4cXyzFv@l /* 0x806A18BC@l */
/* 806A0BB4  38 C0 00 0C */	li r6, 0xc
/* 806A0BB8  38 E0 00 0C */	li r7, 0xc
/* 806A0BBC  4B CC 11 A5 */	bl __construct_array
/* 806A0BC0  38 79 07 2C */	addi r3, r25, 0x72c
/* 806A0BC4  3C 80 80 6A */	lis r4, __ct__5csXyzFv@ha /* 0x806A1388@ha */
/* 806A0BC8  38 84 13 88 */	addi r4, r4, __ct__5csXyzFv@l /* 0x806A1388@l */
/* 806A0BCC  3C A0 80 6A */	lis r5, __dt__5csXyzFv@ha /* 0x806A1880@ha */
/* 806A0BD0  38 A5 18 80 */	addi r5, r5, __dt__5csXyzFv@l /* 0x806A1880@l */
/* 806A0BD4  38 C0 00 06 */	li r6, 6
/* 806A0BD8  38 E0 00 0C */	li r7, 0xc
/* 806A0BDC  4B CC 11 85 */	bl __construct_array
/* 806A0BE0  3C 60 80 6A */	lis r3, __vt__18mDoExt_3DlineMat_c@ha /* 0x806A1D70@ha */
/* 806A0BE4  38 03 1D 70 */	addi r0, r3, __vt__18mDoExt_3DlineMat_c@l /* 0x806A1D70@l */
/* 806A0BE8  90 19 08 04 */	stw r0, 0x804(r25)
/* 806A0BEC  3C 60 80 3A */	lis r3, __vt__19mDoExt_3DlineMat1_c@ha /* 0x803A3248@ha */
/* 806A0BF0  38 03 32 48 */	addi r0, r3, __vt__19mDoExt_3DlineMat1_c@l /* 0x803A3248@l */
/* 806A0BF4  90 19 08 04 */	stw r0, 0x804(r25)
/* 806A0BF8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 806A0BFC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 806A0C00  90 19 08 80 */	stw r0, 0x880(r25)
/* 806A0C04  38 79 08 84 */	addi r3, r25, 0x884
/* 806A0C08  4B 9E 2B 59 */	bl __ct__10dCcD_GSttsFv
/* 806A0C0C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 806A0C10  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 806A0C14  90 79 08 80 */	stw r3, 0x880(r25)
/* 806A0C18  38 03 00 20 */	addi r0, r3, 0x20
/* 806A0C1C  90 19 08 84 */	stw r0, 0x884(r25)
/* 806A0C20  3B 19 08 A4 */	addi r24, r25, 0x8a4
/* 806A0C24  7F 03 C3 78 */	mr r3, r24
/* 806A0C28  4B 9E 2E 01 */	bl __ct__12dCcD_GObjInfFv
/* 806A0C2C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 806A0C30  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 806A0C34  90 18 01 20 */	stw r0, 0x120(r24)
/* 806A0C38  3C 60 80 6A */	lis r3, __vt__8cM3dGAab@ha /* 0x806A1D64@ha */
/* 806A0C3C  38 03 1D 64 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x806A1D64@l */
/* 806A0C40  90 18 01 1C */	stw r0, 0x11c(r24)
/* 806A0C44  3C 60 80 6A */	lis r3, __vt__8cM3dGSph@ha /* 0x806A1D58@ha */
/* 806A0C48  38 03 1D 58 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x806A1D58@l */
/* 806A0C4C  90 18 01 34 */	stw r0, 0x134(r24)
/* 806A0C50  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 806A0C54  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 806A0C58  90 78 01 20 */	stw r3, 0x120(r24)
/* 806A0C5C  3B 83 00 58 */	addi r28, r3, 0x58
/* 806A0C60  93 98 01 34 */	stw r28, 0x134(r24)
/* 806A0C64  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 806A0C68  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 806A0C6C  90 78 00 3C */	stw r3, 0x3c(r24)
/* 806A0C70  3B 63 00 2C */	addi r27, r3, 0x2c
/* 806A0C74  93 78 01 20 */	stw r27, 0x120(r24)
/* 806A0C78  3B 43 00 84 */	addi r26, r3, 0x84
/* 806A0C7C  93 58 01 34 */	stw r26, 0x134(r24)
/* 806A0C80  3B 19 09 DC */	addi r24, r25, 0x9dc
/* 806A0C84  7F 03 C3 78 */	mr r3, r24
/* 806A0C88  4B 9E 2D A1 */	bl __ct__12dCcD_GObjInfFv
/* 806A0C8C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 806A0C90  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 806A0C94  90 18 01 20 */	stw r0, 0x120(r24)
/* 806A0C98  3C 60 80 6A */	lis r3, __vt__8cM3dGAab@ha /* 0x806A1D64@ha */
/* 806A0C9C  38 03 1D 64 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x806A1D64@l */
/* 806A0CA0  90 18 01 1C */	stw r0, 0x11c(r24)
/* 806A0CA4  3C 60 80 6A */	lis r3, __vt__8cM3dGSph@ha /* 0x806A1D58@ha */
/* 806A0CA8  38 03 1D 58 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x806A1D58@l */
/* 806A0CAC  90 18 01 34 */	stw r0, 0x134(r24)
/* 806A0CB0  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 806A0CB4  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 806A0CB8  90 18 01 20 */	stw r0, 0x120(r24)
/* 806A0CBC  93 98 01 34 */	stw r28, 0x134(r24)
/* 806A0CC0  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 806A0CC4  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 806A0CC8  90 18 00 3C */	stw r0, 0x3c(r24)
/* 806A0CCC  93 78 01 20 */	stw r27, 0x120(r24)
/* 806A0CD0  93 58 01 34 */	stw r26, 0x134(r24)
/* 806A0CD4  38 79 0B 18 */	addi r3, r25, 0xb18
/* 806A0CD8  3C 80 80 6A */	lis r4, __ct__8dCcD_SphFv@ha /* 0x806A114C@ha */
/* 806A0CDC  38 84 11 4C */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x806A114C@l */
/* 806A0CE0  3C A0 80 6A */	lis r5, __dt__8dCcD_SphFv@ha /* 0x806A11D0@ha */
/* 806A0CE4  38 A5 11 D0 */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x806A11D0@l */
/* 806A0CE8  38 C0 01 38 */	li r6, 0x138
/* 806A0CEC  38 E0 00 04 */	li r7, 4
/* 806A0CF0  4B CC 10 71 */	bl __construct_array
/* 806A0CF4  38 79 10 1C */	addi r3, r25, 0x101c
/* 806A0CF8  4B 9D 51 B5 */	bl __ct__12dBgS_AcchCirFv
/* 806A0CFC  3B 19 10 5C */	addi r24, r25, 0x105c
/* 806A0D00  7F 03 C3 78 */	mr r3, r24
/* 806A0D04  4B 9D 53 9D */	bl __ct__9dBgS_AcchFv
/* 806A0D08  3C 60 80 6A */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x806A1D34@ha */
/* 806A0D0C  38 63 1D 34 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x806A1D34@l */
/* 806A0D10  90 78 00 10 */	stw r3, 0x10(r24)
/* 806A0D14  38 03 00 0C */	addi r0, r3, 0xc
/* 806A0D18  90 18 00 14 */	stw r0, 0x14(r24)
/* 806A0D1C  38 03 00 18 */	addi r0, r3, 0x18
/* 806A0D20  90 18 00 24 */	stw r0, 0x24(r24)
/* 806A0D24  38 78 00 14 */	addi r3, r24, 0x14
/* 806A0D28  4B 9D 81 41 */	bl SetObj__16dBgS_PolyPassChkFv
lbl_806A0D2C:
/* 806A0D2C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 806A0D30  60 00 00 08 */	ori r0, r0, 8
/* 806A0D34  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_806A0D38:
/* 806A0D38  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 806A0D3C  3C 80 80 6A */	lis r4, d_a_e_db__stringBase0@ha /* 0x806A1A6C@ha */
/* 806A0D40  38 84 1A 6C */	addi r4, r4, d_a_e_db__stringBase0@l /* 0x806A1A6C@l */
/* 806A0D44  4B 98 C1 79 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 806A0D48  7C 7A 1B 78 */	mr r26, r3
/* 806A0D4C  2C 1A 00 04 */	cmpwi r26, 4
/* 806A0D50  40 82 03 00 */	bne lbl_806A1050
/* 806A0D54  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 806A0D58  54 04 46 3E */	srwi r4, r0, 0x18
/* 806A0D5C  28 04 00 FF */	cmplwi r4, 0xff
/* 806A0D60  41 82 00 28 */	beq lbl_806A0D88
/* 806A0D64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806A0D68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806A0D6C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806A0D70  7C 05 07 74 */	extsb r5, r0
/* 806A0D74  4B 99 45 ED */	bl isSwitch__10dSv_info_cCFii
/* 806A0D78  2C 03 00 00 */	cmpwi r3, 0
/* 806A0D7C  41 82 00 0C */	beq lbl_806A0D88
/* 806A0D80  38 60 00 05 */	li r3, 5
/* 806A0D84  48 00 02 D0 */	b lbl_806A1054
lbl_806A0D88:
/* 806A0D88  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 806A0D8C  98 1F 05 B4 */	stb r0, 0x5b4(r31)
/* 806A0D90  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 806A0D94  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 806A0D98  98 1F 05 B5 */	stb r0, 0x5b5(r31)
/* 806A0D9C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 806A0DA0  54 00 87 3E */	rlwinm r0, r0, 0x10, 0x1c, 0x1f
/* 806A0DA4  98 1F 05 B6 */	stb r0, 0x5b6(r31)
/* 806A0DA8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 806A0DAC  54 00 67 3E */	rlwinm r0, r0, 0xc, 0x1c, 0x1f
/* 806A0DB0  98 1F 05 B7 */	stb r0, 0x5b7(r31)
/* 806A0DB4  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 806A0DB8  28 00 00 FF */	cmplwi r0, 0xff
/* 806A0DBC  40 82 00 0C */	bne lbl_806A0DC8
/* 806A0DC0  38 00 00 00 */	li r0, 0
/* 806A0DC4  98 1F 05 B4 */	stb r0, 0x5b4(r31)
lbl_806A0DC8:
/* 806A0DC8  88 1F 05 B5 */	lbz r0, 0x5b5(r31)
/* 806A0DCC  28 00 00 FF */	cmplwi r0, 0xff
/* 806A0DD0  41 82 00 0C */	beq lbl_806A0DDC
/* 806A0DD4  28 00 00 00 */	cmplwi r0, 0
/* 806A0DD8  40 82 00 10 */	bne lbl_806A0DE8
lbl_806A0DDC:
/* 806A0DDC  C0 1E 01 44 */	lfs f0, 0x144(r30)
/* 806A0DE0  D0 1F 06 70 */	stfs f0, 0x670(r31)
/* 806A0DE4  48 00 00 28 */	b lbl_806A0E0C
lbl_806A0DE8:
/* 806A0DE8  C0 5E 00 00 */	lfs f2, 0(r30)
/* 806A0DEC  C8 3E 01 58 */	lfd f1, 0x158(r30)
/* 806A0DF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A0DF4  3C 00 43 30 */	lis r0, 0x4330
/* 806A0DF8  90 01 00 10 */	stw r0, 0x10(r1)
/* 806A0DFC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 806A0E00  EC 00 08 28 */	fsubs f0, f0, f1
/* 806A0E04  EC 02 00 32 */	fmuls f0, f2, f0
/* 806A0E08  D0 1F 06 70 */	stfs f0, 0x670(r31)
lbl_806A0E0C:
/* 806A0E0C  7F E3 FB 78 */	mr r3, r31
/* 806A0E10  3C 80 80 6A */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x806A0960@ha */
/* 806A0E14  38 84 09 60 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x806A0960@l */
/* 806A0E18  38 A0 40 60 */	li r5, 0x4060
/* 806A0E1C  4B 97 96 95 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 806A0E20  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806A0E24  40 82 00 0C */	bne lbl_806A0E30
/* 806A0E28  38 60 00 05 */	li r3, 5
/* 806A0E2C  48 00 02 28 */	b lbl_806A1054
lbl_806A0E30:
/* 806A0E30  3C 60 80 6A */	lis r3, data_806A1D98@ha /* 0x806A1D98@ha */
/* 806A0E34  8C 03 1D 98 */	lbzu r0, data_806A1D98@l(r3)  /* 0x806A1D98@l */
/* 806A0E38  28 00 00 00 */	cmplwi r0, 0
/* 806A0E3C  40 82 00 20 */	bne lbl_806A0E5C
/* 806A0E40  38 00 00 01 */	li r0, 1
/* 806A0E44  98 1F 12 6C */	stb r0, 0x126c(r31)
/* 806A0E48  98 03 00 00 */	stb r0, 0(r3)
/* 806A0E4C  38 00 FF FF */	li r0, -1
/* 806A0E50  3C 60 80 6A */	lis r3, l_HIO@ha /* 0x806A1DA8@ha */
/* 806A0E54  38 63 1D A8 */	addi r3, r3, l_HIO@l /* 0x806A1DA8@l */
/* 806A0E58  98 03 00 04 */	stb r0, 4(r3)
lbl_806A0E5C:
/* 806A0E5C  38 00 00 04 */	li r0, 4
/* 806A0E60  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 806A0E64  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 806A0E68  80 63 00 04 */	lwz r3, 4(r3)
/* 806A0E6C  38 03 00 24 */	addi r0, r3, 0x24
/* 806A0E70  90 1F 05 04 */	stw r0, 0x504(r31)
/* 806A0E74  7F E3 FB 78 */	mr r3, r31
/* 806A0E78  C0 3E 01 48 */	lfs f1, 0x148(r30)
/* 806A0E7C  C0 5E 01 4C */	lfs f2, 0x14c(r30)
/* 806A0E80  FC 60 08 90 */	fmr f3, f1
/* 806A0E84  4B 97 96 A5 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 806A0E88  7F E3 FB 78 */	mr r3, r31
/* 806A0E8C  C0 3E 00 FC */	lfs f1, 0xfc(r30)
/* 806A0E90  C0 5E 00 84 */	lfs f2, 0x84(r30)
/* 806A0E94  FC 60 08 90 */	fmr f3, f1
/* 806A0E98  4B 97 96 A1 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 806A0E9C  38 00 00 1E */	li r0, 0x1e
/* 806A0EA0  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 806A0EA4  B0 1F 05 60 */	sth r0, 0x560(r31)
/* 806A0EA8  38 7F 08 68 */	addi r3, r31, 0x868
/* 806A0EAC  38 80 00 64 */	li r4, 0x64
/* 806A0EB0  38 A0 00 00 */	li r5, 0
/* 806A0EB4  7F E6 FB 78 */	mr r6, r31
/* 806A0EB8  4B 9E 29 A9 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 806A0EBC  38 7F 08 A4 */	addi r3, r31, 0x8a4
/* 806A0EC0  38 9D 01 8C */	addi r4, r29, 0x18c
/* 806A0EC4  4B 9E 3B 71 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806A0EC8  38 1F 08 68 */	addi r0, r31, 0x868
/* 806A0ECC  90 1F 08 E8 */	stw r0, 0x8e8(r31)
/* 806A0ED0  38 7F 09 DC */	addi r3, r31, 0x9dc
/* 806A0ED4  38 9D 01 CC */	addi r4, r29, 0x1cc
/* 806A0ED8  4B 9E 3B 5D */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806A0EDC  3B 3F 08 68 */	addi r25, r31, 0x868
/* 806A0EE0  93 3F 0A 20 */	stw r25, 0xa20(r31)
/* 806A0EE4  3B 80 00 00 */	li r28, 0
/* 806A0EE8  3B 00 00 00 */	li r24, 0
lbl_806A0EEC:
/* 806A0EEC  7F 7F C2 14 */	add r27, r31, r24
/* 806A0EF0  38 7B 0B 18 */	addi r3, r27, 0xb18
/* 806A0EF4  38 9D 02 0C */	addi r4, r29, 0x20c
/* 806A0EF8  4B 9E 3B 3D */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806A0EFC  93 3B 0B 5C */	stw r25, 0xb5c(r27)
/* 806A0F00  3B 9C 00 01 */	addi r28, r28, 1
/* 806A0F04  2C 1C 00 04 */	cmpwi r28, 4
/* 806A0F08  3B 18 01 38 */	addi r24, r24, 0x138
/* 806A0F0C  41 80 FF E0 */	blt lbl_806A0EEC
/* 806A0F10  38 00 00 00 */	li r0, 0
/* 806A0F14  90 01 00 08 */	stw r0, 8(r1)
/* 806A0F18  38 7F 10 5C */	addi r3, r31, 0x105c
/* 806A0F1C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 806A0F20  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 806A0F24  7F E6 FB 78 */	mr r6, r31
/* 806A0F28  38 E0 00 01 */	li r7, 1
/* 806A0F2C  39 1F 10 1C */	addi r8, r31, 0x101c
/* 806A0F30  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 806A0F34  39 40 00 00 */	li r10, 0
/* 806A0F38  4B 9D 53 11 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 806A0F3C  38 7F 10 1C */	addi r3, r31, 0x101c
/* 806A0F40  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 806A0F44  C0 5E 00 A8 */	lfs f2, 0xa8(r30)
/* 806A0F48  4B 9D 50 11 */	bl SetWall__12dBgS_AcchCirFff
/* 806A0F4C  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 806A0F50  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 806A0F54  38 BF 05 38 */	addi r5, r31, 0x538
/* 806A0F58  38 C0 00 03 */	li r6, 3
/* 806A0F5C  38 E0 00 01 */	li r7, 1
/* 806A0F60  4B C2 01 35 */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 806A0F64  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 806A0F68  3C 80 80 6A */	lis r4, d_a_e_db__stringBase0@ha /* 0x806A1A6C@ha */
/* 806A0F6C  38 84 1A 6C */	addi r4, r4, d_a_e_db__stringBase0@l /* 0x806A1A6C@l */
/* 806A0F70  4B C2 0C 21 */	bl setEnemyName__15Z2CreatureEnemyFPCc
/* 806A0F74  38 1F 05 BC */	addi r0, r31, 0x5bc
/* 806A0F78  90 1F 10 00 */	stw r0, 0x1000(r31)
/* 806A0F7C  38 00 00 01 */	li r0, 1
/* 806A0F80  98 1F 10 16 */	stb r0, 0x1016(r31)
/* 806A0F84  38 00 00 2D */	li r0, 0x2d
/* 806A0F88  90 1F 10 10 */	stw r0, 0x1010(r31)
/* 806A0F8C  C0 3E 01 50 */	lfs f1, 0x150(r30)
/* 806A0F90  4B BC 69 C5 */	bl cM_rndF__Ff
/* 806A0F94  FC 00 08 1E */	fctiwz f0, f1
/* 806A0F98  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 806A0F9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A0FA0  B0 1F 06 68 */	sth r0, 0x668(r31)
/* 806A0FA4  3C 60 80 6A */	lis r3, l_HIO@ha /* 0x806A1DA8@ha */
/* 806A0FA8  38 63 1D A8 */	addi r3, r3, l_HIO@l /* 0x806A1DA8@l */
/* 806A0FAC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806A0FB0  D0 1F 06 90 */	stfs f0, 0x690(r31)
/* 806A0FB4  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 806A0FB8  28 00 00 01 */	cmplwi r0, 1
/* 806A0FBC  40 82 00 2C */	bne lbl_806A0FE8
/* 806A0FC0  38 00 00 0A */	li r0, 0xa
/* 806A0FC4  B0 1F 06 6A */	sth r0, 0x66a(r31)
/* 806A0FC8  38 00 00 00 */	li r0, 0
/* 806A0FCC  B0 1F 06 6C */	sth r0, 0x66c(r31)
/* 806A0FD0  38 00 80 00 */	li r0, -32768
/* 806A0FD4  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 806A0FD8  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 806A0FDC  38 00 00 01 */	li r0, 1
/* 806A0FE0  98 1F 08 50 */	stb r0, 0x850(r31)
/* 806A0FE4  48 00 00 20 */	b lbl_806A1004
lbl_806A0FE8:
/* 806A0FE8  28 00 00 02 */	cmplwi r0, 2
/* 806A0FEC  40 82 00 18 */	bne lbl_806A1004
/* 806A0FF0  38 00 80 00 */	li r0, -32768
/* 806A0FF4  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 806A0FF8  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 806A0FFC  38 00 00 01 */	li r0, 1
/* 806A1000  98 1F 08 50 */	stb r0, 0x850(r31)
lbl_806A1004:
/* 806A1004  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806A1008  7C 07 07 74 */	extsb r7, r0
/* 806A100C  38 00 00 00 */	li r0, 0
/* 806A1010  90 01 00 08 */	stw r0, 8(r1)
/* 806A1014  38 60 01 C6 */	li r3, 0x1c6
/* 806A1018  28 1F 00 00 */	cmplwi r31, 0
/* 806A101C  41 82 00 0C */	beq lbl_806A1028
/* 806A1020  80 9F 00 04 */	lwz r4, 4(r31)
/* 806A1024  48 00 00 08 */	b lbl_806A102C
lbl_806A1028:
/* 806A1028  38 80 FF FF */	li r4, -1
lbl_806A102C:
/* 806A102C  38 A0 00 00 */	li r5, 0
/* 806A1030  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 806A1034  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 806A1038  39 20 00 00 */	li r9, 0
/* 806A103C  39 40 FF FF */	li r10, -1
/* 806A1040  4B 97 8E B1 */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 806A1044  90 7F 12 34 */	stw r3, 0x1234(r31)
/* 806A1048  7F E3 FB 78 */	mr r3, r31
/* 806A104C  4B FF F4 E1 */	bl daE_DB_Execute__FP10e_db_class
lbl_806A1050:
/* 806A1050  7F 43 D3 78 */	mr r3, r26
lbl_806A1054:
/* 806A1054  39 61 00 40 */	addi r11, r1, 0x40
/* 806A1058  4B CC 11 BD */	bl _restgpr_24
/* 806A105C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806A1060  7C 08 03 A6 */	mtlr r0
/* 806A1064  38 21 00 40 */	addi r1, r1, 0x40
/* 806A1068  4E 80 00 20 */	blr 

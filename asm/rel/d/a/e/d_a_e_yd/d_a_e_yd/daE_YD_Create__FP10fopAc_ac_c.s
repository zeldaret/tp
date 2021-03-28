lbl_807F6C90:
/* 807F6C90  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807F6C94  7C 08 02 A6 */	mflr r0
/* 807F6C98  90 01 00 44 */	stw r0, 0x44(r1)
/* 807F6C9C  39 61 00 40 */	addi r11, r1, 0x40
/* 807F6CA0  4B B6 B5 28 */	b _savegpr_24
/* 807F6CA4  7C 7F 1B 78 */	mr r31, r3
/* 807F6CA8  3C 80 80 7F */	lis r4, cNullVec__6Z2Calc@ha
/* 807F6CAC  3B A4 7B 38 */	addi r29, r4, cNullVec__6Z2Calc@l
/* 807F6CB0  3C 80 80 7F */	lis r4, lit_3788@ha
/* 807F6CB4  3B C4 7A 00 */	addi r30, r4, lit_3788@l
/* 807F6CB8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 807F6CBC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 807F6CC0  40 82 01 B4 */	bne lbl_807F6E74
/* 807F6CC4  7F E0 FB 79 */	or. r0, r31, r31
/* 807F6CC8  41 82 01 A0 */	beq lbl_807F6E68
/* 807F6CCC  7C 19 03 78 */	mr r25, r0
/* 807F6CD0  4B 82 1E 94 */	b __ct__10fopAc_ac_cFv
/* 807F6CD4  38 79 05 BC */	addi r3, r25, 0x5bc
/* 807F6CD8  4B AC A2 8C */	b __ct__15Z2CreatureEnemyFv
/* 807F6CDC  38 79 06 A4 */	addi r3, r25, 0x6a4
/* 807F6CE0  3C 80 80 7F */	lis r4, __ct__4cXyzFv@ha
/* 807F6CE4  38 84 74 80 */	addi r4, r4, __ct__4cXyzFv@l
/* 807F6CE8  3C A0 80 7F */	lis r5, __dt__4cXyzFv@ha
/* 807F6CEC  38 A5 79 B0 */	addi r5, r5, __dt__4cXyzFv@l
/* 807F6CF0  38 C0 00 0C */	li r6, 0xc
/* 807F6CF4  38 E0 00 0C */	li r7, 0xc
/* 807F6CF8  4B B6 B0 68 */	b __construct_array
/* 807F6CFC  38 79 07 34 */	addi r3, r25, 0x734
/* 807F6D00  3C 80 80 7F */	lis r4, __ct__5csXyzFv@ha
/* 807F6D04  38 84 74 7C */	addi r4, r4, __ct__5csXyzFv@l
/* 807F6D08  3C A0 80 7F */	lis r5, __dt__5csXyzFv@ha
/* 807F6D0C  38 A5 79 74 */	addi r5, r5, __dt__5csXyzFv@l
/* 807F6D10  38 C0 00 06 */	li r6, 6
/* 807F6D14  38 E0 00 0C */	li r7, 0xc
/* 807F6D18  4B B6 B0 48 */	b __construct_array
/* 807F6D1C  3C 60 80 7F */	lis r3, __vt__18mDoExt_3DlineMat_c@ha
/* 807F6D20  38 03 7D 34 */	addi r0, r3, __vt__18mDoExt_3DlineMat_c@l
/* 807F6D24  90 19 08 0C */	stw r0, 0x80c(r25)
/* 807F6D28  3C 60 80 3A */	lis r3, __vt__19mDoExt_3DlineMat1_c@ha
/* 807F6D2C  38 03 32 48 */	addi r0, r3, __vt__19mDoExt_3DlineMat1_c@l
/* 807F6D30  90 19 08 0C */	stw r0, 0x80c(r25)
/* 807F6D34  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 807F6D38  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 807F6D3C  90 19 08 7C */	stw r0, 0x87c(r25)
/* 807F6D40  38 79 08 80 */	addi r3, r25, 0x880
/* 807F6D44  4B 88 CA 1C */	b __ct__10dCcD_GSttsFv
/* 807F6D48  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 807F6D4C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 807F6D50  90 79 08 7C */	stw r3, 0x87c(r25)
/* 807F6D54  38 03 00 20 */	addi r0, r3, 0x20
/* 807F6D58  90 19 08 80 */	stw r0, 0x880(r25)
/* 807F6D5C  3B 19 08 A0 */	addi r24, r25, 0x8a0
/* 807F6D60  7F 03 C3 78 */	mr r3, r24
/* 807F6D64  4B 88 CC C4 */	b __ct__12dCcD_GObjInfFv
/* 807F6D68  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 807F6D6C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 807F6D70  90 18 01 20 */	stw r0, 0x120(r24)
/* 807F6D74  3C 60 80 7F */	lis r3, __vt__8cM3dGAab@ha
/* 807F6D78  38 03 7D 28 */	addi r0, r3, __vt__8cM3dGAab@l
/* 807F6D7C  90 18 01 1C */	stw r0, 0x11c(r24)
/* 807F6D80  3C 60 80 7F */	lis r3, __vt__8cM3dGSph@ha
/* 807F6D84  38 03 7D 1C */	addi r0, r3, __vt__8cM3dGSph@l
/* 807F6D88  90 18 01 34 */	stw r0, 0x134(r24)
/* 807F6D8C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 807F6D90  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 807F6D94  90 78 01 20 */	stw r3, 0x120(r24)
/* 807F6D98  3B 83 00 58 */	addi r28, r3, 0x58
/* 807F6D9C  93 98 01 34 */	stw r28, 0x134(r24)
/* 807F6DA0  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 807F6DA4  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 807F6DA8  90 78 00 3C */	stw r3, 0x3c(r24)
/* 807F6DAC  3B 63 00 2C */	addi r27, r3, 0x2c
/* 807F6DB0  93 78 01 20 */	stw r27, 0x120(r24)
/* 807F6DB4  3B 43 00 84 */	addi r26, r3, 0x84
/* 807F6DB8  93 58 01 34 */	stw r26, 0x134(r24)
/* 807F6DBC  3B 19 09 D8 */	addi r24, r25, 0x9d8
/* 807F6DC0  7F 03 C3 78 */	mr r3, r24
/* 807F6DC4  4B 88 CC 64 */	b __ct__12dCcD_GObjInfFv
/* 807F6DC8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 807F6DCC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 807F6DD0  90 18 01 20 */	stw r0, 0x120(r24)
/* 807F6DD4  3C 60 80 7F */	lis r3, __vt__8cM3dGAab@ha
/* 807F6DD8  38 03 7D 28 */	addi r0, r3, __vt__8cM3dGAab@l
/* 807F6DDC  90 18 01 1C */	stw r0, 0x11c(r24)
/* 807F6DE0  3C 60 80 7F */	lis r3, __vt__8cM3dGSph@ha
/* 807F6DE4  38 03 7D 1C */	addi r0, r3, __vt__8cM3dGSph@l
/* 807F6DE8  90 18 01 34 */	stw r0, 0x134(r24)
/* 807F6DEC  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 807F6DF0  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 807F6DF4  90 18 01 20 */	stw r0, 0x120(r24)
/* 807F6DF8  93 98 01 34 */	stw r28, 0x134(r24)
/* 807F6DFC  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 807F6E00  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l
/* 807F6E04  90 18 00 3C */	stw r0, 0x3c(r24)
/* 807F6E08  93 78 01 20 */	stw r27, 0x120(r24)
/* 807F6E0C  93 58 01 34 */	stw r26, 0x134(r24)
/* 807F6E10  38 79 0B 14 */	addi r3, r25, 0xb14
/* 807F6E14  3C 80 80 7F */	lis r4, __ct__8dCcD_SphFv@ha
/* 807F6E18  38 84 72 40 */	addi r4, r4, __ct__8dCcD_SphFv@l
/* 807F6E1C  3C A0 80 7F */	lis r5, __dt__8dCcD_SphFv@ha
/* 807F6E20  38 A5 72 C4 */	addi r5, r5, __dt__8dCcD_SphFv@l
/* 807F6E24  38 C0 01 38 */	li r6, 0x138
/* 807F6E28  38 E0 00 04 */	li r7, 4
/* 807F6E2C  4B B6 AF 34 */	b __construct_array
/* 807F6E30  38 79 10 18 */	addi r3, r25, 0x1018
/* 807F6E34  4B 87 F0 78 */	b __ct__12dBgS_AcchCirFv
/* 807F6E38  3B 19 10 58 */	addi r24, r25, 0x1058
/* 807F6E3C  7F 03 C3 78 */	mr r3, r24
/* 807F6E40  4B 87 F2 60 */	b __ct__9dBgS_AcchFv
/* 807F6E44  3C 60 80 7F */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 807F6E48  38 63 7C F8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 807F6E4C  90 78 00 10 */	stw r3, 0x10(r24)
/* 807F6E50  38 03 00 0C */	addi r0, r3, 0xc
/* 807F6E54  90 18 00 14 */	stw r0, 0x14(r24)
/* 807F6E58  38 03 00 18 */	addi r0, r3, 0x18
/* 807F6E5C  90 18 00 24 */	stw r0, 0x24(r24)
/* 807F6E60  38 78 00 14 */	addi r3, r24, 0x14
/* 807F6E64  4B 88 20 04 */	b SetObj__16dBgS_PolyPassChkFv
lbl_807F6E68:
/* 807F6E68  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 807F6E6C  60 00 00 08 */	ori r0, r0, 8
/* 807F6E70  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_807F6E74:
/* 807F6E74  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 807F6E78  3C 80 80 7F */	lis r4, stringBase0@ha
/* 807F6E7C  38 84 7B 30 */	addi r4, r4, stringBase0@l
/* 807F6E80  4B 83 60 3C */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 807F6E84  7C 7A 1B 78 */	mr r26, r3
/* 807F6E88  2C 1A 00 04 */	cmpwi r26, 4
/* 807F6E8C  40 82 02 B8 */	bne lbl_807F7144
/* 807F6E90  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 807F6E94  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 807F6E98  98 1F 05 B4 */	stb r0, 0x5b4(r31)
/* 807F6E9C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 807F6EA0  54 00 E7 BE */	rlwinm r0, r0, 0x1c, 0x1e, 0x1f
/* 807F6EA4  98 1F 05 B6 */	stb r0, 0x5b6(r31)
/* 807F6EA8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 807F6EAC  54 00 D7 BE */	rlwinm r0, r0, 0x1a, 0x1e, 0x1f
/* 807F6EB0  98 1F 05 B7 */	stb r0, 0x5b7(r31)
/* 807F6EB4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 807F6EB8  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 807F6EBC  98 1F 05 B5 */	stb r0, 0x5b5(r31)
/* 807F6EC0  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 807F6EC4  28 00 00 0F */	cmplwi r0, 0xf
/* 807F6EC8  40 82 00 0C */	bne lbl_807F6ED4
/* 807F6ECC  38 00 00 00 */	li r0, 0
/* 807F6ED0  98 1F 05 B4 */	stb r0, 0x5b4(r31)
lbl_807F6ED4:
/* 807F6ED4  88 1F 05 B5 */	lbz r0, 0x5b5(r31)
/* 807F6ED8  28 00 00 FF */	cmplwi r0, 0xff
/* 807F6EDC  41 82 00 0C */	beq lbl_807F6EE8
/* 807F6EE0  28 00 00 00 */	cmplwi r0, 0
/* 807F6EE4  40 82 00 10 */	bne lbl_807F6EF4
lbl_807F6EE8:
/* 807F6EE8  C0 1E 01 10 */	lfs f0, 0x110(r30)
/* 807F6EEC  D0 1F 06 74 */	stfs f0, 0x674(r31)
/* 807F6EF0  48 00 00 28 */	b lbl_807F6F18
lbl_807F6EF4:
/* 807F6EF4  C0 5E 00 00 */	lfs f2, 0(r30)
/* 807F6EF8  C8 3E 01 28 */	lfd f1, 0x128(r30)
/* 807F6EFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 807F6F00  3C 00 43 30 */	lis r0, 0x4330
/* 807F6F04  90 01 00 10 */	stw r0, 0x10(r1)
/* 807F6F08  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 807F6F0C  EC 00 08 28 */	fsubs f0, f0, f1
/* 807F6F10  EC 02 00 32 */	fmuls f0, f2, f0
/* 807F6F14  D0 1F 06 74 */	stfs f0, 0x674(r31)
lbl_807F6F18:
/* 807F6F18  7F E3 FB 78 */	mr r3, r31
/* 807F6F1C  3C 80 80 7F */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 807F6F20  38 84 69 BC */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 807F6F24  38 A0 47 00 */	li r5, 0x4700
/* 807F6F28  4B 82 35 88 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 807F6F2C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807F6F30  40 82 00 0C */	bne lbl_807F6F3C
/* 807F6F34  38 60 00 05 */	li r3, 5
/* 807F6F38  48 00 02 10 */	b lbl_807F7148
lbl_807F6F3C:
/* 807F6F3C  3C 60 80 7F */	lis r3, data_807F7D68@ha
/* 807F6F40  8C 03 7D 68 */	lbzu r0, data_807F7D68@l(r3)
/* 807F6F44  28 00 00 00 */	cmplwi r0, 0
/* 807F6F48  40 82 00 20 */	bne lbl_807F6F68
/* 807F6F4C  38 00 00 01 */	li r0, 1
/* 807F6F50  98 1F 12 68 */	stb r0, 0x1268(r31)
/* 807F6F54  98 03 00 00 */	stb r0, 0(r3)
/* 807F6F58  38 00 FF FF */	li r0, -1
/* 807F6F5C  3C 60 80 7F */	lis r3, l_HIO@ha
/* 807F6F60  38 63 7D 78 */	addi r3, r3, l_HIO@l
/* 807F6F64  98 03 00 04 */	stb r0, 4(r3)
lbl_807F6F68:
/* 807F6F68  38 00 00 04 */	li r0, 4
/* 807F6F6C  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 807F6F70  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 807F6F74  80 63 00 04 */	lwz r3, 4(r3)
/* 807F6F78  38 03 00 24 */	addi r0, r3, 0x24
/* 807F6F7C  90 1F 05 04 */	stw r0, 0x504(r31)
/* 807F6F80  7F E3 FB 78 */	mr r3, r31
/* 807F6F84  C0 3E 01 14 */	lfs f1, 0x114(r30)
/* 807F6F88  C0 5E 01 18 */	lfs f2, 0x118(r30)
/* 807F6F8C  FC 60 08 90 */	fmr f3, f1
/* 807F6F90  4B 82 35 98 */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 807F6F94  7F E3 FB 78 */	mr r3, r31
/* 807F6F98  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 807F6F9C  C0 5E 00 7C */	lfs f2, 0x7c(r30)
/* 807F6FA0  FC 60 08 90 */	fmr f3, f1
/* 807F6FA4  4B 82 35 94 */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 807F6FA8  38 00 00 1E */	li r0, 0x1e
/* 807F6FAC  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 807F6FB0  B0 1F 05 60 */	sth r0, 0x560(r31)
/* 807F6FB4  38 7F 08 64 */	addi r3, r31, 0x864
/* 807F6FB8  38 80 00 64 */	li r4, 0x64
/* 807F6FBC  38 A0 00 00 */	li r5, 0
/* 807F6FC0  7F E6 FB 78 */	mr r6, r31
/* 807F6FC4  4B 88 C8 9C */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 807F6FC8  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 807F6FCC  38 9D 00 8C */	addi r4, r29, 0x8c
/* 807F6FD0  4B 88 DA 64 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 807F6FD4  38 1F 08 64 */	addi r0, r31, 0x864
/* 807F6FD8  90 1F 08 E4 */	stw r0, 0x8e4(r31)
/* 807F6FDC  38 7F 09 D8 */	addi r3, r31, 0x9d8
/* 807F6FE0  38 9D 00 CC */	addi r4, r29, 0xcc
/* 807F6FE4  4B 88 DA 50 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 807F6FE8  3B 3F 08 64 */	addi r25, r31, 0x864
/* 807F6FEC  93 3F 0A 1C */	stw r25, 0xa1c(r31)
/* 807F6FF0  3B 80 00 00 */	li r28, 0
/* 807F6FF4  3B 00 00 00 */	li r24, 0
lbl_807F6FF8:
/* 807F6FF8  7F 7F C2 14 */	add r27, r31, r24
/* 807F6FFC  38 7B 0B 14 */	addi r3, r27, 0xb14
/* 807F7000  38 9D 01 0C */	addi r4, r29, 0x10c
/* 807F7004  4B 88 DA 30 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 807F7008  93 3B 0B 58 */	stw r25, 0xb58(r27)
/* 807F700C  3B 9C 00 01 */	addi r28, r28, 1
/* 807F7010  2C 1C 00 04 */	cmpwi r28, 4
/* 807F7014  3B 18 01 38 */	addi r24, r24, 0x138
/* 807F7018  41 80 FF E0 */	blt lbl_807F6FF8
/* 807F701C  38 00 00 00 */	li r0, 0
/* 807F7020  90 01 00 08 */	stw r0, 8(r1)
/* 807F7024  38 7F 10 58 */	addi r3, r31, 0x1058
/* 807F7028  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807F702C  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 807F7030  7F E6 FB 78 */	mr r6, r31
/* 807F7034  38 E0 00 01 */	li r7, 1
/* 807F7038  39 1F 10 18 */	addi r8, r31, 0x1018
/* 807F703C  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 807F7040  39 40 00 00 */	li r10, 0
/* 807F7044  4B 87 F2 04 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 807F7048  38 7F 10 18 */	addi r3, r31, 0x1018
/* 807F704C  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 807F7050  FC 40 08 90 */	fmr f2, f1
/* 807F7054  4B 87 EF 04 */	b SetWall__12dBgS_AcchCirFff
/* 807F7058  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 807F705C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807F7060  38 BF 05 38 */	addi r5, r31, 0x538
/* 807F7064  38 C0 00 03 */	li r6, 3
/* 807F7068  38 E0 00 01 */	li r7, 1
/* 807F706C  4B AC A0 28 */	b init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 807F7070  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 807F7074  3C 80 80 7F */	lis r4, stringBase0@ha
/* 807F7078  38 84 7B 30 */	addi r4, r4, stringBase0@l
/* 807F707C  4B AC AB 14 */	b setEnemyName__15Z2CreatureEnemyFPCc
/* 807F7080  38 1F 05 BC */	addi r0, r31, 0x5bc
/* 807F7084  90 1F 0F FC */	stw r0, 0xffc(r31)
/* 807F7088  38 00 00 01 */	li r0, 1
/* 807F708C  98 1F 10 12 */	stb r0, 0x1012(r31)
/* 807F7090  38 00 00 2D */	li r0, 0x2d
/* 807F7094  90 1F 10 0C */	stw r0, 0x100c(r31)
/* 807F7098  C0 3E 01 20 */	lfs f1, 0x120(r30)
/* 807F709C  4B A7 08 B8 */	b cM_rndF__Ff
/* 807F70A0  FC 00 08 1E */	fctiwz f0, f1
/* 807F70A4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 807F70A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807F70AC  B0 1F 06 6C */	sth r0, 0x66c(r31)
/* 807F70B0  3C 60 80 7F */	lis r3, l_HIO@ha
/* 807F70B4  38 63 7D 78 */	addi r3, r3, l_HIO@l
/* 807F70B8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 807F70BC  D0 1F 06 98 */	stfs f0, 0x698(r31)
/* 807F70C0  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 807F70C4  28 00 00 02 */	cmplwi r0, 2
/* 807F70C8  40 82 00 18 */	bne lbl_807F70E0
/* 807F70CC  38 00 80 00 */	li r0, -32768
/* 807F70D0  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 807F70D4  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 807F70D8  38 00 00 01 */	li r0, 1
/* 807F70DC  98 1F 08 55 */	stb r0, 0x855(r31)
lbl_807F70E0:
/* 807F70E0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 807F70E4  7C 07 07 74 */	extsb r7, r0
/* 807F70E8  38 00 00 00 */	li r0, 0
/* 807F70EC  90 01 00 08 */	stw r0, 8(r1)
/* 807F70F0  38 60 01 CE */	li r3, 0x1ce
/* 807F70F4  28 1F 00 00 */	cmplwi r31, 0
/* 807F70F8  41 82 00 0C */	beq lbl_807F7104
/* 807F70FC  80 9F 00 04 */	lwz r4, 4(r31)
/* 807F7100  48 00 00 08 */	b lbl_807F7108
lbl_807F7104:
/* 807F7104  38 80 FF FF */	li r4, -1
lbl_807F7108:
/* 807F7108  38 A0 00 00 */	li r5, 0
/* 807F710C  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 807F7110  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 807F7114  39 20 00 00 */	li r9, 0
/* 807F7118  39 40 FF FF */	li r10, -1
/* 807F711C  4B 82 2D D4 */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 807F7120  90 7F 12 30 */	stw r3, 0x1230(r31)
/* 807F7124  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 807F7128  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 807F712C  98 1F 05 65 */	stb r0, 0x565(r31)
/* 807F7130  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 807F7134  54 00 46 3E */	srwi r0, r0, 0x18
/* 807F7138  98 1F 05 64 */	stb r0, 0x564(r31)
/* 807F713C  7F E3 FB 78 */	mr r3, r31
/* 807F7140  4B FF F5 09 */	bl daE_YD_Execute__FP10e_yd_class
lbl_807F7144:
/* 807F7144  7F 43 D3 78 */	mr r3, r26
lbl_807F7148:
/* 807F7148  39 61 00 40 */	addi r11, r1, 0x40
/* 807F714C  4B B6 B0 C8 */	b _restgpr_24
/* 807F7150  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807F7154  7C 08 03 A6 */	mtlr r0
/* 807F7158  38 21 00 40 */	addi r1, r1, 0x40
/* 807F715C  4E 80 00 20 */	blr 

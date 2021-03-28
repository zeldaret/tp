lbl_807A2D28:
/* 807A2D28  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 807A2D2C  7C 08 02 A6 */	mflr r0
/* 807A2D30  90 01 00 64 */	stw r0, 0x64(r1)
/* 807A2D34  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 807A2D38  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 807A2D3C  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 807A2D40  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 807A2D44  39 61 00 40 */	addi r11, r1, 0x40
/* 807A2D48  4B BB F4 88 */	b _savegpr_26
/* 807A2D4C  7C 7E 1B 78 */	mr r30, r3
/* 807A2D50  3C 60 80 7A */	lis r3, lit_3903@ha
/* 807A2D54  3B E3 68 24 */	addi r31, r3, lit_3903@l
/* 807A2D58  80 9E 05 CC */	lwz r4, 0x5cc(r30)
/* 807A2D5C  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 807A2D60  FC 00 00 1E */	fctiwz f0, f0
/* 807A2D64  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 807A2D68  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 807A2D6C  C3 FF 00 04 */	lfs f31, 4(r31)
/* 807A2D70  3B A0 02 00 */	li r29, 0x200
/* 807A2D74  3B 80 00 00 */	li r28, 0
/* 807A2D78  3B 60 00 00 */	li r27, 0
/* 807A2D7C  3B 40 00 00 */	li r26, 0
/* 807A2D80  3C 60 80 7A */	lis r3, l_HIO@ha
/* 807A2D84  38 63 6D F4 */	addi r3, r3, l_HIO@l
/* 807A2D88  C3 C3 00 10 */	lfs f30, 0x10(r3)
/* 807A2D8C  3C 60 80 7A */	lis r3, small@ha
/* 807A2D90  80 03 6D E0 */	lwz r0, small@l(r3)
/* 807A2D94  2C 00 00 00 */	cmpwi r0, 0
/* 807A2D98  41 82 00 0C */	beq lbl_807A2DA4
/* 807A2D9C  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 807A2DA0  EF DE 00 32 */	fmuls f30, f30, f0
lbl_807A2DA4:
/* 807A2DA4  A8 1E 06 80 */	lha r0, 0x680(r30)
/* 807A2DA8  2C 00 00 03 */	cmpwi r0, 3
/* 807A2DAC  41 82 01 50 */	beq lbl_807A2EFC
/* 807A2DB0  40 80 00 1C */	bge lbl_807A2DCC
/* 807A2DB4  2C 00 00 01 */	cmpwi r0, 1
/* 807A2DB8  41 82 00 44 */	beq lbl_807A2DFC
/* 807A2DBC  40 80 00 C8 */	bge lbl_807A2E84
/* 807A2DC0  2C 00 00 00 */	cmpwi r0, 0
/* 807A2DC4  40 80 00 18 */	bge lbl_807A2DDC
/* 807A2DC8  48 00 02 68 */	b lbl_807A3030
lbl_807A2DCC:
/* 807A2DCC  2C 00 00 05 */	cmpwi r0, 5
/* 807A2DD0  41 82 02 14 */	beq lbl_807A2FE4
/* 807A2DD4  40 80 02 5C */	bge lbl_807A3030
/* 807A2DD8  48 00 01 B0 */	b lbl_807A2F88
lbl_807A2DDC:
/* 807A2DDC  7F C3 F3 78 */	mr r3, r30
/* 807A2DE0  38 80 00 1F */	li r4, 0x1f
/* 807A2DE4  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 807A2DE8  38 A0 00 02 */	li r5, 2
/* 807A2DEC  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807A2DF0  4B FF B0 5D */	bl anm_init__FP10e_st_classifUcf
/* 807A2DF4  38 00 00 01 */	li r0, 1
/* 807A2DF8  B0 1E 06 80 */	sth r0, 0x680(r30)
lbl_807A2DFC:
/* 807A2DFC  3B A0 04 00 */	li r29, 0x400
/* 807A2E00  7F C3 F3 78 */	mr r3, r30
/* 807A2E04  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 807A2E08  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 807A2E0C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 807A2E10  4B 87 79 00 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807A2E14  B0 7E 05 C8 */	sth r3, 0x5c8(r30)
/* 807A2E18  C0 3F 01 24 */	lfs f1, 0x124(r31)
/* 807A2E1C  3C 60 80 7A */	lis r3, l_HIO@ha
/* 807A2E20  38 63 6D F4 */	addi r3, r3, l_HIO@l
/* 807A2E24  C0 03 00 08 */	lfs f0, 8(r3)
/* 807A2E28  EF E1 00 32 */	fmuls f31, f1, f0
/* 807A2E2C  7F C3 F3 78 */	mr r3, r30
/* 807A2E30  FC 20 F0 90 */	fmr f1, f30
/* 807A2E34  4B FF B7 1D */	bl pl_check__FP10e_st_classf
/* 807A2E38  2C 03 00 00 */	cmpwi r3, 0
/* 807A2E3C  41 82 01 F4 */	beq lbl_807A3030
/* 807A2E40  38 00 00 02 */	li r0, 2
/* 807A2E44  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 807A2E48  7F C3 F3 78 */	mr r3, r30
/* 807A2E4C  38 80 00 23 */	li r4, 0x23
/* 807A2E50  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 807A2E54  38 A0 00 02 */	li r5, 2
/* 807A2E58  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807A2E5C  4B FF AF F1 */	bl anm_init__FP10e_st_classifUcf
/* 807A2E60  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 807A2E64  4B AC 4A F0 */	b cM_rndF__Ff
/* 807A2E68  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 807A2E6C  EC 00 08 2A */	fadds f0, f0, f1
/* 807A2E70  FC 00 00 1E */	fctiwz f0, f0
/* 807A2E74  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 807A2E78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807A2E7C  B0 1E 06 82 */	sth r0, 0x682(r30)
/* 807A2E80  48 00 01 B0 */	b lbl_807A3030
lbl_807A2E84:
/* 807A2E84  3B 40 00 01 */	li r26, 1
/* 807A2E88  7F C3 F3 78 */	mr r3, r30
/* 807A2E8C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 807A2E90  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 807A2E94  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 807A2E98  4B 87 78 78 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807A2E9C  B0 7E 05 C8 */	sth r3, 0x5c8(r30)
/* 807A2EA0  A8 1E 06 82 */	lha r0, 0x682(r30)
/* 807A2EA4  2C 00 00 00 */	cmpwi r0, 0
/* 807A2EA8  40 82 00 4C */	bne lbl_807A2EF4
/* 807A2EAC  7F C3 F3 78 */	mr r3, r30
/* 807A2EB0  38 80 00 06 */	li r4, 6
/* 807A2EB4  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 807A2EB8  38 A0 00 00 */	li r5, 0
/* 807A2EBC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807A2EC0  4B FF AF 8D */	bl anm_init__FP10e_st_classifUcf
/* 807A2EC4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070162@ha */
/* 807A2EC8  38 03 01 62 */	addi r0, r3, 0x0162 /* 0x00070162@l */
/* 807A2ECC  90 01 00 10 */	stw r0, 0x10(r1)
/* 807A2ED0  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 807A2ED4  38 81 00 10 */	addi r4, r1, 0x10
/* 807A2ED8  38 A0 FF FF */	li r5, -1
/* 807A2EDC  81 9E 05 D0 */	lwz r12, 0x5d0(r30)
/* 807A2EE0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807A2EE4  7D 89 03 A6 */	mtctr r12
/* 807A2EE8  4E 80 04 21 */	bctrl 
/* 807A2EEC  38 00 00 03 */	li r0, 3
/* 807A2EF0  B0 1E 06 80 */	sth r0, 0x680(r30)
lbl_807A2EF4:
/* 807A2EF4  3B 60 00 01 */	li r27, 1
/* 807A2EF8  48 00 01 38 */	b lbl_807A3030
lbl_807A2EFC:
/* 807A2EFC  38 60 00 01 */	li r3, 1
/* 807A2F00  88 04 00 11 */	lbz r0, 0x11(r4)
/* 807A2F04  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807A2F08  40 82 00 18 */	bne lbl_807A2F20
/* 807A2F0C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807A2F10  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 807A2F14  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807A2F18  41 82 00 08 */	beq lbl_807A2F20
/* 807A2F1C  38 60 00 00 */	li r3, 0
lbl_807A2F20:
/* 807A2F20  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807A2F24  41 82 00 5C */	beq lbl_807A2F80
/* 807A2F28  7F C3 F3 78 */	mr r3, r30
/* 807A2F2C  38 80 00 07 */	li r4, 7
/* 807A2F30  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807A2F34  38 A0 00 02 */	li r5, 2
/* 807A2F38  FC 40 08 90 */	fmr f2, f1
/* 807A2F3C  4B FF AF 11 */	bl anm_init__FP10e_st_classifUcf
/* 807A2F40  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070163@ha */
/* 807A2F44  38 03 01 63 */	addi r0, r3, 0x0163 /* 0x00070163@l */
/* 807A2F48  90 01 00 0C */	stw r0, 0xc(r1)
/* 807A2F4C  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 807A2F50  38 81 00 0C */	addi r4, r1, 0xc
/* 807A2F54  38 A0 FF FF */	li r5, -1
/* 807A2F58  81 9E 05 D0 */	lwz r12, 0x5d0(r30)
/* 807A2F5C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807A2F60  7D 89 03 A6 */	mtctr r12
/* 807A2F64  4E 80 04 21 */	bctrl 
/* 807A2F68  38 00 00 04 */	li r0, 4
/* 807A2F6C  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 807A2F70  3C 60 80 7A */	lis r3, l_HIO@ha
/* 807A2F74  38 63 6D F4 */	addi r3, r3, l_HIO@l
/* 807A2F78  A8 03 00 14 */	lha r0, 0x14(r3)
/* 807A2F7C  B0 1E 06 82 */	sth r0, 0x682(r30)
lbl_807A2F80:
/* 807A2F80  3B 60 00 01 */	li r27, 1
/* 807A2F84  48 00 00 AC */	b lbl_807A3030
lbl_807A2F88:
/* 807A2F88  A8 1E 06 82 */	lha r0, 0x682(r30)
/* 807A2F8C  2C 00 00 00 */	cmpwi r0, 0
/* 807A2F90  40 82 00 4C */	bne lbl_807A2FDC
/* 807A2F94  7F C3 F3 78 */	mr r3, r30
/* 807A2F98  38 80 00 08 */	li r4, 8
/* 807A2F9C  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 807A2FA0  38 A0 00 00 */	li r5, 0
/* 807A2FA4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807A2FA8  4B FF AE A5 */	bl anm_init__FP10e_st_classifUcf
/* 807A2FAC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070164@ha */
/* 807A2FB0  38 03 01 64 */	addi r0, r3, 0x0164 /* 0x00070164@l */
/* 807A2FB4  90 01 00 08 */	stw r0, 8(r1)
/* 807A2FB8  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 807A2FBC  38 81 00 08 */	addi r4, r1, 8
/* 807A2FC0  38 A0 FF FF */	li r5, -1
/* 807A2FC4  81 9E 05 D0 */	lwz r12, 0x5d0(r30)
/* 807A2FC8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807A2FCC  7D 89 03 A6 */	mtctr r12
/* 807A2FD0  4E 80 04 21 */	bctrl 
/* 807A2FD4  38 00 00 05 */	li r0, 5
/* 807A2FD8  B0 1E 06 80 */	sth r0, 0x680(r30)
lbl_807A2FDC:
/* 807A2FDC  3B 60 00 01 */	li r27, 1
/* 807A2FE0  48 00 00 50 */	b lbl_807A3030
lbl_807A2FE4:
/* 807A2FE4  2C 05 00 1A */	cmpwi r5, 0x1a
/* 807A2FE8  41 80 00 14 */	blt lbl_807A2FFC
/* 807A2FEC  2C 05 00 22 */	cmpwi r5, 0x22
/* 807A2FF0  41 81 00 0C */	bgt lbl_807A2FFC
/* 807A2FF4  38 00 00 01 */	li r0, 1
/* 807A2FF8  98 1E 0B 94 */	stb r0, 0xb94(r30)
lbl_807A2FFC:
/* 807A2FFC  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 807A3000  38 80 00 01 */	li r4, 1
/* 807A3004  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807A3008  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807A300C  40 82 00 18 */	bne lbl_807A3024
/* 807A3010  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807A3014  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807A3018  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807A301C  41 82 00 08 */	beq lbl_807A3024
/* 807A3020  38 80 00 00 */	li r4, 0
lbl_807A3024:
/* 807A3024  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807A3028  41 82 00 08 */	beq lbl_807A3030
/* 807A302C  3B 80 00 01 */	li r28, 1
lbl_807A3030:
/* 807A3030  38 7E 05 2C */	addi r3, r30, 0x52c
/* 807A3034  FC 20 F8 90 */	fmr f1, f31
/* 807A3038  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807A303C  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 807A3040  4B AC C9 FC */	b cLib_addCalc2__FPffff
/* 807A3044  38 7E 04 DE */	addi r3, r30, 0x4de
/* 807A3048  A8 9E 05 C8 */	lha r4, 0x5c8(r30)
/* 807A304C  38 A0 00 02 */	li r5, 2
/* 807A3050  7F A6 EB 78 */	mr r6, r29
/* 807A3054  4B AC D5 B4 */	b cLib_addCalcAngleS2__FPssss
/* 807A3058  7F 60 07 75 */	extsb. r0, r27
/* 807A305C  41 82 00 20 */	beq lbl_807A307C
/* 807A3060  C0 3E 07 F8 */	lfs f1, 0x7f8(r30)
/* 807A3064  C0 1F 00 00 */	lfs f0, 0(r31)
/* 807A3068  EC 00 F0 2A */	fadds f0, f0, f30
/* 807A306C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A3070  40 81 00 0C */	ble lbl_807A307C
/* 807A3074  38 00 00 00 */	li r0, 0
/* 807A3078  B0 1E 06 80 */	sth r0, 0x680(r30)
lbl_807A307C:
/* 807A307C  7F C3 F3 78 */	mr r3, r30
/* 807A3080  C0 3F 00 00 */	lfs f1, 0(r31)
/* 807A3084  3C 80 80 7A */	lis r4, l_HIO@ha
/* 807A3088  38 84 6D F4 */	addi r4, r4, l_HIO@l
/* 807A308C  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 807A3090  EC 21 00 2A */	fadds f1, f1, f0
/* 807A3094  4B FF B4 BD */	bl pl_check__FP10e_st_classf
/* 807A3098  2C 03 00 00 */	cmpwi r3, 0
/* 807A309C  41 82 00 0C */	beq lbl_807A30A8
/* 807A30A0  7F 80 07 75 */	extsb. r0, r28
/* 807A30A4  41 82 00 18 */	beq lbl_807A30BC
lbl_807A30A8:
/* 807A30A8  38 00 00 32 */	li r0, 0x32
/* 807A30AC  B0 1E 06 7E */	sth r0, 0x67e(r30)
/* 807A30B0  38 00 00 00 */	li r0, 0
/* 807A30B4  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 807A30B8  3B 40 00 00 */	li r26, 0
lbl_807A30BC:
/* 807A30BC  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 807A30C0  4B 8E 12 00 */	b ChkAtHit__12dCcD_GObjInfFv
/* 807A30C4  28 03 00 00 */	cmplwi r3, 0
/* 807A30C8  41 82 00 54 */	beq lbl_807A311C
/* 807A30CC  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 807A30D0  4B 8E 12 88 */	b GetAtHitObj__12dCcD_GObjInfFv
/* 807A30D4  4B AC 09 74 */	b GetAc__8cCcD_ObjFv
/* 807A30D8  28 03 00 00 */	cmplwi r3, 0
/* 807A30DC  41 82 00 40 */	beq lbl_807A311C
/* 807A30E0  A8 03 00 08 */	lha r0, 8(r3)
/* 807A30E4  2C 00 00 FD */	cmpwi r0, 0xfd
/* 807A30E8  40 82 00 34 */	bne lbl_807A311C
/* 807A30EC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807A30F0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 807A30F4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 807A30F8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807A30FC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 807A3100  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807A3104  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807A3108  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 807A310C  38 80 00 04 */	li r4, 4
/* 807A3110  38 A0 00 1F */	li r5, 0x1f
/* 807A3114  38 C1 00 14 */	addi r6, r1, 0x14
/* 807A3118  4B 8C C9 0C */	b StartShock__12dVibration_cFii4cXyz
lbl_807A311C:
/* 807A311C  7F 43 D3 78 */	mr r3, r26
/* 807A3120  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 807A3124  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 807A3128  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 807A312C  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 807A3130  39 61 00 40 */	addi r11, r1, 0x40
/* 807A3134  4B BB F0 E8 */	b _restgpr_26
/* 807A3138  80 01 00 64 */	lwz r0, 0x64(r1)
/* 807A313C  7C 08 03 A6 */	mtlr r0
/* 807A3140  38 21 00 60 */	addi r1, r1, 0x60
/* 807A3144  4E 80 00 20 */	blr 

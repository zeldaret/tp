lbl_80640D14:
/* 80640D14  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80640D18  7C 08 02 A6 */	mflr r0
/* 80640D1C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80640D20  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80640D24  4B D2 14 AC */	b _savegpr_26
/* 80640D28  7C 7E 1B 78 */	mr r30, r3
/* 80640D2C  3C 80 80 65 */	lis r4, lit_3757@ha
/* 80640D30  3B E4 EB 1C */	addi r31, r4, lit_3757@l
/* 80640D34  80 83 06 DC */	lwz r4, 0x6dc(r3)
/* 80640D38  2C 04 00 04 */	cmpwi r4, 4
/* 80640D3C  40 80 00 18 */	bge lbl_80640D54
/* 80640D40  2C 04 00 02 */	cmpwi r4, 2
/* 80640D44  40 80 01 74 */	bge lbl_80640EB8
/* 80640D48  2C 04 00 00 */	cmpwi r4, 0
/* 80640D4C  40 80 00 18 */	bge lbl_80640D64
/* 80640D50  48 00 04 C8 */	b lbl_80641218
lbl_80640D54:
/* 80640D54  2C 04 00 06 */	cmpwi r4, 6
/* 80640D58  41 82 04 90 */	beq lbl_806411E8
/* 80640D5C  40 80 04 BC */	bge lbl_80641218
/* 80640D60  48 00 02 84 */	b lbl_80640FE4
lbl_80640D64:
/* 80640D64  38 00 00 00 */	li r0, 0
/* 80640D68  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80640D6C  38 80 00 00 */	li r4, 0
/* 80640D70  4B FF F1 FD */	bl setTgHitBit__10daB_ZANT_cFi
/* 80640D74  7F C3 F3 78 */	mr r3, r30
/* 80640D78  38 80 00 00 */	li r4, 0
/* 80640D7C  4B FF F2 31 */	bl setCoHitBit__10daB_ZANT_cFi
/* 80640D80  88 1E 06 FB */	lbz r0, 0x6fb(r30)
/* 80640D84  28 00 00 04 */	cmplwi r0, 4
/* 80640D88  41 82 00 54 */	beq lbl_80640DDC
/* 80640D8C  28 00 00 05 */	cmplwi r0, 5
/* 80640D90  41 82 00 4C */	beq lbl_80640DDC
/* 80640D94  28 00 00 06 */	cmplwi r0, 6
/* 80640D98  41 82 00 44 */	beq lbl_80640DDC
/* 80640D9C  88 1E 07 11 */	lbz r0, 0x711(r30)
/* 80640DA0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80640DA4  41 82 00 20 */	beq lbl_80640DC4
/* 80640DA8  7F C3 F3 78 */	mr r3, r30
/* 80640DAC  38 80 00 12 */	li r4, 0x12
/* 80640DB0  38 A0 00 02 */	li r5, 2
/* 80640DB4  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80640DB8  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80640DBC  4B FF D8 09 */	bl setBck__10daB_ZANT_cFiUcff
/* 80640DC0  48 00 00 1C */	b lbl_80640DDC
lbl_80640DC4:
/* 80640DC4  7F C3 F3 78 */	mr r3, r30
/* 80640DC8  38 80 00 41 */	li r4, 0x41
/* 80640DCC  38 A0 00 02 */	li r5, 2
/* 80640DD0  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80640DD4  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80640DD8  4B FF D7 ED */	bl setBck__10daB_ZANT_cFiUcff
lbl_80640DDC:
/* 80640DDC  80 7E 06 DC */	lwz r3, 0x6dc(r30)
/* 80640DE0  38 03 00 02 */	addi r0, r3, 2
/* 80640DE4  90 1E 06 DC */	stw r0, 0x6dc(r30)
/* 80640DE8  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80640DEC  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80640DF0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80640DF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80640DF8  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 80640DFC  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80640E00  38 80 00 00 */	li r4, 0
/* 80640E04  90 81 00 08 */	stw r4, 8(r1)
/* 80640E08  38 00 FF FF */	li r0, -1
/* 80640E0C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80640E10  90 81 00 10 */	stw r4, 0x10(r1)
/* 80640E14  90 81 00 14 */	stw r4, 0x14(r1)
/* 80640E18  90 81 00 18 */	stw r4, 0x18(r1)
/* 80640E1C  38 80 00 00 */	li r4, 0
/* 80640E20  3C A0 00 01 */	lis r5, 0x0001 /* 0x000088FF@ha */
/* 80640E24  38 A5 88 FF */	addi r5, r5, 0x88FF /* 0x000088FF@l */
/* 80640E28  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80640E2C  38 E0 00 00 */	li r7, 0
/* 80640E30  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 80640E34  39 20 00 00 */	li r9, 0
/* 80640E38  39 40 00 FF */	li r10, 0xff
/* 80640E3C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80640E40  4B A0 BC 50 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80640E44  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80640E48  38 80 00 00 */	li r4, 0
/* 80640E4C  90 81 00 08 */	stw r4, 8(r1)
/* 80640E50  38 00 FF FF */	li r0, -1
/* 80640E54  90 01 00 0C */	stw r0, 0xc(r1)
/* 80640E58  90 81 00 10 */	stw r4, 0x10(r1)
/* 80640E5C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80640E60  90 81 00 18 */	stw r4, 0x18(r1)
/* 80640E64  38 80 00 00 */	li r4, 0
/* 80640E68  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008900@ha */
/* 80640E6C  38 A5 89 00 */	addi r5, r5, 0x8900 /* 0x00008900@l */
/* 80640E70  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80640E74  38 E0 00 00 */	li r7, 0
/* 80640E78  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 80640E7C  39 20 00 00 */	li r9, 0
/* 80640E80  39 40 00 FF */	li r10, 0xff
/* 80640E84  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80640E88  4B A0 BC 08 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80640E8C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070403@ha */
/* 80640E90  38 03 04 03 */	addi r0, r3, 0x0403 /* 0x00070403@l */
/* 80640E94  90 01 00 24 */	stw r0, 0x24(r1)
/* 80640E98  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 80640E9C  38 81 00 24 */	addi r4, r1, 0x24
/* 80640EA0  38 A0 00 00 */	li r5, 0
/* 80640EA4  38 C0 FF FF */	li r6, -1
/* 80640EA8  81 9E 05 F0 */	lwz r12, 0x5f0(r30)
/* 80640EAC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80640EB0  7D 89 03 A6 */	mtctr r12
/* 80640EB4  4E 80 04 21 */	bctrl 
lbl_80640EB8:
/* 80640EB8  7F C3 F3 78 */	mr r3, r30
/* 80640EBC  38 80 00 00 */	li r4, 0
/* 80640EC0  4B FF FD 61 */	bl calcScale__10daB_ZANT_cFi
/* 80640EC4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80640EC8  41 82 03 50 */	beq lbl_80641218
/* 80640ECC  80 7E 06 DC */	lwz r3, 0x6dc(r30)
/* 80640ED0  38 03 00 02 */	addi r0, r3, 2
/* 80640ED4  90 1E 06 DC */	stw r0, 0x6dc(r30)
/* 80640ED8  88 1E 06 FB */	lbz r0, 0x6fb(r30)
/* 80640EDC  2C 00 00 04 */	cmpwi r0, 4
/* 80640EE0  41 82 00 8C */	beq lbl_80640F6C
/* 80640EE4  40 80 00 1C */	bge lbl_80640F00
/* 80640EE8  2C 00 00 02 */	cmpwi r0, 2
/* 80640EEC  41 82 00 68 */	beq lbl_80640F54
/* 80640EF0  40 80 00 70 */	bge lbl_80640F60
/* 80640EF4  2C 00 00 01 */	cmpwi r0, 1
/* 80640EF8  40 80 00 18 */	bge lbl_80640F10
/* 80640EFC  48 00 00 C0 */	b lbl_80640FBC
lbl_80640F00:
/* 80640F00  2C 00 00 06 */	cmpwi r0, 6
/* 80640F04  41 82 00 98 */	beq lbl_80640F9C
/* 80640F08  40 80 00 B4 */	bge lbl_80640FBC
/* 80640F0C  48 00 00 84 */	b lbl_80640F90
lbl_80640F10:
/* 80640F10  88 1E 07 0B */	lbz r0, 0x70b(r30)
/* 80640F14  28 00 00 00 */	cmplwi r0, 0
/* 80640F18  40 82 00 18 */	bne lbl_80640F30
/* 80640F1C  38 00 00 01 */	li r0, 1
/* 80640F20  98 1E 07 0B */	stb r0, 0x70b(r30)
/* 80640F24  38 00 00 78 */	li r0, 0x78
/* 80640F28  90 1E 06 E8 */	stw r0, 0x6e8(r30)
/* 80640F2C  48 00 00 90 */	b lbl_80640FBC
lbl_80640F30:
/* 80640F30  88 1E 07 1A */	lbz r0, 0x71a(r30)
/* 80640F34  28 00 00 00 */	cmplwi r0, 0
/* 80640F38  40 82 00 10 */	bne lbl_80640F48
/* 80640F3C  38 00 00 28 */	li r0, 0x28
/* 80640F40  90 1E 06 E8 */	stw r0, 0x6e8(r30)
/* 80640F44  48 00 00 78 */	b lbl_80640FBC
lbl_80640F48:
/* 80640F48  38 00 00 0F */	li r0, 0xf
/* 80640F4C  90 1E 06 E8 */	stw r0, 0x6e8(r30)
/* 80640F50  48 00 00 6C */	b lbl_80640FBC
lbl_80640F54:
/* 80640F54  38 00 00 0F */	li r0, 0xf
/* 80640F58  90 1E 06 E8 */	stw r0, 0x6e8(r30)
/* 80640F5C  48 00 00 60 */	b lbl_80640FBC
lbl_80640F60:
/* 80640F60  38 00 00 3C */	li r0, 0x3c
/* 80640F64  90 1E 06 E8 */	stw r0, 0x6e8(r30)
/* 80640F68  48 00 00 54 */	b lbl_80640FBC
lbl_80640F6C:
/* 80640F6C  80 1E 06 D8 */	lwz r0, 0x6d8(r30)
/* 80640F70  2C 00 00 0F */	cmpwi r0, 0xf
/* 80640F74  40 82 00 10 */	bne lbl_80640F84
/* 80640F78  38 00 00 0F */	li r0, 0xf
/* 80640F7C  90 1E 06 E8 */	stw r0, 0x6e8(r30)
/* 80640F80  48 00 00 3C */	b lbl_80640FBC
lbl_80640F84:
/* 80640F84  38 00 00 3C */	li r0, 0x3c
/* 80640F88  90 1E 06 E8 */	stw r0, 0x6e8(r30)
/* 80640F8C  48 00 00 30 */	b lbl_80640FBC
lbl_80640F90:
/* 80640F90  38 00 00 3C */	li r0, 0x3c
/* 80640F94  90 1E 06 E8 */	stw r0, 0x6e8(r30)
/* 80640F98  48 00 00 24 */	b lbl_80640FBC
lbl_80640F9C:
/* 80640F9C  88 1E 06 FE */	lbz r0, 0x6fe(r30)
/* 80640FA0  28 00 00 00 */	cmplwi r0, 0
/* 80640FA4  41 82 00 10 */	beq lbl_80640FB4
/* 80640FA8  38 00 00 3C */	li r0, 0x3c
/* 80640FAC  90 1E 06 E8 */	stw r0, 0x6e8(r30)
/* 80640FB0  48 00 00 0C */	b lbl_80640FBC
lbl_80640FB4:
/* 80640FB4  38 00 00 0F */	li r0, 0xf
/* 80640FB8  90 1E 06 E8 */	stw r0, 0x6e8(r30)
lbl_80640FBC:
/* 80640FBC  80 9E 06 E8 */	lwz r4, 0x6e8(r30)
/* 80640FC0  3C 60 80 65 */	lis r3, l_HIO@ha
/* 80640FC4  38 63 F6 04 */	addi r3, r3, l_HIO@l
/* 80640FC8  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80640FCC  FC 00 00 1E */	fctiwz f0, f0
/* 80640FD0  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 80640FD4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80640FD8  7C 04 02 14 */	add r0, r4, r0
/* 80640FDC  90 1E 06 E8 */	stw r0, 0x6e8(r30)
/* 80640FE0  48 00 02 38 */	b lbl_80641218
lbl_80640FE4:
/* 80640FE4  80 1E 06 E8 */	lwz r0, 0x6e8(r30)
/* 80640FE8  2C 00 00 00 */	cmpwi r0, 0
/* 80640FEC  40 82 02 2C */	bne lbl_80641218
/* 80640FF0  2C 04 00 04 */	cmpwi r4, 4
/* 80640FF4  40 82 00 BC */	bne lbl_806410B0
/* 80640FF8  3B 41 00 28 */	addi r26, r1, 0x28
/* 80640FFC  7F 43 D3 78 */	mr r3, r26
/* 80641000  4B A3 65 7C */	b __ct__11dBgS_GndChkFv
/* 80641004  3C 60 80 65 */	lis r3, __vt__14dBgS_ObjGndChk@ha
/* 80641008  38 63 F5 5C */	addi r3, r3, __vt__14dBgS_ObjGndChk@l
/* 8064100C  90 61 00 38 */	stw r3, 0x38(r1)
/* 80641010  3B A3 00 0C */	addi r29, r3, 0xc
/* 80641014  93 A1 00 48 */	stw r29, 0x48(r1)
/* 80641018  3B 83 00 18 */	addi r28, r3, 0x18
/* 8064101C  93 81 00 64 */	stw r28, 0x64(r1)
/* 80641020  3B 63 00 24 */	addi r27, r3, 0x24
/* 80641024  93 61 00 74 */	stw r27, 0x74(r1)
/* 80641028  38 7A 00 3C */	addi r3, r26, 0x3c
/* 8064102C  4B A3 7E 3C */	b SetObj__16dBgS_PolyPassChkFv
/* 80641030  7F 43 D3 78 */	mr r3, r26
/* 80641034  38 9E 06 A0 */	addi r4, r30, 0x6a0
/* 80641038  4B C2 6C F0 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 8064103C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80641040  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80641044  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80641048  7F 44 D3 78 */	mr r4, r26
/* 8064104C  4B A3 34 54 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80641050  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80641054  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80641058  41 82 00 08 */	beq lbl_80641060
/* 8064105C  D0 3E 06 A4 */	stfs f1, 0x6a4(r30)
lbl_80641060:
/* 80641060  A8 1E 06 B8 */	lha r0, 0x6b8(r30)
/* 80641064  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80641068  38 00 00 00 */	li r0, 0
/* 8064106C  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80641070  C0 1E 06 A0 */	lfs f0, 0x6a0(r30)
/* 80641074  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80641078  C0 1E 06 A4 */	lfs f0, 0x6a4(r30)
/* 8064107C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80641080  C0 1E 06 A8 */	lfs f0, 0x6a8(r30)
/* 80641084  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80641088  3C 60 80 65 */	lis r3, __vt__14dBgS_ObjGndChk@ha
/* 8064108C  38 03 F5 5C */	addi r0, r3, __vt__14dBgS_ObjGndChk@l
/* 80641090  90 01 00 38 */	stw r0, 0x38(r1)
/* 80641094  93 A1 00 48 */	stw r29, 0x48(r1)
/* 80641098  93 81 00 64 */	stw r28, 0x64(r1)
/* 8064109C  93 61 00 74 */	stw r27, 0x74(r1)
/* 806410A0  38 61 00 28 */	addi r3, r1, 0x28
/* 806410A4  38 80 00 00 */	li r4, 0
/* 806410A8  4B A3 65 48 */	b __dt__11dBgS_GndChkFv
/* 806410AC  48 00 00 38 */	b lbl_806410E4
lbl_806410B0:
/* 806410B0  C0 1E 06 A0 */	lfs f0, 0x6a0(r30)
/* 806410B4  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 806410B8  C0 1E 06 A4 */	lfs f0, 0x6a4(r30)
/* 806410BC  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 806410C0  C0 1E 06 A8 */	lfs f0, 0x6a8(r30)
/* 806410C4  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 806410C8  38 00 00 00 */	li r0, 0
/* 806410CC  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 806410D0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806410D4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806410D8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806410DC  4B 9D 96 34 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806410E0  B0 7E 04 E6 */	sth r3, 0x4e6(r30)
lbl_806410E4:
/* 806410E4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 806410E8  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 806410EC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 806410F0  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 806410F4  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 806410F8  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 806410FC  38 00 00 06 */	li r0, 6
/* 80641100  90 1E 06 DC */	stw r0, 0x6dc(r30)
/* 80641104  88 7E 07 11 */	lbz r3, 0x711(r30)
/* 80641108  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 8064110C  41 82 00 14 */	beq lbl_80641120
/* 80641110  54 60 07 FE */	clrlwi r0, r3, 0x1f
/* 80641114  68 00 00 01 */	xori r0, r0, 1
/* 80641118  98 1E 07 11 */	stb r0, 0x711(r30)
/* 8064111C  48 00 00 0C */	b lbl_80641128
lbl_80641120:
/* 80641120  54 60 07 FE */	clrlwi r0, r3, 0x1f
/* 80641124  98 1E 07 11 */	stb r0, 0x711(r30)
lbl_80641128:
/* 80641128  88 1E 07 11 */	lbz r0, 0x711(r30)
/* 8064112C  28 00 00 00 */	cmplwi r0, 0
/* 80641130  41 82 00 20 */	beq lbl_80641150
/* 80641134  7F C3 F3 78 */	mr r3, r30
/* 80641138  38 80 00 12 */	li r4, 0x12
/* 8064113C  38 A0 00 02 */	li r5, 2
/* 80641140  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80641144  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80641148  4B FF D4 7D */	bl setBck__10daB_ZANT_cFiUcff
/* 8064114C  48 00 00 1C */	b lbl_80641168
lbl_80641150:
/* 80641150  7F C3 F3 78 */	mr r3, r30
/* 80641154  38 80 00 41 */	li r4, 0x41
/* 80641158  38 A0 00 02 */	li r5, 2
/* 8064115C  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80641160  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80641164  4B FF D4 61 */	bl setBck__10daB_ZANT_cFiUcff
lbl_80641168:
/* 80641168  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8064116C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80641170  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80641174  38 80 00 00 */	li r4, 0
/* 80641178  90 81 00 08 */	stw r4, 8(r1)
/* 8064117C  38 00 FF FF */	li r0, -1
/* 80641180  90 01 00 0C */	stw r0, 0xc(r1)
/* 80641184  90 81 00 10 */	stw r4, 0x10(r1)
/* 80641188  90 81 00 14 */	stw r4, 0x14(r1)
/* 8064118C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80641190  38 80 00 00 */	li r4, 0
/* 80641194  3C A0 00 01 */	lis r5, 0x0001 /* 0x000088FE@ha */
/* 80641198  38 A5 88 FE */	addi r5, r5, 0x88FE /* 0x000088FE@l */
/* 8064119C  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 806411A0  38 E0 00 00 */	li r7, 0
/* 806411A4  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 806411A8  39 20 00 00 */	li r9, 0
/* 806411AC  39 40 00 FF */	li r10, 0xff
/* 806411B0  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 806411B4  4B A0 B8 DC */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806411B8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070404@ha */
/* 806411BC  38 03 04 04 */	addi r0, r3, 0x0404 /* 0x00070404@l */
/* 806411C0  90 01 00 20 */	stw r0, 0x20(r1)
/* 806411C4  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 806411C8  38 81 00 20 */	addi r4, r1, 0x20
/* 806411CC  38 A0 00 00 */	li r5, 0
/* 806411D0  38 C0 FF FF */	li r6, -1
/* 806411D4  81 9E 05 F0 */	lwz r12, 0x5f0(r30)
/* 806411D8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806411DC  7D 89 03 A6 */	mtctr r12
/* 806411E0  4E 80 04 21 */	bctrl 
/* 806411E4  48 00 00 34 */	b lbl_80641218
lbl_806411E8:
/* 806411E8  38 80 00 01 */	li r4, 1
/* 806411EC  4B FF FA 35 */	bl calcScale__10daB_ZANT_cFi
/* 806411F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806411F4  41 82 00 24 */	beq lbl_80641218
/* 806411F8  38 00 00 04 */	li r0, 4
/* 806411FC  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80641200  7F C3 F3 78 */	mr r3, r30
/* 80641204  38 80 00 01 */	li r4, 1
/* 80641208  4B FF ED A5 */	bl setCoHitBit__10daB_ZANT_cFi
/* 8064120C  7F C3 F3 78 */	mr r3, r30
/* 80641210  38 80 00 00 */	li r4, 0
/* 80641214  48 00 AF AD */	bl setBaseActionMode__10daB_ZANT_cFi
lbl_80641218:
/* 80641218  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8064121C  4B D2 10 00 */	b _restgpr_26
/* 80641220  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80641224  7C 08 03 A6 */	mtlr r0
/* 80641228  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8064122C  4E 80 00 20 */	blr 

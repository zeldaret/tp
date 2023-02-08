lbl_80CF29D4:
/* 80CF29D4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80CF29D8  7C 08 02 A6 */	mflr r0
/* 80CF29DC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CF29E0  39 61 00 40 */	addi r11, r1, 0x40
/* 80CF29E4  4B 66 F7 F5 */	bl _savegpr_28
/* 80CF29E8  7C 7F 1B 78 */	mr r31, r3
/* 80CF29EC  3C 80 80 CF */	lis r4, lit_3850@ha /* 0x80CF3000@ha */
/* 80CF29F0  3B C4 30 00 */	addi r30, r4, lit_3850@l /* 0x80CF3000@l */
/* 80CF29F4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CF29F8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CF29FC  40 82 00 98 */	bne lbl_80CF2A94
/* 80CF2A00  7F E0 FB 79 */	or. r0, r31, r31
/* 80CF2A04  41 82 00 84 */	beq lbl_80CF2A88
/* 80CF2A08  7C 1C 03 78 */	mr r28, r0
/* 80CF2A0C  4B 32 61 59 */	bl __ct__10fopAc_ac_cFv
/* 80CF2A10  38 7C 05 A8 */	addi r3, r28, 0x5a8
/* 80CF2A14  3C 80 80 CF */	lis r4, __ct__8obj_sc_sFv@ha /* 0x80CF2FA8@ha */
/* 80CF2A18  38 84 2F A8 */	addi r4, r4, __ct__8obj_sc_sFv@l /* 0x80CF2FA8@l */
/* 80CF2A1C  3C A0 80 CF */	lis r5, __dt__8obj_sc_sFv@ha /* 0x80CF2F3C@ha */
/* 80CF2A20  38 A5 2F 3C */	addi r5, r5, __dt__8obj_sc_sFv@l /* 0x80CF2F3C@l */
/* 80CF2A24  38 C0 00 64 */	li r6, 0x64
/* 80CF2A28  38 E0 00 08 */	li r7, 8
/* 80CF2A2C  4B 66 F3 35 */	bl __construct_array
/* 80CF2A30  38 7C 09 04 */	addi r3, r28, 0x904
/* 80CF2A34  3C 80 80 CF */	lis r4, __ct__4cXyzFv@ha /* 0x80CF2F38@ha */
/* 80CF2A38  38 84 2F 38 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80CF2F38@l */
/* 80CF2A3C  3C A0 80 CF */	lis r5, __dt__4cXyzFv@ha /* 0x80CF1008@ha */
/* 80CF2A40  38 A5 10 08 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80CF1008@l */
/* 80CF2A44  38 C0 00 0C */	li r6, 0xc
/* 80CF2A48  38 E0 00 02 */	li r7, 2
/* 80CF2A4C  4B 66 F3 15 */	bl __construct_array
/* 80CF2A50  38 7C 09 20 */	addi r3, r28, 0x920
/* 80CF2A54  3C 80 80 CF */	lis r4, __ct__4cXyzFv@ha /* 0x80CF2F38@ha */
/* 80CF2A58  38 84 2F 38 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80CF2F38@l */
/* 80CF2A5C  3C A0 80 CF */	lis r5, __dt__4cXyzFv@ha /* 0x80CF1008@ha */
/* 80CF2A60  38 A5 10 08 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80CF1008@l */
/* 80CF2A64  38 C0 00 0C */	li r6, 0xc
/* 80CF2A68  38 E0 00 3F */	li r7, 0x3f
/* 80CF2A6C  4B 66 F2 F5 */	bl __construct_array
/* 80CF2A70  3C 60 80 CF */	lis r3, __vt__18mDoExt_3DlineMat_c@ha /* 0x80CF3260@ha */
/* 80CF2A74  38 03 32 60 */	addi r0, r3, __vt__18mDoExt_3DlineMat_c@l /* 0x80CF3260@l */
/* 80CF2A78  90 1C 0D 50 */	stw r0, 0xd50(r28)
/* 80CF2A7C  3C 60 80 3A */	lis r3, __vt__19mDoExt_3DlineMat1_c@ha /* 0x803A3248@ha */
/* 80CF2A80  38 03 32 48 */	addi r0, r3, __vt__19mDoExt_3DlineMat1_c@l /* 0x803A3248@l */
/* 80CF2A84  90 1C 0D 50 */	stw r0, 0xd50(r28)
lbl_80CF2A88:
/* 80CF2A88  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80CF2A8C  60 00 00 08 */	ori r0, r0, 8
/* 80CF2A90  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80CF2A94:
/* 80CF2A94  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CF2A98  98 1F 05 70 */	stb r0, 0x570(r31)
/* 80CF2A9C  88 1F 05 70 */	lbz r0, 0x570(r31)
/* 80CF2AA0  28 00 00 FF */	cmplwi r0, 0xff
/* 80CF2AA4  40 82 00 0C */	bne lbl_80CF2AB0
/* 80CF2AA8  38 00 00 00 */	li r0, 0
/* 80CF2AAC  98 1F 05 70 */	stb r0, 0x570(r31)
lbl_80CF2AB0:
/* 80CF2AB0  88 1F 05 70 */	lbz r0, 0x570(r31)
/* 80CF2AB4  28 00 00 08 */	cmplwi r0, 8
/* 80CF2AB8  40 82 00 24 */	bne lbl_80CF2ADC
/* 80CF2ABC  38 7F 05 68 */	addi r3, r31, 0x568
/* 80CF2AC0  3C 80 80 CF */	lis r4, d_a_obj_sw__stringBase0@ha /* 0x80CF30EC@ha */
/* 80CF2AC4  38 84 30 EC */	addi r4, r4, d_a_obj_sw__stringBase0@l /* 0x80CF30EC@l */
/* 80CF2AC8  4B 33 A3 F5 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CF2ACC  7C 7D 1B 78 */	mr r29, r3
/* 80CF2AD0  3C 60 00 01 */	lis r3, 0x0001 /* 0x00010140@ha */
/* 80CF2AD4  38 A3 01 40 */	addi r5, r3, 0x0140 /* 0x00010140@l */
/* 80CF2AD8  48 00 00 20 */	b lbl_80CF2AF8
lbl_80CF2ADC:
/* 80CF2ADC  38 7F 05 68 */	addi r3, r31, 0x568
/* 80CF2AE0  3C 80 80 CF */	lis r4, d_a_obj_sw__stringBase0@ha /* 0x80CF30EC@ha */
/* 80CF2AE4  38 84 30 EC */	addi r4, r4, d_a_obj_sw__stringBase0@l /* 0x80CF30EC@l */
/* 80CF2AE8  38 84 00 08 */	addi r4, r4, 8
/* 80CF2AEC  4B 33 A3 D1 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CF2AF0  7C 7D 1B 78 */	mr r29, r3
/* 80CF2AF4  38 A0 1B 00 */	li r5, 0x1b00
lbl_80CF2AF8:
/* 80CF2AF8  2C 1D 00 04 */	cmpwi r29, 4
/* 80CF2AFC  40 82 04 20 */	bne lbl_80CF2F1C
/* 80CF2B00  7F E3 FB 78 */	mr r3, r31
/* 80CF2B04  3C 80 80 CF */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x80CF2790@ha */
/* 80CF2B08  38 84 27 90 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x80CF2790@l */
/* 80CF2B0C  4B 32 79 A5 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80CF2B10  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CF2B14  40 82 00 0C */	bne lbl_80CF2B20
/* 80CF2B18  38 60 00 05 */	li r3, 5
/* 80CF2B1C  48 00 04 04 */	b lbl_80CF2F20
lbl_80CF2B20:
/* 80CF2B20  88 1F 05 70 */	lbz r0, 0x570(r31)
/* 80CF2B24  28 00 00 08 */	cmplwi r0, 8
/* 80CF2B28  40 82 00 5C */	bne lbl_80CF2B84
/* 80CF2B2C  38 00 00 16 */	li r0, 0x16
/* 80CF2B30  98 1F 05 46 */	stb r0, 0x546(r31)
/* 80CF2B34  C0 3F 04 AC */	lfs f1, 0x4ac(r31)
/* 80CF2B38  C0 1E 00 C4 */	lfs f0, 0xc4(r30)
/* 80CF2B3C  EC 01 00 2A */	fadds f0, f1, f0
/* 80CF2B40  D0 1F 04 AC */	stfs f0, 0x4ac(r31)
/* 80CF2B44  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80CF2B48  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80CF2B4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CF2B50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CF2B54  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80CF2B58  28 03 00 00 */	cmplwi r3, 0
/* 80CF2B5C  41 82 00 20 */	beq lbl_80CF2B7C
/* 80CF2B60  C0 23 04 D8 */	lfs f1, 0x4d8(r3)
/* 80CF2B64  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80CF2B68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CF2B6C  40 80 00 10 */	bge lbl_80CF2B7C
/* 80CF2B70  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 80CF2B74  38 03 80 00 */	addi r0, r3, -32768
/* 80CF2B78  B0 1F 04 DE */	sth r0, 0x4de(r31)
lbl_80CF2B7C:
/* 80CF2B7C  7F A3 EB 78 */	mr r3, r29
/* 80CF2B80  48 00 03 A0 */	b lbl_80CF2F20
lbl_80CF2B84:
/* 80CF2B84  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CF2B88  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80CF2B8C  98 1F 05 71 */	stb r0, 0x571(r31)
/* 80CF2B90  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CF2B94  54 03 86 3E */	rlwinm r3, r0, 0x10, 0x18, 0x1f
/* 80CF2B98  54 1C 46 3E */	srwi r28, r0, 0x18
/* 80CF2B9C  28 03 00 FF */	cmplwi r3, 0xff
/* 80CF2BA0  40 82 00 A0 */	bne lbl_80CF2C40
/* 80CF2BA4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CF2BA8  7C 00 07 75 */	extsb. r0, r0
/* 80CF2BAC  40 82 00 68 */	bne lbl_80CF2C14
/* 80CF2BB0  88 1F 05 70 */	lbz r0, 0x570(r31)
/* 80CF2BB4  28 00 00 00 */	cmplwi r0, 0
/* 80CF2BB8  40 82 00 30 */	bne lbl_80CF2BE8
/* 80CF2BBC  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80CF2BC0  D0 1F 09 04 */	stfs f0, 0x904(r31)
/* 80CF2BC4  C0 5E 00 CC */	lfs f2, 0xcc(r30)
/* 80CF2BC8  D0 5F 09 08 */	stfs f2, 0x908(r31)
/* 80CF2BCC  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 80CF2BD0  D0 3F 09 0C */	stfs f1, 0x90c(r31)
/* 80CF2BD4  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 80CF2BD8  D0 1F 09 10 */	stfs f0, 0x910(r31)
/* 80CF2BDC  D0 5F 09 14 */	stfs f2, 0x914(r31)
/* 80CF2BE0  D0 3F 09 18 */	stfs f1, 0x918(r31)
/* 80CF2BE4  48 00 00 B0 */	b lbl_80CF2C94
lbl_80CF2BE8:
/* 80CF2BE8  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 80CF2BEC  D0 1F 09 04 */	stfs f0, 0x904(r31)
/* 80CF2BF0  C0 5E 00 CC */	lfs f2, 0xcc(r30)
/* 80CF2BF4  D0 5F 09 08 */	stfs f2, 0x908(r31)
/* 80CF2BF8  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 80CF2BFC  D0 3F 09 0C */	stfs f1, 0x90c(r31)
/* 80CF2C00  C0 1E 00 D4 */	lfs f0, 0xd4(r30)
/* 80CF2C04  D0 1F 09 10 */	stfs f0, 0x910(r31)
/* 80CF2C08  D0 5F 09 14 */	stfs f2, 0x914(r31)
/* 80CF2C0C  D0 3F 09 18 */	stfs f1, 0x918(r31)
/* 80CF2C10  48 00 00 84 */	b lbl_80CF2C94
lbl_80CF2C14:
/* 80CF2C14  C0 5E 00 D8 */	lfs f2, 0xd8(r30)
/* 80CF2C18  D0 5F 09 04 */	stfs f2, 0x904(r31)
/* 80CF2C1C  C0 3E 00 DC */	lfs f1, 0xdc(r30)
/* 80CF2C20  D0 3F 09 08 */	stfs f1, 0x908(r31)
/* 80CF2C24  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80CF2C28  D0 1F 09 0C */	stfs f0, 0x90c(r31)
/* 80CF2C2C  D0 5F 09 10 */	stfs f2, 0x910(r31)
/* 80CF2C30  D0 3F 09 14 */	stfs f1, 0x914(r31)
/* 80CF2C34  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 80CF2C38  D0 1F 09 18 */	stfs f0, 0x918(r31)
/* 80CF2C3C  48 00 00 58 */	b lbl_80CF2C94
lbl_80CF2C40:
/* 80CF2C40  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CF2C44  7C 04 07 74 */	extsb r4, r0
/* 80CF2C48  4B 35 EB A5 */	bl dPath_GetRoomPath__Fii
/* 80CF2C4C  28 03 00 00 */	cmplwi r3, 0
/* 80CF2C50  41 82 00 3C */	beq lbl_80CF2C8C
/* 80CF2C54  80 63 00 08 */	lwz r3, 8(r3)
/* 80CF2C58  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CF2C5C  D0 1F 09 04 */	stfs f0, 0x904(r31)
/* 80CF2C60  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CF2C64  D0 1F 09 08 */	stfs f0, 0x908(r31)
/* 80CF2C68  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80CF2C6C  D0 1F 09 0C */	stfs f0, 0x90c(r31)
/* 80CF2C70  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80CF2C74  D0 1F 09 10 */	stfs f0, 0x910(r31)
/* 80CF2C78  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80CF2C7C  D0 1F 09 14 */	stfs f0, 0x914(r31)
/* 80CF2C80  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80CF2C84  D0 1F 09 18 */	stfs f0, 0x918(r31)
/* 80CF2C88  48 00 00 0C */	b lbl_80CF2C94
lbl_80CF2C8C:
/* 80CF2C8C  38 60 00 05 */	li r3, 5
/* 80CF2C90  48 00 02 90 */	b lbl_80CF2F20
lbl_80CF2C94:
/* 80CF2C94  7F E3 FB 78 */	mr r3, r31
/* 80CF2C98  4B FF F9 6D */	bl daObj_Sw_Execute__FP12obj_sw_class
/* 80CF2C9C  38 61 00 14 */	addi r3, r1, 0x14
/* 80CF2CA0  38 9F 09 10 */	addi r4, r31, 0x910
/* 80CF2CA4  38 BF 09 04 */	addi r5, r31, 0x904
/* 80CF2CA8  4B 57 3E 8D */	bl __mi__4cXyzCFRC3Vec
/* 80CF2CAC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80CF2CB0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80CF2CB4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80CF2CB8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80CF2CBC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80CF2CC0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CF2CC4  C0 1F 09 04 */	lfs f0, 0x904(r31)
/* 80CF2CC8  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80CF2CCC  C0 1F 09 08 */	lfs f0, 0x908(r31)
/* 80CF2CD0  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80CF2CD4  C0 1F 09 0C */	lfs f0, 0x90c(r31)
/* 80CF2CD8  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80CF2CDC  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80CF2CE0  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 80CF2CE4  4B 57 49 91 */	bl cM_atan2s__Fff
/* 80CF2CE8  B0 7F 04 DE */	sth r3, 0x4de(r31)
/* 80CF2CEC  38 61 00 20 */	addi r3, r1, 0x20
/* 80CF2CF0  4B 65 44 49 */	bl PSVECSquareMag
/* 80CF2CF4  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80CF2CF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CF2CFC  40 81 00 58 */	ble lbl_80CF2D54
/* 80CF2D00  FC 00 08 34 */	frsqrte f0, f1
/* 80CF2D04  C8 9E 00 40 */	lfd f4, 0x40(r30)
/* 80CF2D08  FC 44 00 32 */	fmul f2, f4, f0
/* 80CF2D0C  C8 7E 00 48 */	lfd f3, 0x48(r30)
/* 80CF2D10  FC 00 00 32 */	fmul f0, f0, f0
/* 80CF2D14  FC 01 00 32 */	fmul f0, f1, f0
/* 80CF2D18  FC 03 00 28 */	fsub f0, f3, f0
/* 80CF2D1C  FC 02 00 32 */	fmul f0, f2, f0
/* 80CF2D20  FC 44 00 32 */	fmul f2, f4, f0
/* 80CF2D24  FC 00 00 32 */	fmul f0, f0, f0
/* 80CF2D28  FC 01 00 32 */	fmul f0, f1, f0
/* 80CF2D2C  FC 03 00 28 */	fsub f0, f3, f0
/* 80CF2D30  FC 02 00 32 */	fmul f0, f2, f0
/* 80CF2D34  FC 44 00 32 */	fmul f2, f4, f0
/* 80CF2D38  FC 00 00 32 */	fmul f0, f0, f0
/* 80CF2D3C  FC 01 00 32 */	fmul f0, f1, f0
/* 80CF2D40  FC 03 00 28 */	fsub f0, f3, f0
/* 80CF2D44  FC 02 00 32 */	fmul f0, f2, f0
/* 80CF2D48  FC 21 00 32 */	fmul f1, f1, f0
/* 80CF2D4C  FC 20 08 18 */	frsp f1, f1
/* 80CF2D50  48 00 00 88 */	b lbl_80CF2DD8
lbl_80CF2D54:
/* 80CF2D54  C8 1E 00 50 */	lfd f0, 0x50(r30)
/* 80CF2D58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CF2D5C  40 80 00 10 */	bge lbl_80CF2D6C
/* 80CF2D60  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CF2D64  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80CF2D68  48 00 00 70 */	b lbl_80CF2DD8
lbl_80CF2D6C:
/* 80CF2D6C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80CF2D70  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80CF2D74  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CF2D78  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CF2D7C  7C 03 00 00 */	cmpw r3, r0
/* 80CF2D80  41 82 00 14 */	beq lbl_80CF2D94
/* 80CF2D84  40 80 00 40 */	bge lbl_80CF2DC4
/* 80CF2D88  2C 03 00 00 */	cmpwi r3, 0
/* 80CF2D8C  41 82 00 20 */	beq lbl_80CF2DAC
/* 80CF2D90  48 00 00 34 */	b lbl_80CF2DC4
lbl_80CF2D94:
/* 80CF2D94  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CF2D98  41 82 00 0C */	beq lbl_80CF2DA4
/* 80CF2D9C  38 00 00 01 */	li r0, 1
/* 80CF2DA0  48 00 00 28 */	b lbl_80CF2DC8
lbl_80CF2DA4:
/* 80CF2DA4  38 00 00 02 */	li r0, 2
/* 80CF2DA8  48 00 00 20 */	b lbl_80CF2DC8
lbl_80CF2DAC:
/* 80CF2DAC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CF2DB0  41 82 00 0C */	beq lbl_80CF2DBC
/* 80CF2DB4  38 00 00 05 */	li r0, 5
/* 80CF2DB8  48 00 00 10 */	b lbl_80CF2DC8
lbl_80CF2DBC:
/* 80CF2DBC  38 00 00 03 */	li r0, 3
/* 80CF2DC0  48 00 00 08 */	b lbl_80CF2DC8
lbl_80CF2DC4:
/* 80CF2DC4  38 00 00 04 */	li r0, 4
lbl_80CF2DC8:
/* 80CF2DC8  2C 00 00 01 */	cmpwi r0, 1
/* 80CF2DCC  40 82 00 0C */	bne lbl_80CF2DD8
/* 80CF2DD0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CF2DD4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80CF2DD8:
/* 80CF2DD8  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 80CF2DDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CF2DE0  40 81 00 0C */	ble lbl_80CF2DEC
/* 80CF2DE4  38 60 00 05 */	li r3, 5
/* 80CF2DE8  48 00 01 38 */	b lbl_80CF2F20
lbl_80CF2DEC:
/* 80CF2DEC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CF2DF0  7C 00 07 75 */	extsb. r0, r0
/* 80CF2DF4  40 82 00 10 */	bne lbl_80CF2E04
/* 80CF2DF8  38 00 00 01 */	li r0, 1
/* 80CF2DFC  90 1F 09 1C */	stw r0, 0x91c(r31)
/* 80CF2E00  48 00 00 34 */	b lbl_80CF2E34
lbl_80CF2E04:
/* 80CF2E04  2C 00 00 02 */	cmpwi r0, 2
/* 80CF2E08  40 82 00 10 */	bne lbl_80CF2E18
/* 80CF2E0C  38 00 00 02 */	li r0, 2
/* 80CF2E10  90 1F 09 1C */	stw r0, 0x91c(r31)
/* 80CF2E14  48 00 00 20 */	b lbl_80CF2E34
lbl_80CF2E18:
/* 80CF2E18  2C 00 00 04 */	cmpwi r0, 4
/* 80CF2E1C  40 82 00 10 */	bne lbl_80CF2E2C
/* 80CF2E20  38 00 00 04 */	li r0, 4
/* 80CF2E24  90 1F 09 1C */	stw r0, 0x91c(r31)
/* 80CF2E28  48 00 00 0C */	b lbl_80CF2E34
lbl_80CF2E2C:
/* 80CF2E2C  38 60 00 05 */	li r3, 5
/* 80CF2E30  48 00 00 F0 */	b lbl_80CF2F20
lbl_80CF2E34:
/* 80CF2E34  80 1F 09 1C */	lwz r0, 0x91c(r31)
/* 80CF2E38  1C 00 00 3F */	mulli r0, r0, 0x3f
/* 80CF2E3C  7C 00 1E 70 */	srawi r0, r0, 3
/* 80CF2E40  7C 00 01 94 */	addze r0, r0
/* 80CF2E44  90 1F 0D 8C */	stw r0, 0xd8c(r31)
/* 80CF2E48  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CF2E4C  7C 07 07 74 */	extsb r7, r0
/* 80CF2E50  2C 07 00 02 */	cmpwi r7, 2
/* 80CF2E54  41 82 00 0C */	beq lbl_80CF2E60
/* 80CF2E58  2C 07 00 04 */	cmpwi r7, 4
/* 80CF2E5C  40 82 00 44 */	bne lbl_80CF2EA0
lbl_80CF2E60:
/* 80CF2E60  38 00 00 00 */	li r0, 0
/* 80CF2E64  90 01 00 08 */	stw r0, 8(r1)
/* 80CF2E68  38 60 00 2C */	li r3, 0x2c
/* 80CF2E6C  28 1F 00 00 */	cmplwi r31, 0
/* 80CF2E70  41 82 00 0C */	beq lbl_80CF2E7C
/* 80CF2E74  80 9F 00 04 */	lwz r4, 4(r31)
/* 80CF2E78  48 00 00 08 */	b lbl_80CF2E80
lbl_80CF2E7C:
/* 80CF2E7C  38 80 FF FF */	li r4, -1
lbl_80CF2E80:
/* 80CF2E80  57 80 C0 0E */	slwi r0, r28, 0x18
/* 80CF2E84  64 05 00 FF */	oris r5, r0, 0xff
/* 80CF2E88  60 A5 FF FF */	ori r5, r5, 0xffff
/* 80CF2E8C  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80CF2E90  39 1F 04 DC */	addi r8, r31, 0x4dc
/* 80CF2E94  39 20 00 00 */	li r9, 0
/* 80CF2E98  39 40 FF FF */	li r10, -1
/* 80CF2E9C  4B 32 70 55 */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
lbl_80CF2EA0:
/* 80CF2EA0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CF2EA4  7C 05 07 74 */	extsb r5, r0
/* 80CF2EA8  2C 05 00 04 */	cmpwi r5, 4
/* 80CF2EAC  40 82 00 70 */	bne lbl_80CF2F1C
/* 80CF2EB0  2C 1C 00 FF */	cmpwi r28, 0xff
/* 80CF2EB4  41 82 00 68 */	beq lbl_80CF2F1C
/* 80CF2EB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CF2EBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CF2EC0  7F 84 E3 78 */	mr r4, r28
/* 80CF2EC4  4B 34 24 9D */	bl isSwitch__10dSv_info_cCFii
/* 80CF2EC8  2C 03 00 00 */	cmpwi r3, 0
/* 80CF2ECC  40 82 00 50 */	bne lbl_80CF2F1C
/* 80CF2ED0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CF2ED4  7C 07 07 74 */	extsb r7, r0
/* 80CF2ED8  38 00 00 00 */	li r0, 0
/* 80CF2EDC  90 01 00 08 */	stw r0, 8(r1)
/* 80CF2EE0  38 60 01 DC */	li r3, 0x1dc
/* 80CF2EE4  28 1F 00 00 */	cmplwi r31, 0
/* 80CF2EE8  41 82 00 0C */	beq lbl_80CF2EF4
/* 80CF2EEC  80 9F 00 04 */	lwz r4, 4(r31)
/* 80CF2EF0  48 00 00 08 */	b lbl_80CF2EF8
lbl_80CF2EF4:
/* 80CF2EF4  38 80 FF FF */	li r4, -1
lbl_80CF2EF8:
/* 80CF2EF8  57 80 80 1E */	slwi r0, r28, 0x10
/* 80CF2EFC  60 05 00 01 */	ori r5, r0, 1
/* 80CF2F00  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80CF2F04  39 1F 04 DC */	addi r8, r31, 0x4dc
/* 80CF2F08  39 20 00 00 */	li r9, 0
/* 80CF2F0C  39 40 FF FF */	li r10, -1
/* 80CF2F10  4B 32 6F E1 */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80CF2F14  38 60 00 05 */	li r3, 5
/* 80CF2F18  48 00 00 08 */	b lbl_80CF2F20
lbl_80CF2F1C:
/* 80CF2F1C  7F A3 EB 78 */	mr r3, r29
lbl_80CF2F20:
/* 80CF2F20  39 61 00 40 */	addi r11, r1, 0x40
/* 80CF2F24  4B 66 F3 01 */	bl _restgpr_28
/* 80CF2F28  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CF2F2C  7C 08 03 A6 */	mtlr r0
/* 80CF2F30  38 21 00 40 */	addi r1, r1, 0x40
/* 80CF2F34  4E 80 00 20 */	blr 

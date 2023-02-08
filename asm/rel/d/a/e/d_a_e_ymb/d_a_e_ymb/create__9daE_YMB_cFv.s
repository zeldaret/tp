lbl_80820DD0:
/* 80820DD0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80820DD4  7C 08 02 A6 */	mflr r0
/* 80820DD8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80820DDC  39 61 00 30 */	addi r11, r1, 0x30
/* 80820DE0  4B B4 13 E9 */	bl _savegpr_24
/* 80820DE4  7C 7F 1B 78 */	mr r31, r3
/* 80820DE8  3C 80 80 82 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80821B10@ha */
/* 80820DEC  3B A4 1B 10 */	addi r29, r4, cNullVec__6Z2Calc@l /* 0x80821B10@l */
/* 80820DF0  3C 80 80 82 */	lis r4, lit_3791@ha /* 0x808218AC@ha */
/* 80820DF4  3B C4 18 AC */	addi r30, r4, lit_3791@l /* 0x808218AC@l */
/* 80820DF8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80820DFC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80820E00  40 82 01 4C */	bne lbl_80820F4C
/* 80820E04  7F E0 FB 79 */	or. r0, r31, r31
/* 80820E08  41 82 01 38 */	beq lbl_80820F40
/* 80820E0C  7C 19 03 78 */	mr r25, r0
/* 80820E10  4B 7F 7D 55 */	bl __ct__10fopAc_ac_cFv
/* 80820E14  38 79 05 C4 */	addi r3, r25, 0x5c4
/* 80820E18  4B AA 01 4D */	bl __ct__15Z2CreatureEnemyFv
/* 80820E1C  38 79 07 9C */	addi r3, r25, 0x79c
/* 80820E20  4B 85 67 5D */	bl __ct__11dBgS_GndChkFv
/* 80820E24  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80820E28  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80820E2C  90 19 08 08 */	stw r0, 0x808(r25)
/* 80820E30  38 79 08 0C */	addi r3, r25, 0x80c
/* 80820E34  4B 86 29 2D */	bl __ct__10dCcD_GSttsFv
/* 80820E38  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80820E3C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80820E40  90 79 08 08 */	stw r3, 0x808(r25)
/* 80820E44  38 03 00 20 */	addi r0, r3, 0x20
/* 80820E48  90 19 08 0C */	stw r0, 0x80c(r25)
/* 80820E4C  38 79 08 2C */	addi r3, r25, 0x82c
/* 80820E50  3C 80 80 82 */	lis r4, __ct__8dCcD_SphFv@ha /* 0x80821318@ha */
/* 80820E54  38 84 13 18 */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x80821318@l */
/* 80820E58  3C A0 80 82 */	lis r5, __dt__8dCcD_SphFv@ha /* 0x8082124C@ha */
/* 80820E5C  38 A5 12 4C */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x8082124C@l */
/* 80820E60  38 C0 01 38 */	li r6, 0x138
/* 80820E64  38 E0 00 02 */	li r7, 2
/* 80820E68  4B B4 0E F9 */	bl __construct_array
/* 80820E6C  3B 19 0A 9C */	addi r24, r25, 0xa9c
/* 80820E70  7F 03 C3 78 */	mr r3, r24
/* 80820E74  4B 86 2B B5 */	bl __ct__12dCcD_GObjInfFv
/* 80820E78  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80820E7C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80820E80  90 18 01 20 */	stw r0, 0x120(r24)
/* 80820E84  3C 60 80 82 */	lis r3, __vt__8cM3dGAab@ha /* 0x80821DE8@ha */
/* 80820E88  38 03 1D E8 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80821DE8@l */
/* 80820E8C  90 18 01 1C */	stw r0, 0x11c(r24)
/* 80820E90  3C 60 80 82 */	lis r3, __vt__8cM3dGSph@ha /* 0x80821DDC@ha */
/* 80820E94  38 03 1D DC */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80821DDC@l */
/* 80820E98  90 18 01 34 */	stw r0, 0x134(r24)
/* 80820E9C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80820EA0  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80820EA4  90 78 01 20 */	stw r3, 0x120(r24)
/* 80820EA8  3B 83 00 58 */	addi r28, r3, 0x58
/* 80820EAC  93 98 01 34 */	stw r28, 0x134(r24)
/* 80820EB0  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80820EB4  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80820EB8  90 78 00 3C */	stw r3, 0x3c(r24)
/* 80820EBC  3B 63 00 2C */	addi r27, r3, 0x2c
/* 80820EC0  93 78 01 20 */	stw r27, 0x120(r24)
/* 80820EC4  3B 43 00 84 */	addi r26, r3, 0x84
/* 80820EC8  93 58 01 34 */	stw r26, 0x134(r24)
/* 80820ECC  38 79 0B D4 */	addi r3, r25, 0xbd4
/* 80820ED0  3C 80 80 82 */	lis r4, __ct__8dCcD_SphFv@ha /* 0x80821318@ha */
/* 80820ED4  38 84 13 18 */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x80821318@l */
/* 80820ED8  3C A0 80 82 */	lis r5, __dt__8dCcD_SphFv@ha /* 0x8082124C@ha */
/* 80820EDC  38 A5 12 4C */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x8082124C@l */
/* 80820EE0  38 C0 01 38 */	li r6, 0x138
/* 80820EE4  38 E0 00 06 */	li r7, 6
/* 80820EE8  4B B4 0E 79 */	bl __construct_array
/* 80820EEC  3B 19 13 24 */	addi r24, r25, 0x1324
/* 80820EF0  7F 03 C3 78 */	mr r3, r24
/* 80820EF4  4B 86 2B 35 */	bl __ct__12dCcD_GObjInfFv
/* 80820EF8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80820EFC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80820F00  90 18 01 20 */	stw r0, 0x120(r24)
/* 80820F04  3C 60 80 82 */	lis r3, __vt__8cM3dGAab@ha /* 0x80821DE8@ha */
/* 80820F08  38 03 1D E8 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80821DE8@l */
/* 80820F0C  90 18 01 1C */	stw r0, 0x11c(r24)
/* 80820F10  3C 60 80 82 */	lis r3, __vt__8cM3dGSph@ha /* 0x80821DDC@ha */
/* 80820F14  38 03 1D DC */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80821DDC@l */
/* 80820F18  90 18 01 34 */	stw r0, 0x134(r24)
/* 80820F1C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80820F20  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80820F24  90 18 01 20 */	stw r0, 0x120(r24)
/* 80820F28  93 98 01 34 */	stw r28, 0x134(r24)
/* 80820F2C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80820F30  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80820F34  90 18 00 3C */	stw r0, 0x3c(r24)
/* 80820F38  93 78 01 20 */	stw r27, 0x120(r24)
/* 80820F3C  93 58 01 34 */	stw r26, 0x134(r24)
lbl_80820F40:
/* 80820F40  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80820F44  60 00 00 08 */	ori r0, r0, 8
/* 80820F48  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80820F4C:
/* 80820F4C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80820F50  98 1F 06 C0 */	stb r0, 0x6c0(r31)
/* 80820F54  88 9F 06 C0 */	lbz r4, 0x6c0(r31)
/* 80820F58  28 04 00 FF */	cmplwi r4, 0xff
/* 80820F5C  41 82 00 28 */	beq lbl_80820F84
/* 80820F60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80820F64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80820F68  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80820F6C  7C 05 07 74 */	extsb r5, r0
/* 80820F70  4B 81 43 F1 */	bl isSwitch__10dSv_info_cCFii
/* 80820F74  2C 03 00 00 */	cmpwi r3, 0
/* 80820F78  41 82 00 0C */	beq lbl_80820F84
/* 80820F7C  38 60 00 05 */	li r3, 5
/* 80820F80  48 00 02 24 */	b lbl_808211A4
lbl_80820F84:
/* 80820F84  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80820F88  3C 80 80 82 */	lis r4, d_a_e_ymb__stringBase0@ha /* 0x80821B04@ha */
/* 80820F8C  38 84 1B 04 */	addi r4, r4, d_a_e_ymb__stringBase0@l /* 0x80821B04@l */
/* 80820F90  4B 80 BF 2D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80820F94  7C 7A 1B 78 */	mr r26, r3
/* 80820F98  2C 1A 00 04 */	cmpwi r26, 4
/* 80820F9C  40 82 02 04 */	bne lbl_808211A0
/* 80820FA0  7F E3 FB 78 */	mr r3, r31
/* 80820FA4  3C 80 80 82 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x80820DB0@ha */
/* 80820FA8  38 84 0D B0 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x80820DB0@l */
/* 80820FAC  38 A0 52 00 */	li r5, 0x5200
/* 80820FB0  4B 7F 95 01 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80820FB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80820FB8  40 82 00 0C */	bne lbl_80820FC4
/* 80820FBC  38 60 00 05 */	li r3, 5
/* 80820FC0  48 00 01 E4 */	b lbl_808211A4
lbl_80820FC4:
/* 80820FC4  80 9F 07 98 */	lwz r4, 0x798(r31)
/* 80820FC8  28 04 00 00 */	cmplwi r4, 0
/* 80820FCC  41 82 00 28 */	beq lbl_80820FF4
/* 80820FD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80820FD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80820FD8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80820FDC  7F E5 FB 78 */	mr r5, r31
/* 80820FE0  4B 85 3A 29 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80820FE4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80820FE8  41 82 00 0C */	beq lbl_80820FF4
/* 80820FEC  38 60 00 05 */	li r3, 5
/* 80820FF0  48 00 01 B4 */	b lbl_808211A4
lbl_80820FF4:
/* 80820FF4  3C 60 80 81 */	lis r3, rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@ha /* 0x8081653C@ha */
/* 80820FF8  38 03 65 3C */	addi r0, r3, rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@l /* 0x8081653C@l */
/* 80820FFC  80 7F 07 98 */	lwz r3, 0x798(r31)
/* 80821000  90 03 00 B4 */	stw r0, 0xb4(r3)
/* 80821004  3C 60 80 82 */	lis r3, struct_80821E54+0x1@ha /* 0x80821E55@ha */
/* 80821008  8C 03 1E 55 */	lbzu r0, struct_80821E54+0x1@l(r3)  /* 0x80821E55@l */
/* 8082100C  28 00 00 00 */	cmplwi r0, 0
/* 80821010  40 82 00 20 */	bne lbl_80821030
/* 80821014  38 00 00 01 */	li r0, 1
/* 80821018  98 03 00 00 */	stb r0, 0(r3)
/* 8082101C  98 1F 15 20 */	stb r0, 0x1520(r31)
/* 80821020  38 00 FF FF */	li r0, -1
/* 80821024  3C 60 80 82 */	lis r3, l_HIO@ha /* 0x80821E64@ha */
/* 80821028  38 63 1E 64 */	addi r3, r3, l_HIO@l /* 0x80821E64@l */
/* 8082102C  98 03 00 04 */	stb r0, 4(r3)
lbl_80821030:
/* 80821030  38 00 00 04 */	li r0, 4
/* 80821034  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80821038  38 00 00 50 */	li r0, 0x50
/* 8082103C  B0 1F 05 4E */	sth r0, 0x54e(r31)
/* 80821040  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80821044  80 63 00 04 */	lwz r3, 4(r3)
/* 80821048  38 03 00 24 */	addi r0, r3, 0x24
/* 8082104C  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80821050  7F E3 FB 78 */	mr r3, r31
/* 80821054  C0 3E 01 D4 */	lfs f1, 0x1d4(r30)
/* 80821058  FC 40 08 90 */	fmr f2, f1
/* 8082105C  FC 60 08 90 */	fmr f3, f1
/* 80821060  4B 7F 94 C9 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80821064  7F E3 FB 78 */	mr r3, r31
/* 80821068  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 8082106C  FC 40 08 90 */	fmr f2, f1
/* 80821070  FC 60 08 90 */	fmr f3, f1
/* 80821074  4B 7F 94 C5 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80821078  38 00 00 64 */	li r0, 0x64
/* 8082107C  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 80821080  B0 1F 05 60 */	sth r0, 0x560(r31)
/* 80821084  38 7F 07 F0 */	addi r3, r31, 0x7f0
/* 80821088  38 80 00 FF */	li r4, 0xff
/* 8082108C  38 A0 00 00 */	li r5, 0
/* 80821090  7F E6 FB 78 */	mr r6, r31
/* 80821094  4B 86 27 CD */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80821098  38 7F 08 2C */	addi r3, r31, 0x82c
/* 8082109C  38 9D 00 20 */	addi r4, r29, 0x20
/* 808210A0  4B 86 39 95 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 808210A4  38 1F 07 F0 */	addi r0, r31, 0x7f0
/* 808210A8  90 1F 08 70 */	stw r0, 0x870(r31)
/* 808210AC  38 7F 09 64 */	addi r3, r31, 0x964
/* 808210B0  38 9D 00 20 */	addi r4, r29, 0x20
/* 808210B4  4B 86 39 81 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 808210B8  38 1F 07 F0 */	addi r0, r31, 0x7f0
/* 808210BC  90 1F 09 A8 */	stw r0, 0x9a8(r31)
/* 808210C0  38 7F 13 24 */	addi r3, r31, 0x1324
/* 808210C4  38 9D 00 60 */	addi r4, r29, 0x60
/* 808210C8  4B 86 39 6D */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 808210CC  38 1F 07 F0 */	addi r0, r31, 0x7f0
/* 808210D0  90 1F 13 68 */	stw r0, 0x1368(r31)
/* 808210D4  38 7F 0A 9C */	addi r3, r31, 0xa9c
/* 808210D8  38 9D 00 A0 */	addi r4, r29, 0xa0
/* 808210DC  4B 86 39 59 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 808210E0  3B 7F 07 F0 */	addi r27, r31, 0x7f0
/* 808210E4  93 7F 0A E0 */	stw r27, 0xae0(r31)
/* 808210E8  3B 00 00 00 */	li r24, 0
/* 808210EC  3B 20 00 00 */	li r25, 0
lbl_808210F0:
/* 808210F0  7F 9F CA 14 */	add r28, r31, r25
/* 808210F4  38 7C 0B D4 */	addi r3, r28, 0xbd4
/* 808210F8  38 9D 00 E0 */	addi r4, r29, 0xe0
/* 808210FC  4B 86 39 39 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80821100  93 7C 0C 18 */	stw r27, 0xc18(r28)
/* 80821104  3B 18 00 01 */	addi r24, r24, 1
/* 80821108  2C 18 00 06 */	cmpwi r24, 6
/* 8082110C  3B 39 01 38 */	addi r25, r25, 0x138
/* 80821110  41 80 FF E0 */	blt lbl_808210F0
/* 80821114  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 80821118  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8082111C  38 BF 05 38 */	addi r5, r31, 0x538
/* 80821120  38 C0 00 05 */	li r6, 5
/* 80821124  38 E0 00 01 */	li r7, 1
/* 80821128  4B A9 FF 6D */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 8082112C  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 80821130  3C 80 80 82 */	lis r4, d_a_e_ymb__stringBase0@ha /* 0x80821B04@ha */
/* 80821134  38 84 1B 04 */	addi r4, r4, d_a_e_ymb__stringBase0@l /* 0x80821B04@l */
/* 80821138  38 84 00 05 */	addi r4, r4, 5
/* 8082113C  4B AA 0A 55 */	bl setEnemyName__15Z2CreatureEnemyFPCc
/* 80821140  38 1F 05 C4 */	addi r0, r31, 0x5c4
/* 80821144  90 1F 14 64 */	stw r0, 0x1464(r31)
/* 80821148  38 00 00 01 */	li r0, 1
/* 8082114C  98 1F 14 7A */	stb r0, 0x147a(r31)
/* 80821150  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80821154  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80821158  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 8082115C  D0 1F 06 9C */	stfs f0, 0x69c(r31)
/* 80821160  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80821164  D0 1F 06 A0 */	stfs f0, 0x6a0(r31)
/* 80821168  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 8082116C  D0 1F 06 A4 */	stfs f0, 0x6a4(r31)
/* 80821170  98 1F 07 17 */	stb r0, 0x717(r31)
/* 80821174  38 00 00 0A */	li r0, 0xa
/* 80821178  90 1F 06 B4 */	stw r0, 0x6b4(r31)
/* 8082117C  80 9F 07 98 */	lwz r4, 0x798(r31)
/* 80821180  28 04 00 00 */	cmplwi r4, 0
/* 80821184  41 82 00 14 */	beq lbl_80821198
/* 80821188  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8082118C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80821190  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80821194  4B 85 30 BD */	bl Release__4cBgSFP9dBgW_Base
lbl_80821198:
/* 80821198  7F E3 FB 78 */	mr r3, r31
/* 8082119C  4B FF F8 7D */	bl daE_YMB_Execute__FP9daE_YMB_c
lbl_808211A0:
/* 808211A0  7F 43 D3 78 */	mr r3, r26
lbl_808211A4:
/* 808211A4  39 61 00 30 */	addi r11, r1, 0x30
/* 808211A8  4B B4 10 6D */	bl _restgpr_24
/* 808211AC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 808211B0  7C 08 03 A6 */	mtlr r0
/* 808211B4  38 21 00 30 */	addi r1, r1, 0x30
/* 808211B8  4E 80 00 20 */	blr 

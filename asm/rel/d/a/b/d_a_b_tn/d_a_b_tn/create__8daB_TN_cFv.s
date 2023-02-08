lbl_8062CD78:
/* 8062CD78  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8062CD7C  7C 08 02 A6 */	mflr r0
/* 8062CD80  90 01 00 54 */	stw r0, 0x54(r1)
/* 8062CD84  39 61 00 50 */	addi r11, r1, 0x50
/* 8062CD88  4B D3 54 29 */	bl _savegpr_18
/* 8062CD8C  7C 7B 1B 78 */	mr r27, r3
/* 8062CD90  3C 80 80 63 */	lis r4, cNullVec__6Z2Calc@ha /* 0x8062E904@ha */
/* 8062CD94  3B C4 E9 04 */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x8062E904@l */
/* 8062CD98  3C 80 80 63 */	lis r4, lit_3920@ha /* 0x8062E634@ha */
/* 8062CD9C  3B E4 E6 34 */	addi r31, r4, lit_3920@l /* 0x8062E634@l */
/* 8062CDA0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8062CDA4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8062CDA8  40 82 00 1C */	bne lbl_8062CDC4
/* 8062CDAC  28 1B 00 00 */	cmplwi r27, 0
/* 8062CDB0  41 82 00 08 */	beq lbl_8062CDB8
/* 8062CDB4  48 00 05 3D */	bl __ct__8daB_TN_cFv
lbl_8062CDB8:
/* 8062CDB8  80 1B 04 A0 */	lwz r0, 0x4a0(r27)
/* 8062CDBC  60 00 00 08 */	ori r0, r0, 8
/* 8062CDC0  90 1B 04 A0 */	stw r0, 0x4a0(r27)
lbl_8062CDC4:
/* 8062CDC4  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 8062CDC8  98 1B 0A A4 */	stb r0, 0xaa4(r27)
/* 8062CDCC  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 8062CDD0  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 8062CDD4  98 1B 0A A5 */	stb r0, 0xaa5(r27)
/* 8062CDD8  88 1B 0A A5 */	lbz r0, 0xaa5(r27)
/* 8062CDDC  28 00 00 01 */	cmplwi r0, 1
/* 8062CDE0  41 82 00 0C */	beq lbl_8062CDEC
/* 8062CDE4  38 00 00 00 */	li r0, 0
/* 8062CDE8  98 1B 0A A5 */	stb r0, 0xaa5(r27)
lbl_8062CDEC:
/* 8062CDEC  88 1B 0A A5 */	lbz r0, 0xaa5(r27)
/* 8062CDF0  28 00 00 00 */	cmplwi r0, 0
/* 8062CDF4  40 82 00 38 */	bne lbl_8062CE2C
/* 8062CDF8  3C 60 80 63 */	lis r3, d_a_b_tn__stringBase0@ha /* 0x8062E8E8@ha */
/* 8062CDFC  38 63 E8 E8 */	addi r3, r3, d_a_b_tn__stringBase0@l /* 0x8062E8E8@l */
/* 8062CE00  38 03 00 05 */	addi r0, r3, 5
/* 8062CE04  90 1B 0A B4 */	stw r0, 0xab4(r27)
/* 8062CE08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8062CE0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8062CE10  38 63 09 58 */	addi r3, r3, 0x958
/* 8062CE14  38 80 00 07 */	li r4, 7
/* 8062CE18  4B A0 7B 1D */	bl isDungeonItem__12dSv_memBit_cCFi
/* 8062CE1C  2C 03 00 00 */	cmpwi r3, 0
/* 8062CE20  41 82 00 44 */	beq lbl_8062CE64
/* 8062CE24  38 60 00 05 */	li r3, 5
/* 8062CE28  48 00 04 B0 */	b lbl_8062D2D8
lbl_8062CE2C:
/* 8062CE2C  3C 60 80 63 */	lis r3, d_a_b_tn__stringBase0@ha /* 0x8062E8E8@ha */
/* 8062CE30  38 63 E8 E8 */	addi r3, r3, d_a_b_tn__stringBase0@l /* 0x8062E8E8@l */
/* 8062CE34  38 03 00 0B */	addi r0, r3, 0xb
/* 8062CE38  90 1B 0A B4 */	stw r0, 0xab4(r27)
/* 8062CE3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8062CE40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8062CE44  88 9B 0A A4 */	lbz r4, 0xaa4(r27)
/* 8062CE48  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 8062CE4C  7C 05 07 74 */	extsb r5, r0
/* 8062CE50  4B A0 85 11 */	bl isSwitch__10dSv_info_cCFii
/* 8062CE54  2C 03 00 00 */	cmpwi r3, 0
/* 8062CE58  41 82 00 0C */	beq lbl_8062CE64
/* 8062CE5C  38 60 00 05 */	li r3, 5
/* 8062CE60  48 00 04 78 */	b lbl_8062D2D8
lbl_8062CE64:
/* 8062CE64  38 7B 05 AC */	addi r3, r27, 0x5ac
/* 8062CE68  3C 80 80 63 */	lis r4, d_a_b_tn__stringBase0@ha /* 0x8062E8E8@ha */
/* 8062CE6C  38 84 E8 E8 */	addi r4, r4, d_a_b_tn__stringBase0@l /* 0x8062E8E8@l */
/* 8062CE70  4B A0 00 4D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8062CE74  7C 7D 1B 78 */	mr r29, r3
/* 8062CE78  2C 1D 00 04 */	cmpwi r29, 4
/* 8062CE7C  40 82 04 58 */	bne lbl_8062D2D4
/* 8062CE80  38 7B 05 B4 */	addi r3, r27, 0x5b4
/* 8062CE84  80 9B 0A B4 */	lwz r4, 0xab4(r27)
/* 8062CE88  4B A0 00 35 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8062CE8C  7C 7D 1B 78 */	mr r29, r3
/* 8062CE90  2C 1D 00 04 */	cmpwi r29, 4
/* 8062CE94  40 82 04 40 */	bne lbl_8062D2D4
/* 8062CE98  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 8062CE9C  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 8062CEA0  98 1B 0A A3 */	stb r0, 0xaa3(r27)
/* 8062CEA4  88 1B 0A A3 */	lbz r0, 0xaa3(r27)
/* 8062CEA8  28 00 00 04 */	cmplwi r0, 4
/* 8062CEAC  40 81 00 0C */	ble lbl_8062CEB8
/* 8062CEB0  38 00 00 04 */	li r0, 4
/* 8062CEB4  98 1B 0A A3 */	stb r0, 0xaa3(r27)
lbl_8062CEB8:
/* 8062CEB8  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 8062CEBC  54 00 46 3E */	srwi r0, r0, 0x18
/* 8062CEC0  98 1B 0A A6 */	stb r0, 0xaa6(r27)
/* 8062CEC4  88 1B 0A A6 */	lbz r0, 0xaa6(r27)
/* 8062CEC8  28 00 00 01 */	cmplwi r0, 1
/* 8062CECC  41 82 00 0C */	beq lbl_8062CED8
/* 8062CED0  38 00 00 00 */	li r0, 0
/* 8062CED4  98 1B 0A A6 */	stb r0, 0xaa6(r27)
lbl_8062CED8:
/* 8062CED8  88 1B 0A A5 */	lbz r0, 0xaa5(r27)
/* 8062CEDC  28 00 00 01 */	cmplwi r0, 1
/* 8062CEE0  40 82 00 2C */	bne lbl_8062CF0C
/* 8062CEE4  7F 63 DB 78 */	mr r3, r27
/* 8062CEE8  3C 80 80 63 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x8062CD58@ha */
/* 8062CEEC  38 84 CD 58 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x8062CD58@l */
/* 8062CEF0  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000B940@ha */
/* 8062CEF4  38 A5 B9 40 */	addi r5, r5, 0xB940 /* 0x0000B940@l */
/* 8062CEF8  4B 9E D5 B9 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8062CEFC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8062CF00  40 82 00 34 */	bne lbl_8062CF34
/* 8062CF04  38 60 00 05 */	li r3, 5
/* 8062CF08  48 00 03 D0 */	b lbl_8062D2D8
lbl_8062CF0C:
/* 8062CF0C  7F 63 DB 78 */	mr r3, r27
/* 8062CF10  3C 80 80 63 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x8062CD58@ha */
/* 8062CF14  38 84 CD 58 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x8062CD58@l */
/* 8062CF18  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000AA20@ha */
/* 8062CF1C  38 A5 AA 20 */	addi r5, r5, 0xAA20 /* 0x0000AA20@l */
/* 8062CF20  4B 9E D5 91 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8062CF24  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8062CF28  40 82 00 0C */	bne lbl_8062CF34
/* 8062CF2C  38 60 00 05 */	li r3, 5
/* 8062CF30  48 00 03 A8 */	b lbl_8062D2D8
lbl_8062CF34:
/* 8062CF34  3C 60 80 63 */	lis r3, struct_8062F01C+0x1@ha /* 0x8062F01D@ha */
/* 8062CF38  8C 03 F0 1D */	lbzu r0, struct_8062F01C+0x1@l(r3)  /* 0x8062F01D@l */
/* 8062CF3C  28 00 00 00 */	cmplwi r0, 0
/* 8062CF40  40 82 00 20 */	bne lbl_8062CF60
/* 8062CF44  38 00 00 01 */	li r0, 1
/* 8062CF48  98 03 00 00 */	stb r0, 0(r3)
/* 8062CF4C  98 1B 56 2C */	stb r0, 0x562c(r27)
/* 8062CF50  38 00 FF FF */	li r0, -1
/* 8062CF54  3C 60 80 63 */	lis r3, l_HIO@ha /* 0x8062F02C@ha */
/* 8062CF58  38 63 F0 2C */	addi r3, r3, l_HIO@l /* 0x8062F02C@l */
/* 8062CF5C  98 03 00 04 */	stb r0, 4(r3)
lbl_8062CF60:
/* 8062CF60  38 00 00 04 */	li r0, 4
/* 8062CF64  90 1B 05 5C */	stw r0, 0x55c(r27)
/* 8062CF68  80 7B 06 00 */	lwz r3, 0x600(r27)
/* 8062CF6C  80 63 00 04 */	lwz r3, 4(r3)
/* 8062CF70  38 03 00 24 */	addi r0, r3, 0x24
/* 8062CF74  90 1B 05 04 */	stw r0, 0x504(r27)
/* 8062CF78  7F 63 DB 78 */	mr r3, r27
/* 8062CF7C  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 8062CF80  FC 40 08 90 */	fmr f2, f1
/* 8062CF84  FC 60 08 90 */	fmr f3, f1
/* 8062CF88  4B 9E D5 A1 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 8062CF8C  7F 63 DB 78 */	mr r3, r27
/* 8062CF90  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 8062CF94  FC 40 08 90 */	fmr f2, f1
/* 8062CF98  FC 60 08 90 */	fmr f3, f1
/* 8062CF9C  4B 9E D5 9D */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 8062CFA0  38 00 00 00 */	li r0, 0
/* 8062CFA4  90 01 00 08 */	stw r0, 8(r1)
/* 8062CFA8  38 7B 0A F8 */	addi r3, r27, 0xaf8
/* 8062CFAC  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 8062CFB0  38 BB 04 BC */	addi r5, r27, 0x4bc
/* 8062CFB4  7F 66 DB 78 */	mr r6, r27
/* 8062CFB8  38 E0 00 01 */	li r7, 1
/* 8062CFBC  39 1B 0A B8 */	addi r8, r27, 0xab8
/* 8062CFC0  39 3B 04 F8 */	addi r9, r27, 0x4f8
/* 8062CFC4  39 40 00 00 */	li r10, 0
/* 8062CFC8  4B A4 92 81 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 8062CFCC  38 7B 0A B8 */	addi r3, r27, 0xab8
/* 8062CFD0  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 8062CFD4  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 8062CFD8  4B A4 8F 81 */	bl SetWall__12dBgS_AcchCirFff
/* 8062CFDC  38 00 00 50 */	li r0, 0x50
/* 8062CFE0  B0 1B 05 62 */	sth r0, 0x562(r27)
/* 8062CFE4  B0 1B 05 60 */	sth r0, 0x560(r27)
/* 8062CFE8  38 7B 2E 50 */	addi r3, r27, 0x2e50
/* 8062CFEC  38 80 00 FA */	li r4, 0xfa
/* 8062CFF0  38 A0 00 00 */	li r5, 0
/* 8062CFF4  7F 66 DB 78 */	mr r6, r27
/* 8062CFF8  4B A5 68 69 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8062CFFC  38 7B 2E 8C */	addi r3, r27, 0x2e8c
/* 8062D000  38 80 00 FA */	li r4, 0xfa
/* 8062D004  38 A0 00 00 */	li r5, 0
/* 8062D008  7F 66 DB 78 */	mr r6, r27
/* 8062D00C  4B A5 68 55 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8062D010  3A 40 00 00 */	li r18, 0
/* 8062D014  3A A0 00 00 */	li r21, 0
/* 8062D018  3A 9B 2E 50 */	addi r20, r27, 0x2e50
lbl_8062D01C:
/* 8062D01C  7E DB AA 14 */	add r22, r27, r21
/* 8062D020  38 76 2E C8 */	addi r3, r22, 0x2ec8
/* 8062D024  38 9E 00 38 */	addi r4, r30, 0x38
/* 8062D028  4B A5 7A 0D */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8062D02C  92 96 2F 0C */	stw r20, 0x2f0c(r22)
/* 8062D030  38 76 32 70 */	addi r3, r22, 0x3270
/* 8062D034  38 9E 00 78 */	addi r4, r30, 0x78
/* 8062D038  4B A5 79 FD */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8062D03C  92 96 32 B4 */	stw r20, 0x32b4(r22)
/* 8062D040  3A 52 00 01 */	addi r18, r18, 1
/* 8062D044  2C 12 00 03 */	cmpwi r18, 3
/* 8062D048  3A B5 01 38 */	addi r21, r21, 0x138
/* 8062D04C  41 80 FF D0 */	blt lbl_8062D01C
/* 8062D050  80 1B 31 64 */	lwz r0, 0x3164(r27)
/* 8062D054  60 00 04 00 */	ori r0, r0, 0x400
/* 8062D058  90 1B 31 64 */	stw r0, 0x3164(r27)
/* 8062D05C  38 7B 3D 74 */	addi r3, r27, 0x3d74
/* 8062D060  38 9E 00 B8 */	addi r4, r30, 0xb8
/* 8062D064  4B A5 79 D1 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8062D068  38 1B 2E 50 */	addi r0, r27, 0x2e50
/* 8062D06C  90 1B 3D B8 */	stw r0, 0x3db8(r27)
/* 8062D070  3A 40 00 00 */	li r18, 0
/* 8062D074  3A A0 00 00 */	li r21, 0
/* 8062D078  3A 9B 2E 8C */	addi r20, r27, 0x2e8c
lbl_8062D07C:
/* 8062D07C  7E DB AA 14 */	add r22, r27, r21
/* 8062D080  38 76 37 50 */	addi r3, r22, 0x3750
/* 8062D084  38 9E 00 F8 */	addi r4, r30, 0xf8
/* 8062D088  4B A5 79 AD */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8062D08C  92 96 37 94 */	stw r20, 0x3794(r22)
/* 8062D090  3A 52 00 01 */	addi r18, r18, 1
/* 8062D094  2C 12 00 04 */	cmpwi r18, 4
/* 8062D098  3A B5 01 38 */	addi r21, r21, 0x138
/* 8062D09C  41 80 FF E0 */	blt lbl_8062D07C
/* 8062D0A0  38 7B 3C 30 */	addi r3, r27, 0x3c30
/* 8062D0A4  38 9E 01 38 */	addi r4, r30, 0x138
/* 8062D0A8  4B A5 77 29 */	bl Set__8dCcD_CpsFRC11dCcD_SrcCps
/* 8062D0AC  38 1B 2E 8C */	addi r0, r27, 0x2e8c
/* 8062D0B0  90 1B 3C 74 */	stw r0, 0x3c74(r27)
/* 8062D0B4  38 7B 36 18 */	addi r3, r27, 0x3618
/* 8062D0B8  38 9E 01 84 */	addi r4, r30, 0x184
/* 8062D0BC  4B A5 79 79 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8062D0C0  38 1B 2E 50 */	addi r0, r27, 0x2e50
/* 8062D0C4  90 1B 36 5C */	stw r0, 0x365c(r27)
/* 8062D0C8  3B 80 00 00 */	li r28, 0
/* 8062D0CC  3B 40 00 00 */	li r26, 0
/* 8062D0D0  3B 20 00 00 */	li r25, 0
/* 8062D0D4  3B 00 00 00 */	li r24, 0
/* 8062D0D8  3A E0 00 00 */	li r23, 0
/* 8062D0DC  3A C0 00 00 */	li r22, 0
/* 8062D0E0  3A A0 00 00 */	li r21, 0
/* 8062D0E4  3A 9E 02 E4 */	addi r20, r30, 0x2e4
lbl_8062D0E8:
/* 8062D0E8  7D 3B AA 14 */	add r9, r27, r21
/* 8062D0EC  38 00 00 00 */	li r0, 0
/* 8062D0F0  90 01 00 08 */	stw r0, 8(r1)
/* 8062D0F4  3A 56 10 D0 */	addi r18, r22, 0x10d0
/* 8062D0F8  7E 5B 92 14 */	add r18, r27, r18
/* 8062D0FC  7E 43 93 78 */	mr r3, r18
/* 8062D100  38 89 07 5C */	addi r4, r9, 0x75c
/* 8062D104  38 A9 08 1C */	addi r5, r9, 0x81c
/* 8062D108  7F 66 DB 78 */	mr r6, r27
/* 8062D10C  38 E0 00 01 */	li r7, 1
/* 8062D110  3A 77 0C D0 */	addi r19, r23, 0xcd0
/* 8062D114  7E 7B 9A 14 */	add r19, r27, r19
/* 8062D118  7E 68 9B 78 */	mr r8, r19
/* 8062D11C  39 29 08 DC */	addi r9, r9, 0x8dc
/* 8062D120  39 40 00 00 */	li r10, 0
/* 8062D124  4B A4 91 25 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 8062D128  7E 63 9B 78 */	mr r3, r19
/* 8062D12C  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8062D130  C0 5F 00 A8 */	lfs f2, 0xa8(r31)
/* 8062D134  4B A4 8E 25 */	bl SetWall__12dBgS_AcchCirFff
/* 8062D138  7E 43 93 78 */	mr r3, r18
/* 8062D13C  7C 34 C4 2E */	lfsx f1, r20, r24
/* 8062D140  4B A4 9F D5 */	bl SetGroundUpY__9dBgS_AcchFf
/* 8062D144  3A 59 3E DC */	addi r18, r25, 0x3edc
/* 8062D148  7E 5B 92 14 */	add r18, r27, r18
/* 8062D14C  7E 43 93 78 */	mr r3, r18
/* 8062D150  38 80 00 64 */	li r4, 0x64
/* 8062D154  38 A0 00 00 */	li r5, 0
/* 8062D158  7F 66 DB 78 */	mr r6, r27
/* 8062D15C  4B A5 67 05 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8062D160  7E 7B D2 14 */	add r19, r27, r26
/* 8062D164  38 73 42 9C */	addi r3, r19, 0x429c
/* 8062D168  38 9E 01 C4 */	addi r4, r30, 0x1c4
/* 8062D16C  4B A5 78 C9 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8062D170  92 53 42 E0 */	stw r18, 0x42e0(r19)
/* 8062D174  80 13 42 C8 */	lwz r0, 0x42c8(r19)
/* 8062D178  60 00 04 00 */	ori r0, r0, 0x400
/* 8062D17C  90 13 42 C8 */	stw r0, 0x42c8(r19)
/* 8062D180  3B 9C 00 01 */	addi r28, r28, 1
/* 8062D184  2C 1C 00 10 */	cmpwi r28, 0x10
/* 8062D188  3B 5A 01 38 */	addi r26, r26, 0x138
/* 8062D18C  3B 39 00 3C */	addi r25, r25, 0x3c
/* 8062D190  3B 18 00 04 */	addi r24, r24, 4
/* 8062D194  3A F7 00 40 */	addi r23, r23, 0x40
/* 8062D198  3A D6 01 D8 */	addi r22, r22, 0x1d8
/* 8062D19C  3A B5 00 0C */	addi r21, r21, 0xc
/* 8062D1A0  41 80 FF 48 */	blt lbl_8062D0E8
/* 8062D1A4  38 7B 06 4C */	addi r3, r27, 0x64c
/* 8062D1A8  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 8062D1AC  38 BB 05 38 */	addi r5, r27, 0x538
/* 8062D1B0  38 C0 00 03 */	li r6, 3
/* 8062D1B4  38 E0 00 01 */	li r7, 1
/* 8062D1B8  4B C9 3E DD */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 8062D1BC  38 7B 06 4C */	addi r3, r27, 0x64c
/* 8062D1C0  3C 80 80 63 */	lis r4, d_a_b_tn__stringBase0@ha /* 0x8062E8E8@ha */
/* 8062D1C4  38 84 E8 E8 */	addi r4, r4, d_a_b_tn__stringBase0@l /* 0x8062E8E8@l */
/* 8062D1C8  4B C9 49 C9 */	bl setEnemyName__15Z2CreatureEnemyFPCc
/* 8062D1CC  38 1B 06 4C */	addi r0, r27, 0x64c
/* 8062D1D0  90 1B 3E C0 */	stw r0, 0x3ec0(r27)
/* 8062D1D4  38 00 00 01 */	li r0, 1
/* 8062D1D8  98 1B 3E D6 */	stb r0, 0x3ed6(r27)
/* 8062D1DC  C0 1F 02 38 */	lfs f0, 0x238(r31)
/* 8062D1E0  D0 1B 05 30 */	stfs f0, 0x530(r27)
/* 8062D1E4  B0 1B 0A 16 */	sth r0, 0xa16(r27)
/* 8062D1E8  7F 63 DB 78 */	mr r3, r27
/* 8062D1EC  38 80 00 01 */	li r4, 1
/* 8062D1F0  4B FF 38 F5 */	bl setSwordAtBreak__8daB_TN_cFi
/* 8062D1F4  88 1B 0A A5 */	lbz r0, 0xaa5(r27)
/* 8062D1F8  28 00 00 00 */	cmplwi r0, 0
/* 8062D1FC  40 82 00 18 */	bne lbl_8062D214
/* 8062D200  7F 63 DB 78 */	mr r3, r27
/* 8062D204  38 80 00 00 */	li r4, 0
/* 8062D208  38 A0 00 00 */	li r5, 0
/* 8062D20C  4B FF 37 BD */	bl setActionMode__8daB_TN_cFii
/* 8062D210  48 00 00 80 */	b lbl_8062D290
lbl_8062D214:
/* 8062D214  88 1B 0A A3 */	lbz r0, 0xaa3(r27)
/* 8062D218  C8 3F 02 98 */	lfd f1, 0x298(r31)
/* 8062D21C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062D220  3C 80 43 30 */	lis r4, 0x4330
/* 8062D224  90 81 00 10 */	stw r4, 0x10(r1)
/* 8062D228  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8062D22C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8062D230  80 7B 06 44 */	lwz r3, 0x644(r27)
/* 8062D234  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8062D238  38 60 00 00 */	li r3, 0
/* 8062D23C  38 00 00 0F */	li r0, 0xf
/* 8062D240  7C 09 03 A6 */	mtctr r0
lbl_8062D244:
/* 8062D244  38 03 06 04 */	addi r0, r3, 0x604
/* 8062D248  7C BB 00 2E */	lwzx r5, r27, r0
/* 8062D24C  28 05 00 00 */	cmplwi r5, 0
/* 8062D250  41 82 00 1C */	beq lbl_8062D26C
/* 8062D254  88 1B 0A A3 */	lbz r0, 0xaa3(r27)
/* 8062D258  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062D25C  90 81 00 10 */	stw r4, 0x10(r1)
/* 8062D260  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8062D264  EC 00 08 28 */	fsubs f0, f0, f1
/* 8062D268  D0 05 00 10 */	stfs f0, 0x10(r5)
lbl_8062D26C:
/* 8062D26C  38 63 00 04 */	addi r3, r3, 4
/* 8062D270  42 00 FF D4 */	bdnz lbl_8062D244
/* 8062D274  80 1B 04 9C */	lwz r0, 0x49c(r27)
/* 8062D278  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 8062D27C  90 1B 04 9C */	stw r0, 0x49c(r27)
/* 8062D280  7F 63 DB 78 */	mr r3, r27
/* 8062D284  38 80 00 02 */	li r4, 2
/* 8062D288  38 A0 00 00 */	li r5, 0
/* 8062D28C  4B FF 37 3D */	bl setActionMode__8daB_TN_cFii
lbl_8062D290:
/* 8062D290  3C 60 80 63 */	lis r3, d_a_b_tn__stringBase0@ha /* 0x8062E8E8@ha */
/* 8062D294  38 63 E8 E8 */	addi r3, r3, d_a_b_tn__stringBase0@l /* 0x8062E8E8@l */
/* 8062D298  38 63 00 12 */	addi r3, r3, 0x12
/* 8062D29C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8062D2A0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8062D2A4  38 84 4E 00 */	addi r4, r4, 0x4e00
/* 8062D2A8  4B D3 B6 ED */	bl strcmp
/* 8062D2AC  2C 03 00 00 */	cmpwi r3, 0
/* 8062D2B0  40 82 00 1C */	bne lbl_8062D2CC
/* 8062D2B4  3C 60 80 45 */	lis r3, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 8062D2B8  88 03 0D 64 */	lbz r0, mStayNo__20dStage_roomControl_c+0x0@l(r3)  /* 0x80450D64@l */
/* 8062D2BC  2C 00 00 02 */	cmpwi r0, 2
/* 8062D2C0  40 82 00 0C */	bne lbl_8062D2CC
/* 8062D2C4  38 00 00 01 */	li r0, 1
/* 8062D2C8  98 1B 0A AD */	stb r0, 0xaad(r27)
lbl_8062D2CC:
/* 8062D2CC  7F 63 DB 78 */	mr r3, r27
/* 8062D2D0  4B FF F4 D1 */	bl daB_TN_Execute__FP8daB_TN_c
lbl_8062D2D4:
/* 8062D2D4  7F A3 EB 78 */	mr r3, r29
lbl_8062D2D8:
/* 8062D2D8  39 61 00 50 */	addi r11, r1, 0x50
/* 8062D2DC  4B D3 4F 21 */	bl _restgpr_18
/* 8062D2E0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8062D2E4  7C 08 03 A6 */	mtlr r0
/* 8062D2E8  38 21 00 50 */	addi r1, r1, 0x50
/* 8062D2EC  4E 80 00 20 */	blr 

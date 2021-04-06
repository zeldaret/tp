lbl_80652038:
/* 80652038  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8065203C  7C 08 02 A6 */	mflr r0
/* 80652040  90 01 00 34 */	stw r0, 0x34(r1)
/* 80652044  39 61 00 30 */	addi r11, r1, 0x30
/* 80652048  4B D1 01 81 */	bl _savegpr_24
/* 8065204C  7C 7D 1B 78 */	mr r29, r3
/* 80652050  3C 80 80 65 */	lis r4, lit_3649@ha /* 0x8065273C@ha */
/* 80652054  3B E4 27 3C */	addi r31, r4, lit_3649@l /* 0x8065273C@l */
/* 80652058  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8065205C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80652060  40 82 00 90 */	bne lbl_806520F0
/* 80652064  7F A0 EB 79 */	or. r0, r29, r29
/* 80652068  41 82 00 7C */	beq lbl_806520E4
/* 8065206C  7C 18 03 78 */	mr r24, r0
/* 80652070  4B 9C 6A F5 */	bl __ct__10fopAc_ac_cFv
/* 80652074  38 78 05 BC */	addi r3, r24, 0x5bc
/* 80652078  4B C6 EE ED */	bl __ct__15Z2CreatureEnemyFv
/* 8065207C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80652080  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80652084  90 18 06 C0 */	stw r0, 0x6c0(r24)
/* 80652088  38 78 06 C4 */	addi r3, r24, 0x6c4
/* 8065208C  4B A3 16 D5 */	bl __ct__10dCcD_GSttsFv
/* 80652090  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80652094  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80652098  90 78 06 C0 */	stw r3, 0x6c0(r24)
/* 8065209C  38 03 00 20 */	addi r0, r3, 0x20
/* 806520A0  90 18 06 C4 */	stw r0, 0x6c4(r24)
/* 806520A4  38 78 06 E4 */	addi r3, r24, 0x6e4
/* 806520A8  3C 80 80 65 */	lis r4, __ct__8dCcD_SphFv@ha /* 0x806525A0@ha */
/* 806520AC  38 84 25 A0 */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x806525A0@l */
/* 806520B0  3C A0 80 65 */	lis r5, __dt__8dCcD_SphFv@ha /* 0x806524D4@ha */
/* 806520B4  38 A5 24 D4 */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x806524D4@l */
/* 806520B8  38 C0 01 38 */	li r6, 0x138
/* 806520BC  38 E0 00 03 */	li r7, 3
/* 806520C0  4B D0 FC A1 */	bl __construct_array
/* 806520C4  38 78 0A 8C */	addi r3, r24, 0xa8c
/* 806520C8  3C 80 80 65 */	lis r4, __ct__8dCcD_CylFv@ha /* 0x806523C0@ha */
/* 806520CC  38 84 23 C0 */	addi r4, r4, __ct__8dCcD_CylFv@l /* 0x806523C0@l */
/* 806520D0  3C A0 80 65 */	lis r5, __dt__8dCcD_CylFv@ha /* 0x806522F4@ha */
/* 806520D4  38 A5 22 F4 */	addi r5, r5, __dt__8dCcD_CylFv@l /* 0x806522F4@l */
/* 806520D8  38 C0 01 3C */	li r6, 0x13c
/* 806520DC  38 E0 00 02 */	li r7, 2
/* 806520E0  4B D0 FC 81 */	bl __construct_array
lbl_806520E4:
/* 806520E4  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 806520E8  60 00 00 08 */	ori r0, r0, 8
/* 806520EC  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_806520F0:
/* 806520F0  38 7D 05 AC */	addi r3, r29, 0x5ac
/* 806520F4  3C 80 80 65 */	lis r4, d_a_b_zant_mobile__stringBase0@ha /* 0x806527D0@ha */
/* 806520F8  38 84 27 D0 */	addi r4, r4, d_a_b_zant_mobile__stringBase0@l /* 0x806527D0@l */
/* 806520FC  38 84 00 06 */	addi r4, r4, 6
/* 80652100  4B 9D AD BD */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80652104  7C 7E 1B 78 */	mr r30, r3
/* 80652108  2C 1E 00 04 */	cmpwi r30, 4
/* 8065210C  40 82 01 CC */	bne lbl_806522D8
/* 80652110  7F A3 EB 78 */	mr r3, r29
/* 80652114  3C 80 80 65 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x80652018@ha */
/* 80652118  38 84 20 18 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x80652018@l */
/* 8065211C  38 A0 32 20 */	li r5, 0x3220
/* 80652120  4B 9C 83 91 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80652124  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80652128  40 82 00 0C */	bne lbl_80652134
/* 8065212C  38 60 00 05 */	li r3, 5
/* 80652130  48 00 01 AC */	b lbl_806522DC
lbl_80652134:
/* 80652134  3C 60 80 65 */	lis r3, data_80652928@ha /* 0x80652928@ha */
/* 80652138  8C 03 29 28 */	lbzu r0, data_80652928@l(r3)  /* 0x80652928@l */
/* 8065213C  28 00 00 00 */	cmplwi r0, 0
/* 80652140  40 82 00 20 */	bne lbl_80652160
/* 80652144  38 00 00 01 */	li r0, 1
/* 80652148  98 03 00 00 */	stb r0, 0(r3)
/* 8065214C  98 1D 0D 10 */	stb r0, 0xd10(r29)
/* 80652150  38 00 FF FF */	li r0, -1
/* 80652154  3C 60 80 65 */	lis r3, l_HIO@ha /* 0x80652938@ha */
/* 80652158  38 63 29 38 */	addi r3, r3, l_HIO@l /* 0x80652938@l */
/* 8065215C  98 03 00 04 */	stb r0, 4(r3)
lbl_80652160:
/* 80652160  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80652164  98 1D 06 70 */	stb r0, 0x670(r29)
/* 80652168  88 1D 06 70 */	lbz r0, 0x670(r29)
/* 8065216C  28 00 00 00 */	cmplwi r0, 0
/* 80652170  41 82 00 0C */	beq lbl_8065217C
/* 80652174  38 00 00 01 */	li r0, 1
/* 80652178  98 1D 06 6F */	stb r0, 0x66f(r29)
lbl_8065217C:
/* 8065217C  80 9D 06 A4 */	lwz r4, 0x6a4(r29)
/* 80652180  28 04 00 00 */	cmplwi r4, 0
/* 80652184  41 82 00 28 */	beq lbl_806521AC
/* 80652188  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8065218C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80652190  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80652194  7F A5 EB 78 */	mr r5, r29
/* 80652198  4B A2 28 71 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 8065219C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806521A0  41 82 00 0C */	beq lbl_806521AC
/* 806521A4  38 60 00 05 */	li r3, 5
/* 806521A8  48 00 01 34 */	b lbl_806522DC
lbl_806521AC:
/* 806521AC  38 00 00 00 */	li r0, 0
/* 806521B0  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 806521B4  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 806521B8  80 63 00 04 */	lwz r3, 4(r3)
/* 806521BC  38 03 00 24 */	addi r0, r3, 0x24
/* 806521C0  90 1D 05 04 */	stw r0, 0x504(r29)
/* 806521C4  7F A3 EB 78 */	mr r3, r29
/* 806521C8  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 806521CC  FC 40 08 90 */	fmr f2, f1
/* 806521D0  FC 60 08 90 */	fmr f3, f1
/* 806521D4  4B 9C 83 55 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 806521D8  7F A3 EB 78 */	mr r3, r29
/* 806521DC  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 806521E0  FC 40 08 90 */	fmr f2, f1
/* 806521E4  FC 60 08 90 */	fmr f3, f1
/* 806521E8  4B 9C 83 51 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 806521EC  38 00 00 50 */	li r0, 0x50
/* 806521F0  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 806521F4  B0 1D 05 60 */	sth r0, 0x560(r29)
/* 806521F8  38 7D 06 A8 */	addi r3, r29, 0x6a8
/* 806521FC  38 80 00 FE */	li r4, 0xfe
/* 80652200  38 A0 00 00 */	li r5, 0
/* 80652204  7F A6 EB 78 */	mr r6, r29
/* 80652208  4B A3 16 59 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8065220C  3B 00 00 00 */	li r24, 0
/* 80652210  3B 80 00 00 */	li r28, 0
/* 80652214  3C 60 80 65 */	lis r3, data_806527DC@ha /* 0x806527DC@ha */
/* 80652218  3B 63 27 DC */	addi r27, r3, data_806527DC@l /* 0x806527DC@l */
/* 8065221C  3B 5D 06 A8 */	addi r26, r29, 0x6a8
lbl_80652220:
/* 80652220  7F 3D E2 14 */	add r25, r29, r28
/* 80652224  38 79 06 E4 */	addi r3, r25, 0x6e4
/* 80652228  7F 64 DB 78 */	mr r4, r27
/* 8065222C  4B A3 28 09 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80652230  93 59 07 28 */	stw r26, 0x728(r25)
/* 80652234  3B 18 00 01 */	addi r24, r24, 1
/* 80652238  2C 18 00 03 */	cmpwi r24, 3
/* 8065223C  3B 9C 01 38 */	addi r28, r28, 0x138
/* 80652240  41 80 FF E0 */	blt lbl_80652220
/* 80652244  3B 00 00 00 */	li r24, 0
/* 80652248  3B 80 00 00 */	li r28, 0
/* 8065224C  3C 60 80 65 */	lis r3, data_8065281C@ha /* 0x8065281C@ha */
/* 80652250  3B 43 28 1C */	addi r26, r3, data_8065281C@l /* 0x8065281C@l */
/* 80652254  3B 7D 06 A8 */	addi r27, r29, 0x6a8
lbl_80652258:
/* 80652258  7F 3D E2 14 */	add r25, r29, r28
/* 8065225C  38 79 0A 8C */	addi r3, r25, 0xa8c
/* 80652260  7F 44 D3 78 */	mr r4, r26
/* 80652264  4B A3 26 51 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80652268  93 79 0A D0 */	stw r27, 0xad0(r25)
/* 8065226C  3B 18 00 01 */	addi r24, r24, 1
/* 80652270  2C 18 00 02 */	cmpwi r24, 2
/* 80652274  3B 9C 01 3C */	addi r28, r28, 0x13c
/* 80652278  41 80 FF E0 */	blt lbl_80652258
/* 8065227C  38 00 00 02 */	li r0, 2
/* 80652280  98 1D 06 6C */	stb r0, 0x66c(r29)
/* 80652284  98 1D 06 6D */	stb r0, 0x66d(r29)
/* 80652288  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8065228C  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80652290  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80652294  4B 9B AA D1 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80652298  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 8065229C  4B 9B AC A9 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 806522A0  3C 60 80 65 */	lis r3, l_HIO@ha /* 0x80652938@ha */
/* 806522A4  38 63 29 38 */	addi r3, r3, l_HIO@l /* 0x80652938@l */
/* 806522A8  C0 23 00 08 */	lfs f1, 8(r3)
/* 806522AC  FC 40 08 90 */	fmr f2, f1
/* 806522B0  FC 60 08 90 */	fmr f3, f1
/* 806522B4  4B 9B AB 85 */	bl scaleM__14mDoMtx_stack_cFfff
/* 806522B8  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 806522BC  80 83 00 04 */	lwz r4, 4(r3)
/* 806522C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806522C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806522C8  38 84 00 24 */	addi r4, r4, 0x24
/* 806522CC  4B CF 41 E5 */	bl PSMTXCopy
/* 806522D0  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 806522D4  4B 9B EF 19 */	bl modelCalc__16mDoExt_McaMorfSOFv
lbl_806522D8:
/* 806522D8  7F C3 F3 78 */	mr r3, r30
lbl_806522DC:
/* 806522DC  39 61 00 30 */	addi r11, r1, 0x30
/* 806522E0  4B D0 FF 35 */	bl _restgpr_24
/* 806522E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806522E8  7C 08 03 A6 */	mtlr r0
/* 806522EC  38 21 00 30 */	addi r1, r1, 0x30
/* 806522F0  4E 80 00 20 */	blr 

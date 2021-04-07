lbl_805ADAC0:
/* 805ADAC0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805ADAC4  7C 08 02 A6 */	mflr r0
/* 805ADAC8  90 01 00 44 */	stw r0, 0x44(r1)
/* 805ADACC  39 61 00 40 */	addi r11, r1, 0x40
/* 805ADAD0  4B DB 47 09 */	bl _savegpr_28
/* 805ADAD4  7C 7D 1B 78 */	mr r29, r3
/* 805ADAD8  3C 80 80 5B */	lis r4, lit_3850@ha /* 0x805ADF50@ha */
/* 805ADADC  3B E4 DF 50 */	addi r31, r4, lit_3850@l /* 0x805ADF50@l */
/* 805ADAE0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 805ADAE4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 805ADAE8  40 82 00 60 */	bne lbl_805ADB48
/* 805ADAEC  7F A0 EB 79 */	or. r0, r29, r29
/* 805ADAF0  41 82 00 4C */	beq lbl_805ADB3C
/* 805ADAF4  7C 1E 03 78 */	mr r30, r0
/* 805ADAF8  4B A6 B0 6D */	bl __ct__10fopAc_ac_cFv
/* 805ADAFC  38 7E 05 68 */	addi r3, r30, 0x568
/* 805ADB00  4B AC 83 AD */	bl __ct__12dBgS_AcchCirFv
/* 805ADB04  3B 9E 05 A8 */	addi r28, r30, 0x5a8
/* 805ADB08  7F 83 E3 78 */	mr r3, r28
/* 805ADB0C  4B AC 85 95 */	bl __ct__9dBgS_AcchFv
/* 805ADB10  3C 60 80 5B */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x805AE144@ha */
/* 805ADB14  38 63 E1 44 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x805AE144@l */
/* 805ADB18  90 7C 00 10 */	stw r3, 0x10(r28)
/* 805ADB1C  38 03 00 0C */	addi r0, r3, 0xc
/* 805ADB20  90 1C 00 14 */	stw r0, 0x14(r28)
/* 805ADB24  38 03 00 18 */	addi r0, r3, 0x18
/* 805ADB28  90 1C 00 24 */	stw r0, 0x24(r28)
/* 805ADB2C  38 7C 00 14 */	addi r3, r28, 0x14
/* 805ADB30  4B AC B3 39 */	bl SetObj__16dBgS_PolyPassChkFv
/* 805ADB34  38 7E 07 8C */	addi r3, r30, 0x78c
/* 805ADB38  4B D1 34 2D */	bl __ct__15Z2CreatureEnemyFv
lbl_805ADB3C:
/* 805ADB3C  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 805ADB40  60 00 00 08 */	ori r0, r0, 8
/* 805ADB44  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_805ADB48:
/* 805ADB48  38 00 00 00 */	li r0, 0
/* 805ADB4C  98 1D 08 B7 */	stb r0, 0x8b7(r29)
/* 805ADB50  38 7D 07 80 */	addi r3, r29, 0x780
/* 805ADB54  3C 80 80 5B */	lis r4, d_a_L7op_demo_dr__stringBase0@ha /* 0x805AE0AC@ha */
/* 805ADB58  38 84 E0 AC */	addi r4, r4, d_a_L7op_demo_dr__stringBase0@l /* 0x805AE0AC@l */
/* 805ADB5C  38 84 00 05 */	addi r4, r4, 5
/* 805ADB60  4B A7 F3 5D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 805ADB64  7C 7E 1B 78 */	mr r30, r3
/* 805ADB68  2C 1E 00 04 */	cmpwi r30, 4
/* 805ADB6C  40 82 01 50 */	bne lbl_805ADCBC
/* 805ADB70  7F A3 EB 78 */	mr r3, r29
/* 805ADB74  3C 80 80 5B */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x805ADA0C@ha */
/* 805ADB78  38 84 DA 0C */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x805ADA0C@l */
/* 805ADB7C  38 A0 68 E0 */	li r5, 0x68e0
/* 805ADB80  4B A6 C9 31 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 805ADB84  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805ADB88  40 82 00 0C */	bne lbl_805ADB94
/* 805ADB8C  38 60 00 05 */	li r3, 5
/* 805ADB90  48 00 01 30 */	b lbl_805ADCC0
lbl_805ADB94:
/* 805ADB94  80 7D 07 88 */	lwz r3, 0x788(r29)
/* 805ADB98  80 63 00 04 */	lwz r3, 4(r3)
/* 805ADB9C  38 03 00 24 */	addi r0, r3, 0x24
/* 805ADBA0  90 1D 05 04 */	stw r0, 0x504(r29)
/* 805ADBA4  7F A3 EB 78 */	mr r3, r29
/* 805ADBA8  C0 3F 01 54 */	lfs f1, 0x154(r31)
/* 805ADBAC  FC 40 08 90 */	fmr f2, f1
/* 805ADBB0  FC 60 08 90 */	fmr f3, f1
/* 805ADBB4  4B A6 C9 75 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 805ADBB8  7F A3 EB 78 */	mr r3, r29
/* 805ADBBC  C0 3F 01 58 */	lfs f1, 0x158(r31)
/* 805ADBC0  FC 40 08 90 */	fmr f2, f1
/* 805ADBC4  FC 60 08 90 */	fmr f3, f1
/* 805ADBC8  4B A6 C9 71 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 805ADBCC  38 7D 07 8C */	addi r3, r29, 0x78c
/* 805ADBD0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 805ADBD4  38 BD 05 38 */	addi r5, r29, 0x538
/* 805ADBD8  38 C0 00 03 */	li r6, 3
/* 805ADBDC  38 E0 00 01 */	li r7, 1
/* 805ADBE0  4B D1 34 B5 */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 805ADBE4  38 00 00 01 */	li r0, 1
/* 805ADBE8  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 805ADBEC  B0 1D 05 60 */	sth r0, 0x560(r29)
/* 805ADBF0  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 805ADBF4  D0 1D 04 EC */	stfs f0, 0x4ec(r29)
/* 805ADBF8  D0 1D 04 F0 */	stfs f0, 0x4f0(r29)
/* 805ADBFC  D0 1D 04 F4 */	stfs f0, 0x4f4(r29)
/* 805ADC00  38 60 00 00 */	li r3, 0
/* 805ADC04  98 7D 05 46 */	stb r3, 0x546(r29)
/* 805ADC08  80 1D 05 5C */	lwz r0, 0x55c(r29)
/* 805ADC0C  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 805ADC10  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 805ADC14  98 7D 04 96 */	stb r3, 0x496(r29)
/* 805ADC18  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 805ADC1C  54 00 00 3E */	slwi r0, r0, 0
/* 805ADC20  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 805ADC24  90 61 00 08 */	stw r3, 8(r1)
/* 805ADC28  38 7D 05 A8 */	addi r3, r29, 0x5a8
/* 805ADC2C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 805ADC30  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 805ADC34  7F A6 EB 78 */	mr r6, r29
/* 805ADC38  38 E0 00 01 */	li r7, 1
/* 805ADC3C  39 1D 05 68 */	addi r8, r29, 0x568
/* 805ADC40  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 805ADC44  39 40 00 00 */	li r10, 0
/* 805ADC48  4B AC 86 01 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 805ADC4C  38 7D 05 68 */	addi r3, r29, 0x568
/* 805ADC50  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 805ADC54  C0 5F 00 B4 */	lfs f2, 0xb4(r31)
/* 805ADC58  4B AC 83 01 */	bl SetWall__12dBgS_AcchCirFff
/* 805ADC5C  3C 60 80 5B */	lis r3, lit_4839@ha /* 0x805AE0DC@ha */
/* 805ADC60  38 83 E0 DC */	addi r4, r3, lit_4839@l /* 0x805AE0DC@l */
/* 805ADC64  80 64 00 00 */	lwz r3, 0(r4)
/* 805ADC68  80 04 00 04 */	lwz r0, 4(r4)
/* 805ADC6C  90 61 00 1C */	stw r3, 0x1c(r1)
/* 805ADC70  90 01 00 20 */	stw r0, 0x20(r1)
/* 805ADC74  80 04 00 08 */	lwz r0, 8(r4)
/* 805ADC78  90 01 00 24 */	stw r0, 0x24(r1)
/* 805ADC7C  7F A3 EB 78 */	mr r3, r29
/* 805ADC80  38 81 00 1C */	addi r4, r1, 0x1c
/* 805ADC84  4B FF D4 15 */	bl setAction__9daL7ODR_cFM9daL7ODR_cFPCvPv_v
/* 805ADC88  3C 60 80 5B */	lis r3, lit_4841@ha /* 0x805AE0E8@ha */
/* 805ADC8C  38 83 E0 E8 */	addi r4, r3, lit_4841@l /* 0x805AE0E8@l */
/* 805ADC90  80 64 00 00 */	lwz r3, 0(r4)
/* 805ADC94  80 04 00 04 */	lwz r0, 4(r4)
/* 805ADC98  90 61 00 10 */	stw r3, 0x10(r1)
/* 805ADC9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805ADCA0  80 04 00 08 */	lwz r0, 8(r4)
/* 805ADCA4  90 01 00 18 */	stw r0, 0x18(r1)
/* 805ADCA8  7F A3 EB 78 */	mr r3, r29
/* 805ADCAC  38 81 00 10 */	addi r4, r1, 0x10
/* 805ADCB0  4B FF D4 B5 */	bl setDrAction__9daL7ODR_cFM9daL7ODR_cFPCvPv_v
/* 805ADCB4  7F A3 EB 78 */	mr r3, r29
/* 805ADCB8  4B FF FB 9D */	bl daL7ODR_Execute__FP9daL7ODR_c
lbl_805ADCBC:
/* 805ADCBC  7F C3 F3 78 */	mr r3, r30
lbl_805ADCC0:
/* 805ADCC0  39 61 00 40 */	addi r11, r1, 0x40
/* 805ADCC4  4B DB 45 61 */	bl _restgpr_28
/* 805ADCC8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805ADCCC  7C 08 03 A6 */	mtlr r0
/* 805ADCD0  38 21 00 40 */	addi r1, r1, 0x40
/* 805ADCD4  4E 80 00 20 */	blr 

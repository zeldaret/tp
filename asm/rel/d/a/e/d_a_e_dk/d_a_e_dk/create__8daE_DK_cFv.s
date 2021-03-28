lbl_806ACE14:
/* 806ACE14  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806ACE18  7C 08 02 A6 */	mflr r0
/* 806ACE1C  90 01 00 34 */	stw r0, 0x34(r1)
/* 806ACE20  39 61 00 30 */	addi r11, r1, 0x30
/* 806ACE24  4B CB 53 B4 */	b _savegpr_28
/* 806ACE28  7C 7C 1B 78 */	mr r28, r3
/* 806ACE2C  3C 80 80 6B */	lis r4, cNullVec__6Z2Calc@ha
/* 806ACE30  3B C4 D6 34 */	addi r30, r4, cNullVec__6Z2Calc@l
/* 806ACE34  3C 80 80 6B */	lis r4, lit_3764@ha
/* 806ACE38  3B E4 D5 38 */	addi r31, r4, lit_3764@l
/* 806ACE3C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 806ACE40  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 806ACE44  40 82 00 1C */	bne lbl_806ACE60
/* 806ACE48  28 1C 00 00 */	cmplwi r28, 0
/* 806ACE4C  41 82 00 08 */	beq lbl_806ACE54
/* 806ACE50  48 00 02 5D */	bl __ct__8daE_DK_cFv
lbl_806ACE54:
/* 806ACE54  80 1C 04 A0 */	lwz r0, 0x4a0(r28)
/* 806ACE58  60 00 00 08 */	ori r0, r0, 8
/* 806ACE5C  90 1C 04 A0 */	stw r0, 0x4a0(r28)
lbl_806ACE60:
/* 806ACE60  38 7C 05 AC */	addi r3, r28, 0x5ac
/* 806ACE64  3C 80 80 6B */	lis r4, stringBase0@ha
/* 806ACE68  38 84 D6 28 */	addi r4, r4, stringBase0@l
/* 806ACE6C  4B 98 00 50 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 806ACE70  7C 7D 1B 78 */	mr r29, r3
/* 806ACE74  2C 1D 00 04 */	cmpwi r29, 4
/* 806ACE78  40 82 02 18 */	bne lbl_806AD090
/* 806ACE7C  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 806ACE80  98 1C 06 A4 */	stb r0, 0x6a4(r28)
/* 806ACE84  88 9C 06 A4 */	lbz r4, 0x6a4(r28)
/* 806ACE88  28 04 00 FF */	cmplwi r4, 0xff
/* 806ACE8C  41 82 00 28 */	beq lbl_806ACEB4
/* 806ACE90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806ACE94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806ACE98  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 806ACE9C  7C 05 07 74 */	extsb r5, r0
/* 806ACEA0  4B 98 84 C0 */	b isSwitch__10dSv_info_cCFii
/* 806ACEA4  2C 03 00 00 */	cmpwi r3, 0
/* 806ACEA8  41 82 00 0C */	beq lbl_806ACEB4
/* 806ACEAC  38 60 00 05 */	li r3, 5
/* 806ACEB0  48 00 01 E4 */	b lbl_806AD094
lbl_806ACEB4:
/* 806ACEB4  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 806ACEB8  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 806ACEBC  28 00 00 FF */	cmplwi r0, 0xff
/* 806ACEC0  40 82 00 10 */	bne lbl_806ACED0
/* 806ACEC4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 806ACEC8  D0 1C 06 A8 */	stfs f0, 0x6a8(r28)
/* 806ACECC  48 00 00 3C */	b lbl_806ACF08
lbl_806ACED0:
/* 806ACED0  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 806ACED4  C8 3F 00 E8 */	lfd f1, 0xe8(r31)
/* 806ACED8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806ACEDC  3C 00 43 30 */	lis r0, 0x4330
/* 806ACEE0  90 01 00 10 */	stw r0, 0x10(r1)
/* 806ACEE4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 806ACEE8  EC 00 08 28 */	fsubs f0, f0, f1
/* 806ACEEC  EC 02 00 32 */	fmuls f0, f2, f0
/* 806ACEF0  D0 1C 06 A8 */	stfs f0, 0x6a8(r28)
/* 806ACEF4  C0 3C 06 A8 */	lfs f1, 0x6a8(r28)
/* 806ACEF8  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 806ACEFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806ACF00  40 80 00 08 */	bge lbl_806ACF08
/* 806ACF04  D0 1C 06 A8 */	stfs f0, 0x6a8(r28)
lbl_806ACF08:
/* 806ACF08  7F 83 E3 78 */	mr r3, r28
/* 806ACF0C  3C 80 80 6B */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 806ACF10  38 84 CD F4 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 806ACF14  38 A0 25 20 */	li r5, 0x2520
/* 806ACF18  4B 96 D5 98 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 806ACF1C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806ACF20  40 82 00 0C */	bne lbl_806ACF2C
/* 806ACF24  38 60 00 05 */	li r3, 5
/* 806ACF28  48 00 01 6C */	b lbl_806AD094
lbl_806ACF2C:
/* 806ACF2C  3C 60 80 6B */	lis r3, data_806AD7F8@ha
/* 806ACF30  8C 03 D7 F8 */	lbzu r0, data_806AD7F8@l(r3)
/* 806ACF34  28 00 00 00 */	cmplwi r0, 0
/* 806ACF38  40 82 00 20 */	bne lbl_806ACF58
/* 806ACF3C  38 00 00 01 */	li r0, 1
/* 806ACF40  98 03 00 00 */	stb r0, 0(r3)
/* 806ACF44  98 1C 0D 50 */	stb r0, 0xd50(r28)
/* 806ACF48  38 00 FF FF */	li r0, -1
/* 806ACF4C  3C 60 80 6B */	lis r3, l_HIO@ha
/* 806ACF50  38 63 D8 08 */	addi r3, r3, l_HIO@l
/* 806ACF54  98 03 00 04 */	stb r0, 4(r3)
lbl_806ACF58:
/* 806ACF58  38 00 00 04 */	li r0, 4
/* 806ACF5C  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 806ACF60  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 806ACF64  80 63 00 04 */	lwz r3, 4(r3)
/* 806ACF68  38 03 00 24 */	addi r0, r3, 0x24
/* 806ACF6C  90 1C 05 04 */	stw r0, 0x504(r28)
/* 806ACF70  7F 83 E3 78 */	mr r3, r28
/* 806ACF74  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 806ACF78  FC 40 08 90 */	fmr f2, f1
/* 806ACF7C  FC 60 08 90 */	fmr f3, f1
/* 806ACF80  4B 96 D5 A8 */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 806ACF84  7F 83 E3 78 */	mr r3, r28
/* 806ACF88  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 806ACF8C  FC 40 08 90 */	fmr f2, f1
/* 806ACF90  FC 60 08 90 */	fmr f3, f1
/* 806ACF94  4B 96 D5 A4 */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 806ACF98  38 00 00 00 */	li r0, 0
/* 806ACF9C  90 01 00 08 */	stw r0, 8(r1)
/* 806ACFA0  38 7C 06 FC */	addi r3, r28, 0x6fc
/* 806ACFA4  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 806ACFA8  38 BC 04 BC */	addi r5, r28, 0x4bc
/* 806ACFAC  7F 86 E3 78 */	mr r6, r28
/* 806ACFB0  38 E0 00 01 */	li r7, 1
/* 806ACFB4  39 1C 06 BC */	addi r8, r28, 0x6bc
/* 806ACFB8  39 3C 04 F8 */	addi r9, r28, 0x4f8
/* 806ACFBC  39 40 00 00 */	li r10, 0
/* 806ACFC0  4B 9C 92 88 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 806ACFC4  38 7C 06 BC */	addi r3, r28, 0x6bc
/* 806ACFC8  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 806ACFCC  FC 40 08 90 */	fmr f2, f1
/* 806ACFD0  4B 9C 8F 88 */	b SetWall__12dBgS_AcchCirFff
/* 806ACFD4  38 00 00 64 */	li r0, 0x64
/* 806ACFD8  B0 1C 05 62 */	sth r0, 0x562(r28)
/* 806ACFDC  B0 1C 05 60 */	sth r0, 0x560(r28)
/* 806ACFE0  38 7C 09 28 */	addi r3, r28, 0x928
/* 806ACFE4  38 80 00 64 */	li r4, 0x64
/* 806ACFE8  38 A0 00 00 */	li r5, 0
/* 806ACFEC  7F 86 E3 78 */	mr r6, r28
/* 806ACFF0  4B 9D 68 70 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 806ACFF4  38 7C 09 64 */	addi r3, r28, 0x964
/* 806ACFF8  38 9E 00 20 */	addi r4, r30, 0x20
/* 806ACFFC  4B 9D 7A 38 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806AD000  38 1C 09 28 */	addi r0, r28, 0x928
/* 806AD004  90 1C 09 A8 */	stw r0, 0x9a8(r28)
/* 806AD008  38 7C 0A 9C */	addi r3, r28, 0xa9c
/* 806AD00C  38 9E 00 60 */	addi r4, r30, 0x60
/* 806AD010  4B 9D 7A 24 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806AD014  38 1C 09 28 */	addi r0, r28, 0x928
/* 806AD018  90 1C 0A E0 */	stw r0, 0xae0(r28)
/* 806AD01C  38 7C 0B D4 */	addi r3, r28, 0xbd4
/* 806AD020  38 9E 00 A0 */	addi r4, r30, 0xa0
/* 806AD024  4B 9D 7A 10 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806AD028  38 1C 09 28 */	addi r0, r28, 0x928
/* 806AD02C  90 1C 0C 18 */	stw r0, 0xc18(r28)
/* 806AD030  38 7C 05 CC */	addi r3, r28, 0x5cc
/* 806AD034  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 806AD038  38 BC 05 38 */	addi r5, r28, 0x538
/* 806AD03C  38 C0 00 03 */	li r6, 3
/* 806AD040  38 E0 00 01 */	li r7, 1
/* 806AD044  4B C1 40 50 */	b init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 806AD048  38 7C 05 CC */	addi r3, r28, 0x5cc
/* 806AD04C  3C 80 80 6B */	lis r4, stringBase0@ha
/* 806AD050  38 84 D6 28 */	addi r4, r4, stringBase0@l
/* 806AD054  38 84 00 05 */	addi r4, r4, 5
/* 806AD058  4B C1 4B 38 */	b setEnemyName__15Z2CreatureEnemyFPCc
/* 806AD05C  38 1C 05 CC */	addi r0, r28, 0x5cc
/* 806AD060  90 1C 0D 14 */	stw r0, 0xd14(r28)
/* 806AD064  38 00 00 01 */	li r0, 1
/* 806AD068  98 1C 0D 2A */	stb r0, 0xd2a(r28)
/* 806AD06C  38 00 00 96 */	li r0, 0x96
/* 806AD070  98 1C 06 91 */	stb r0, 0x691(r28)
/* 806AD074  38 00 00 FF */	li r0, 0xff
/* 806AD078  98 1C 06 92 */	stb r0, 0x692(r28)
/* 806AD07C  A0 1C 05 8E */	lhz r0, 0x58e(r28)
/* 806AD080  60 00 02 00 */	ori r0, r0, 0x200
/* 806AD084  B0 1C 05 8E */	sth r0, 0x58e(r28)
/* 806AD088  7F 83 E3 78 */	mr r3, r28
/* 806AD08C  4B FF F9 5D */	bl daE_DK_Execute__FP8daE_DK_c
lbl_806AD090:
/* 806AD090  7F A3 EB 78 */	mr r3, r29
lbl_806AD094:
/* 806AD094  39 61 00 30 */	addi r11, r1, 0x30
/* 806AD098  4B CB 51 8C */	b _restgpr_28
/* 806AD09C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806AD0A0  7C 08 03 A6 */	mtlr r0
/* 806AD0A4  38 21 00 30 */	addi r1, r1, 0x30
/* 806AD0A8  4E 80 00 20 */	blr 

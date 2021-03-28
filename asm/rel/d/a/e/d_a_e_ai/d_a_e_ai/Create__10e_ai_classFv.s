lbl_8067B8E4:
/* 8067B8E4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8067B8E8  7C 08 02 A6 */	mflr r0
/* 8067B8EC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8067B8F0  39 61 00 30 */	addi r11, r1, 0x30
/* 8067B8F4  4B CE 68 E8 */	b _savegpr_29
/* 8067B8F8  7C 7D 1B 78 */	mr r29, r3
/* 8067B8FC  3C 80 80 68 */	lis r4, lit_3789@ha
/* 8067B900  3B E4 C3 FC */	addi r31, r4, lit_3789@l
/* 8067B904  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8067B908  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8067B90C  40 82 00 1C */	bne lbl_8067B928
/* 8067B910  28 1D 00 00 */	cmplwi r29, 0
/* 8067B914  41 82 00 08 */	beq lbl_8067B91C
/* 8067B918  48 00 01 D5 */	bl __ct__10e_ai_classFv
lbl_8067B91C:
/* 8067B91C  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 8067B920  60 00 00 08 */	ori r0, r0, 8
/* 8067B924  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_8067B928:
/* 8067B928  38 7D 05 B0 */	addi r3, r29, 0x5b0
/* 8067B92C  3C 80 80 68 */	lis r4, stringBase0@ha
/* 8067B930  38 84 C5 38 */	addi r4, r4, stringBase0@l
/* 8067B934  4B 9B 15 88 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8067B938  7C 7E 1B 78 */	mr r30, r3
/* 8067B93C  2C 1E 00 04 */	cmpwi r30, 4
/* 8067B940  40 82 01 90 */	bne lbl_8067BAD0
/* 8067B944  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 8067B948  98 1D 05 BA */	stb r0, 0x5ba(r29)
/* 8067B94C  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 8067B950  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 8067B954  98 1D 06 98 */	stb r0, 0x698(r29)
/* 8067B958  88 9D 06 98 */	lbz r4, 0x698(r29)
/* 8067B95C  28 04 00 FF */	cmplwi r4, 0xff
/* 8067B960  41 82 00 28 */	beq lbl_8067B988
/* 8067B964  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8067B968  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8067B96C  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8067B970  7C 05 07 74 */	extsb r5, r0
/* 8067B974  4B 9B 99 EC */	b isSwitch__10dSv_info_cCFii
/* 8067B978  2C 03 00 00 */	cmpwi r3, 0
/* 8067B97C  41 82 00 0C */	beq lbl_8067B988
/* 8067B980  38 60 00 05 */	li r3, 5
/* 8067B984  48 00 01 50 */	b lbl_8067BAD4
lbl_8067B988:
/* 8067B988  7F A3 EB 78 */	mr r3, r29
/* 8067B98C  3C 80 80 68 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 8067B990  38 84 B8 C4 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 8067B994  38 A0 10 80 */	li r5, 0x1080
/* 8067B998  4B 99 EB 18 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8067B99C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8067B9A0  40 82 00 0C */	bne lbl_8067B9AC
/* 8067B9A4  38 60 00 05 */	li r3, 5
/* 8067B9A8  48 00 01 2C */	b lbl_8067BAD4
lbl_8067B9AC:
/* 8067B9AC  3C 60 80 68 */	lis r3, data_8067C698@ha
/* 8067B9B0  8C 03 C6 98 */	lbzu r0, data_8067C698@l(r3)
/* 8067B9B4  28 00 00 00 */	cmplwi r0, 0
/* 8067B9B8  40 82 00 20 */	bne lbl_8067B9D8
/* 8067B9BC  38 00 00 01 */	li r0, 1
/* 8067B9C0  98 03 00 00 */	stb r0, 0(r3)
/* 8067B9C4  98 1D 0D 40 */	stb r0, 0xd40(r29)
/* 8067B9C8  38 00 FF FF */	li r0, -1
/* 8067B9CC  3C 60 80 68 */	lis r3, l_HIO@ha
/* 8067B9D0  38 63 C6 A8 */	addi r3, r3, l_HIO@l
/* 8067B9D4  98 03 00 04 */	stb r0, 4(r3)
lbl_8067B9D8:
/* 8067B9D8  38 00 00 04 */	li r0, 4
/* 8067B9DC  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 8067B9E0  80 7D 05 D0 */	lwz r3, 0x5d0(r29)
/* 8067B9E4  80 63 00 04 */	lwz r3, 4(r3)
/* 8067B9E8  38 03 00 24 */	addi r0, r3, 0x24
/* 8067B9EC  90 1D 05 04 */	stw r0, 0x504(r29)
/* 8067B9F0  7F A3 EB 78 */	mr r3, r29
/* 8067B9F4  C0 3F 01 28 */	lfs f1, 0x128(r31)
/* 8067B9F8  C0 5F 01 2C */	lfs f2, 0x12c(r31)
/* 8067B9FC  FC 60 08 90 */	fmr f3, f1
/* 8067BA00  4B 99 EB 28 */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 8067BA04  7F A3 EB 78 */	mr r3, r29
/* 8067BA08  C0 3F 01 08 */	lfs f1, 0x108(r31)
/* 8067BA0C  C0 5F 01 30 */	lfs f2, 0x130(r31)
/* 8067BA10  FC 60 08 90 */	fmr f3, f1
/* 8067BA14  4B 99 EB 24 */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 8067BA18  38 00 03 E8 */	li r0, 0x3e8
/* 8067BA1C  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 8067BA20  B0 1D 05 60 */	sth r0, 0x560(r29)
/* 8067BA24  7F A3 EB 78 */	mr r3, r29
/* 8067BA28  4B FF D7 95 */	bl initCcCylinder__10e_ai_classFv
/* 8067BA2C  38 00 00 00 */	li r0, 0
/* 8067BA30  90 01 00 08 */	stw r0, 8(r1)
/* 8067BA34  38 7D 07 08 */	addi r3, r29, 0x708
/* 8067BA38  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8067BA3C  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 8067BA40  7F A6 EB 78 */	mr r6, r29
/* 8067BA44  38 E0 00 01 */	li r7, 1
/* 8067BA48  39 1D 06 C8 */	addi r8, r29, 0x6c8
/* 8067BA4C  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 8067BA50  39 40 00 00 */	li r10, 0
/* 8067BA54  4B 9F A7 F4 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 8067BA58  38 7D 06 C8 */	addi r3, r29, 0x6c8
/* 8067BA5C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8067BA60  C0 5F 01 34 */	lfs f2, 0x134(r31)
/* 8067BA64  4B 9F A4 F4 */	b SetWall__12dBgS_AcchCirFff
/* 8067BA68  38 00 00 00 */	li r0, 0
/* 8067BA6C  98 1D 05 B9 */	stb r0, 0x5b9(r29)
/* 8067BA70  38 7D 05 D4 */	addi r3, r29, 0x5d4
/* 8067BA74  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8067BA78  38 BD 05 38 */	addi r5, r29, 0x538
/* 8067BA7C  38 C0 00 03 */	li r6, 3
/* 8067BA80  38 E0 00 01 */	li r7, 1
/* 8067BA84  4B C4 56 10 */	b init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 8067BA88  38 1D 05 D4 */	addi r0, r29, 0x5d4
/* 8067BA8C  90 1D 0D 0C */	stw r0, 0xd0c(r29)
/* 8067BA90  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8067BA94  88 1D 05 BA */	lbz r0, 0x5ba(r29)
/* 8067BA98  C8 3F 01 00 */	lfd f1, 0x100(r31)
/* 8067BA9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8067BAA0  3C 00 43 30 */	lis r0, 0x4330
/* 8067BAA4  90 01 00 10 */	stw r0, 0x10(r1)
/* 8067BAA8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8067BAAC  EC 00 08 28 */	fsubs f0, f0, f1
/* 8067BAB0  EC 02 00 32 */	fmuls f0, f2, f0
/* 8067BAB4  3C 60 80 68 */	lis r3, l_HIO@ha
/* 8067BAB8  38 63 C6 A8 */	addi r3, r3, l_HIO@l
/* 8067BABC  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8067BAC0  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 8067BAC4  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 8067BAC8  7F A3 EB 78 */	mr r3, r29
/* 8067BACC  4B FF FB DD */	bl daE_AI_Execute__FP10e_ai_class
lbl_8067BAD0:
/* 8067BAD0  7F C3 F3 78 */	mr r3, r30
lbl_8067BAD4:
/* 8067BAD4  39 61 00 30 */	addi r11, r1, 0x30
/* 8067BAD8  4B CE 67 50 */	b _restgpr_29
/* 8067BADC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8067BAE0  7C 08 03 A6 */	mtlr r0
/* 8067BAE4  38 21 00 30 */	addi r1, r1, 0x30
/* 8067BAE8  4E 80 00 20 */	blr 

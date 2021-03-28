lbl_80603A54:
/* 80603A54  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80603A58  7C 08 02 A6 */	mflr r0
/* 80603A5C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80603A60  39 61 00 50 */	addi r11, r1, 0x50
/* 80603A64  4B D5 E7 70 */	b _savegpr_27
/* 80603A68  7C 7E 1B 78 */	mr r30, r3
/* 80603A6C  3C 80 80 60 */	lis r4, lit_3646@ha
/* 80603A70  3B E4 40 44 */	addi r31, r4, lit_3646@l
/* 80603A74  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80603A78  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80603A7C  40 82 00 1C */	bne lbl_80603A98
/* 80603A80  28 1E 00 00 */	cmplwi r30, 0
/* 80603A84  41 82 00 08 */	beq lbl_80603A8C
/* 80603A88  48 00 02 19 */	bl __ct__10b_go_classFv
lbl_80603A8C:
/* 80603A8C  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80603A90  60 00 00 08 */	ori r0, r0, 8
/* 80603A94  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80603A98:
/* 80603A98  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 80603A9C  3C 80 80 60 */	lis r4, stringBase0@ha
/* 80603AA0  38 84 40 8C */	addi r4, r4, stringBase0@l
/* 80603AA4  4B A2 94 18 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80603AA8  7C 7D 1B 78 */	mr r29, r3
/* 80603AAC  2C 1D 00 04 */	cmpwi r29, 4
/* 80603AB0  40 82 01 D4 */	bne lbl_80603C84
/* 80603AB4  7F C3 F3 78 */	mr r3, r30
/* 80603AB8  3C 80 80 60 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 80603ABC  38 84 39 5C */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 80603AC0  3C A0 00 05 */	lis r5, 0x0005 /* 0x0004B000@ha */
/* 80603AC4  38 A5 B0 00 */	addi r5, r5, 0xB000 /* 0x0004B000@l */
/* 80603AC8  4B A1 69 E8 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80603ACC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80603AD0  40 82 00 0C */	bne lbl_80603ADC
/* 80603AD4  38 60 00 05 */	li r3, 5
/* 80603AD8  48 00 01 B0 */	b lbl_80603C88
lbl_80603ADC:
/* 80603ADC  3C 60 80 60 */	lis r3, data_80604140@ha
/* 80603AE0  8C 03 41 40 */	lbzu r0, data_80604140@l(r3)
/* 80603AE4  28 00 00 00 */	cmplwi r0, 0
/* 80603AE8  40 82 00 20 */	bne lbl_80603B08
/* 80603AEC  38 00 00 01 */	li r0, 1
/* 80603AF0  98 1E 0D 34 */	stb r0, 0xd34(r30)
/* 80603AF4  98 03 00 00 */	stb r0, 0(r3)
/* 80603AF8  38 00 FF FF */	li r0, -1
/* 80603AFC  3C 60 80 60 */	lis r3, l_HIO@ha
/* 80603B00  38 63 41 50 */	addi r3, r3, l_HIO@l
/* 80603B04  98 03 00 04 */	stb r0, 4(r3)
lbl_80603B08:
/* 80603B08  38 00 00 04 */	li r0, 4
/* 80603B0C  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80603B10  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80603B14  80 63 00 04 */	lwz r3, 4(r3)
/* 80603B18  38 03 00 24 */	addi r0, r3, 0x24
/* 80603B1C  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80603B20  7F C3 F3 78 */	mr r3, r30
/* 80603B24  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80603B28  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 80603B2C  FC 60 08 90 */	fmr f3, f1
/* 80603B30  4B A1 69 F8 */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80603B34  7F C3 F3 78 */	mr r3, r30
/* 80603B38  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80603B3C  C0 5F 00 3C */	lfs f2, 0x3c(r31)
/* 80603B40  FC 60 08 90 */	fmr f3, f1
/* 80603B44  4B A1 69 F4 */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80603B48  38 00 03 E8 */	li r0, 0x3e8
/* 80603B4C  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 80603B50  B0 1E 05 60 */	sth r0, 0x560(r30)
/* 80603B54  38 00 00 00 */	li r0, 0
/* 80603B58  90 01 00 08 */	stw r0, 8(r1)
/* 80603B5C  38 7E 06 D4 */	addi r3, r30, 0x6d4
/* 80603B60  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80603B64  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80603B68  7F C6 F3 78 */	mr r6, r30
/* 80603B6C  38 E0 00 01 */	li r7, 1
/* 80603B70  39 1E 06 94 */	addi r8, r30, 0x694
/* 80603B74  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 80603B78  39 40 00 00 */	li r10, 0
/* 80603B7C  4B A7 26 CC */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80603B80  38 7E 06 94 */	addi r3, r30, 0x694
/* 80603B84  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80603B88  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80603B8C  4B A7 23 CC */	b SetWall__12dBgS_AcchCirFff
/* 80603B90  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 80603B94  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80603B98  38 BE 05 38 */	addi r5, r30, 0x538
/* 80603B9C  38 C0 00 03 */	li r6, 3
/* 80603BA0  38 E0 00 01 */	li r7, 1
/* 80603BA4  4B CB D4 F0 */	b init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 80603BA8  38 1E 05 B8 */	addi r0, r30, 0x5b8
/* 80603BAC  90 1E 0C 9C */	stw r0, 0xc9c(r30)
/* 80603BB0  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80603BB4  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80603BB8  38 00 00 00 */	li r0, 0
/* 80603BBC  B0 1E 06 6A */	sth r0, 0x66a(r30)
/* 80603BC0  7F C3 F3 78 */	mr r3, r30
/* 80603BC4  4B FF FC 25 */	bl daB_GO_Execute__FP10b_go_class
/* 80603BC8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80603BCC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80603BD0  38 61 00 10 */	addi r3, r1, 0x10
/* 80603BD4  38 80 00 00 */	li r4, 0
/* 80603BD8  38 A0 00 00 */	li r5, 0
/* 80603BDC  38 C0 00 00 */	li r6, 0
/* 80603BE0  4B C6 38 14 */	b __ct__5csXyzFsss
/* 80603BE4  3B 60 00 00 */	li r27, 0
/* 80603BE8  3B 80 00 00 */	li r28, 0
lbl_80603BEC:
/* 80603BEC  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80603BF0  4B C6 3D 9C */	b cM_rndFX__Ff
/* 80603BF4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80603BF8  EC 00 08 2A */	fadds f0, f0, f1
/* 80603BFC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80603C00  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80603C04  4B C6 3D 88 */	b cM_rndFX__Ff
/* 80603C08  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80603C0C  EC 00 08 2A */	fadds f0, f0, f1
/* 80603C10  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80603C14  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80603C18  4B C6 3D 3C */	b cM_rndF__Ff
/* 80603C1C  FC 00 08 1E */	fctiwz f0, f1
/* 80603C20  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80603C24  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80603C28  B0 01 00 12 */	sth r0, 0x12(r1)
/* 80603C2C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80603C30  7C 07 07 74 */	extsb r7, r0
/* 80603C34  38 00 00 00 */	li r0, 0
/* 80603C38  90 01 00 08 */	stw r0, 8(r1)
/* 80603C3C  38 60 02 F1 */	li r3, 0x2f1
/* 80603C40  28 1E 00 00 */	cmplwi r30, 0
/* 80603C44  41 82 00 0C */	beq lbl_80603C50
/* 80603C48  80 9E 00 04 */	lwz r4, 4(r30)
/* 80603C4C  48 00 00 08 */	b lbl_80603C54
lbl_80603C50:
/* 80603C50  38 80 FF FF */	li r4, -1
lbl_80603C54:
/* 80603C54  7F 65 DB 78 */	mr r5, r27
/* 80603C58  38 C1 00 18 */	addi r6, r1, 0x18
/* 80603C5C  39 01 00 10 */	addi r8, r1, 0x10
/* 80603C60  39 20 00 00 */	li r9, 0
/* 80603C64  39 40 FF FF */	li r10, -1
/* 80603C68  4B A1 62 88 */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80603C6C  38 1C 0C B8 */	addi r0, r28, 0xcb8
/* 80603C70  7C 7E 01 2E */	stwx r3, r30, r0
/* 80603C74  3B 7B 00 01 */	addi r27, r27, 1
/* 80603C78  2C 1B 00 1F */	cmpwi r27, 0x1f
/* 80603C7C  3B 9C 00 04 */	addi r28, r28, 4
/* 80603C80  41 80 FF 6C */	blt lbl_80603BEC
lbl_80603C84:
/* 80603C84  7F A3 EB 78 */	mr r3, r29
lbl_80603C88:
/* 80603C88  39 61 00 50 */	addi r11, r1, 0x50
/* 80603C8C  4B D5 E5 94 */	b _restgpr_27
/* 80603C90  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80603C94  7C 08 03 A6 */	mtlr r0
/* 80603C98  38 21 00 50 */	addi r1, r1, 0x50
/* 80603C9C  4E 80 00 20 */	blr 

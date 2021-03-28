lbl_80A65B24:
/* 80A65B24  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80A65B28  7C 08 02 A6 */	mflr r0
/* 80A65B2C  90 01 00 84 */	stw r0, 0x84(r1)
/* 80A65B30  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80A65B34  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80A65B38  39 61 00 70 */	addi r11, r1, 0x70
/* 80A65B3C  4B 8F C6 98 */	b _savegpr_27
/* 80A65B40  7C 7E 1B 78 */	mr r30, r3
/* 80A65B44  3C 60 80 A7 */	lis r3, m__17daNpc_Len_Param_c@ha
/* 80A65B48  3B E3 8E A4 */	addi r31, r3, m__17daNpc_Len_Param_c@l
/* 80A65B4C  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 80A65B50  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80A65B54  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 80A65B58  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80A65B5C  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80A65B60  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80A65B64  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A65B68  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80A65B6C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80A65B70  88 1E 0F EC */	lbz r0, 0xfec(r30)
/* 80A65B74  28 00 00 00 */	cmplwi r0, 0
/* 80A65B78  41 82 00 1C */	beq lbl_80A65B94
/* 80A65B7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A65B80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A65B84  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80A65B88  80 03 05 8C */	lwz r0, 0x58c(r3)
/* 80A65B8C  60 00 02 00 */	ori r0, r0, 0x200
/* 80A65B90  90 03 05 8C */	stw r0, 0x58c(r3)
lbl_80A65B94:
/* 80A65B94  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80A65B98  38 80 00 00 */	li r4, 0
/* 80A65B9C  4B 6E 22 A0 */	b calc__19daNpcT_DmgStagger_cFi
/* 80A65BA0  C0 5F 01 00 */	lfs f2, 0x100(r31)
/* 80A65BA4  A8 7E 0D 80 */	lha r3, 0xd80(r30)
/* 80A65BA8  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80A65BAC  7C 03 00 50 */	subf r0, r3, r0
/* 80A65BB0  7C 00 07 34 */	extsh r0, r0
/* 80A65BB4  C8 3F 00 E8 */	lfd f1, 0xe8(r31)
/* 80A65BB8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A65BBC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80A65BC0  3C 00 43 30 */	lis r0, 0x4330
/* 80A65BC4  90 01 00 50 */	stw r0, 0x50(r1)
/* 80A65BC8  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 80A65BCC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80A65BD0  EF E2 00 32 */	fmuls f31, f2, f0
/* 80A65BD4  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80A65BD8  83 63 00 04 */	lwz r27, 4(r3)
/* 80A65BDC  7F C3 F3 78 */	mr r3, r30
/* 80A65BE0  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A65BE4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80A65BE8  7D 89 03 A6 */	mtctr r12
/* 80A65BEC  4E 80 04 21 */	bctrl 
/* 80A65BF0  7C 7C 1B 78 */	mr r28, r3
/* 80A65BF4  7F C3 F3 78 */	mr r3, r30
/* 80A65BF8  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A65BFC  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80A65C00  7D 89 03 A6 */	mtctr r12
/* 80A65C04  4E 80 04 21 */	bctrl 
/* 80A65C08  7C 7D 1B 78 */	mr r29, r3
/* 80A65C0C  7F C3 F3 78 */	mr r3, r30
/* 80A65C10  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A65C14  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A65C18  7D 89 03 A6 */	mtctr r12
/* 80A65C1C  4E 80 04 21 */	bctrl 
/* 80A65C20  7C 67 1B 78 */	mr r7, r3
/* 80A65C24  39 5F 00 00 */	addi r10, r31, 0
/* 80A65C28  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 80A65C2C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A65C30  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 80A65C34  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A65C38  7F C4 F3 78 */	mr r4, r30
/* 80A65C3C  7F 65 DB 78 */	mr r5, r27
/* 80A65C40  38 C1 00 40 */	addi r6, r1, 0x40
/* 80A65C44  7F A8 EB 78 */	mr r8, r29
/* 80A65C48  7F 89 E3 78 */	mr r9, r28
/* 80A65C4C  C0 2A 00 24 */	lfs f1, 0x24(r10)
/* 80A65C50  C0 4A 00 20 */	lfs f2, 0x20(r10)
/* 80A65C54  C0 6A 00 2C */	lfs f3, 0x2c(r10)
/* 80A65C58  C0 8A 00 28 */	lfs f4, 0x28(r10)
/* 80A65C5C  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 80A65C60  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 80A65C64  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 80A65C68  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 80A65C6C  39 41 00 34 */	addi r10, r1, 0x34
/* 80A65C70  4B 6E 10 68 */	b setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 80A65C74  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80A65C78  2C 00 00 07 */	cmpwi r0, 7
/* 80A65C7C  40 82 00 1C */	bne lbl_80A65C98
/* 80A65C80  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A65C84  C0 3F 01 04 */	lfs f1, 0x104(r31)
/* 80A65C88  C0 5F 00 DC */	lfs f2, 0xdc(r31)
/* 80A65C8C  FC 60 F8 90 */	fmr f3, f31
/* 80A65C90  4B 6E 1F A8 */	b calcJntRad__15daNpcT_JntAnm_cFfff
/* 80A65C94  48 00 00 18 */	b lbl_80A65CAC
lbl_80A65C98:
/* 80A65C98  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A65C9C  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 80A65CA0  C0 5F 00 DC */	lfs f2, 0xdc(r31)
/* 80A65CA4  FC 60 F8 90 */	fmr f3, f31
/* 80A65CA8  4B 6E 1F 90 */	b calcJntRad__15daNpcT_JntAnm_cFfff
lbl_80A65CAC:
/* 80A65CAC  7F C3 F3 78 */	mr r3, r30
/* 80A65CB0  4B 6E 34 E0 */	b setMtx__8daNpcT_cFv
/* 80A65CB4  7F C3 F3 78 */	mr r3, r30
/* 80A65CB8  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A65CBC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80A65CC0  7D 89 03 A6 */	mtctr r12
/* 80A65CC4  4E 80 04 21 */	bctrl 
/* 80A65CC8  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 80A65CCC  80 84 00 04 */	lwz r4, 4(r4)
/* 80A65CD0  80 84 00 84 */	lwz r4, 0x84(r4)
/* 80A65CD4  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80A65CD8  1C 03 00 30 */	mulli r0, r3, 0x30
/* 80A65CDC  7C 64 02 14 */	add r3, r4, r0
/* 80A65CE0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80A65CE4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80A65CE8  4B 8E 07 C8 */	b PSMTXCopy
/* 80A65CEC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A65CF0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A65CF4  38 81 00 40 */	addi r4, r1, 0x40
/* 80A65CF8  38 BE 05 38 */	addi r5, r30, 0x538
/* 80A65CFC  4B 8E 10 70 */	b PSMTXMultVec
/* 80A65D00  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80A65D04  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A65D08  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80A65D0C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A65D10  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80A65D14  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A65D18  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A65D1C  38 81 00 28 */	addi r4, r1, 0x28
/* 80A65D20  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 80A65D24  38 A0 00 00 */	li r5, 0
/* 80A65D28  48 00 2B C5 */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 80A65D2C  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80A65D30  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A65D34  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80A65D38  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A65D3C  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80A65D40  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A65D44  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A65D48  38 81 00 1C */	addi r4, r1, 0x1c
/* 80A65D4C  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 80A65D50  A8 1E 0D 8C */	lha r0, 0xd8c(r30)
/* 80A65D54  7C 05 02 14 */	add r0, r5, r0
/* 80A65D58  7C 05 07 34 */	extsh r5, r0
/* 80A65D5C  38 C0 00 01 */	li r6, 1
/* 80A65D60  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 80A65D64  38 E0 00 00 */	li r7, 0
/* 80A65D68  48 00 2A 69 */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 80A65D6C  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80A65D70  28 00 00 01 */	cmplwi r0, 1
/* 80A65D74  40 82 00 1C */	bne lbl_80A65D90
/* 80A65D78  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 80A65D7C  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80A65D80  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 80A65D84  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80A65D88  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80A65D8C  48 00 00 1C */	b lbl_80A65DA8
lbl_80A65D90:
/* 80A65D90  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80A65D94  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80A65D98  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80A65D9C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80A65DA0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80A65DA4  D0 01 00 44 */	stfs f0, 0x44(r1)
lbl_80A65DA8:
/* 80A65DA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A65DAC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A65DB0  A8 9E 0D 7A */	lha r4, 0xd7a(r30)
/* 80A65DB4  4B 5A 66 28 */	b mDoMtx_YrotS__FPA4_fs
/* 80A65DB8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A65DBC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A65DC0  38 81 00 40 */	addi r4, r1, 0x40
/* 80A65DC4  7C 85 23 78 */	mr r5, r4
/* 80A65DC8  4B 8E 0F A4 */	b PSMTXMultVec
/* 80A65DCC  38 61 00 10 */	addi r3, r1, 0x10
/* 80A65DD0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80A65DD4  38 A1 00 40 */	addi r5, r1, 0x40
/* 80A65DD8  4B 80 0D 0C */	b __pl__4cXyzCFRC3Vec
/* 80A65DDC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80A65DE0  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80A65DE4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80A65DE8  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80A65DEC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80A65DF0  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80A65DF4  7F C3 F3 78 */	mr r3, r30
/* 80A65DF8  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A65DFC  81 8C 00 70 */	lwz r12, 0x70(r12)
/* 80A65E00  7D 89 03 A6 */	mtctr r12
/* 80A65E04  4E 80 04 21 */	bctrl 
/* 80A65E08  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80A65E0C  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80A65E10  39 61 00 70 */	addi r11, r1, 0x70
/* 80A65E14  4B 8F C4 0C */	b _restgpr_27
/* 80A65E18  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80A65E1C  7C 08 03 A6 */	mtlr r0
/* 80A65E20  38 21 00 80 */	addi r1, r1, 0x80
/* 80A65E24  4E 80 00 20 */	blr 

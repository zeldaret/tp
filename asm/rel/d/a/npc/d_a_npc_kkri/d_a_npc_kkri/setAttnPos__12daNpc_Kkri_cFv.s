lbl_805506BC:
/* 805506BC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805506C0  7C 08 02 A6 */	mflr r0
/* 805506C4  90 01 00 74 */	stw r0, 0x74(r1)
/* 805506C8  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 805506CC  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 805506D0  39 61 00 60 */	addi r11, r1, 0x60
/* 805506D4  4B E1 1B 00 */	b _savegpr_27
/* 805506D8  7C 7E 1B 78 */	mr r30, r3
/* 805506DC  3C 60 80 55 */	lis r3, m__18daNpc_Kkri_Param_c@ha
/* 805506E0  3B E3 34 90 */	addi r31, r3, m__18daNpc_Kkri_Param_c@l
/* 805506E4  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 805506E8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805506EC  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 805506F0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805506F4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 805506F8  88 1E 0F D4 */	lbz r0, 0xfd4(r30)
/* 805506FC  28 00 00 00 */	cmplwi r0, 0
/* 80550700  41 82 00 1C */	beq lbl_8055071C
/* 80550704  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80550708  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8055070C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80550710  80 03 05 8C */	lwz r0, 0x58c(r3)
/* 80550714  60 00 02 00 */	ori r0, r0, 0x200
/* 80550718  90 03 05 8C */	stw r0, 0x58c(r3)
lbl_8055071C:
/* 8055071C  C0 5F 00 C8 */	lfs f2, 0xc8(r31)
/* 80550720  A8 7E 0D 80 */	lha r3, 0xd80(r30)
/* 80550724  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80550728  7C 03 00 50 */	subf r0, r3, r0
/* 8055072C  7C 00 07 34 */	extsh r0, r0
/* 80550730  C8 3F 00 E0 */	lfd f1, 0xe0(r31)
/* 80550734  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80550738  90 01 00 44 */	stw r0, 0x44(r1)
/* 8055073C  3C 00 43 30 */	lis r0, 0x4330
/* 80550740  90 01 00 40 */	stw r0, 0x40(r1)
/* 80550744  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80550748  EC 00 08 28 */	fsubs f0, f0, f1
/* 8055074C  EF E2 00 32 */	fmuls f31, f2, f0
/* 80550750  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80550754  28 00 00 00 */	cmplwi r0, 0
/* 80550758  40 82 00 A8 */	bne lbl_80550800
/* 8055075C  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80550760  83 63 00 04 */	lwz r27, 4(r3)
/* 80550764  7F C3 F3 78 */	mr r3, r30
/* 80550768  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 8055076C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80550770  7D 89 03 A6 */	mtctr r12
/* 80550774  4E 80 04 21 */	bctrl 
/* 80550778  7C 7D 1B 78 */	mr r29, r3
/* 8055077C  7F C3 F3 78 */	mr r3, r30
/* 80550780  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80550784  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80550788  7D 89 03 A6 */	mtctr r12
/* 8055078C  4E 80 04 21 */	bctrl 
/* 80550790  7C 7C 1B 78 */	mr r28, r3
/* 80550794  7F C3 F3 78 */	mr r3, r30
/* 80550798  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 8055079C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805507A0  7D 89 03 A6 */	mtctr r12
/* 805507A4  4E 80 04 21 */	bctrl 
/* 805507A8  7C 67 1B 78 */	mr r7, r3
/* 805507AC  39 5F 00 00 */	addi r10, r31, 0
/* 805507B0  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 805507B4  D0 01 00 08 */	stfs f0, 8(r1)
/* 805507B8  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 805507BC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805507C0  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 805507C4  7F C4 F3 78 */	mr r4, r30
/* 805507C8  7F 65 DB 78 */	mr r5, r27
/* 805507CC  38 C1 00 34 */	addi r6, r1, 0x34
/* 805507D0  7F 88 E3 78 */	mr r8, r28
/* 805507D4  7F A9 EB 78 */	mr r9, r29
/* 805507D8  FC 40 08 90 */	fmr f2, f1
/* 805507DC  FC 60 08 90 */	fmr f3, f1
/* 805507E0  FC 80 08 90 */	fmr f4, f1
/* 805507E4  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 805507E8  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 805507EC  C0 FF 00 C4 */	lfs f7, 0xc4(r31)
/* 805507F0  C1 1F 00 CC */	lfs f8, 0xcc(r31)
/* 805507F4  39 40 00 00 */	li r10, 0
/* 805507F8  4B BF 64 E0 */	b setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 805507FC  48 00 01 54 */	b lbl_80550950
lbl_80550800:
/* 80550800  28 00 00 01 */	cmplwi r0, 1
/* 80550804  40 82 00 A8 */	bne lbl_805508AC
/* 80550808  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 8055080C  83 63 00 04 */	lwz r27, 4(r3)
/* 80550810  7F C3 F3 78 */	mr r3, r30
/* 80550814  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80550818  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8055081C  7D 89 03 A6 */	mtctr r12
/* 80550820  4E 80 04 21 */	bctrl 
/* 80550824  7C 7D 1B 78 */	mr r29, r3
/* 80550828  7F C3 F3 78 */	mr r3, r30
/* 8055082C  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80550830  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80550834  7D 89 03 A6 */	mtctr r12
/* 80550838  4E 80 04 21 */	bctrl 
/* 8055083C  7C 7C 1B 78 */	mr r28, r3
/* 80550840  7F C3 F3 78 */	mr r3, r30
/* 80550844  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80550848  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8055084C  7D 89 03 A6 */	mtctr r12
/* 80550850  4E 80 04 21 */	bctrl 
/* 80550854  7C 67 1B 78 */	mr r7, r3
/* 80550858  39 5F 00 00 */	addi r10, r31, 0
/* 8055085C  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 80550860  D0 01 00 08 */	stfs f0, 8(r1)
/* 80550864  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 80550868  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8055086C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80550870  7F C4 F3 78 */	mr r4, r30
/* 80550874  7F 65 DB 78 */	mr r5, r27
/* 80550878  38 C1 00 34 */	addi r6, r1, 0x34
/* 8055087C  7F 88 E3 78 */	mr r8, r28
/* 80550880  7F A9 EB 78 */	mr r9, r29
/* 80550884  FC 40 08 90 */	fmr f2, f1
/* 80550888  FC 60 08 90 */	fmr f3, f1
/* 8055088C  FC 80 08 90 */	fmr f4, f1
/* 80550890  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 80550894  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 80550898  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 8055089C  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 805508A0  39 40 00 00 */	li r10, 0
/* 805508A4  4B BF 64 34 */	b setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 805508A8  48 00 00 A8 */	b lbl_80550950
lbl_805508AC:
/* 805508AC  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 805508B0  83 63 00 04 */	lwz r27, 4(r3)
/* 805508B4  7F C3 F3 78 */	mr r3, r30
/* 805508B8  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 805508BC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 805508C0  7D 89 03 A6 */	mtctr r12
/* 805508C4  4E 80 04 21 */	bctrl 
/* 805508C8  7C 7C 1B 78 */	mr r28, r3
/* 805508CC  7F C3 F3 78 */	mr r3, r30
/* 805508D0  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 805508D4  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 805508D8  7D 89 03 A6 */	mtctr r12
/* 805508DC  4E 80 04 21 */	bctrl 
/* 805508E0  7C 7D 1B 78 */	mr r29, r3
/* 805508E4  7F C3 F3 78 */	mr r3, r30
/* 805508E8  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 805508EC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805508F0  7D 89 03 A6 */	mtctr r12
/* 805508F4  4E 80 04 21 */	bctrl 
/* 805508F8  7C 67 1B 78 */	mr r7, r3
/* 805508FC  39 5F 00 00 */	addi r10, r31, 0
/* 80550900  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 80550904  D0 01 00 08 */	stfs f0, 8(r1)
/* 80550908  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 8055090C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80550910  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80550914  7F C4 F3 78 */	mr r4, r30
/* 80550918  7F 65 DB 78 */	mr r5, r27
/* 8055091C  38 C1 00 34 */	addi r6, r1, 0x34
/* 80550920  7F A8 EB 78 */	mr r8, r29
/* 80550924  7F 89 E3 78 */	mr r9, r28
/* 80550928  C0 2A 00 24 */	lfs f1, 0x24(r10)
/* 8055092C  C0 4A 00 20 */	lfs f2, 0x20(r10)
/* 80550930  C0 6A 00 2C */	lfs f3, 0x2c(r10)
/* 80550934  C0 8A 00 28 */	lfs f4, 0x28(r10)
/* 80550938  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 8055093C  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 80550940  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 80550944  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 80550948  39 40 00 00 */	li r10, 0
/* 8055094C  4B BF 63 8C */	b setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
lbl_80550950:
/* 80550950  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80550954  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 80550958  C0 5F 00 B8 */	lfs f2, 0xb8(r31)
/* 8055095C  FC 60 F8 90 */	fmr f3, f31
/* 80550960  4B BF 72 D8 */	b calcJntRad__15daNpcT_JntAnm_cFfff
/* 80550964  7F C3 F3 78 */	mr r3, r30
/* 80550968  4B BF 88 28 */	b setMtx__8daNpcT_cFv
/* 8055096C  7F C3 F3 78 */	mr r3, r30
/* 80550970  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80550974  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80550978  7D 89 03 A6 */	mtctr r12
/* 8055097C  4E 80 04 21 */	bctrl 
/* 80550980  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 80550984  80 84 00 04 */	lwz r4, 4(r4)
/* 80550988  80 84 00 84 */	lwz r4, 0x84(r4)
/* 8055098C  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80550990  1C 03 00 30 */	mulli r0, r3, 0x30
/* 80550994  7C 64 02 14 */	add r3, r4, r0
/* 80550998  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8055099C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 805509A0  4B DF 5B 10 */	b PSMTXCopy
/* 805509A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805509A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805509AC  38 81 00 34 */	addi r4, r1, 0x34
/* 805509B0  38 BE 05 38 */	addi r5, r30, 0x538
/* 805509B4  4B DF 63 B8 */	b PSMTXMultVec
/* 805509B8  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 805509BC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805509C0  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 805509C4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805509C8  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 805509CC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805509D0  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 805509D4  38 81 00 28 */	addi r4, r1, 0x28
/* 805509D8  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 805509DC  38 A0 00 00 */	li r5, 0
/* 805509E0  48 00 25 0D */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 805509E4  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 805509E8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805509EC  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 805509F0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805509F4  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 805509F8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805509FC  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80550A00  38 81 00 1C */	addi r4, r1, 0x1c
/* 80550A04  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 80550A08  38 C0 00 00 */	li r6, 0
/* 80550A0C  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 80550A10  38 E0 00 00 */	li r7, 0
/* 80550A14  48 00 23 BD */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 80550A18  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 80550A1C  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80550A20  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80550A24  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80550A28  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80550A2C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80550A30  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80550A34  28 00 00 00 */	cmplwi r0, 0
/* 80550A38  40 82 00 1C */	bne lbl_80550A54
/* 80550A3C  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80550A40  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 80550A44  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80550A48  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 80550A4C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80550A50  48 00 00 20 */	b lbl_80550A70
lbl_80550A54:
/* 80550A54  28 00 00 01 */	cmplwi r0, 1
/* 80550A58  40 82 00 18 */	bne lbl_80550A70
/* 80550A5C  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80550A60  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 80550A64  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80550A68  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80550A6C  D0 01 00 3C */	stfs f0, 0x3c(r1)
lbl_80550A70:
/* 80550A70  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80550A74  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80550A78  A8 9E 0D 7A */	lha r4, 0xd7a(r30)
/* 80550A7C  4B AB B9 60 */	b mDoMtx_YrotS__FPA4_fs
/* 80550A80  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80550A84  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80550A88  38 81 00 34 */	addi r4, r1, 0x34
/* 80550A8C  7C 85 23 78 */	mr r5, r4
/* 80550A90  4B DF 62 DC */	b PSMTXMultVec
/* 80550A94  38 61 00 10 */	addi r3, r1, 0x10
/* 80550A98  38 81 00 34 */	addi r4, r1, 0x34
/* 80550A9C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80550AA0  4B D1 60 44 */	b __pl__4cXyzCFRC3Vec
/* 80550AA4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80550AA8  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80550AAC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80550AB0  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80550AB4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80550AB8  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80550ABC  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80550AC0  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80550AC4  39 61 00 60 */	addi r11, r1, 0x60
/* 80550AC8  4B E1 17 58 */	b _restgpr_27
/* 80550ACC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80550AD0  7C 08 03 A6 */	mtlr r0
/* 80550AD4  38 21 00 70 */	addi r1, r1, 0x70
/* 80550AD8  4E 80 00 20 */	blr 

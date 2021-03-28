lbl_80BAD790:
/* 80BAD790  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BAD794  7C 08 02 A6 */	mflr r0
/* 80BAD798  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BAD79C  39 61 00 20 */	addi r11, r1, 0x20
/* 80BAD7A0  4B 7B 4A 38 */	b _savegpr_28
/* 80BAD7A4  7C 7D 1B 78 */	mr r29, r3
/* 80BAD7A8  3C 80 80 BB */	lis r4, m__17daObj_Bed_Param_c@ha
/* 80BAD7AC  3B E4 E1 68 */	addi r31, r4, m__17daObj_Bed_Param_c@l
/* 80BAD7B0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BAD7B4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BAD7B8  40 82 00 84 */	bne lbl_80BAD83C
/* 80BAD7BC  7F A0 EB 79 */	or. r0, r29, r29
/* 80BAD7C0  41 82 00 70 */	beq lbl_80BAD830
/* 80BAD7C4  7C 1E 03 78 */	mr r30, r0
/* 80BAD7C8  4B 46 B3 9C */	b __ct__10fopAc_ac_cFv
/* 80BAD7CC  3C 60 80 BB */	lis r3, __vt__11daObj_Bed_c@ha
/* 80BAD7D0  38 03 E2 34 */	addi r0, r3, __vt__11daObj_Bed_c@l
/* 80BAD7D4  90 1E 08 40 */	stw r0, 0x840(r30)
/* 80BAD7D8  3B 9E 05 78 */	addi r28, r30, 0x578
/* 80BAD7DC  7F 83 E3 78 */	mr r3, r28
/* 80BAD7E0  4B 4C 88 C0 */	b __ct__9dBgS_AcchFv
/* 80BAD7E4  3C 60 80 BB */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80BAD7E8  38 63 E1 EC */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80BAD7EC  90 7C 00 10 */	stw r3, 0x10(r28)
/* 80BAD7F0  38 03 00 0C */	addi r0, r3, 0xc
/* 80BAD7F4  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80BAD7F8  38 03 00 18 */	addi r0, r3, 0x18
/* 80BAD7FC  90 1C 00 24 */	stw r0, 0x24(r28)
/* 80BAD800  38 7C 00 14 */	addi r3, r28, 0x14
/* 80BAD804  4B 4C B6 64 */	b SetObj__16dBgS_PolyPassChkFv
/* 80BAD808  38 7E 07 50 */	addi r3, r30, 0x750
/* 80BAD80C  4B 4C 86 A0 */	b __ct__12dBgS_AcchCirFv
/* 80BAD810  38 7E 07 90 */	addi r3, r30, 0x790
/* 80BAD814  4B 6B A4 08 */	b __ct__11cBgS_GndChkFv
/* 80BAD818  3C 60 80 BB */	lis r3, __vt__8cM3dGCyl@ha
/* 80BAD81C  38 03 E2 1C */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80BAD820  90 1E 08 14 */	stw r0, 0x814(r30)
/* 80BAD824  3C 60 80 BB */	lis r3, __vt__8cM3dGLin@ha
/* 80BAD828  38 03 E2 28 */	addi r0, r3, __vt__8cM3dGLin@l
/* 80BAD82C  90 1E 08 30 */	stw r0, 0x830(r30)
lbl_80BAD830:
/* 80BAD830  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80BAD834  60 00 00 08 */	ori r0, r0, 8
/* 80BAD838  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80BAD83C:
/* 80BAD83C  7F A3 EB 78 */	mr r3, r29
/* 80BAD840  48 00 06 99 */	bl getType__11daObj_Bed_cFv
/* 80BAD844  98 7D 08 3C */	stb r3, 0x83c(r29)
/* 80BAD848  7F A3 EB 78 */	mr r3, r29
/* 80BAD84C  48 00 06 95 */	bl getResName__11daObj_Bed_cFv
/* 80BAD850  7C 64 1B 78 */	mr r4, r3
/* 80BAD854  38 7D 05 6C */	addi r3, r29, 0x56c
/* 80BAD858  4B 47 F6 64 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BAD85C  7C 7E 1B 78 */	mr r30, r3
/* 80BAD860  2C 1E 00 04 */	cmpwi r30, 4
/* 80BAD864  40 82 01 80 */	bne lbl_80BAD9E4
/* 80BAD868  7F A3 EB 78 */	mr r3, r29
/* 80BAD86C  48 00 06 85 */	bl isDelete__11daObj_Bed_cFv
/* 80BAD870  2C 03 00 00 */	cmpwi r3, 0
/* 80BAD874  41 82 00 0C */	beq lbl_80BAD880
/* 80BAD878  38 60 00 05 */	li r3, 5
/* 80BAD87C  48 00 01 6C */	b lbl_80BAD9E8
lbl_80BAD880:
/* 80BAD880  7F A3 EB 78 */	mr r3, r29
/* 80BAD884  3C 80 80 BB */	lis r4, createHeapCallBack__11daObj_Bed_cFP10fopAc_ac_c@ha
/* 80BAD888  38 84 DE B8 */	addi r4, r4, createHeapCallBack__11daObj_Bed_cFP10fopAc_ac_c@l
/* 80BAD88C  38 A0 25 20 */	li r5, 0x2520
/* 80BAD890  4B 46 CC 20 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80BAD894  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BAD898  40 82 00 0C */	bne lbl_80BAD8A4
/* 80BAD89C  38 60 00 05 */	li r3, 5
/* 80BAD8A0  48 00 01 48 */	b lbl_80BAD9E8
lbl_80BAD8A4:
/* 80BAD8A4  80 9D 07 FC */	lwz r4, 0x7fc(r29)
/* 80BAD8A8  28 04 00 00 */	cmplwi r4, 0
/* 80BAD8AC  41 82 00 2C */	beq lbl_80BAD8D8
/* 80BAD8B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BAD8B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BAD8B8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80BAD8BC  7F A5 EB 78 */	mr r5, r29
/* 80BAD8C0  4B 4C 71 48 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80BAD8C4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80BAD8C8  28 00 00 01 */	cmplwi r0, 1
/* 80BAD8CC  40 82 00 0C */	bne lbl_80BAD8D8
/* 80BAD8D0  38 60 00 05 */	li r3, 5
/* 80BAD8D4  48 00 01 14 */	b lbl_80BAD9E8
lbl_80BAD8D8:
/* 80BAD8D8  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 80BAD8DC  38 03 00 24 */	addi r0, r3, 0x24
/* 80BAD8E0  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80BAD8E4  7F A3 EB 78 */	mr r3, r29
/* 80BAD8E8  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80BAD8EC  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 80BAD8F0  FC 60 08 90 */	fmr f3, f1
/* 80BAD8F4  C0 9F 00 18 */	lfs f4, 0x18(r31)
/* 80BAD8F8  FC A0 20 90 */	fmr f5, f4
/* 80BAD8FC  FC C0 20 90 */	fmr f6, f4
/* 80BAD900  4B 46 CC 48 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80BAD904  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80BAD908  90 01 00 08 */	stw r0, 8(r1)
/* 80BAD90C  38 7D 05 78 */	addi r3, r29, 0x578
/* 80BAD910  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80BAD914  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80BAD918  7F A6 EB 78 */	mr r6, r29
/* 80BAD91C  38 E0 00 01 */	li r7, 1
/* 80BAD920  39 1D 07 50 */	addi r8, r29, 0x750
/* 80BAD924  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80BAD928  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80BAD92C  4B 4C 89 1C */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80BAD930  38 7D 05 78 */	addi r3, r29, 0x578
/* 80BAD934  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80BAD938  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80BAD93C  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80BAD940  4B 4C 91 6C */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80BAD944  80 1D 06 54 */	lwz r0, 0x654(r29)
/* 80BAD948  90 1D 07 90 */	stw r0, 0x790(r29)
/* 80BAD94C  80 1D 06 58 */	lwz r0, 0x658(r29)
/* 80BAD950  90 1D 07 94 */	stw r0, 0x794(r29)
/* 80BAD954  80 1D 06 5C */	lwz r0, 0x65c(r29)
/* 80BAD958  90 1D 07 98 */	stw r0, 0x798(r29)
/* 80BAD95C  88 1D 06 60 */	lbz r0, 0x660(r29)
/* 80BAD960  98 1D 07 9C */	stb r0, 0x79c(r29)
/* 80BAD964  A0 1D 06 68 */	lhz r0, 0x668(r29)
/* 80BAD968  B0 1D 07 A4 */	sth r0, 0x7a4(r29)
/* 80BAD96C  A0 1D 06 6A */	lhz r0, 0x66a(r29)
/* 80BAD970  B0 1D 07 A6 */	sth r0, 0x7a6(r29)
/* 80BAD974  80 1D 06 6C */	lwz r0, 0x66c(r29)
/* 80BAD978  90 1D 07 A8 */	stw r0, 0x7a8(r29)
/* 80BAD97C  80 1D 06 70 */	lwz r0, 0x670(r29)
/* 80BAD980  90 1D 07 AC */	stw r0, 0x7ac(r29)
/* 80BAD984  C0 1D 06 78 */	lfs f0, 0x678(r29)
/* 80BAD988  D0 1D 07 B4 */	stfs f0, 0x7b4(r29)
/* 80BAD98C  C0 1D 06 7C */	lfs f0, 0x67c(r29)
/* 80BAD990  D0 1D 07 B8 */	stfs f0, 0x7b8(r29)
/* 80BAD994  C0 1D 06 80 */	lfs f0, 0x680(r29)
/* 80BAD998  D0 1D 07 BC */	stfs f0, 0x7bc(r29)
/* 80BAD99C  80 1D 06 84 */	lwz r0, 0x684(r29)
/* 80BAD9A0  90 1D 07 C0 */	stw r0, 0x7c0(r29)
/* 80BAD9A4  C0 1D 06 88 */	lfs f0, 0x688(r29)
/* 80BAD9A8  D0 1D 07 C4 */	stfs f0, 0x7c4(r29)
/* 80BAD9AC  80 1D 06 8C */	lwz r0, 0x68c(r29)
/* 80BAD9B0  90 1D 07 C8 */	stw r0, 0x7c8(r29)
/* 80BAD9B4  C0 1D 06 10 */	lfs f0, 0x610(r29)
/* 80BAD9B8  D0 1D 08 34 */	stfs f0, 0x834(r29)
/* 80BAD9BC  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80BAD9C0  C0 1D 08 34 */	lfs f0, 0x834(r29)
/* 80BAD9C4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80BAD9C8  41 82 00 14 */	beq lbl_80BAD9DC
/* 80BAD9CC  7F A3 EB 78 */	mr r3, r29
/* 80BAD9D0  48 00 05 65 */	bl setEnvTevColor__11daObj_Bed_cFv
/* 80BAD9D4  7F A3 EB 78 */	mr r3, r29
/* 80BAD9D8  48 00 05 B9 */	bl setRoomNo__11daObj_Bed_cFv
lbl_80BAD9DC:
/* 80BAD9DC  7F A3 EB 78 */	mr r3, r29
/* 80BAD9E0  48 00 02 D5 */	bl Execute__11daObj_Bed_cFv
lbl_80BAD9E4:
/* 80BAD9E4  7F C3 F3 78 */	mr r3, r30
lbl_80BAD9E8:
/* 80BAD9E8  39 61 00 20 */	addi r11, r1, 0x20
/* 80BAD9EC  4B 7B 48 38 */	b _restgpr_28
/* 80BAD9F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BAD9F4  7C 08 03 A6 */	mtlr r0
/* 80BAD9F8  38 21 00 20 */	addi r1, r1, 0x20
/* 80BAD9FC  4E 80 00 20 */	blr 

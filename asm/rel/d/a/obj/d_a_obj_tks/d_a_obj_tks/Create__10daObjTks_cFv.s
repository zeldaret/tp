lbl_80D0F640:
/* 80D0F640  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D0F644  7C 08 02 A6 */	mflr r0
/* 80D0F648  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D0F64C  39 61 00 30 */	addi r11, r1, 0x30
/* 80D0F650  4B 65 2B 89 */	bl _savegpr_28
/* 80D0F654  7C 7D 1B 78 */	mr r29, r3
/* 80D0F658  3C 80 80 D1 */	lis r4, m__16daObjTks_Param_c@ha /* 0x80D1273C@ha */
/* 80D0F65C  3B E4 27 3C */	addi r31, r4, m__16daObjTks_Param_c@l /* 0x80D1273C@l */
/* 80D0F660  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D0F664  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D0F668  40 82 00 1C */	bne lbl_80D0F684
/* 80D0F66C  28 1D 00 00 */	cmplwi r29, 0
/* 80D0F670  41 82 00 08 */	beq lbl_80D0F678
/* 80D0F674  4B FF FC 19 */	bl __ct__10daObjTks_cFv
lbl_80D0F678:
/* 80D0F678  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80D0F67C  60 00 00 08 */	ori r0, r0, 8
/* 80D0F680  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80D0F684:
/* 80D0F684  38 7D 0D C4 */	addi r3, r29, 0xdc4
/* 80D0F688  3C 80 80 D1 */	lis r4, l_arcName@ha /* 0x80D12954@ha */
/* 80D0F68C  38 84 29 54 */	addi r4, r4, l_arcName@l /* 0x80D12954@l */
/* 80D0F690  80 84 00 00 */	lwz r4, 0(r4)
/* 80D0F694  4B 31 D8 29 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D0F698  7C 7E 1B 78 */	mr r30, r3
/* 80D0F69C  2C 1E 00 04 */	cmpwi r30, 4
/* 80D0F6A0  40 82 02 48 */	bne lbl_80D0F8E8
/* 80D0F6A4  7F A3 EB 78 */	mr r3, r29
/* 80D0F6A8  3C 80 80 D1 */	lis r4, createHeapCallBack__10daObjTks_cFP10fopAc_ac_c@ha /* 0x80D10094@ha */
/* 80D0F6AC  38 84 00 94 */	addi r4, r4, createHeapCallBack__10daObjTks_cFP10fopAc_ac_c@l /* 0x80D10094@l */
/* 80D0F6B0  38 A0 2F F0 */	li r5, 0x2ff0
/* 80D0F6B4  4B 30 AD FD */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80D0F6B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D0F6BC  40 82 00 0C */	bne lbl_80D0F6C8
/* 80D0F6C0  38 60 00 05 */	li r3, 5
/* 80D0F6C4  48 00 02 28 */	b lbl_80D0F8EC
lbl_80D0F6C8:
/* 80D0F6C8  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80D0F6CC  80 63 00 04 */	lwz r3, 4(r3)
/* 80D0F6D0  38 03 00 24 */	addi r0, r3, 0x24
/* 80D0F6D4  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80D0F6D8  7F A3 EB 78 */	mr r3, r29
/* 80D0F6DC  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80D0F6E0  C0 5F 00 88 */	lfs f2, 0x88(r31)
/* 80D0F6E4  FC 60 08 90 */	fmr f3, f1
/* 80D0F6E8  C0 9F 00 8C */	lfs f4, 0x8c(r31)
/* 80D0F6EC  C0 BF 00 90 */	lfs f5, 0x90(r31)
/* 80D0F6F0  FC C0 20 90 */	fmr f6, f4
/* 80D0F6F4  4B 30 AE 55 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80D0F6F8  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80D0F6FC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80D0F700  38 BD 05 38 */	addi r5, r29, 0x538
/* 80D0F704  38 C0 00 03 */	li r6, 3
/* 80D0F708  38 E0 00 01 */	li r7, 1
/* 80D0F70C  4B 5B 0E 25 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 80D0F710  38 7D 07 E4 */	addi r3, r29, 0x7e4
/* 80D0F714  3B 9F 00 00 */	addi r28, r31, 0
/* 80D0F718  C0 3C 00 1C */	lfs f1, 0x1c(r28)
/* 80D0F71C  C0 5C 00 18 */	lfs f2, 0x18(r28)
/* 80D0F720  4B 36 68 39 */	bl SetWall__12dBgS_AcchCirFff
/* 80D0F724  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80D0F728  90 01 00 08 */	stw r0, 8(r1)
/* 80D0F72C  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 80D0F730  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80D0F734  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80D0F738  7F A6 EB 78 */	mr r6, r29
/* 80D0F73C  38 E0 00 01 */	li r7, 1
/* 80D0F740  39 1D 07 E4 */	addi r8, r29, 0x7e4
/* 80D0F744  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80D0F748  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80D0F74C  4B 36 6A FD */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80D0F750  80 1D 05 FC */	lwz r0, 0x5fc(r29)
/* 80D0F754  60 00 80 00 */	ori r0, r0, 0x8000
/* 80D0F758  90 1D 05 FC */	stw r0, 0x5fc(r29)
/* 80D0F75C  80 1D 05 FC */	lwz r0, 0x5fc(r29)
/* 80D0F760  60 00 00 04 */	ori r0, r0, 4
/* 80D0F764  90 1D 05 FC */	stw r0, 0x5fc(r29)
/* 80D0F768  38 7D 07 A8 */	addi r3, r29, 0x7a8
/* 80D0F76C  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 80D0F770  FC 00 00 1E */	fctiwz f0, f0
/* 80D0F774  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80D0F778  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80D0F77C  38 A0 00 00 */	li r5, 0
/* 80D0F780  7F A6 EB 78 */	mr r6, r29
/* 80D0F784  4B 37 40 DD */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80D0F788  38 7D 0C 7C */	addi r3, r29, 0xc7c
/* 80D0F78C  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcF_c@ha /* 0x803B37E0@ha */
/* 80D0F790  38 84 37 E0 */	addi r4, r4, mCcDCyl__8daNpcF_c@l /* 0x803B37E0@l */
/* 80D0F794  4B 37 51 21 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80D0F798  38 1D 07 A8 */	addi r0, r29, 0x7a8
/* 80D0F79C  90 1D 0C C0 */	stw r0, 0xcc0(r29)
/* 80D0F7A0  38 00 00 00 */	li r0, 0
/* 80D0F7A4  90 1D 0C A4 */	stw r0, 0xca4(r29)
/* 80D0F7A8  90 1D 0C 94 */	stw r0, 0xc94(r29)
/* 80D0F7AC  38 7D 0C A8 */	addi r3, r29, 0xca8
/* 80D0F7B0  38 80 00 08 */	li r4, 8
/* 80D0F7B4  4B 55 51 4D */	bl SetIGrp__10cCcD_ObjCoFUl
/* 80D0F7B8  38 7D 0C A8 */	addi r3, r29, 0xca8
/* 80D0F7BC  38 80 00 40 */	li r4, 0x40
/* 80D0F7C0  4B 55 51 5D */	bl SetVsGrp__10cCcD_ObjCoFUl
/* 80D0F7C4  38 7D 0D A0 */	addi r3, r29, 0xda0
/* 80D0F7C8  C0 3C 00 14 */	lfs f1, 0x14(r28)
/* 80D0F7CC  4B 55 FA 2D */	bl SetH__8cM3dGCylFf
/* 80D0F7D0  38 7D 0D A0 */	addi r3, r29, 0xda0
/* 80D0F7D4  C0 3C 00 1C */	lfs f1, 0x1c(r28)
/* 80D0F7D8  4B 55 FA 29 */	bl SetR__8cM3dGCylFf
/* 80D0F7DC  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 80D0F7E0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D0F7E4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D0F7E8  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80D0F7EC  4B 36 72 C1 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80D0F7F0  80 1D 06 AC */	lwz r0, 0x6ac(r29)
/* 80D0F7F4  90 1D 0A 44 */	stw r0, 0xa44(r29)
/* 80D0F7F8  80 1D 06 B0 */	lwz r0, 0x6b0(r29)
/* 80D0F7FC  90 1D 0A 48 */	stw r0, 0xa48(r29)
/* 80D0F800  80 1D 06 B4 */	lwz r0, 0x6b4(r29)
/* 80D0F804  90 1D 0A 4C */	stw r0, 0xa4c(r29)
/* 80D0F808  88 1D 06 B8 */	lbz r0, 0x6b8(r29)
/* 80D0F80C  98 1D 0A 50 */	stb r0, 0xa50(r29)
/* 80D0F810  A0 1D 06 C0 */	lhz r0, 0x6c0(r29)
/* 80D0F814  B0 1D 0A 58 */	sth r0, 0xa58(r29)
/* 80D0F818  A0 1D 06 C2 */	lhz r0, 0x6c2(r29)
/* 80D0F81C  B0 1D 0A 5A */	sth r0, 0xa5a(r29)
/* 80D0F820  80 1D 06 C4 */	lwz r0, 0x6c4(r29)
/* 80D0F824  90 1D 0A 5C */	stw r0, 0xa5c(r29)
/* 80D0F828  80 1D 06 C8 */	lwz r0, 0x6c8(r29)
/* 80D0F82C  90 1D 0A 60 */	stw r0, 0xa60(r29)
/* 80D0F830  C0 1D 06 D0 */	lfs f0, 0x6d0(r29)
/* 80D0F834  D0 1D 0A 68 */	stfs f0, 0xa68(r29)
/* 80D0F838  C0 1D 06 D4 */	lfs f0, 0x6d4(r29)
/* 80D0F83C  D0 1D 0A 6C */	stfs f0, 0xa6c(r29)
/* 80D0F840  C0 1D 06 D8 */	lfs f0, 0x6d8(r29)
/* 80D0F844  D0 1D 0A 70 */	stfs f0, 0xa70(r29)
/* 80D0F848  80 1D 06 DC */	lwz r0, 0x6dc(r29)
/* 80D0F84C  90 1D 0A 74 */	stw r0, 0xa74(r29)
/* 80D0F850  C0 1D 06 E0 */	lfs f0, 0x6e0(r29)
/* 80D0F854  D0 1D 0A 78 */	stfs f0, 0xa78(r29)
/* 80D0F858  80 1D 06 E4 */	lwz r0, 0x6e4(r29)
/* 80D0F85C  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 80D0F860  C0 1D 06 68 */	lfs f0, 0x668(r29)
/* 80D0F864  D0 1D 09 80 */	stfs f0, 0x980(r29)
/* 80D0F868  7F A3 EB 78 */	mr r3, r29
/* 80D0F86C  4B 44 35 19 */	bl setEnvTevColor__8daNpcF_cFv
/* 80D0F870  7F A3 EB 78 */	mr r3, r29
/* 80D0F874  4B 44 35 6D */	bl setRoomNo__8daNpcF_cFv
/* 80D0F878  7F A3 EB 78 */	mr r3, r29
/* 80D0F87C  48 00 0B 6D */	bl reset__10daObjTks_cFv
/* 80D0F880  38 00 00 01 */	li r0, 1
/* 80D0F884  98 1D 0D E0 */	stb r0, 0xde0(r29)
/* 80D0F888  38 00 00 00 */	li r0, 0
/* 80D0F88C  98 1D 0D E1 */	stb r0, 0xde1(r29)
/* 80D0F890  7F A3 EB 78 */	mr r3, r29
/* 80D0F894  48 00 04 D5 */	bl Execute__10daObjTks_cFv
/* 80D0F898  38 00 00 00 */	li r0, 0
/* 80D0F89C  98 1D 0D E0 */	stb r0, 0xde0(r29)
/* 80D0F8A0  38 00 00 01 */	li r0, 1
/* 80D0F8A4  98 1D 0D E1 */	stb r0, 0xde1(r29)
/* 80D0F8A8  28 1D 00 00 */	cmplwi r29, 0
/* 80D0F8AC  41 82 00 0C */	beq lbl_80D0F8B8
/* 80D0F8B0  83 BD 00 04 */	lwz r29, 4(r29)
/* 80D0F8B4  48 00 00 08 */	b lbl_80D0F8BC
lbl_80D0F8B8:
/* 80D0F8B8  3B A0 FF FF */	li r29, -1
lbl_80D0F8BC:
/* 80D0F8BC  4B 47 1D 85 */	bl dCam_getBody__Fv
/* 80D0F8C0  38 80 00 12 */	li r4, 0x12
/* 80D0F8C4  7F A5 EB 78 */	mr r5, r29
/* 80D0F8C8  3C C0 80 D1 */	lis r6, d_a_obj_tks__stringBase0@ha /* 0x80D128C8@ha */
/* 80D0F8CC  38 C6 28 C8 */	addi r6, r6, d_a_obj_tks__stringBase0@l /* 0x80D128C8@l */
/* 80D0F8D0  38 C6 00 0C */	addi r6, r6, 0xc
/* 80D0F8D4  38 E0 00 01 */	li r7, 1
/* 80D0F8D8  39 1F 00 80 */	addi r8, r31, 0x80
/* 80D0F8DC  39 20 00 00 */	li r9, 0
/* 80D0F8E0  4C C6 31 82 */	crclr 6
/* 80D0F8E4  4B 37 91 99 */	bl StartEventCamera__9dCamera_cFiie
lbl_80D0F8E8:
/* 80D0F8E8  7F C3 F3 78 */	mr r3, r30
lbl_80D0F8EC:
/* 80D0F8EC  39 61 00 30 */	addi r11, r1, 0x30
/* 80D0F8F0  4B 65 29 35 */	bl _restgpr_28
/* 80D0F8F4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D0F8F8  7C 08 03 A6 */	mtlr r0
/* 80D0F8FC  38 21 00 30 */	addi r1, r1, 0x30
/* 80D0F900  4E 80 00 20 */	blr 

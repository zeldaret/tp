lbl_8051B598:
/* 8051B598  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8051B59C  7C 08 02 A6 */	mflr r0
/* 8051B5A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8051B5A4  39 61 00 30 */	addi r11, r1, 0x30
/* 8051B5A8  4B E4 6C 30 */	b _savegpr_28
/* 8051B5AC  7C 7E 1B 78 */	mr r30, r3
/* 8051B5B0  3C 80 80 52 */	lis r4, lit_3649@ha
/* 8051B5B4  3B E4 B9 C8 */	addi r31, r4, lit_3649@l
/* 8051B5B8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8051B5BC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8051B5C0  40 82 00 E8 */	bne lbl_8051B6A8
/* 8051B5C4  7F C0 F3 79 */	or. r0, r30, r30
/* 8051B5C8  41 82 00 D4 */	beq lbl_8051B69C
/* 8051B5CC  7C 1D 03 78 */	mr r29, r0
/* 8051B5D0  4B AF D5 94 */	b __ct__10fopAc_ac_cFv
/* 8051B5D4  38 7D 06 04 */	addi r3, r29, 0x604
/* 8051B5D8  4B B5 A8 D4 */	b __ct__12dBgS_AcchCirFv
/* 8051B5DC  3B 9D 06 44 */	addi r28, r29, 0x644
/* 8051B5E0  7F 83 E3 78 */	mr r3, r28
/* 8051B5E4  4B B5 AA BC */	b __ct__9dBgS_AcchFv
/* 8051B5E8  3C 60 80 52 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 8051B5EC  38 63 BB C8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 8051B5F0  90 7C 00 10 */	stw r3, 0x10(r28)
/* 8051B5F4  38 03 00 0C */	addi r0, r3, 0xc
/* 8051B5F8  90 1C 00 14 */	stw r0, 0x14(r28)
/* 8051B5FC  38 03 00 18 */	addi r0, r3, 0x18
/* 8051B600  90 1C 00 24 */	stw r0, 0x24(r28)
/* 8051B604  38 7C 00 14 */	addi r3, r28, 0x14
/* 8051B608  4B B5 D8 60 */	b SetObj__16dBgS_PolyPassChkFv
/* 8051B60C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 8051B610  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 8051B614  90 1D 08 34 */	stw r0, 0x834(r29)
/* 8051B618  38 7D 08 38 */	addi r3, r29, 0x838
/* 8051B61C  4B B6 81 44 */	b __ct__10dCcD_GSttsFv
/* 8051B620  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 8051B624  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 8051B628  90 7D 08 34 */	stw r3, 0x834(r29)
/* 8051B62C  38 03 00 20 */	addi r0, r3, 0x20
/* 8051B630  90 1D 08 38 */	stw r0, 0x838(r29)
/* 8051B634  3B 9D 08 58 */	addi r28, r29, 0x858
/* 8051B638  7F 83 E3 78 */	mr r3, r28
/* 8051B63C  4B B6 83 EC */	b __ct__12dCcD_GObjInfFv
/* 8051B640  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8051B644  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8051B648  90 1C 01 20 */	stw r0, 0x120(r28)
/* 8051B64C  3C 60 80 52 */	lis r3, __vt__8cM3dGAab@ha
/* 8051B650  38 03 BB BC */	addi r0, r3, __vt__8cM3dGAab@l
/* 8051B654  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 8051B658  3C 60 80 52 */	lis r3, __vt__8cM3dGSph@ha
/* 8051B65C  38 03 BB B0 */	addi r0, r3, __vt__8cM3dGSph@l
/* 8051B660  90 1C 01 34 */	stw r0, 0x134(r28)
/* 8051B664  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 8051B668  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 8051B66C  90 7C 01 20 */	stw r3, 0x120(r28)
/* 8051B670  38 03 00 58 */	addi r0, r3, 0x58
/* 8051B674  90 1C 01 34 */	stw r0, 0x134(r28)
/* 8051B678  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 8051B67C  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 8051B680  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 8051B684  38 03 00 2C */	addi r0, r3, 0x2c
/* 8051B688  90 1C 01 20 */	stw r0, 0x120(r28)
/* 8051B68C  38 03 00 84 */	addi r0, r3, 0x84
/* 8051B690  90 1C 01 34 */	stw r0, 0x134(r28)
/* 8051B694  38 7D 09 98 */	addi r3, r29, 0x998
/* 8051B698  4B D2 E8 68 */	b __ct__10dMsgFlow_cFv
lbl_8051B69C:
/* 8051B69C  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 8051B6A0  60 00 00 08 */	ori r0, r0, 8
/* 8051B6A4  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_8051B6A8:
/* 8051B6A8  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 8051B6AC  3C 80 80 52 */	lis r4, stringBase0@ha
/* 8051B6B0  38 84 BA 88 */	addi r4, r4, stringBase0@l
/* 8051B6B4  4B B1 18 08 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8051B6B8  7C 7D 1B 78 */	mr r29, r3
/* 8051B6BC  2C 1D 00 04 */	cmpwi r29, 4
/* 8051B6C0  40 82 01 44 */	bne lbl_8051B804
/* 8051B6C4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8051B6C8  98 1E 05 B4 */	stb r0, 0x5b4(r30)
/* 8051B6CC  38 60 00 00 */	li r3, 0
/* 8051B6D0  B0 7E 04 DC */	sth r3, 0x4dc(r30)
/* 8051B6D4  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 8051B6D8  B0 1E 09 94 */	sth r0, 0x994(r30)
/* 8051B6DC  B0 7E 04 E8 */	sth r3, 0x4e8(r30)
/* 8051B6E0  B0 7E 04 E0 */	sth r3, 0x4e0(r30)
/* 8051B6E4  7F C3 F3 78 */	mr r3, r30
/* 8051B6E8  3C 80 80 52 */	lis r4, useHeapIfrt__FP10fopAc_ac_c@ha
/* 8051B6EC  38 84 B3 B0 */	addi r4, r4, useHeapIfrt__FP10fopAc_ac_c@l
/* 8051B6F0  38 A0 14 E0 */	li r5, 0x14e0
/* 8051B6F4  4B AF ED BC */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8051B6F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8051B6FC  40 82 00 0C */	bne lbl_8051B708
/* 8051B700  38 60 00 05 */	li r3, 5
/* 8051B704  48 00 01 04 */	b lbl_8051B808
lbl_8051B708:
/* 8051B708  3C 60 80 52 */	lis r3, data_8051BC10@ha
/* 8051B70C  8C 03 BC 10 */	lbzu r0, data_8051BC10@l(r3)
/* 8051B710  28 00 00 00 */	cmplwi r0, 0
/* 8051B714  40 82 00 20 */	bne lbl_8051B734
/* 8051B718  38 00 00 01 */	li r0, 1
/* 8051B71C  98 1E 09 E4 */	stb r0, 0x9e4(r30)
/* 8051B720  98 03 00 00 */	stb r0, 0(r3)
/* 8051B724  38 00 FF FF */	li r0, -1
/* 8051B728  3C 60 80 52 */	lis r3, l_HIO@ha
/* 8051B72C  38 63 BC 20 */	addi r3, r3, l_HIO@l
/* 8051B730  98 03 00 04 */	stb r0, 4(r3)
lbl_8051B734:
/* 8051B734  38 00 00 00 */	li r0, 0
/* 8051B738  B0 1E 05 D2 */	sth r0, 0x5d2(r30)
/* 8051B73C  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 8051B740  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 8051B744  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8051B748  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8051B74C  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 8051B750  3C 80 80 52 */	lis r4, stringBase0@ha
/* 8051B754  38 84 BA 88 */	addi r4, r4, stringBase0@l
/* 8051B758  38 84 00 03 */	addi r4, r4, 3
/* 8051B75C  4B E4 D2 38 */	b strcmp
/* 8051B760  2C 03 00 00 */	cmpwi r3, 0
/* 8051B764  40 82 00 0C */	bne lbl_8051B770
/* 8051B768  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 8051B76C  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
lbl_8051B770:
/* 8051B770  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 8051B774  80 63 00 04 */	lwz r3, 4(r3)
/* 8051B778  38 03 00 24 */	addi r0, r3, 0x24
/* 8051B77C  90 1E 05 04 */	stw r0, 0x504(r30)
/* 8051B780  38 00 00 00 */	li r0, 0
/* 8051B784  90 01 00 08 */	stw r0, 8(r1)
/* 8051B788  38 7E 06 44 */	addi r3, r30, 0x644
/* 8051B78C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8051B790  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 8051B794  7F C6 F3 78 */	mr r6, r30
/* 8051B798  38 E0 00 01 */	li r7, 1
/* 8051B79C  39 1E 06 04 */	addi r8, r30, 0x604
/* 8051B7A0  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 8051B7A4  39 40 00 00 */	li r10, 0
/* 8051B7A8  4B B5 AA A0 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 8051B7AC  38 7E 06 04 */	addi r3, r30, 0x604
/* 8051B7B0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8051B7B4  FC 40 08 90 */	fmr f2, f1
/* 8051B7B8  4B B5 A7 A0 */	b SetWall__12dBgS_AcchCirFff
/* 8051B7BC  88 1E 05 B4 */	lbz r0, 0x5b4(r30)
/* 8051B7C0  98 1E 05 CD */	stb r0, 0x5cd(r30)
/* 8051B7C4  88 1E 05 CD */	lbz r0, 0x5cd(r30)
/* 8051B7C8  7C 00 07 74 */	extsb r0, r0
/* 8051B7CC  2C 00 00 03 */	cmpwi r0, 3
/* 8051B7D0  40 81 00 0C */	ble lbl_8051B7DC
/* 8051B7D4  38 00 00 00 */	li r0, 0
/* 8051B7D8  98 1E 05 CD */	stb r0, 0x5cd(r30)
lbl_8051B7DC:
/* 8051B7DC  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 8051B7E0  D0 1E 05 E8 */	stfs f0, 0x5e8(r30)
/* 8051B7E4  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 8051B7E8  4B D4 C1 6C */	b cM_rndF__Ff
/* 8051B7EC  FC 00 08 1E */	fctiwz f0, f1
/* 8051B7F0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8051B7F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051B7F8  B0 1E 05 D0 */	sth r0, 0x5d0(r30)
/* 8051B7FC  7F C3 F3 78 */	mr r3, r30
/* 8051B800  4B FF F9 71 */	bl daFr_Execute__FP8fr_class
lbl_8051B804:
/* 8051B804  7F A3 EB 78 */	mr r3, r29
lbl_8051B808:
/* 8051B808  39 61 00 30 */	addi r11, r1, 0x30
/* 8051B80C  4B E4 6A 18 */	b _restgpr_28
/* 8051B810  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8051B814  7C 08 03 A6 */	mtlr r0
/* 8051B818  38 21 00 30 */	addi r1, r1, 0x30
/* 8051B81C  4E 80 00 20 */	blr 

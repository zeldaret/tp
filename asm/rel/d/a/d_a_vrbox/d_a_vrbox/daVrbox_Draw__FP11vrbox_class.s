lbl_80498518:
/* 80498518  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8049851C  7C 08 02 A6 */	mflr r0
/* 80498520  90 01 00 34 */	stw r0, 0x34(r1)
/* 80498524  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80498528  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8049852C  39 61 00 20 */	addi r11, r1, 0x20
/* 80498530  4B EC 9C A8 */	b _savegpr_28
/* 80498534  83 E3 05 6C */	lwz r31, 0x56c(r3)
/* 80498538  3C 80 80 4A */	lis r4, lit_3695@ha
/* 8049853C  C3 E4 89 90 */	lfs f31, lit_3695@l(r4)
/* 80498540  3B A0 00 00 */	li r29, 0
/* 80498544  48 00 01 75 */	bl daVrbox_color_set__FP11vrbox_class
/* 80498548  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8049854C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80498550  88 03 12 D4 */	lbz r0, 0x12d4(r3)
/* 80498554  28 00 00 00 */	cmplwi r0, 0
/* 80498558  41 82 00 0C */	beq lbl_80498564
/* 8049855C  38 60 00 01 */	li r3, 1
/* 80498560  48 00 01 38 */	b lbl_80498698
lbl_80498564:
/* 80498564  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha
/* 80498568  88 83 0D 64 */	lbz r4, struct_80450D64+0x0@l(r3)
/* 8049856C  7C 84 07 75 */	extsb. r4, r4
/* 80498570  41 80 00 28 */	blt lbl_80498598
/* 80498574  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80498578  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8049857C  38 63 4E C4 */	addi r3, r3, 0x4ec4
/* 80498580  4B B8 BE 04 */	b getStatusRoomDt__20dStage_roomControl_cFi
/* 80498584  81 83 00 00 */	lwz r12, 0(r3)
/* 80498588  81 8C 01 0C */	lwz r12, 0x10c(r12)
/* 8049858C  7D 89 03 A6 */	mtctr r12
/* 80498590  4E 80 04 21 */	bctrl 
/* 80498594  7C 7D 1B 78 */	mr r29, r3
lbl_80498598:
/* 80498598  28 1D 00 00 */	cmplwi r29, 0
/* 8049859C  41 82 00 08 */	beq lbl_804985A4
/* 804985A0  C3 FD 00 04 */	lfs f31, 4(r29)
lbl_804985A4:
/* 804985A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804985A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804985AC  80 83 61 B0 */	lwz r4, 0x61b0(r3)
/* 804985B0  28 04 00 00 */	cmplwi r4, 0
/* 804985B4  41 82 00 1C */	beq lbl_804985D0
/* 804985B8  3C 60 80 4A */	lis r3, lit_3696@ha
/* 804985BC  C0 23 89 94 */	lfs f1, lit_3696@l(r3)
/* 804985C0  C0 04 01 8C */	lfs f0, 0x18c(r4)
/* 804985C4  EC 00 F8 28 */	fsubs f0, f0, f31
/* 804985C8  EC 41 00 32 */	fmuls f2, f1, f0
/* 804985CC  48 00 00 0C */	b lbl_804985D8
lbl_804985D0:
/* 804985D0  3C 60 80 4A */	lis r3, lit_3695@ha
/* 804985D4  C0 43 89 90 */	lfs f2, lit_3695@l(r3)
lbl_804985D8:
/* 804985D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804985DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804985E0  C0 24 01 7C */	lfs f1, 0x17c(r4)
/* 804985E4  C0 04 01 8C */	lfs f0, 0x18c(r4)
/* 804985E8  EC 40 10 28 */	fsubs f2, f0, f2
/* 804985EC  C0 64 01 9C */	lfs f3, 0x19c(r4)
/* 804985F0  4B EA E2 F8 */	b PSMTXTrans
/* 804985F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804985F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804985FC  38 9F 00 24 */	addi r4, r31, 0x24
/* 80498600  4B EA DE B0 */	b PSMTXCopy
/* 80498604  4B D1 00 28 */	b dKy_GxFog_set__Fv
/* 80498608  A0 7F 00 5C */	lhz r3, 0x5c(r31)
/* 8049860C  3B 83 FF FF */	addi r28, r3, -1
/* 80498610  3B A0 00 02 */	li r29, 2
/* 80498614  48 00 00 38 */	b lbl_8049864C
lbl_80498618:
/* 80498618  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 8049861C  57 80 13 BA */	rlwinm r0, r28, 2, 0xe, 0x1d
/* 80498620  7C 63 00 2E */	lwzx r3, r3, r0
/* 80498624  28 03 00 00 */	cmplwi r3, 0
/* 80498628  41 82 00 1C */	beq lbl_80498644
/* 8049862C  80 63 00 34 */	lwz r3, 0x34(r3)
/* 80498630  81 83 00 00 */	lwz r12, 0(r3)
/* 80498634  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80498638  7D 89 03 A6 */	mtctr r12
/* 8049863C  4E 80 04 21 */	bctrl 
/* 80498640  7C 7E 1B 78 */	mr r30, r3
lbl_80498644:
/* 80498644  9B BE 00 00 */	stb r29, 0(r30)
/* 80498648  3B 9C FF FF */	addi r28, r28, -1
lbl_8049864C:
/* 8049864C  2C 1C 00 00 */	cmpwi r28, 0
/* 80498650  40 80 FF C8 */	bge lbl_80498618
/* 80498654  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80498658  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 8049865C  80 04 5F 64 */	lwz r0, 0x5f64(r4)
/* 80498660  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80498664  3B C3 4A C8 */	addi r30, r3, j3dSys@l
/* 80498668  90 1E 00 48 */	stw r0, 0x48(r30)
/* 8049866C  80 04 5F 68 */	lwz r0, 0x5f68(r4)
/* 80498670  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80498674  7F E3 FB 78 */	mr r3, r31
/* 80498678  4B B7 56 4C */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 8049867C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80498680  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80498684  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80498688  90 1E 00 48 */	stw r0, 0x48(r30)
/* 8049868C  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80498690  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80498694  38 60 00 01 */	li r3, 1
lbl_80498698:
/* 80498698  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8049869C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 804986A0  39 61 00 20 */	addi r11, r1, 0x20
/* 804986A4  4B EC 9B 80 */	b _restgpr_28
/* 804986A8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804986AC  7C 08 03 A6 */	mtlr r0
/* 804986B0  38 21 00 30 */	addi r1, r1, 0x30
/* 804986B4  4E 80 00 20 */	blr 

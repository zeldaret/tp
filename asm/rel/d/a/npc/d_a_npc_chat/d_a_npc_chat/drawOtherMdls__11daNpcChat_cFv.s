lbl_809835D0:
/* 809835D0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809835D4  7C 08 02 A6 */	mflr r0
/* 809835D8  90 01 00 44 */	stw r0, 0x44(r1)
/* 809835DC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 809835E0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 809835E4  39 61 00 30 */	addi r11, r1, 0x30
/* 809835E8  4B 9D EB F0 */	b _savegpr_28
/* 809835EC  7C 7D 1B 78 */	mr r29, r3
/* 809835F0  3C 80 80 98 */	lis r4, cNullVec__6Z2Calc@ha
/* 809835F4  3B E4 79 5C */	addi r31, r4, cNullVec__6Z2Calc@l
/* 809835F8  4B FF DB 11 */	bl isM___11daNpcChat_cFv
/* 809835FC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80983600  7C 05 00 34 */	cntlzw r5, r0
/* 80983604  80 DD 0E 14 */	lwz r6, 0xe14(r29)
/* 80983608  54 C4 18 38 */	slwi r4, r6, 3
/* 8098360C  3C 60 80 98 */	lis r3, a_jntNumTbl@ha
/* 80983610  38 03 6F 64 */	addi r0, r3, a_jntNumTbl@l
/* 80983614  7C 60 22 14 */	add r3, r0, r4
/* 80983618  54 A0 E8 FA */	rlwinm r0, r5, 0x1d, 3, 0x1d
/* 8098361C  7F C3 00 2E */	lwzx r30, r3, r0
/* 80983620  88 1D 0E 10 */	lbz r0, 0xe10(r29)
/* 80983624  2C 00 00 10 */	cmpwi r0, 0x10
/* 80983628  40 80 00 18 */	bge lbl_80983640
/* 8098362C  38 7F 1F 78 */	addi r3, r31, 0x1f78
/* 80983630  54 00 30 32 */	slwi r0, r0, 6
/* 80983634  7C 63 02 14 */	add r3, r3, r0
/* 80983638  C3 E3 00 18 */	lfs f31, 0x18(r3)
/* 8098363C  48 00 00 14 */	b lbl_80983650
lbl_80983640:
/* 80983640  38 7F 3A 70 */	addi r3, r31, 0x3a70
/* 80983644  54 00 30 32 */	slwi r0, r0, 6
/* 80983648  7C 63 02 14 */	add r3, r3, r0
/* 8098364C  C3 E3 FC 18 */	lfs f31, -0x3e8(r3)
lbl_80983650:
/* 80983650  88 1D 0E 4F */	lbz r0, 0xe4f(r29)
/* 80983654  28 00 00 00 */	cmplwi r0, 0
/* 80983658  41 82 01 2C */	beq lbl_80983784
/* 8098365C  2C 06 00 00 */	cmpwi r6, 0
/* 80983660  41 82 00 E4 */	beq lbl_80983744
/* 80983664  3B 80 00 00 */	li r28, 0
/* 80983668  88 1D 09 F2 */	lbz r0, 0x9f2(r29)
/* 8098366C  28 00 00 00 */	cmplwi r0, 0
/* 80983670  40 82 00 1C */	bne lbl_8098368C
/* 80983674  88 1D 09 F4 */	lbz r0, 0x9f4(r29)
/* 80983678  28 00 00 00 */	cmplwi r0, 0
/* 8098367C  41 82 00 14 */	beq lbl_80983690
/* 80983680  4B 6A C3 D4 */	b dComIfGs_wolfeye_effect_check__Fv
/* 80983684  2C 03 00 00 */	cmpwi r3, 0
/* 80983688  40 82 00 08 */	bne lbl_80983690
lbl_8098368C:
/* 8098368C  3B 80 00 01 */	li r28, 1
lbl_80983690:
/* 80983690  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80983694  40 82 00 F0 */	bne lbl_80983784
/* 80983698  80 1D 0B F0 */	lwz r0, 0xbf0(r29)
/* 8098369C  28 00 00 00 */	cmplwi r0, 0
/* 809836A0  41 82 00 E4 */	beq lbl_80983784
/* 809836A4  2C 1E 00 00 */	cmpwi r30, 0
/* 809836A8  41 80 00 DC */	blt lbl_80983784
/* 809836AC  80 7F 3F 90 */	lwz r3, 0x3f90(r31)
/* 809836B0  80 1F 3F 94 */	lwz r0, 0x3f94(r31)
/* 809836B4  90 61 00 08 */	stw r3, 8(r1)
/* 809836B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 809836BC  80 1F 3F 98 */	lwz r0, 0x3f98(r31)
/* 809836C0  90 01 00 10 */	stw r0, 0x10(r1)
/* 809836C4  38 61 00 08 */	addi r3, r1, 8
/* 809836C8  38 9D 0D D8 */	addi r4, r29, 0xdd8
/* 809836CC  4B 9D E9 7C */	b __ptmf_cmpr
/* 809836D0  2C 03 00 00 */	cmpwi r3, 0
/* 809836D4  41 82 00 B0 */	beq lbl_80983784
/* 809836D8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 809836DC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 809836E0  80 9D 0B F0 */	lwz r4, 0xbf0(r29)
/* 809836E4  80 84 00 04 */	lwz r4, 4(r4)
/* 809836E8  38 BD 01 0C */	addi r5, r29, 0x10c
/* 809836EC  4B 82 16 B4 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 809836F0  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 809836F4  80 63 00 04 */	lwz r3, 4(r3)
/* 809836F8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809836FC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80983700  1C 1E 00 30 */	mulli r0, r30, 0x30
/* 80983704  7C 63 02 14 */	add r3, r3, r0
/* 80983708  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8098370C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80983710  4B 9C 2D A0 */	b PSMTXCopy
/* 80983714  FC 20 F8 90 */	fmr f1, f31
/* 80983718  FC 40 F8 90 */	fmr f2, f31
/* 8098371C  FC 60 F8 90 */	fmr f3, f31
/* 80983720  4B 68 97 18 */	b scaleM__14mDoMtx_stack_cFfff
/* 80983724  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80983728  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8098372C  80 9D 0B F0 */	lwz r4, 0xbf0(r29)
/* 80983730  38 84 00 24 */	addi r4, r4, 0x24
/* 80983734  4B 9C 2D 7C */	b PSMTXCopy
/* 80983738  80 7D 0B F0 */	lwz r3, 0xbf0(r29)
/* 8098373C  4B 68 A5 88 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80983740  48 00 00 44 */	b lbl_80983784
lbl_80983744:
/* 80983744  88 1D 0E 51 */	lbz r0, 0xe51(r29)
/* 80983748  28 00 00 01 */	cmplwi r0, 1
/* 8098374C  40 82 00 38 */	bne lbl_80983784
/* 80983750  88 1D 09 F2 */	lbz r0, 0x9f2(r29)
/* 80983754  28 00 00 00 */	cmplwi r0, 0
/* 80983758  40 82 00 2C */	bne lbl_80983784
/* 8098375C  80 9D 0B F0 */	lwz r4, 0xbf0(r29)
/* 80983760  28 04 00 00 */	cmplwi r4, 0
/* 80983764  41 82 00 20 */	beq lbl_80983784
/* 80983768  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8098376C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80983770  80 84 00 04 */	lwz r4, 4(r4)
/* 80983774  38 BD 01 0C */	addi r5, r29, 0x10c
/* 80983778  4B 82 16 28 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8098377C  80 7D 0B F0 */	lwz r3, 0xbf0(r29)
/* 80983780  4B 68 A5 44 */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_80983784:
/* 80983784  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80983788  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8098378C  39 61 00 30 */	addi r11, r1, 0x30
/* 80983790  4B 9D EA 94 */	b _restgpr_28
/* 80983794  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80983798  7C 08 03 A6 */	mtlr r0
/* 8098379C  38 21 00 40 */	addi r1, r1, 0x40
/* 809837A0  4E 80 00 20 */	blr 

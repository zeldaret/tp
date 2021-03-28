lbl_809EC854:
/* 809EC854  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 809EC858  7C 08 02 A6 */	mflr r0
/* 809EC85C  90 01 00 54 */	stw r0, 0x54(r1)
/* 809EC860  39 61 00 50 */	addi r11, r1, 0x50
/* 809EC864  4B 97 59 78 */	b _savegpr_29
/* 809EC868  7C 7E 1B 78 */	mr r30, r3
/* 809EC86C  3C 80 80 9F */	lis r4, m__17daNpc_Grz_Param_c@ha
/* 809EC870  3B E4 F1 F4 */	addi r31, r4, m__17daNpc_Grz_Param_c@l
/* 809EC874  A0 03 1A 7A */	lhz r0, 0x1a7a(r3)
/* 809EC878  2C 00 00 02 */	cmpwi r0, 2
/* 809EC87C  41 82 00 74 */	beq lbl_809EC8F0
/* 809EC880  40 80 03 54 */	bge lbl_809ECBD4
/* 809EC884  2C 00 00 00 */	cmpwi r0, 0
/* 809EC888  41 82 00 0C */	beq lbl_809EC894
/* 809EC88C  48 00 03 48 */	b lbl_809ECBD4
/* 809EC890  48 00 03 44 */	b lbl_809ECBD4
lbl_809EC894:
/* 809EC894  38 80 00 05 */	li r4, 5
/* 809EC898  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 809EC89C  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809EC8A0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809EC8A4  7D 89 03 A6 */	mtctr r12
/* 809EC8A8  4E 80 04 21 */	bctrl 
/* 809EC8AC  7F C3 F3 78 */	mr r3, r30
/* 809EC8B0  38 80 00 06 */	li r4, 6
/* 809EC8B4  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 809EC8B8  38 A0 00 00 */	li r5, 0
/* 809EC8BC  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809EC8C0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809EC8C4  7D 89 03 A6 */	mtctr r12
/* 809EC8C8  4E 80 04 21 */	bctrl 
/* 809EC8CC  7F C3 F3 78 */	mr r3, r30
/* 809EC8D0  38 80 00 00 */	li r4, 0
/* 809EC8D4  4B FF F8 91 */	bl setLookMode__11daNpc_Grz_cFi
/* 809EC8D8  38 00 00 00 */	li r0, 0
/* 809EC8DC  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 809EC8E0  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 809EC8E4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 809EC8E8  38 00 00 02 */	li r0, 2
/* 809EC8EC  B0 1E 1A 7A */	sth r0, 0x1a7a(r30)
lbl_809EC8F0:
/* 809EC8F0  88 1E 09 F2 */	lbz r0, 0x9f2(r30)
/* 809EC8F4  28 00 00 01 */	cmplwi r0, 1
/* 809EC8F8  40 82 00 38 */	bne lbl_809EC930
/* 809EC8FC  38 00 00 00 */	li r0, 0
/* 809EC900  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
/* 809EC904  38 00 FF FF */	li r0, -1
/* 809EC908  B0 1E 09 D4 */	sth r0, 0x9d4(r30)
/* 809EC90C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809EC910  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809EC914  88 9E 1A 98 */	lbz r4, 0x1a98(r30)
/* 809EC918  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 809EC91C  7C 05 07 74 */	extsb r5, r0
/* 809EC920  4B 64 88 E0 */	b onSwitch__10dSv_info_cFii
/* 809EC924  7F C3 F3 78 */	mr r3, r30
/* 809EC928  4B 62 D3 54 */	b fopAcM_delete__FP10fopAc_ac_c
/* 809EC92C  48 00 02 A8 */	b lbl_809ECBD4
lbl_809EC930:
/* 809EC930  80 1E 1A 80 */	lwz r0, 0x1a80(r30)
/* 809EC934  2C 00 00 20 */	cmpwi r0, 0x20
/* 809EC938  40 82 00 6C */	bne lbl_809EC9A4
/* 809EC93C  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 809EC940  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 809EC944  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 809EC948  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809EC94C  4C 41 13 82 */	cror 2, 1, 2
/* 809EC950  40 82 00 10 */	bne lbl_809EC960
/* 809EC954  C0 1F 04 08 */	lfs f0, 0x408(r31)
/* 809EC958  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809EC95C  41 80 00 20 */	blt lbl_809EC97C
lbl_809EC960:
/* 809EC960  C0 1F 04 0C */	lfs f0, 0x40c(r31)
/* 809EC964  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809EC968  4C 41 13 82 */	cror 2, 1, 2
/* 809EC96C  40 82 00 38 */	bne lbl_809EC9A4
/* 809EC970  C0 1F 01 30 */	lfs f0, 0x130(r31)
/* 809EC974  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809EC978  40 80 00 2C */	bge lbl_809EC9A4
lbl_809EC97C:
/* 809EC97C  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500E5@ha */
/* 809EC980  38 03 00 E5 */	addi r0, r3, 0x00E5 /* 0x000500E5@l */
/* 809EC984  90 01 00 0C */	stw r0, 0xc(r1)
/* 809EC988  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 809EC98C  38 81 00 0C */	addi r4, r1, 0xc
/* 809EC990  38 A0 FF FF */	li r5, -1
/* 809EC994  81 9E 0B 48 */	lwz r12, 0xb48(r30)
/* 809EC998  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 809EC99C  7D 89 03 A6 */	mtctr r12
/* 809EC9A0  4E 80 04 21 */	bctrl 
lbl_809EC9A4:
/* 809EC9A4  38 7E 12 C0 */	addi r3, r30, 0x12c0
/* 809EC9A8  4B 76 3D 44 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 809EC9AC  28 03 00 00 */	cmplwi r3, 0
/* 809EC9B0  40 82 00 DC */	bne lbl_809ECA8C
/* 809EC9B4  3C 60 80 9F */	lis r3, s_sub__FPvPv@ha
/* 809EC9B8  38 63 C7 70 */	addi r3, r3, s_sub__FPvPv@l
/* 809EC9BC  7F C4 F3 78 */	mr r4, r30
/* 809EC9C0  4B 63 49 78 */	b fpcEx_Search__FPFPvPv_PvPv
/* 809EC9C4  7C 7D 1B 79 */	or. r29, r3, r3
/* 809EC9C8  41 82 02 0C */	beq lbl_809ECBD4
/* 809EC9CC  38 7E 12 C0 */	addi r3, r30, 0x12c0
/* 809EC9D0  7F A4 EB 78 */	mr r4, r29
/* 809EC9D4  4B 76 3C E8 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 809EC9D8  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 809EC9DC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 809EC9E0  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 809EC9E4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 809EC9E8  C0 1F 04 10 */	lfs f0, 0x410(r31)
/* 809EC9EC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 809EC9F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809EC9F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809EC9F8  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 809EC9FC  4B 61 F9 E0 */	b mDoMtx_YrotS__FPA4_fs
/* 809ECA00  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809ECA04  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809ECA08  38 81 00 34 */	addi r4, r1, 0x34
/* 809ECA0C  7C 85 23 78 */	mr r5, r4
/* 809ECA10  4B 95 A3 5C */	b PSMTXMultVec
/* 809ECA14  38 61 00 28 */	addi r3, r1, 0x28
/* 809ECA18  38 81 00 34 */	addi r4, r1, 0x34
/* 809ECA1C  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 809ECA20  4B 87 A0 C4 */	b __pl__4cXyzCFRC3Vec
/* 809ECA24  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 809ECA28  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 809ECA2C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 809ECA30  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 809ECA34  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 809ECA38  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 809ECA3C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 809ECA40  4B 63 12 7C */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 809ECA44  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809ECA48  41 82 00 10 */	beq lbl_809ECA58
/* 809ECA4C  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 809ECA50  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 809ECA54  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
lbl_809ECA58:
/* 809ECA58  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 809ECA5C  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 809ECA60  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 809ECA64  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 809ECA68  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 809ECA6C  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 809ECA70  C0 1E 04 BC */	lfs f0, 0x4bc(r30)
/* 809ECA74  D0 1E 04 A8 */	stfs f0, 0x4a8(r30)
/* 809ECA78  C0 1E 04 C0 */	lfs f0, 0x4c0(r30)
/* 809ECA7C  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 809ECA80  C0 1E 04 C4 */	lfs f0, 0x4c4(r30)
/* 809ECA84  D0 1E 04 B0 */	stfs f0, 0x4b0(r30)
/* 809ECA88  48 00 01 4C */	b lbl_809ECBD4
lbl_809ECA8C:
/* 809ECA8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809ECA90  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 809ECA94  80 64 5D B4 */	lwz r3, 0x5db4(r4)
/* 809ECA98  80 03 05 74 */	lwz r0, 0x574(r3)
/* 809ECA9C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 809ECAA0  40 82 01 34 */	bne lbl_809ECBD4
/* 809ECAA4  38 61 00 1C */	addi r3, r1, 0x1c
/* 809ECAA8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 809ECAAC  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 809ECAB0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 809ECAB4  4B 87 A0 80 */	b __mi__4cXyzCFRC3Vec
/* 809ECAB8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 809ECABC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809ECAC0  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 809ECAC4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809ECAC8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 809ECACC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809ECAD0  38 61 00 10 */	addi r3, r1, 0x10
/* 809ECAD4  4B 95 A6 64 */	b PSVECSquareMag
/* 809ECAD8  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 809ECADC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809ECAE0  40 81 00 58 */	ble lbl_809ECB38
/* 809ECAE4  FC 00 08 34 */	frsqrte f0, f1
/* 809ECAE8  C8 9F 00 D0 */	lfd f4, 0xd0(r31)
/* 809ECAEC  FC 44 00 32 */	fmul f2, f4, f0
/* 809ECAF0  C8 7F 00 D8 */	lfd f3, 0xd8(r31)
/* 809ECAF4  FC 00 00 32 */	fmul f0, f0, f0
/* 809ECAF8  FC 01 00 32 */	fmul f0, f1, f0
/* 809ECAFC  FC 03 00 28 */	fsub f0, f3, f0
/* 809ECB00  FC 02 00 32 */	fmul f0, f2, f0
/* 809ECB04  FC 44 00 32 */	fmul f2, f4, f0
/* 809ECB08  FC 00 00 32 */	fmul f0, f0, f0
/* 809ECB0C  FC 01 00 32 */	fmul f0, f1, f0
/* 809ECB10  FC 03 00 28 */	fsub f0, f3, f0
/* 809ECB14  FC 02 00 32 */	fmul f0, f2, f0
/* 809ECB18  FC 44 00 32 */	fmul f2, f4, f0
/* 809ECB1C  FC 00 00 32 */	fmul f0, f0, f0
/* 809ECB20  FC 01 00 32 */	fmul f0, f1, f0
/* 809ECB24  FC 03 00 28 */	fsub f0, f3, f0
/* 809ECB28  FC 02 00 32 */	fmul f0, f2, f0
/* 809ECB2C  FC 21 00 32 */	fmul f1, f1, f0
/* 809ECB30  FC 20 08 18 */	frsp f1, f1
/* 809ECB34  48 00 00 88 */	b lbl_809ECBBC
lbl_809ECB38:
/* 809ECB38  C8 1F 00 E0 */	lfd f0, 0xe0(r31)
/* 809ECB3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809ECB40  40 80 00 10 */	bge lbl_809ECB50
/* 809ECB44  3C 60 80 45 */	lis r3, __float_nan@ha
/* 809ECB48  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 809ECB4C  48 00 00 70 */	b lbl_809ECBBC
lbl_809ECB50:
/* 809ECB50  D0 21 00 08 */	stfs f1, 8(r1)
/* 809ECB54  80 81 00 08 */	lwz r4, 8(r1)
/* 809ECB58  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 809ECB5C  3C 00 7F 80 */	lis r0, 0x7f80
/* 809ECB60  7C 03 00 00 */	cmpw r3, r0
/* 809ECB64  41 82 00 14 */	beq lbl_809ECB78
/* 809ECB68  40 80 00 40 */	bge lbl_809ECBA8
/* 809ECB6C  2C 03 00 00 */	cmpwi r3, 0
/* 809ECB70  41 82 00 20 */	beq lbl_809ECB90
/* 809ECB74  48 00 00 34 */	b lbl_809ECBA8
lbl_809ECB78:
/* 809ECB78  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809ECB7C  41 82 00 0C */	beq lbl_809ECB88
/* 809ECB80  38 00 00 01 */	li r0, 1
/* 809ECB84  48 00 00 28 */	b lbl_809ECBAC
lbl_809ECB88:
/* 809ECB88  38 00 00 02 */	li r0, 2
/* 809ECB8C  48 00 00 20 */	b lbl_809ECBAC
lbl_809ECB90:
/* 809ECB90  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809ECB94  41 82 00 0C */	beq lbl_809ECBA0
/* 809ECB98  38 00 00 05 */	li r0, 5
/* 809ECB9C  48 00 00 10 */	b lbl_809ECBAC
lbl_809ECBA0:
/* 809ECBA0  38 00 00 03 */	li r0, 3
/* 809ECBA4  48 00 00 08 */	b lbl_809ECBAC
lbl_809ECBA8:
/* 809ECBA8  38 00 00 04 */	li r0, 4
lbl_809ECBAC:
/* 809ECBAC  2C 00 00 01 */	cmpwi r0, 1
/* 809ECBB0  40 82 00 0C */	bne lbl_809ECBBC
/* 809ECBB4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 809ECBB8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_809ECBBC:
/* 809ECBBC  38 7F 00 00 */	addi r3, r31, 0
/* 809ECBC0  C0 03 00 7C */	lfs f0, 0x7c(r3)
/* 809ECBC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809ECBC8  40 80 00 0C */	bge lbl_809ECBD4
/* 809ECBCC  38 00 00 02 */	li r0, 2
/* 809ECBD0  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
lbl_809ECBD4:
/* 809ECBD4  38 60 00 01 */	li r3, 1
/* 809ECBD8  39 61 00 50 */	addi r11, r1, 0x50
/* 809ECBDC  4B 97 56 4C */	b _restgpr_29
/* 809ECBE0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 809ECBE4  7C 08 03 A6 */	mtlr r0
/* 809ECBE8  38 21 00 50 */	addi r1, r1, 0x50
/* 809ECBEC  4E 80 00 20 */	blr 

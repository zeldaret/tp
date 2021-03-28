lbl_80AEAA10:
/* 80AEAA10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AEAA14  7C 08 02 A6 */	mflr r0
/* 80AEAA18  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AEAA1C  39 61 00 20 */	addi r11, r1, 0x20
/* 80AEAA20  4B 87 77 BC */	b _savegpr_29
/* 80AEAA24  7C 7F 1B 78 */	mr r31, r3
/* 80AEAA28  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80AEAA2C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80AEAA30  40 82 01 50 */	bne lbl_80AEAB80
/* 80AEAA34  7F E0 FB 79 */	or. r0, r31, r31
/* 80AEAA38  41 82 01 3C */	beq lbl_80AEAB74
/* 80AEAA3C  7C 1E 03 78 */	mr r30, r0
/* 80AEAA40  4B 52 E1 24 */	b __ct__10fopAc_ac_cFv
/* 80AEAA44  3C 60 80 AF */	lis r3, __vt__13daNpc_Shop0_c@ha
/* 80AEAA48  38 03 BD B4 */	addi r0, r3, __vt__13daNpc_Shop0_c@l
/* 80AEAA4C  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80AEAA50  3B BE 05 70 */	addi r29, r30, 0x570
/* 80AEAA54  3C 60 80 AF */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AEAA58  38 03 BD 18 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AEAA5C  90 1E 05 70 */	stw r0, 0x570(r30)
/* 80AEAA60  7F A3 EB 78 */	mr r3, r29
/* 80AEAA64  38 80 00 00 */	li r4, 0
/* 80AEAA68  4B 83 D9 94 */	b init__12J3DFrameCtrlFs
/* 80AEAA6C  38 00 00 00 */	li r0, 0
/* 80AEAA70  90 1D 00 18 */	stw r0, 0x18(r29)
/* 80AEAA74  38 7E 05 94 */	addi r3, r30, 0x594
/* 80AEAA78  4B 75 F4 88 */	b __ct__10dMsgFlow_cFv
/* 80AEAA7C  3B BE 05 F0 */	addi r29, r30, 0x5f0
/* 80AEAA80  7F A3 EB 78 */	mr r3, r29
/* 80AEAA84  4B 58 CA F8 */	b __ct__11dBgS_GndChkFv
/* 80AEAA88  3C 60 80 AF */	lis r3, __vt__14dBgS_ObjGndChk@ha
/* 80AEAA8C  38 63 BD 24 */	addi r3, r3, __vt__14dBgS_ObjGndChk@l
/* 80AEAA90  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80AEAA94  38 03 00 0C */	addi r0, r3, 0xc
/* 80AEAA98  90 1D 00 20 */	stw r0, 0x20(r29)
/* 80AEAA9C  38 03 00 18 */	addi r0, r3, 0x18
/* 80AEAAA0  90 1D 00 3C */	stw r0, 0x3c(r29)
/* 80AEAAA4  38 03 00 24 */	addi r0, r3, 0x24
/* 80AEAAA8  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 80AEAAAC  38 7D 00 3C */	addi r3, r29, 0x3c
/* 80AEAAB0  4B 58 E3 B8 */	b SetObj__16dBgS_PolyPassChkFv
/* 80AEAAB4  38 7E 06 48 */	addi r3, r30, 0x648
/* 80AEAAB8  4B 58 B3 F4 */	b __ct__12dBgS_AcchCirFv
/* 80AEAABC  3B BE 06 88 */	addi r29, r30, 0x688
/* 80AEAAC0  7F A3 EB 78 */	mr r3, r29
/* 80AEAAC4  4B 58 B5 DC */	b __ct__9dBgS_AcchFv
/* 80AEAAC8  3C 60 80 AF */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80AEAACC  38 63 BD 60 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80AEAAD0  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80AEAAD4  38 03 00 0C */	addi r0, r3, 0xc
/* 80AEAAD8  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80AEAADC  38 03 00 18 */	addi r0, r3, 0x18
/* 80AEAAE0  90 1D 00 24 */	stw r0, 0x24(r29)
/* 80AEAAE4  38 7D 00 14 */	addi r3, r29, 0x14
/* 80AEAAE8  4B 58 E3 80 */	b SetObj__16dBgS_PolyPassChkFv
/* 80AEAAEC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80AEAAF0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80AEAAF4  90 1E 08 78 */	stw r0, 0x878(r30)
/* 80AEAAF8  38 7E 08 7C */	addi r3, r30, 0x87c
/* 80AEAAFC  4B 59 8C 64 */	b __ct__10dCcD_GSttsFv
/* 80AEAB00  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80AEAB04  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80AEAB08  90 7E 08 78 */	stw r3, 0x878(r30)
/* 80AEAB0C  38 03 00 20 */	addi r0, r3, 0x20
/* 80AEAB10  90 1E 08 7C */	stw r0, 0x87c(r30)
/* 80AEAB14  3B BE 08 9C */	addi r29, r30, 0x89c
/* 80AEAB18  7F A3 EB 78 */	mr r3, r29
/* 80AEAB1C  4B 59 8F 0C */	b __ct__12dCcD_GObjInfFv
/* 80AEAB20  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80AEAB24  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80AEAB28  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80AEAB2C  3C 60 80 AF */	lis r3, __vt__8cM3dGAab@ha
/* 80AEAB30  38 03 BD 9C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80AEAB34  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80AEAB38  3C 60 80 AF */	lis r3, __vt__8cM3dGCyl@ha
/* 80AEAB3C  38 03 BD A8 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80AEAB40  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80AEAB44  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80AEAB48  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80AEAB4C  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80AEAB50  38 03 00 58 */	addi r0, r3, 0x58
/* 80AEAB54  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80AEAB58  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80AEAB5C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80AEAB60  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80AEAB64  38 03 00 2C */	addi r0, r3, 0x2c
/* 80AEAB68  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80AEAB6C  38 03 00 84 */	addi r0, r3, 0x84
/* 80AEAB70  90 1D 01 38 */	stw r0, 0x138(r29)
lbl_80AEAB74:
/* 80AEAB74  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80AEAB78  60 00 00 08 */	ori r0, r0, 8
/* 80AEAB7C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80AEAB80:
/* 80AEAB80  7F E3 FB 78 */	mr r3, r31
/* 80AEAB84  48 00 06 0D */	bl getResName__13daNpc_Shop0_cFv
/* 80AEAB88  7C 64 1B 78 */	mr r4, r3
/* 80AEAB8C  38 7F 05 E0 */	addi r3, r31, 0x5e0
/* 80AEAB90  4B 54 23 2C */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80AEAB94  7C 7E 1B 78 */	mr r30, r3
/* 80AEAB98  2C 1E 00 04 */	cmpwi r30, 4
/* 80AEAB9C  40 82 00 58 */	bne lbl_80AEABF4
/* 80AEABA0  7F E3 FB 78 */	mr r3, r31
/* 80AEABA4  48 00 05 FD */	bl getParam__13daNpc_Shop0_cFv
/* 80AEABA8  7F E3 FB 78 */	mr r3, r31
/* 80AEABAC  3C 80 80 AF */	lis r4, createHeapCallBack__FP10fopAc_ac_c@ha
/* 80AEABB0  38 84 A7 D8 */	addi r4, r4, createHeapCallBack__FP10fopAc_ac_c@l
/* 80AEABB4  38 A0 00 00 */	li r5, 0
/* 80AEABB8  4B 52 F8 F8 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80AEABBC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AEABC0  40 82 00 0C */	bne lbl_80AEABCC
/* 80AEABC4  38 60 00 05 */	li r3, 5
/* 80AEABC8  48 00 00 30 */	b lbl_80AEABF8
lbl_80AEABCC:
/* 80AEABCC  7F E3 FB 78 */	mr r3, r31
/* 80AEABD0  48 00 06 01 */	bl isDelete__13daNpc_Shop0_cFv
/* 80AEABD4  2C 03 00 00 */	cmpwi r3, 0
/* 80AEABD8  40 82 00 14 */	bne lbl_80AEABEC
/* 80AEABDC  7F E3 FB 78 */	mr r3, r31
/* 80AEABE0  48 00 06 4D */	bl init__13daNpc_Shop0_cFv
/* 80AEABE4  2C 03 00 00 */	cmpwi r3, 0
/* 80AEABE8  40 82 00 0C */	bne lbl_80AEABF4
lbl_80AEABEC:
/* 80AEABEC  38 60 00 05 */	li r3, 5
/* 80AEABF0  48 00 00 08 */	b lbl_80AEABF8
lbl_80AEABF4:
/* 80AEABF4  7F C3 F3 78 */	mr r3, r30
lbl_80AEABF8:
/* 80AEABF8  39 61 00 20 */	addi r11, r1, 0x20
/* 80AEABFC  4B 87 76 2C */	b _restgpr_29
/* 80AEAC00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AEAC04  7C 08 03 A6 */	mtlr r0
/* 80AEAC08  38 21 00 20 */	addi r1, r1, 0x20
/* 80AEAC0C  4E 80 00 20 */	blr 

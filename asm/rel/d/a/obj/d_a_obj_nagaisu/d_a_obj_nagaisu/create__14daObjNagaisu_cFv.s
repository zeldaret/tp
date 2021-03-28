lbl_80C9F668:
/* 80C9F668  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C9F66C  7C 08 02 A6 */	mflr r0
/* 80C9F670  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C9F674  39 61 00 20 */	addi r11, r1, 0x20
/* 80C9F678  4B 6C 2B 60 */	b _savegpr_28
/* 80C9F67C  7C 7F 1B 78 */	mr r31, r3
/* 80C9F680  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C9F684  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C9F688  40 82 00 1C */	bne lbl_80C9F6A4
/* 80C9F68C  28 1F 00 00 */	cmplwi r31, 0
/* 80C9F690  41 82 00 08 */	beq lbl_80C9F698
/* 80C9F694  4B FF FD 45 */	bl __ct__14daObjNagaisu_cFv
lbl_80C9F698:
/* 80C9F698  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C9F69C  60 00 00 08 */	ori r0, r0, 8
/* 80C9F6A0  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C9F6A4:
/* 80C9F6A4  7F E3 FB 78 */	mr r3, r31
/* 80C9F6A8  28 1F 00 00 */	cmplwi r31, 0
/* 80C9F6AC  41 82 00 08 */	beq lbl_80C9F6B4
/* 80C9F6B0  38 7F 05 68 */	addi r3, r31, 0x568
lbl_80C9F6B4:
/* 80C9F6B4  3C 80 80 CA */	lis r4, l_arcName@ha
/* 80C9F6B8  38 84 04 08 */	addi r4, r4, l_arcName@l
/* 80C9F6BC  80 84 00 00 */	lwz r4, 0(r4)
/* 80C9F6C0  4B 38 D7 FC */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C9F6C4  7C 7E 1B 78 */	mr r30, r3
/* 80C9F6C8  2C 1E 00 04 */	cmpwi r30, 4
/* 80C9F6CC  40 82 00 C0 */	bne lbl_80C9F78C
/* 80C9F6D0  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 80C9F6D4  3C 60 80 CA */	lis r3, lit_3731@ha
/* 80C9F6D8  C0 03 03 BC */	lfs f0, lit_3731@l(r3)
/* 80C9F6DC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C9F6E0  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80C9F6E4  7F E3 FB 78 */	mr r3, r31
/* 80C9F6E8  48 00 02 5D */	bl setIsu__14daObjNagaisu_cFv
/* 80C9F6EC  7F E3 FB 78 */	mr r3, r31
/* 80C9F6F0  3C 80 80 CA */	lis r4, daObjNagaisu_c_createHeap__FP10fopAc_ac_c@ha
/* 80C9F6F4  38 84 F3 B8 */	addi r4, r4, daObjNagaisu_c_createHeap__FP10fopAc_ac_c@l
/* 80C9F6F8  3C A0 00 01 */	lis r5, 0x0001 /* 0x00012000@ha */
/* 80C9F6FC  38 A5 20 00 */	addi r5, r5, 0x2000 /* 0x00012000@l */
/* 80C9F700  4B 37 AD B0 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80C9F704  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C9F708  40 82 00 0C */	bne lbl_80C9F714
/* 80C9F70C  38 60 00 05 */	li r3, 5
/* 80C9F710  48 00 00 80 */	b lbl_80C9F790
lbl_80C9F714:
/* 80C9F714  7F E3 FB 78 */	mr r3, r31
/* 80C9F718  48 00 01 FD */	bl init__14daObjNagaisu_cFv
/* 80C9F71C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C9F720  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C9F724  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C9F728  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C9F72C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C9F730  4B 6A 71 B8 */	b PSMTXTrans
/* 80C9F734  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C9F738  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C9F73C  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80C9F740  38 84 00 24 */	addi r4, r4, 0x24
/* 80C9F744  4B 6A 6D 6C */	b PSMTXCopy
/* 80C9F748  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80C9F74C  38 03 00 24 */	addi r0, r3, 0x24
/* 80C9F750  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80C9F754  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80C9F758  80 83 00 04 */	lwz r4, 4(r3)
/* 80C9F75C  7F E3 FB 78 */	mr r3, r31
/* 80C9F760  4B 37 AE 18 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80C9F764  3B BF 05 B4 */	addi r29, r31, 0x5b4
/* 80C9F768  3B 80 00 00 */	li r28, 0
lbl_80C9F76C:
/* 80C9F76C  7F A3 EB 78 */	mr r3, r29
/* 80C9F770  7F E4 FB 78 */	mr r4, r31
/* 80C9F774  38 BF 05 78 */	addi r5, r31, 0x578
/* 80C9F778  48 00 06 B1 */	bl create__15daObjIsuChild_cFP14daObjNagaisu_cP9dCcD_Stts
/* 80C9F77C  3B 9C 00 01 */	addi r28, r28, 1
/* 80C9F780  2C 1C 00 3C */	cmpwi r28, 0x3c
/* 80C9F784  3B BD 02 F4 */	addi r29, r29, 0x2f4
/* 80C9F788  41 80 FF E4 */	blt lbl_80C9F76C
lbl_80C9F78C:
/* 80C9F78C  7F C3 F3 78 */	mr r3, r30
lbl_80C9F790:
/* 80C9F790  39 61 00 20 */	addi r11, r1, 0x20
/* 80C9F794  4B 6C 2A 90 */	b _restgpr_28
/* 80C9F798  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C9F79C  7C 08 03 A6 */	mtlr r0
/* 80C9F7A0  38 21 00 20 */	addi r1, r1, 0x20
/* 80C9F7A4  4E 80 00 20 */	blr 

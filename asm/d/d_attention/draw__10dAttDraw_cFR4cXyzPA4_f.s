lbl_800732B0:
/* 800732B0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 800732B4  7C 08 02 A6 */	mflr r0
/* 800732B8  90 01 00 64 */	stw r0, 0x64(r1)
/* 800732BC  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 800732C0  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 800732C4  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 800732C8  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 800732CC  39 61 00 40 */	addi r11, r1, 0x40
/* 800732D0  48 2E EF 05 */	bl _savegpr_27
/* 800732D4  7C 7D 1B 78 */	mr r29, r3
/* 800732D8  7C 9E 23 78 */	mr r30, r4
/* 800732DC  7C BB 2B 78 */	mr r27, r5
/* 800732E0  88 03 01 70 */	lbz r0, 0x170(r3)
/* 800732E4  54 00 10 3A */	slwi r0, r0, 2
/* 800732E8  7C 7D 00 2E */	lwzx r3, r29, r0
/* 800732EC  83 E3 00 04 */	lwz r31, 4(r3)
/* 800732F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 800732F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 800732F8  C0 24 00 00 */	lfs f1, 0(r4)
/* 800732FC  C0 44 00 04 */	lfs f2, 4(r4)
/* 80073300  C0 1D 01 6C */	lfs f0, 0x16c(r29)
/* 80073304  EC 42 00 2A */	fadds f2, f2, f0
/* 80073308  C0 64 00 08 */	lfs f3, 8(r4)
/* 8007330C  48 2D 35 DD */	bl PSMTXTrans
/* 80073310  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80073314  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80073318  7F 64 DB 78 */	mr r4, r27
/* 8007331C  7C 65 1B 78 */	mr r5, r3
/* 80073320  48 2D 31 C5 */	bl PSMTXConcat
/* 80073324  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80073328  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8007332C  88 1D 01 70 */	lbz r0, 0x170(r29)
/* 80073330  54 00 10 3A */	slwi r0, r0, 2
/* 80073334  7C 9D 00 2E */	lwzx r4, r29, r0
/* 80073338  38 84 00 24 */	addi r4, r4, 0x24
/* 8007333C  48 2D 31 75 */	bl PSMTXCopy
/* 80073340  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80073344  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 80073348  80 7B 61 B0 */	lwz r3, 0x61b0(r27)
/* 8007334C  C0 42 8C B0 */	lfs f2, lit_5784(r2)
/* 80073350  C0 22 8C 94 */	lfs f1, lit_4563(r2)
/* 80073354  C0 03 00 D0 */	lfs f0, 0xd0(r3)
/* 80073358  EC 01 00 32 */	fmuls f0, f1, f0
/* 8007335C  EC 22 00 32 */	fmuls f1, f2, f0
/* 80073360  48 2F 93 09 */	bl tan
/* 80073364  FF E0 08 18 */	frsp f31, f1
/* 80073368  C0 22 8C B4 */	lfs f1, lit_5785(r2)
/* 8007336C  3C 60 80 42 */	lis r3, g_AttDwHIO@ha
/* 80073370  3B 83 4B 0C */	addi r28, r3, g_AttDwHIO@l
/* 80073374  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80073378  EC 01 00 28 */	fsubs f0, f1, f0
/* 8007337C  EF C0 F8 24 */	fdivs f30, f0, f31
/* 80073380  80 7B 61 B0 */	lwz r3, 0x61b0(r27)
/* 80073384  38 63 01 40 */	addi r3, r3, 0x140
/* 80073388  7F C4 F3 78 */	mr r4, r30
/* 8007338C  38 A1 00 14 */	addi r5, r1, 0x14
/* 80073390  48 2D 39 DD */	bl PSMTXMultVec
/* 80073394  C0 42 8C 58 */	lfs f2, lit_4073(r2)
/* 80073398  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8007339C  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 800733A0  40 80 00 18 */	bge lbl_800733B8
/* 800733A4  EC 40 07 F2 */	fmuls f2, f0, f31
/* 800733A8  C0 22 8C B4 */	lfs f1, lit_5785(r2)
/* 800733AC  C0 1C 00 08 */	lfs f0, 8(r28)
/* 800733B0  EC 01 00 28 */	fsubs f0, f1, f0
/* 800733B4  EC 42 00 24 */	fdivs f2, f2, f0
lbl_800733B8:
/* 800733B8  C0 1D 01 64 */	lfs f0, 0x164(r29)
/* 800733BC  EC 20 00 B2 */	fmuls f1, f0, f2
/* 800733C0  C0 1D 01 68 */	lfs f0, 0x168(r29)
/* 800733C4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 800733C8  D0 21 00 08 */	stfs f1, 8(r1)
/* 800733CC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800733D0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 800733D4  88 1D 01 70 */	lbz r0, 0x170(r29)
/* 800733D8  54 00 10 3A */	slwi r0, r0, 2
/* 800733DC  7C 7D 00 2E */	lwzx r3, r29, r0
/* 800733E0  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 800733E4  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 800733E8  D0 23 00 20 */	stfs f1, 0x20(r3)
/* 800733EC  7F A3 EB 78 */	mr r3, r29
/* 800733F0  4B FF FC 15 */	bl alphaAnm__10dAttDraw_cFv
/* 800733F4  88 1D 01 75 */	lbz r0, 0x175(r29)
/* 800733F8  28 00 00 00 */	cmplwi r0, 0
/* 800733FC  41 82 00 48 */	beq lbl_80073444
/* 80073400  38 7D 01 00 */	addi r3, r29, 0x100
/* 80073404  7F E4 FB 78 */	mr r4, r31
/* 80073408  C0 3D 01 10 */	lfs f1, 0x110(r29)
/* 8007340C  4B F9 A5 C1 */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80073410  C0 3D 01 2C */	lfs f1, 0x12c(r29)
/* 80073414  38 7D 01 1C */	addi r3, r29, 0x11c
/* 80073418  38 9F 00 58 */	addi r4, r31, 0x58
/* 8007341C  4B F9 A0 FD */	bl entry__13mDoExt_bpkAnmFP16J3DMaterialTablef
/* 80073420  C0 3D 01 44 */	lfs f1, 0x144(r29)
/* 80073424  38 7D 01 34 */	addi r3, r29, 0x134
/* 80073428  38 9F 00 58 */	addi r4, r31, 0x58
/* 8007342C  4B F9 A3 7D */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80073430  C0 3D 01 5C */	lfs f1, 0x15c(r29)
/* 80073434  38 7D 01 4C */	addi r3, r29, 0x14c
/* 80073438  38 9F 00 58 */	addi r4, r31, 0x58
/* 8007343C  4B F9 A2 9D */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80073440  48 00 00 90 */	b lbl_800734D0
lbl_80073444:
/* 80073444  88 1D 01 70 */	lbz r0, 0x170(r29)
/* 80073448  1C 60 00 1C */	mulli r3, r0, 0x1c
/* 8007344C  38 63 00 08 */	addi r3, r3, 8
/* 80073450  7C 7D 1A 14 */	add r3, r29, r3
/* 80073454  7F E4 FB 78 */	mr r4, r31
/* 80073458  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8007345C  4B F9 A5 71 */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80073460  88 1D 01 70 */	lbz r0, 0x170(r29)
/* 80073464  1C 60 00 18 */	mulli r3, r0, 0x18
/* 80073468  38 63 00 40 */	addi r3, r3, 0x40
/* 8007346C  7C 7D 1A 14 */	add r3, r29, r3
/* 80073470  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80073474  38 9F 00 58 */	addi r4, r31, 0x58
/* 80073478  4B F9 A0 A1 */	bl entry__13mDoExt_bpkAnmFP16J3DMaterialTablef
/* 8007347C  88 1D 01 70 */	lbz r0, 0x170(r29)
/* 80073480  1C 60 00 18 */	mulli r3, r0, 0x18
/* 80073484  38 63 00 70 */	addi r3, r3, 0x70
/* 80073488  7C 7D 1A 14 */	add r3, r29, r3
/* 8007348C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80073490  38 9F 00 58 */	addi r4, r31, 0x58
/* 80073494  4B F9 A3 15 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80073498  88 1D 01 70 */	lbz r0, 0x170(r29)
/* 8007349C  1C 60 00 18 */	mulli r3, r0, 0x18
/* 800734A0  38 63 00 D0 */	addi r3, r3, 0xd0
/* 800734A4  7C 7D 1A 14 */	add r3, r29, r3
/* 800734A8  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 800734AC  38 9F 00 58 */	addi r4, r31, 0x58
/* 800734B0  4B F9 A2 29 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 800734B4  88 1D 01 70 */	lbz r0, 0x170(r29)
/* 800734B8  1C 60 00 18 */	mulli r3, r0, 0x18
/* 800734BC  38 63 00 A0 */	addi r3, r3, 0xa0
/* 800734C0  7C 7D 1A 14 */	add r3, r29, r3
/* 800734C4  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 800734C8  38 9F 00 58 */	addi r4, r31, 0x58
/* 800734CC  4B F9 A2 DD */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
lbl_800734D0:
/* 800734D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800734D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800734D8  80 03 5F B4 */	lwz r0, 0x5fb4(r3)
/* 800734DC  3C 60 80 43 */	lis r3, j3dSys@ha
/* 800734E0  3B C3 4A C8 */	addi r30, r3, j3dSys@l
/* 800734E4  90 1E 00 48 */	stw r0, 0x48(r30)
/* 800734E8  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 800734EC  88 1D 01 70 */	lbz r0, 0x170(r29)
/* 800734F0  54 00 10 3A */	slwi r0, r0, 2
/* 800734F4  7C 7D 00 2E */	lwzx r3, r29, r0
/* 800734F8  4B F9 A7 CD */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 800734FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80073500  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80073504  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80073508  90 1E 00 48 */	stw r0, 0x48(r30)
/* 8007350C  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80073510  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80073514  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80073518  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8007351C  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 80073520  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80073524  39 61 00 40 */	addi r11, r1, 0x40
/* 80073528  48 2E EC F9 */	bl _restgpr_27
/* 8007352C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80073530  7C 08 03 A6 */	mtlr r0
/* 80073534  38 21 00 60 */	addi r1, r1, 0x60
/* 80073538  4E 80 00 20 */	blr 

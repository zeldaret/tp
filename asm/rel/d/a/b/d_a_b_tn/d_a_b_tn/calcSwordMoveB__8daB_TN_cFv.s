lbl_8061FD7C:
/* 8061FD7C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8061FD80  7C 08 02 A6 */	mflr r0
/* 8061FD84  90 01 00 34 */	stw r0, 0x34(r1)
/* 8061FD88  39 61 00 30 */	addi r11, r1, 0x30
/* 8061FD8C  4B D4 24 45 */	bl _savegpr_26
/* 8061FD90  7C 7E 1B 78 */	mr r30, r3
/* 8061FD94  3C 60 80 63 */	lis r3, lit_3920@ha /* 0x8062E634@ha */
/* 8061FD98  3B E3 E6 34 */	addi r31, r3, lit_3920@l /* 0x8062E634@l */
/* 8061FD9C  A0 1E 0A 1A */	lhz r0, 0xa1a(r30)
/* 8061FDA0  2C 00 00 05 */	cmpwi r0, 5
/* 8061FDA4  41 82 01 E4 */	beq lbl_8061FF88
/* 8061FDA8  40 80 00 14 */	bge lbl_8061FDBC
/* 8061FDAC  2C 00 00 02 */	cmpwi r0, 2
/* 8061FDB0  41 82 00 18 */	beq lbl_8061FDC8
/* 8061FDB4  40 80 00 88 */	bge lbl_8061FE3C
/* 8061FDB8  48 00 02 10 */	b lbl_8061FFC8
lbl_8061FDBC:
/* 8061FDBC  2C 00 00 08 */	cmpwi r0, 8
/* 8061FDC0  40 80 02 08 */	bge lbl_8061FFC8
/* 8061FDC4  48 00 02 04 */	b lbl_8061FFC8
lbl_8061FDC8:
/* 8061FDC8  80 7E 05 FC */	lwz r3, 0x5fc(r30)
/* 8061FDCC  80 63 00 04 */	lwz r3, 4(r3)
/* 8061FDD0  38 63 00 24 */	addi r3, r3, 0x24
/* 8061FDD4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8061FDD8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8061FDDC  4B D2 66 D5 */	bl PSMTXCopy
/* 8061FDE0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8061FDE4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8061FDE8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8061FDEC  D0 1E 08 10 */	stfs f0, 0x810(r30)
/* 8061FDF0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8061FDF4  D0 1E 08 14 */	stfs f0, 0x814(r30)
/* 8061FDF8  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8061FDFC  D0 1E 08 18 */	stfs f0, 0x818(r30)
/* 8061FE00  C0 1E 08 10 */	lfs f0, 0x810(r30)
/* 8061FE04  D0 1E 08 D0 */	stfs f0, 0x8d0(r30)
/* 8061FE08  C0 1E 08 14 */	lfs f0, 0x814(r30)
/* 8061FE0C  D0 1E 08 D4 */	stfs f0, 0x8d4(r30)
/* 8061FE10  C0 1E 08 18 */	lfs f0, 0x818(r30)
/* 8061FE14  D0 1E 08 D8 */	stfs f0, 0x8d8(r30)
/* 8061FE18  38 9E 09 F6 */	addi r4, r30, 0x9f6
/* 8061FE1C  4B 9E CD E5 */	bl mDoMtx_MtxToRot__FPA4_CfP5csXyz
/* 8061FE20  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8061FE24  D0 1E 09 90 */	stfs f0, 0x990(r30)
/* 8061FE28  D0 1E 09 94 */	stfs f0, 0x994(r30)
/* 8061FE2C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8061FE30  D0 1E 09 98 */	stfs f0, 0x998(r30)
/* 8061FE34  38 00 00 03 */	li r0, 3
/* 8061FE38  B0 1E 0A 1A */	sth r0, 0xa1a(r30)
lbl_8061FE3C:
/* 8061FE3C  38 7E 09 F6 */	addi r3, r30, 0x9f6
/* 8061FE40  3C 80 80 63 */	lis r4, data_8062F29C@ha /* 0x8062F29C@ha */
/* 8061FE44  3B 64 F2 9C */	addi r27, r4, data_8062F29C@l /* 0x8062F29C@l */
/* 8061FE48  A8 9B 00 5A */	lha r4, 0x5a(r27)
/* 8061FE4C  38 A0 00 10 */	li r5, 0x10
/* 8061FE50  4B C5 0D 41 */	bl cLib_chaseAngleS__FPsss
/* 8061FE54  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 8061FE58  3C 80 80 63 */	lis r4, data_8062F29C@ha /* 0x8062F29C@ha */
/* 8061FE5C  3B 84 F2 9C */	addi r28, r4, data_8062F29C@l /* 0x8062F29C@l */
/* 8061FE60  A8 9C 00 5C */	lha r4, 0x5c(r28)
/* 8061FE64  38 A0 00 10 */	li r5, 0x10
/* 8061FE68  4B C5 0D 29 */	bl cLib_chaseAngleS__FPsss
/* 8061FE6C  38 7E 09 FA */	addi r3, r30, 0x9fa
/* 8061FE70  3C 80 80 63 */	lis r4, data_8062F29C@ha /* 0x8062F29C@ha */
/* 8061FE74  3B A4 F2 9C */	addi r29, r4, data_8062F29C@l /* 0x8062F29C@l */
/* 8061FE78  A8 9D 00 5E */	lha r4, 0x5e(r29)
/* 8061FE7C  38 A0 00 10 */	li r5, 0x10
/* 8061FE80  4B C5 0D 11 */	bl cLib_chaseAngleS__FPsss
/* 8061FE84  38 7E 09 94 */	addi r3, r30, 0x994
/* 8061FE88  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 8061FE8C  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 8061FE90  4B C5 08 B1 */	bl cLib_chaseF__FPfff
/* 8061FE94  80 1E 2C A4 */	lwz r0, 0x2ca4(r30)
/* 8061FE98  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8061FE9C  41 82 01 2C */	beq lbl_8061FFC8
/* 8061FEA0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703B7@ha */
/* 8061FEA4  38 03 03 B7 */	addi r0, r3, 0x03B7 /* 0x000703B7@l */
/* 8061FEA8  90 01 00 08 */	stw r0, 8(r1)
/* 8061FEAC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8061FEB0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8061FEB4  80 63 00 00 */	lwz r3, 0(r3)
/* 8061FEB8  38 81 00 08 */	addi r4, r1, 8
/* 8061FEBC  3B 5E 08 10 */	addi r26, r30, 0x810
/* 8061FEC0  7F 45 D3 78 */	mr r5, r26
/* 8061FEC4  38 C0 00 00 */	li r6, 0
/* 8061FEC8  38 E0 00 00 */	li r7, 0
/* 8061FECC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8061FED0  FC 40 08 90 */	fmr f2, f1
/* 8061FED4  C0 7F 00 68 */	lfs f3, 0x68(r31)
/* 8061FED8  FC 80 18 90 */	fmr f4, f3
/* 8061FEDC  39 00 00 00 */	li r8, 0
/* 8061FEE0  4B C8 BA A5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8061FEE4  A0 1E 0A 1A */	lhz r0, 0xa1a(r30)
/* 8061FEE8  28 00 00 03 */	cmplwi r0, 3
/* 8061FEEC  40 82 00 34 */	bne lbl_8061FF20
/* 8061FEF0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8061FEF4  D0 1E 09 90 */	stfs f0, 0x990(r30)
/* 8061FEF8  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8061FEFC  D0 1E 09 94 */	stfs f0, 0x994(r30)
/* 8061FF00  D0 1E 09 98 */	stfs f0, 0x998(r30)
/* 8061FF04  38 00 00 04 */	li r0, 4
/* 8061FF08  B0 1E 0A 1A */	sth r0, 0xa1a(r30)
/* 8061FF0C  7F C3 F3 78 */	mr r3, r30
/* 8061FF10  38 80 00 0F */	li r4, 0xf
/* 8061FF14  38 A0 00 00 */	li r5, 0
/* 8061FF18  4B FF F4 B9 */	bl setPartLandEffect__8daB_TN_cFii
/* 8061FF1C  48 00 00 AC */	b lbl_8061FFC8
lbl_8061FF20:
/* 8061FF20  88 1E 0A A5 */	lbz r0, 0xaa5(r30)
/* 8061FF24  28 00 00 00 */	cmplwi r0, 0
/* 8061FF28  40 82 00 3C */	bne lbl_8061FF64
/* 8061FF2C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8061FF30  D0 1E 09 90 */	stfs f0, 0x990(r30)
/* 8061FF34  D0 1E 09 94 */	stfs f0, 0x994(r30)
/* 8061FF38  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 8061FF3C  D0 1E 09 98 */	stfs f0, 0x998(r30)
/* 8061FF40  A8 1B 00 5A */	lha r0, 0x5a(r27)
/* 8061FF44  B0 1E 09 F6 */	sth r0, 0x9f6(r30)
/* 8061FF48  A8 1C 00 5C */	lha r0, 0x5c(r28)
/* 8061FF4C  B0 1E 09 F8 */	sth r0, 0x9f8(r30)
/* 8061FF50  A8 1D 00 5E */	lha r0, 0x5e(r29)
/* 8061FF54  B0 1E 09 FA */	sth r0, 0x9fa(r30)
/* 8061FF58  38 00 00 05 */	li r0, 5
/* 8061FF5C  B0 1E 0A 1A */	sth r0, 0xa1a(r30)
/* 8061FF60  48 00 00 68 */	b lbl_8061FFC8
lbl_8061FF64:
/* 8061FF64  7F C3 F3 78 */	mr r3, r30
/* 8061FF68  7F 44 D3 78 */	mr r4, r26
/* 8061FF6C  38 A0 00 03 */	li r5, 3
/* 8061FF70  38 C0 00 00 */	li r6, 0
/* 8061FF74  38 E0 00 FF */	li r7, 0xff
/* 8061FF78  4B 9F CB 61 */	bl fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 8061FF7C  38 00 00 07 */	li r0, 7
/* 8061FF80  B0 1E 0A 1A */	sth r0, 0xa1a(r30)
/* 8061FF84  48 00 00 44 */	b lbl_8061FFC8
lbl_8061FF88:
/* 8061FF88  38 7E 09 94 */	addi r3, r30, 0x994
/* 8061FF8C  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 8061FF90  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 8061FF94  4B C5 07 AD */	bl cLib_chaseF__FPfff
/* 8061FF98  38 7E 09 98 */	addi r3, r30, 0x998
/* 8061FF9C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8061FFA0  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 8061FFA4  4B C5 07 9D */	bl cLib_chaseF__FPfff
/* 8061FFA8  3C 60 80 63 */	lis r3, data_8062F29C@ha /* 0x8062F29C@ha */
/* 8061FFAC  38 63 F2 9C */	addi r3, r3, data_8062F29C@l /* 0x8062F29C@l */
/* 8061FFB0  A8 A3 00 5E */	lha r5, 0x5e(r3)
/* 8061FFB4  A8 83 00 5C */	lha r4, 0x5c(r3)
/* 8061FFB8  A8 03 00 5A */	lha r0, 0x5a(r3)
/* 8061FFBC  B0 1E 09 F6 */	sth r0, 0x9f6(r30)
/* 8061FFC0  B0 9E 09 F8 */	sth r4, 0x9f8(r30)
/* 8061FFC4  B0 BE 09 FA */	sth r5, 0x9fa(r30)
lbl_8061FFC8:
/* 8061FFC8  39 61 00 30 */	addi r11, r1, 0x30
/* 8061FFCC  4B D4 22 51 */	bl _restgpr_26
/* 8061FFD0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8061FFD4  7C 08 03 A6 */	mtlr r0
/* 8061FFD8  38 21 00 30 */	addi r1, r1, 0x30
/* 8061FFDC  4E 80 00 20 */	blr 

lbl_805DFACC:
/* 805DFACC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805DFAD0  7C 08 02 A6 */	mflr r0
/* 805DFAD4  90 01 00 44 */	stw r0, 0x44(r1)
/* 805DFAD8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 805DFADC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 805DFAE0  7C 7E 1B 78 */	mr r30, r3
/* 805DFAE4  3C 60 80 5F */	lis r3, lit_3911@ha
/* 805DFAE8  3B E3 D0 60 */	addi r31, r3, lit_3911@l
/* 805DFAEC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805DFAF0  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 805DFAF4  C0 1F 01 78 */	lfs f0, 0x178(r31)
/* 805DFAF8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805DFAFC  C0 1F 01 68 */	lfs f0, 0x168(r31)
/* 805DFB00  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805DFB04  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 805DFB08  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 805DFB0C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 805DFB10  D0 21 00 08 */	stfs f1, 8(r1)
/* 805DFB14  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805DFB18  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 805DFB1C  38 00 00 01 */	li r0, 1
/* 805DFB20  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha
/* 805DFB24  9C 03 0C 98 */	stbu r0, struct_80450C98+0x0@l(r3)
/* 805DFB28  2C 04 00 00 */	cmpwi r4, 0
/* 805DFB2C  40 82 00 38 */	bne lbl_805DFB64
/* 805DFB30  38 60 00 01 */	li r3, 1
/* 805DFB34  38 80 00 00 */	li r4, 0
/* 805DFB38  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 805DFB3C  7C 05 07 74 */	extsb r5, r0
/* 805DFB40  38 C0 00 00 */	li r6, 0
/* 805DFB44  38 E0 FF FF */	li r7, -1
/* 805DFB48  4B A4 76 28 */	b dStage_changeScene__FifUlScsi
/* 805DFB4C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805DFB50  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805DFB54  80 63 00 00 */	lwz r3, 0(r3)
/* 805DFB58  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805DFB5C  4B CC FD 28 */	b subBgmStop__8Z2SeqMgrFv
/* 805DFB60  48 00 00 98 */	b lbl_805DFBF8
lbl_805DFB64:
/* 805DFB64  2C 04 00 01 */	cmpwi r4, 1
/* 805DFB68  40 82 00 90 */	bne lbl_805DFBF8
/* 805DFB6C  38 00 00 00 */	li r0, 0
/* 805DFB70  98 03 00 00 */	stb r0, 0(r3)
/* 805DFB74  38 61 00 08 */	addi r3, r1, 8
/* 805DFB78  3C 80 80 5F */	lis r4, data_805ED72C@ha
/* 805DFB7C  38 84 D7 2C */	addi r4, r4, data_805ED72C@l
/* 805DFB80  80 84 00 00 */	lwz r4, 0(r4)
/* 805DFB84  3C A0 80 5F */	lis r5, data_805ED730@ha
/* 805DFB88  38 A5 D7 30 */	addi r5, r5, data_805ED730@l
/* 805DFB8C  A8 A5 00 00 */	lha r5, 0(r5)
/* 805DFB90  38 C1 00 20 */	addi r6, r1, 0x20
/* 805DFB94  4B C9 12 2C */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 805DFB98  C0 01 00 08 */	lfs f0, 8(r1)
/* 805DFB9C  D0 1E 06 00 */	stfs f0, 0x600(r30)
/* 805DFBA0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805DFBA4  D0 1E 06 04 */	stfs f0, 0x604(r30)
/* 805DFBA8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805DFBAC  D0 1E 06 08 */	stfs f0, 0x608(r30)
/* 805DFBB0  7F C3 F3 78 */	mr r3, r30
/* 805DFBB4  48 00 06 45 */	bl SetReleaseCam__8daB_GG_cFv
/* 805DFBB8  38 00 00 00 */	li r0, 0
/* 805DFBBC  98 1E 05 C5 */	stb r0, 0x5c5(r30)
/* 805DFBC0  98 1E 05 C6 */	stb r0, 0x5c6(r30)
/* 805DFBC4  98 1E 05 C7 */	stb r0, 0x5c7(r30)
/* 805DFBC8  C0 1F 01 7C */	lfs f0, 0x17c(r31)
/* 805DFBCC  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 805DFBD0  C0 1F 01 80 */	lfs f0, 0x180(r31)
/* 805DFBD4  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 805DFBD8  C0 1F 01 84 */	lfs f0, 0x184(r31)
/* 805DFBDC  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 805DFBE0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805DFBE4  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 805DFBE8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805DFBEC  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 805DFBF0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 805DFBF4  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
lbl_805DFBF8:
/* 805DFBF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805DFBFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805DFC00  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805DFC04  38 80 00 1F */	li r4, 0x1f
/* 805DFC08  4B A9 01 8C */	b StopQuake__12dVibration_cFi
/* 805DFC0C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 805DFC10  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 805DFC14  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805DFC18  7C 08 03 A6 */	mtlr r0
/* 805DFC1C  38 21 00 40 */	addi r1, r1, 0x40
/* 805DFC20  4E 80 00 20 */	blr 

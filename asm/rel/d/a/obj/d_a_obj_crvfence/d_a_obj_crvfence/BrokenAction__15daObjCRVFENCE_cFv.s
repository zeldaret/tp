lbl_80BCF0B0:
/* 80BCF0B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCF0B4  7C 08 02 A6 */	mflr r0
/* 80BCF0B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCF0BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BCF0C0  93 C1 00 08 */	stw r30, 8(r1)
/* 80BCF0C4  7C 7F 1B 78 */	mr r31, r3
/* 80BCF0C8  3C 80 80 BD */	lis r4, lit_3685@ha /* 0x80BD0188@ha */
/* 80BCF0CC  3B C4 01 88 */	addi r30, r4, lit_3685@l /* 0x80BD0188@l */
/* 80BCF0D0  80 03 05 A0 */	lwz r0, 0x5a0(r3)
/* 80BCF0D4  2C 00 00 01 */	cmpwi r0, 1
/* 80BCF0D8  41 82 01 9C */	beq lbl_80BCF274
/* 80BCF0DC  40 80 02 9C */	bge lbl_80BCF378
/* 80BCF0E0  2C 00 00 00 */	cmpwi r0, 0
/* 80BCF0E4  40 80 00 08 */	bge lbl_80BCF0EC
/* 80BCF0E8  48 00 02 90 */	b lbl_80BCF378
lbl_80BCF0EC:
/* 80BCF0EC  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 80BCF0F0  D0 5F 05 AC */	stfs f2, 0x5ac(r31)
/* 80BCF0F4  D0 5F 05 B0 */	stfs f2, 0x5b0(r31)
/* 80BCF0F8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80BCF0FC  D0 3F 05 B4 */	stfs f1, 0x5b4(r31)
/* 80BCF100  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80BCF104  D0 1F 05 D0 */	stfs f0, 0x5d0(r31)
/* 80BCF108  D0 5F 05 D4 */	stfs f2, 0x5d4(r31)
/* 80BCF10C  D0 3F 05 D8 */	stfs f1, 0x5d8(r31)
/* 80BCF110  38 9F 05 D0 */	addi r4, r31, 0x5d0
/* 80BCF114  4B FF FD BD */	bl PosSet__15daObjCRVFENCE_cFP4cXyz
/* 80BCF118  7F E3 FB 78 */	mr r3, r31
/* 80BCF11C  38 9F 05 AC */	addi r4, r31, 0x5ac
/* 80BCF120  4B FF FD B1 */	bl PosSet__15daObjCRVFENCE_cFP4cXyz
/* 80BCF124  38 00 C0 00 */	li r0, -16384
/* 80BCF128  B0 1F 05 F0 */	sth r0, 0x5f0(r31)
/* 80BCF12C  38 00 40 00 */	li r0, 0x4000
/* 80BCF130  B0 1F 05 CC */	sth r0, 0x5cc(r31)
/* 80BCF134  A8 1F 05 F0 */	lha r0, 0x5f0(r31)
/* 80BCF138  7C 00 00 D0 */	neg r0, r0
/* 80BCF13C  B0 1F 05 F2 */	sth r0, 0x5f2(r31)
/* 80BCF140  80 1F 06 44 */	lwz r0, 0x644(r31)
/* 80BCF144  2C 00 00 03 */	cmpwi r0, 3
/* 80BCF148  40 80 00 6C */	bge lbl_80BCF1B4
/* 80BCF14C  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 80BCF150  D0 1F 05 B8 */	stfs f0, 0x5b8(r31)
/* 80BCF154  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 80BCF158  D0 3F 05 BC */	stfs f1, 0x5bc(r31)
/* 80BCF15C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80BCF160  D0 1F 05 C0 */	stfs f0, 0x5c0(r31)
/* 80BCF164  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80BCF168  D0 1F 05 DC */	stfs f0, 0x5dc(r31)
/* 80BCF16C  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80BCF170  D0 1F 05 E0 */	stfs f0, 0x5e0(r31)
/* 80BCF174  D0 3F 05 E4 */	stfs f1, 0x5e4(r31)
/* 80BCF178  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BCF17C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BCF180  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80BCF184  4B 43 D2 59 */	bl mDoMtx_YrotS__FPA4_fs
/* 80BCF188  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BCF18C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BCF190  38 9F 05 B8 */	addi r4, r31, 0x5b8
/* 80BCF194  7C 85 23 78 */	mr r5, r4
/* 80BCF198  4B 77 7B D5 */	bl PSMTXMultVec
/* 80BCF19C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BCF1A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BCF1A4  38 9F 05 DC */	addi r4, r31, 0x5dc
/* 80BCF1A8  7C 85 23 78 */	mr r5, r4
/* 80BCF1AC  4B 77 7B C1 */	bl PSMTXMultVec
/* 80BCF1B0  48 00 00 68 */	b lbl_80BCF218
lbl_80BCF1B4:
/* 80BCF1B4  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 80BCF1B8  D0 1F 05 B8 */	stfs f0, 0x5b8(r31)
/* 80BCF1BC  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80BCF1C0  D0 1F 05 BC */	stfs f0, 0x5bc(r31)
/* 80BCF1C4  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 80BCF1C8  D0 3F 05 C0 */	stfs f1, 0x5c0(r31)
/* 80BCF1CC  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80BCF1D0  D0 1F 05 DC */	stfs f0, 0x5dc(r31)
/* 80BCF1D4  D0 3F 05 E0 */	stfs f1, 0x5e0(r31)
/* 80BCF1D8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80BCF1DC  D0 1F 05 E4 */	stfs f0, 0x5e4(r31)
/* 80BCF1E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BCF1E4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BCF1E8  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80BCF1EC  4B 43 D1 F1 */	bl mDoMtx_YrotS__FPA4_fs
/* 80BCF1F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BCF1F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BCF1F8  38 9F 05 B8 */	addi r4, r31, 0x5b8
/* 80BCF1FC  7C 85 23 78 */	mr r5, r4
/* 80BCF200  4B 77 7B 6D */	bl PSMTXMultVec
/* 80BCF204  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BCF208  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BCF20C  38 9F 05 DC */	addi r4, r31, 0x5dc
/* 80BCF210  7C 85 23 78 */	mr r5, r4
/* 80BCF214  4B 77 7B 59 */	bl PSMTXMultVec
lbl_80BCF218:
/* 80BCF218  7F E3 FB 78 */	mr r3, r31
/* 80BCF21C  4B FF FA 7D */	bl CheckVec__15daObjCRVFENCE_cFv
/* 80BCF220  2C 03 00 00 */	cmpwi r3, 0
/* 80BCF224  41 82 00 44 */	beq lbl_80BCF268
/* 80BCF228  C0 1F 05 C0 */	lfs f0, 0x5c0(r31)
/* 80BCF22C  FC 40 00 50 */	fneg f2, f0
/* 80BCF230  D0 5F 05 C0 */	stfs f2, 0x5c0(r31)
/* 80BCF234  C0 1F 05 E4 */	lfs f0, 0x5e4(r31)
/* 80BCF238  FC 40 00 50 */	fneg f2, f0
/* 80BCF23C  D0 5F 05 E4 */	stfs f2, 0x5e4(r31)
/* 80BCF240  38 00 40 00 */	li r0, 0x4000
/* 80BCF244  B0 1F 05 F0 */	sth r0, 0x5f0(r31)
/* 80BCF248  38 00 C0 00 */	li r0, -16384
/* 80BCF24C  B0 1F 05 CC */	sth r0, 0x5cc(r31)
/* 80BCF250  A8 1F 05 F0 */	lha r0, 0x5f0(r31)
/* 80BCF254  7C 00 00 D0 */	neg r0, r0
/* 80BCF258  B0 1F 05 F2 */	sth r0, 0x5f2(r31)
/* 80BCF25C  A8 1F 05 AA */	lha r0, 0x5aa(r31)
/* 80BCF260  7C 00 00 D0 */	neg r0, r0
/* 80BCF264  B0 1F 05 AA */	sth r0, 0x5aa(r31)
lbl_80BCF268:
/* 80BCF268  38 00 00 01 */	li r0, 1
/* 80BCF26C  90 1F 05 A0 */	stw r0, 0x5a0(r31)
/* 80BCF270  48 00 01 08 */	b lbl_80BCF378
lbl_80BCF274:
/* 80BCF274  88 1F 05 EE */	lbz r0, 0x5ee(r31)
/* 80BCF278  28 00 00 00 */	cmplwi r0, 0
/* 80BCF27C  40 82 00 20 */	bne lbl_80BCF29C
/* 80BCF280  38 9F 05 EE */	addi r4, r31, 0x5ee
/* 80BCF284  38 BF 05 DC */	addi r5, r31, 0x5dc
/* 80BCF288  38 DF 05 E8 */	addi r6, r31, 0x5e8
/* 80BCF28C  38 FF 05 D0 */	addi r7, r31, 0x5d0
/* 80BCF290  39 1F 05 F0 */	addi r8, r31, 0x5f0
/* 80BCF294  4B FF FC 9D */	bl FenceMove__15daObjCRVFENCE_cFRUcP4cXyzP5csXyzP4cXyzRs
/* 80BCF298  48 00 00 1C */	b lbl_80BCF2B4
lbl_80BCF29C:
/* 80BCF29C  38 9F 05 EE */	addi r4, r31, 0x5ee
/* 80BCF2A0  38 BF 05 DC */	addi r5, r31, 0x5dc
/* 80BCF2A4  38 DF 05 E8 */	addi r6, r31, 0x5e8
/* 80BCF2A8  38 FF 05 D0 */	addi r7, r31, 0x5d0
/* 80BCF2AC  39 1F 05 F2 */	addi r8, r31, 0x5f2
/* 80BCF2B0  4B FF FC 81 */	bl FenceMove__15daObjCRVFENCE_cFRUcP4cXyzP5csXyzP4cXyzRs
lbl_80BCF2B4:
/* 80BCF2B4  7F E3 FB 78 */	mr r3, r31
/* 80BCF2B8  38 9F 05 CA */	addi r4, r31, 0x5ca
/* 80BCF2BC  38 BF 05 B8 */	addi r5, r31, 0x5b8
/* 80BCF2C0  38 DF 05 C4 */	addi r6, r31, 0x5c4
/* 80BCF2C4  38 FF 05 AC */	addi r7, r31, 0x5ac
/* 80BCF2C8  39 1F 05 CC */	addi r8, r31, 0x5cc
/* 80BCF2CC  4B FF FC 65 */	bl FenceMove__15daObjCRVFENCE_cFRUcP4cXyzP5csXyzP4cXyzRs
/* 80BCF2D0  88 1F 05 EE */	lbz r0, 0x5ee(r31)
/* 80BCF2D4  28 00 00 03 */	cmplwi r0, 3
/* 80BCF2D8  40 81 00 A0 */	ble lbl_80BCF378
/* 80BCF2DC  88 1F 05 CA */	lbz r0, 0x5ca(r31)
/* 80BCF2E0  28 00 00 03 */	cmplwi r0, 3
/* 80BCF2E4  40 81 00 94 */	ble lbl_80BCF378
/* 80BCF2E8  7F E3 FB 78 */	mr r3, r31
/* 80BCF2EC  38 9F 05 D0 */	addi r4, r31, 0x5d0
/* 80BCF2F0  48 00 04 ED */	bl checkViewArea__15daObjCRVFENCE_cFP4cXyz
/* 80BCF2F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BCF2F8  40 82 00 80 */	bne lbl_80BCF378
/* 80BCF2FC  7F E3 FB 78 */	mr r3, r31
/* 80BCF300  38 9F 05 AC */	addi r4, r31, 0x5ac
/* 80BCF304  48 00 04 D9 */	bl checkViewArea__15daObjCRVFENCE_cFP4cXyz
/* 80BCF308  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BCF30C  40 82 00 6C */	bne lbl_80BCF378
/* 80BCF310  7F E3 FB 78 */	mr r3, r31
/* 80BCF314  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BCF318  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BCF31C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80BCF320  4B 44 B4 C1 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80BCF324  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 80BCF328  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BCF32C  40 81 00 4C */	ble lbl_80BCF378
/* 80BCF330  88 9F 05 A8 */	lbz r4, 0x5a8(r31)
/* 80BCF334  28 04 00 FF */	cmplwi r4, 0xff
/* 80BCF338  41 82 00 38 */	beq lbl_80BCF370
/* 80BCF33C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BCF340  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BCF344  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BCF348  7C 05 07 74 */	extsb r5, r0
/* 80BCF34C  4B 46 60 15 */	bl isSwitch__10dSv_info_cCFii
/* 80BCF350  2C 03 00 00 */	cmpwi r3, 0
/* 80BCF354  40 82 00 1C */	bne lbl_80BCF370
/* 80BCF358  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BCF35C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BCF360  88 9F 05 A8 */	lbz r4, 0x5a8(r31)
/* 80BCF364  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BCF368  7C 05 07 74 */	extsb r5, r0
/* 80BCF36C  4B 46 5E 95 */	bl onSwitch__10dSv_info_cFii
lbl_80BCF370:
/* 80BCF370  7F E3 FB 78 */	mr r3, r31
/* 80BCF374  4B 44 A9 09 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80BCF378:
/* 80BCF378  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BCF37C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BCF380  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCF384  7C 08 03 A6 */	mtlr r0
/* 80BCF388  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCF38C  4E 80 00 20 */	blr 

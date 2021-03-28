lbl_8098EBE8:
/* 8098EBE8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8098EBEC  7C 08 02 A6 */	mflr r0
/* 8098EBF0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8098EBF4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8098EBF8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8098EBFC  7C 7E 1B 78 */	mr r30, r3
/* 8098EC00  3C 80 80 99 */	lis r4, cNullVec__6Z2Calc@ha
/* 8098EC04  3B E4 1D DC */	addi r31, r4, cNullVec__6Z2Calc@l
/* 8098EC08  A8 03 0E 04 */	lha r0, 0xe04(r3)
/* 8098EC0C  2C 00 00 01 */	cmpwi r0, 1
/* 8098EC10  41 82 00 A0 */	beq lbl_8098ECB0
/* 8098EC14  40 80 00 14 */	bge lbl_8098EC28
/* 8098EC18  2C 00 FF FF */	cmpwi r0, -1
/* 8098EC1C  41 82 03 AC */	beq lbl_8098EFC8
/* 8098EC20  40 80 00 14 */	bge lbl_8098EC34
/* 8098EC24  48 00 03 A4 */	b lbl_8098EFC8
lbl_8098EC28:
/* 8098EC28  2C 00 00 03 */	cmpwi r0, 3
/* 8098EC2C  40 80 03 9C */	bge lbl_8098EFC8
/* 8098EC30  48 00 01 18 */	b lbl_8098ED48
lbl_8098EC34:
/* 8098EC34  38 80 00 0E */	li r4, 0xe
/* 8098EC38  3C A0 80 99 */	lis r5, lit_4627@ha
/* 8098EC3C  C0 25 19 A4 */	lfs f1, lit_4627@l(r5)
/* 8098EC40  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 8098EC44  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8098EC48  7D 89 03 A6 */	mtctr r12
/* 8098EC4C  4E 80 04 21 */	bctrl 
/* 8098EC50  7F C3 F3 78 */	mr r3, r30
/* 8098EC54  38 80 00 00 */	li r4, 0
/* 8098EC58  3C A0 80 99 */	lis r5, lit_4627@ha
/* 8098EC5C  C0 25 19 A4 */	lfs f1, lit_4627@l(r5)
/* 8098EC60  38 A0 00 00 */	li r5, 0
/* 8098EC64  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 8098EC68  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8098EC6C  7D 89 03 A6 */	mtctr r12
/* 8098EC70  4E 80 04 21 */	bctrl 
/* 8098EC74  38 00 00 00 */	li r0, 0
/* 8098EC78  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 8098EC7C  3C 60 80 99 */	lis r3, lit_3885@ha
/* 8098EC80  C0 03 19 7C */	lfs f0, lit_3885@l(r3)
/* 8098EC84  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8098EC88  88 1E 0E 24 */	lbz r0, 0xe24(r30)
/* 8098EC8C  7C 00 07 75 */	extsb. r0, r0
/* 8098EC90  41 82 00 14 */	beq lbl_8098ECA4
/* 8098EC94  38 00 00 01 */	li r0, 1
/* 8098EC98  90 1E 0D FC */	stw r0, 0xdfc(r30)
/* 8098EC9C  B0 1E 0E 04 */	sth r0, 0xe04(r30)
/* 8098ECA0  48 00 03 28 */	b lbl_8098EFC8
lbl_8098ECA4:
/* 8098ECA4  38 00 00 02 */	li r0, 2
/* 8098ECA8  B0 1E 0E 04 */	sth r0, 0xe04(r30)
/* 8098ECAC  48 00 03 1C */	b lbl_8098EFC8
lbl_8098ECB0:
/* 8098ECB0  80 7E 0D FC */	lwz r3, 0xdfc(r30)
/* 8098ECB4  38 03 FF FF */	addi r0, r3, -1
/* 8098ECB8  90 1E 0D FC */	stw r0, 0xdfc(r30)
/* 8098ECBC  80 1E 0D FC */	lwz r0, 0xdfc(r30)
/* 8098ECC0  2C 00 00 00 */	cmpwi r0, 0
/* 8098ECC4  41 81 03 04 */	bgt lbl_8098EFC8
/* 8098ECC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8098ECCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8098ECD0  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8098ECD4  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8098ECD8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8098ECDC  41 82 00 34 */	beq lbl_8098ED10
/* 8098ECE0  88 1E 0E 25 */	lbz r0, 0xe25(r30)
/* 8098ECE4  7C 00 07 75 */	extsb. r0, r0
/* 8098ECE8  40 82 00 54 */	bne lbl_8098ED3C
/* 8098ECEC  38 00 00 01 */	li r0, 1
/* 8098ECF0  98 1E 0E 06 */	stb r0, 0xe06(r30)
/* 8098ECF4  38 60 00 00 */	li r3, 0
/* 8098ECF8  4B 81 9A EC */	b dKy_change_colpat__FUc
/* 8098ECFC  38 00 00 01 */	li r0, 1
/* 8098ED00  98 1E 0E 25 */	stb r0, 0xe25(r30)
/* 8098ED04  38 00 00 00 */	li r0, 0
/* 8098ED08  98 1E 0E 24 */	stb r0, 0xe24(r30)
/* 8098ED0C  48 00 00 30 */	b lbl_8098ED3C
lbl_8098ED10:
/* 8098ED10  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8098ED14  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8098ED18  80 63 00 00 */	lwz r3, 0(r3)
/* 8098ED1C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8098ED20  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000079@ha */
/* 8098ED24  38 84 00 79 */	addi r4, r4, 0x0079 /* 0x01000079@l */
/* 8098ED28  38 A0 00 00 */	li r5, 0
/* 8098ED2C  38 C0 00 00 */	li r6, 0
/* 8098ED30  4B 92 02 E0 */	b bgmStart__8Z2SeqMgrFUlUll
/* 8098ED34  38 00 00 06 */	li r0, 6
/* 8098ED38  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
lbl_8098ED3C:
/* 8098ED3C  38 00 00 02 */	li r0, 2
/* 8098ED40  B0 1E 0E 04 */	sth r0, 0xe04(r30)
/* 8098ED44  48 00 02 84 */	b lbl_8098EFC8
lbl_8098ED48:
/* 8098ED48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8098ED4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8098ED50  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8098ED54  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8098ED58  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8098ED5C  41 82 00 28 */	beq lbl_8098ED84
/* 8098ED60  88 1E 0E 25 */	lbz r0, 0xe25(r30)
/* 8098ED64  7C 00 07 75 */	extsb. r0, r0
/* 8098ED68  40 82 00 1C */	bne lbl_8098ED84
/* 8098ED6C  38 00 00 01 */	li r0, 1
/* 8098ED70  98 1E 0E 06 */	stb r0, 0xe06(r30)
/* 8098ED74  38 60 00 00 */	li r3, 0
/* 8098ED78  4B 81 9A 6C */	b dKy_change_colpat__FUc
/* 8098ED7C  38 00 00 01 */	li r0, 1
/* 8098ED80  98 1E 0E 25 */	stb r0, 0xe25(r30)
lbl_8098ED84:
/* 8098ED84  38 7E 0E 70 */	addi r3, r30, 0xe70
/* 8098ED88  4B 7C 19 64 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 8098ED8C  28 03 00 00 */	cmplwi r3, 0
/* 8098ED90  41 82 00 20 */	beq lbl_8098EDB0
/* 8098ED94  7F C3 F3 78 */	mr r3, r30
/* 8098ED98  4B FF FC 69 */	bl chkFindPlayer__11daNpcChin_cFv
/* 8098ED9C  2C 03 00 00 */	cmpwi r3, 0
/* 8098EDA0  40 82 00 28 */	bne lbl_8098EDC8
/* 8098EDA4  38 00 00 00 */	li r0, 0
/* 8098EDA8  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 8098EDAC  48 00 00 1C */	b lbl_8098EDC8
lbl_8098EDB0:
/* 8098EDB0  7F C3 F3 78 */	mr r3, r30
/* 8098EDB4  4B FF FC 4D */	bl chkFindPlayer__11daNpcChin_cFv
/* 8098EDB8  2C 03 00 00 */	cmpwi r3, 0
/* 8098EDBC  41 82 00 0C */	beq lbl_8098EDC8
/* 8098EDC0  38 00 00 00 */	li r0, 0
/* 8098EDC4  90 1E 09 6C */	stw r0, 0x96c(r30)
lbl_8098EDC8:
/* 8098EDC8  38 7E 0E 70 */	addi r3, r30, 0xe70
/* 8098EDCC  4B 7C 19 20 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 8098EDD0  28 03 00 00 */	cmplwi r3, 0
/* 8098EDD4  41 82 00 30 */	beq lbl_8098EE04
/* 8098EDD8  88 1E 09 F4 */	lbz r0, 0x9f4(r30)
/* 8098EDDC  28 00 00 00 */	cmplwi r0, 0
/* 8098EDE0  41 82 00 14 */	beq lbl_8098EDF4
/* 8098EDE4  7F C3 F3 78 */	mr r3, r30
/* 8098EDE8  38 80 00 00 */	li r4, 0
/* 8098EDEC  4B FF F8 81 */	bl setLookMode__11daNpcChin_cFi
/* 8098EDF0  48 00 00 94 */	b lbl_8098EE84
lbl_8098EDF4:
/* 8098EDF4  7F C3 F3 78 */	mr r3, r30
/* 8098EDF8  38 80 00 02 */	li r4, 2
/* 8098EDFC  4B FF F8 71 */	bl setLookMode__11daNpcChin_cFi
/* 8098EE00  48 00 00 84 */	b lbl_8098EE84
lbl_8098EE04:
/* 8098EE04  7F C3 F3 78 */	mr r3, r30
/* 8098EE08  38 80 00 00 */	li r4, 0
/* 8098EE0C  4B FF F8 61 */	bl setLookMode__11daNpcChin_cFi
/* 8098EE10  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 8098EE14  A8 1E 08 F2 */	lha r0, 0x8f2(r30)
/* 8098EE18  7C 04 00 00 */	cmpw r4, r0
/* 8098EE1C  41 82 00 68 */	beq lbl_8098EE84
/* 8098EE20  7F C3 F3 78 */	mr r3, r30
/* 8098EE24  38 A0 00 01 */	li r5, 1
/* 8098EE28  38 C0 00 0F */	li r6, 0xf
/* 8098EE2C  4B FF FA 45 */	bl step__11daNpcChin_cFsii
/* 8098EE30  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8098EE34  41 82 00 50 */	beq lbl_8098EE84
/* 8098EE38  7F C3 F3 78 */	mr r3, r30
/* 8098EE3C  38 80 00 0E */	li r4, 0xe
/* 8098EE40  3C A0 80 99 */	lis r5, lit_4627@ha
/* 8098EE44  C0 25 19 A4 */	lfs f1, lit_4627@l(r5)
/* 8098EE48  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 8098EE4C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8098EE50  7D 89 03 A6 */	mtctr r12
/* 8098EE54  4E 80 04 21 */	bctrl 
/* 8098EE58  7F C3 F3 78 */	mr r3, r30
/* 8098EE5C  38 80 00 00 */	li r4, 0
/* 8098EE60  3C A0 80 99 */	lis r5, lit_4627@ha
/* 8098EE64  C0 25 19 A4 */	lfs f1, lit_4627@l(r5)
/* 8098EE68  38 A0 00 00 */	li r5, 0
/* 8098EE6C  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 8098EE70  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8098EE74  7D 89 03 A6 */	mtctr r12
/* 8098EE78  4E 80 04 21 */	bctrl 
/* 8098EE7C  38 00 00 00 */	li r0, 0
/* 8098EE80  90 1E 09 6C */	stw r0, 0x96c(r30)
lbl_8098EE84:
/* 8098EE84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8098EE88  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 8098EE8C  88 04 4F AD */	lbz r0, 0x4fad(r4)
/* 8098EE90  28 00 00 00 */	cmplwi r0, 0
/* 8098EE94  41 82 00 B0 */	beq lbl_8098EF44
/* 8098EE98  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 8098EE9C  28 00 00 01 */	cmplwi r0, 1
/* 8098EEA0  40 82 00 60 */	bne lbl_8098EF00
/* 8098EEA4  38 00 00 00 */	li r0, 0
/* 8098EEA8  88 64 4F B5 */	lbz r3, 0x4fb5(r4)
/* 8098EEAC  28 03 00 01 */	cmplwi r3, 1
/* 8098EEB0  41 82 00 0C */	beq lbl_8098EEBC
/* 8098EEB4  28 03 00 02 */	cmplwi r3, 2
/* 8098EEB8  40 82 00 08 */	bne lbl_8098EEC0
lbl_8098EEBC:
/* 8098EEBC  38 00 00 01 */	li r0, 1
lbl_8098EEC0:
/* 8098EEC0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8098EEC4  41 82 00 14 */	beq lbl_8098EED8
/* 8098EEC8  38 64 4F F8 */	addi r3, r4, 0x4ff8
/* 8098EECC  4B 6B 99 24 */	b ChkPresentEnd__16dEvent_manager_cFv
/* 8098EED0  2C 03 00 00 */	cmpwi r3, 0
/* 8098EED4  41 82 00 F4 */	beq lbl_8098EFC8
lbl_8098EED8:
/* 8098EED8  80 7F 04 64 */	lwz r3, 0x464(r31)
/* 8098EEDC  80 1F 04 68 */	lwz r0, 0x468(r31)
/* 8098EEE0  90 61 00 14 */	stw r3, 0x14(r1)
/* 8098EEE4  90 01 00 18 */	stw r0, 0x18(r1)
/* 8098EEE8  80 1F 04 6C */	lwz r0, 0x46c(r31)
/* 8098EEEC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8098EEF0  7F C3 F3 78 */	mr r3, r30
/* 8098EEF4  38 81 00 14 */	addi r4, r1, 0x14
/* 8098EEF8  4B FF F6 CD */	bl setAction__11daNpcChin_cFM11daNpcChin_cFPCvPvPv_b
/* 8098EEFC  48 00 00 CC */	b lbl_8098EFC8
lbl_8098EF00:
/* 8098EF00  38 64 4F F8 */	addi r3, r4, 0x4ff8
/* 8098EF04  80 9F 03 C0 */	lwz r4, 0x3c0(r31)
/* 8098EF08  38 A0 00 00 */	li r5, 0
/* 8098EF0C  38 C0 00 00 */	li r6, 0
/* 8098EF10  4B 6B 8C 0C */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 8098EF14  2C 03 FF FF */	cmpwi r3, -1
/* 8098EF18  41 82 00 B0 */	beq lbl_8098EFC8
/* 8098EF1C  80 7F 04 70 */	lwz r3, 0x470(r31)
/* 8098EF20  80 1F 04 74 */	lwz r0, 0x474(r31)
/* 8098EF24  90 61 00 08 */	stw r3, 8(r1)
/* 8098EF28  90 01 00 0C */	stw r0, 0xc(r1)
/* 8098EF2C  80 1F 04 78 */	lwz r0, 0x478(r31)
/* 8098EF30  90 01 00 10 */	stw r0, 0x10(r1)
/* 8098EF34  7F C3 F3 78 */	mr r3, r30
/* 8098EF38  38 81 00 08 */	addi r4, r1, 8
/* 8098EF3C  4B FF F6 89 */	bl setAction__11daNpcChin_cFM11daNpcChin_cFPCvPvPv_b
/* 8098EF40  48 00 00 88 */	b lbl_8098EFC8
lbl_8098EF44:
/* 8098EF44  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 8098EF48  28 00 00 00 */	cmplwi r0, 0
/* 8098EF4C  41 82 00 10 */	beq lbl_8098EF5C
/* 8098EF50  38 7F 02 CC */	addi r3, r31, 0x2cc
/* 8098EF54  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8098EF58  90 1E 01 00 */	stw r0, 0x100(r30)
lbl_8098EF5C:
/* 8098EF5C  38 00 00 00 */	li r0, 0
/* 8098EF60  88 64 4F AD */	lbz r3, 0x4fad(r4)
/* 8098EF64  28 03 00 00 */	cmplwi r3, 0
/* 8098EF68  41 82 00 0C */	beq lbl_8098EF74
/* 8098EF6C  28 03 00 02 */	cmplwi r3, 2
/* 8098EF70  40 82 00 08 */	bne lbl_8098EF78
lbl_8098EF74:
/* 8098EF74  38 00 00 01 */	li r0, 1
lbl_8098EF78:
/* 8098EF78  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8098EF7C  40 82 00 0C */	bne lbl_8098EF88
/* 8098EF80  38 60 00 01 */	li r3, 1
/* 8098EF84  48 00 00 48 */	b lbl_8098EFCC
lbl_8098EF88:
/* 8098EF88  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 8098EF8C  38 C3 FF FF */	addi r6, r3, 0xFFFF /* 0x0000FFFF@l */
/* 8098EF90  A0 BE 09 E6 */	lhz r5, 0x9e6(r30)
/* 8098EF94  28 05 00 06 */	cmplwi r5, 6
/* 8098EF98  40 82 00 0C */	bne lbl_8098EFA4
/* 8098EF9C  54 C0 06 6E */	rlwinm r0, r6, 0, 0x19, 0x17
/* 8098EFA0  54 06 04 3E */	clrlwi r6, r0, 0x10
lbl_8098EFA4:
/* 8098EFA4  7F C3 F3 78 */	mr r3, r30
/* 8098EFA8  88 9E 0E 06 */	lbz r4, 0xe06(r30)
/* 8098EFAC  54 A0 13 BA */	rlwinm r0, r5, 2, 0xe, 0x1d
/* 8098EFB0  38 BF 02 EC */	addi r5, r31, 0x2ec
/* 8098EFB4  7C A5 00 2E */	lwzx r5, r5, r0
/* 8098EFB8  38 E0 00 04 */	li r7, 4
/* 8098EFBC  39 00 00 FF */	li r8, 0xff
/* 8098EFC0  39 20 00 02 */	li r9, 2
/* 8098EFC4  4B 7C 48 B8 */	b orderEvent__8daNpcF_cFiPcUsUsUcUs
lbl_8098EFC8:
/* 8098EFC8  38 60 00 01 */	li r3, 1
lbl_8098EFCC:
/* 8098EFCC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8098EFD0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8098EFD4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8098EFD8  7C 08 03 A6 */	mtlr r0
/* 8098EFDC  38 21 00 30 */	addi r1, r1, 0x30
/* 8098EFE0  4E 80 00 20 */	blr 

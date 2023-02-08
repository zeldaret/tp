lbl_800DF814:
/* 800DF814  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800DF818  7C 08 02 A6 */	mflr r0
/* 800DF81C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800DF820  39 61 00 20 */	addi r11, r1, 0x20
/* 800DF824  48 28 29 B5 */	bl _savegpr_28
/* 800DF828  7C 7E 1B 78 */	mr r30, r3
/* 800DF82C  A8 03 30 8E */	lha r0, 0x308e(r3)
/* 800DF830  2C 00 00 00 */	cmpwi r0, 0
/* 800DF834  41 82 00 1C */	beq lbl_800DF850
/* 800DF838  4B FF F1 81 */	bl checkBowReadyAnime__9daAlink_cCFv
/* 800DF83C  2C 03 00 00 */	cmpwi r3, 0
/* 800DF840  41 82 00 10 */	beq lbl_800DF850
/* 800DF844  A8 7E 30 8E */	lha r3, 0x308e(r30)
/* 800DF848  38 03 FF FF */	addi r0, r3, -1
/* 800DF84C  B0 1E 30 8E */	sth r0, 0x308e(r30)
lbl_800DF850:
/* 800DF850  3B E0 00 00 */	li r31, 0
/* 800DF854  7F C3 F3 78 */	mr r3, r30
/* 800DF858  4B FF F1 91 */	bl checkBowAnime__9daAlink_cCFv
/* 800DF85C  2C 03 00 00 */	cmpwi r3, 0
/* 800DF860  40 82 01 28 */	bne lbl_800DF988
/* 800DF864  7F C3 F3 78 */	mr r3, r30
/* 800DF868  4B FF F6 75 */	bl setBowReadyAnime__9daAlink_cFv
/* 800DF86C  7F C3 F3 78 */	mr r3, r30
/* 800DF870  4B FD 78 F9 */	bl setFastShotTimer__9daAlink_cFv
/* 800DF874  83 BE 27 E0 */	lwz r29, 0x27e0(r30)
/* 800DF878  3B 80 00 01 */	li r28, 1
/* 800DF87C  7F A3 EB 78 */	mr r3, r29
/* 800DF880  4B F9 3F 65 */	bl LockonTruth__12dAttention_cFv
/* 800DF884  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800DF888  40 82 00 14 */	bne lbl_800DF89C
/* 800DF88C  80 1D 03 34 */	lwz r0, 0x334(r29)
/* 800DF890  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 800DF894  40 82 00 08 */	bne lbl_800DF89C
/* 800DF898  3B 80 00 00 */	li r28, 0
lbl_800DF89C:
/* 800DF89C  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 800DF8A0  40 82 00 0C */	bne lbl_800DF8AC
/* 800DF8A4  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800DF8A8  B0 1E 2F E4 */	sth r0, 0x2fe4(r30)
lbl_800DF8AC:
/* 800DF8AC  38 60 00 00 */	li r3, 0
/* 800DF8B0  B0 7E 30 1A */	sth r3, 0x301a(r30)
/* 800DF8B4  38 00 00 01 */	li r0, 1
/* 800DF8B8  B0 1E 30 18 */	sth r0, 0x3018(r30)
/* 800DF8BC  A0 1E 2F DC */	lhz r0, 0x2fdc(r30)
/* 800DF8C0  28 00 00 5A */	cmplwi r0, 0x5a
/* 800DF8C4  40 82 00 0C */	bne lbl_800DF8D0
/* 800DF8C8  3B E0 00 01 */	li r31, 1
/* 800DF8CC  B0 7E 30 8E */	sth r3, 0x308e(r30)
lbl_800DF8D0:
/* 800DF8D0  83 BE 27 E0 */	lwz r29, 0x27e0(r30)
/* 800DF8D4  3B 80 00 01 */	li r28, 1
/* 800DF8D8  7F A3 EB 78 */	mr r3, r29
/* 800DF8DC  4B F9 3F 09 */	bl LockonTruth__12dAttention_cFv
/* 800DF8E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800DF8E4  40 82 00 14 */	bne lbl_800DF8F8
/* 800DF8E8  80 1D 03 34 */	lwz r0, 0x334(r29)
/* 800DF8EC  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 800DF8F0  40 82 00 08 */	bne lbl_800DF8F8
/* 800DF8F4  3B 80 00 00 */	li r28, 0
lbl_800DF8F8:
/* 800DF8F8  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 800DF8FC  40 82 00 14 */	bne lbl_800DF910
/* 800DF900  7F C3 F3 78 */	mr r3, r30
/* 800DF904  4B FC 81 59 */	bl checkDashAnime__9daAlink_cCFv
/* 800DF908  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800DF90C  41 82 00 10 */	beq lbl_800DF91C
lbl_800DF910:
/* 800DF910  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800DF914  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 800DF918  41 82 00 70 */	beq lbl_800DF988
lbl_800DF91C:
/* 800DF91C  38 00 00 00 */	li r0, 0
/* 800DF920  B0 1E 30 8E */	sth r0, 0x308e(r30)
/* 800DF924  83 BE 27 E0 */	lwz r29, 0x27e0(r30)
/* 800DF928  3B 80 00 01 */	li r28, 1
/* 800DF92C  7F A3 EB 78 */	mr r3, r29
/* 800DF930  4B F9 3E B5 */	bl LockonTruth__12dAttention_cFv
/* 800DF934  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800DF938  40 82 00 14 */	bne lbl_800DF94C
/* 800DF93C  80 1D 03 34 */	lwz r0, 0x334(r29)
/* 800DF940  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 800DF944  40 82 00 08 */	bne lbl_800DF94C
/* 800DF948  3B 80 00 00 */	li r28, 0
lbl_800DF94C:
/* 800DF94C  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 800DF950  41 82 00 1C */	beq lbl_800DF96C
/* 800DF954  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800DF958  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 800DF95C  41 82 00 10 */	beq lbl_800DF96C
/* 800DF960  38 00 00 01 */	li r0, 1
/* 800DF964  B0 1E 30 18 */	sth r0, 0x3018(r30)
/* 800DF968  48 00 00 0C */	b lbl_800DF974
lbl_800DF96C:
/* 800DF96C  38 00 00 00 */	li r0, 0
/* 800DF970  B0 1E 30 18 */	sth r0, 0x3018(r30)
lbl_800DF974:
/* 800DF974  80 1E 05 80 */	lwz r0, 0x580(r30)
/* 800DF978  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 800DF97C  40 82 00 0C */	bne lbl_800DF988
/* 800DF980  38 00 00 03 */	li r0, 3
/* 800DF984  B0 1E 30 1A */	sth r0, 0x301a(r30)
lbl_800DF988:
/* 800DF988  83 BE 27 E0 */	lwz r29, 0x27e0(r30)
/* 800DF98C  3B 80 00 01 */	li r28, 1
/* 800DF990  7F A3 EB 78 */	mr r3, r29
/* 800DF994  4B F9 3E 51 */	bl LockonTruth__12dAttention_cFv
/* 800DF998  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800DF99C  40 82 00 14 */	bne lbl_800DF9B0
/* 800DF9A0  80 1D 03 34 */	lwz r0, 0x334(r29)
/* 800DF9A4  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 800DF9A8  40 82 00 08 */	bne lbl_800DF9B0
/* 800DF9AC  3B 80 00 00 */	li r28, 0
lbl_800DF9B0:
/* 800DF9B0  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 800DF9B4  40 82 00 68 */	bne lbl_800DFA1C
/* 800DF9B8  A8 1E 30 8E */	lha r0, 0x308e(r30)
/* 800DF9BC  2C 00 00 00 */	cmpwi r0, 0
/* 800DF9C0  40 82 00 5C */	bne lbl_800DFA1C
/* 800DF9C4  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800DF9C8  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 800DF9CC  41 82 00 40 */	beq lbl_800DFA0C
/* 800DF9D0  7F C3 F3 78 */	mr r3, r30
/* 800DF9D4  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800DF9D8  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 800DF9DC  7D 89 03 A6 */	mtctr r12
/* 800DF9E0  4E 80 04 21 */	bctrl 
/* 800DF9E4  28 03 00 00 */	cmplwi r3, 0
/* 800DF9E8  41 82 00 14 */	beq lbl_800DF9FC
/* 800DF9EC  7F C3 F3 78 */	mr r3, r30
/* 800DF9F0  48 01 73 21 */	bl procCanoeBowSubjectInit__9daAlink_cFv
/* 800DF9F4  7C 7C 1B 78 */	mr r28, r3
/* 800DF9F8  48 00 00 78 */	b lbl_800DFA70
lbl_800DF9FC:
/* 800DF9FC  7F C3 F3 78 */	mr r3, r30
/* 800DFA00  48 01 27 51 */	bl procHorseBowSubjectInit__9daAlink_cFv
/* 800DFA04  7C 7C 1B 78 */	mr r28, r3
/* 800DFA08  48 00 00 68 */	b lbl_800DFA70
lbl_800DFA0C:
/* 800DFA0C  7F C3 F3 78 */	mr r3, r30
/* 800DFA10  48 00 03 5D */	bl procBowSubjectInit__9daAlink_cFv
/* 800DFA14  7C 7C 1B 78 */	mr r28, r3
/* 800DFA18  48 00 00 58 */	b lbl_800DFA70
lbl_800DFA1C:
/* 800DFA1C  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800DFA20  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 800DFA24  41 82 00 40 */	beq lbl_800DFA64
/* 800DFA28  7F C3 F3 78 */	mr r3, r30
/* 800DFA2C  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800DFA30  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 800DFA34  7D 89 03 A6 */	mtctr r12
/* 800DFA38  4E 80 04 21 */	bctrl 
/* 800DFA3C  28 03 00 00 */	cmplwi r3, 0
/* 800DFA40  41 82 00 14 */	beq lbl_800DFA54
/* 800DFA44  7F C3 F3 78 */	mr r3, r30
/* 800DFA48  48 01 73 A9 */	bl procCanoeBowMoveInit__9daAlink_cFv
/* 800DFA4C  7C 7C 1B 78 */	mr r28, r3
/* 800DFA50  48 00 00 20 */	b lbl_800DFA70
lbl_800DFA54:
/* 800DFA54  7F C3 F3 78 */	mr r3, r30
/* 800DFA58  48 01 27 F5 */	bl procHorseBowMoveInit__9daAlink_cFv
/* 800DFA5C  7C 7C 1B 78 */	mr r28, r3
/* 800DFA60  48 00 00 10 */	b lbl_800DFA70
lbl_800DFA64:
/* 800DFA64  7F C3 F3 78 */	mr r3, r30
/* 800DFA68  48 00 03 D5 */	bl procBowMoveInit__9daAlink_cFv
/* 800DFA6C  7C 7C 1B 78 */	mr r28, r3
lbl_800DFA70:
/* 800DFA70  2C 1C 00 00 */	cmpwi r28, 0
/* 800DFA74  41 82 00 58 */	beq lbl_800DFACC
/* 800DFA78  2C 1F 00 00 */	cmpwi r31, 0
/* 800DFA7C  41 82 00 50 */	beq lbl_800DFACC
/* 800DFA80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800DFA84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800DFA88  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800DFA8C  64 00 00 20 */	oris r0, r0, 0x20
/* 800DFA90  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 800DFA94  3C 60 00 02 */	lis r3, 0x0002 /* 0x000200B5@ha */
/* 800DFA98  38 03 00 B5 */	addi r0, r3, 0x00B5 /* 0x000200B5@l */
/* 800DFA9C  90 01 00 08 */	stw r0, 8(r1)
/* 800DFAA0  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 800DFAA4  38 81 00 08 */	addi r4, r1, 8
/* 800DFAA8  38 A0 00 00 */	li r5, 0
/* 800DFAAC  38 C0 00 00 */	li r6, 0
/* 800DFAB0  38 E0 00 00 */	li r7, 0
/* 800DFAB4  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800DFAB8  FC 40 08 90 */	fmr f2, f1
/* 800DFABC  C0 62 92 BC */	lfs f3, lit_6041(r2)
/* 800DFAC0  FC 80 18 90 */	fmr f4, f3
/* 800DFAC4  39 00 00 00 */	li r8, 0
/* 800DFAC8  48 1C BE BD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_800DFACC:
/* 800DFACC  7F 83 E3 78 */	mr r3, r28
/* 800DFAD0  39 61 00 20 */	addi r11, r1, 0x20
/* 800DFAD4  48 28 27 51 */	bl _restgpr_28
/* 800DFAD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800DFADC  7C 08 03 A6 */	mtlr r0
/* 800DFAE0  38 21 00 20 */	addi r1, r1, 0x20
/* 800DFAE4  4E 80 00 20 */	blr 

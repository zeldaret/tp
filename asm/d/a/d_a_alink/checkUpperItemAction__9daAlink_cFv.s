lbl_800B75EC:
/* 800B75EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800B75F0  7C 08 02 A6 */	mflr r0
/* 800B75F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800B75F8  39 61 00 20 */	addi r11, r1, 0x20
/* 800B75FC  48 2A AB E1 */	bl _savegpr_29
/* 800B7600  7C 7F 1B 78 */	mr r31, r3
/* 800B7604  48 00 1C 51 */	bl checkNoUpperAnime__9daAlink_cCFv
/* 800B7608  2C 03 00 00 */	cmpwi r3, 0
/* 800B760C  41 82 00 44 */	beq lbl_800B7650
/* 800B7610  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800B7614  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 800B7618  41 82 00 30 */	beq lbl_800B7648
/* 800B761C  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800B7620  28 00 00 42 */	cmplwi r0, 0x42
/* 800B7624  40 82 00 14 */	bne lbl_800B7638
/* 800B7628  7F E3 FB 78 */	mr r3, r31
/* 800B762C  38 80 00 00 */	li r4, 0
/* 800B7630  48 05 AF 39 */	bl setIronBallWaitUpperAnime__9daAlink_cFi
/* 800B7634  48 00 00 14 */	b lbl_800B7648
lbl_800B7638:
/* 800B7638  28 00 00 46 */	cmplwi r0, 0x46
/* 800B763C  40 82 00 0C */	bne lbl_800B7648
/* 800B7640  7F E3 FB 78 */	mr r3, r31
/* 800B7644  48 02 9F 49 */	bl setCopyRodControllAnime__9daAlink_cFv
lbl_800B7648:
/* 800B7648  38 60 00 00 */	li r3, 0
/* 800B764C  48 00 05 18 */	b lbl_800B7B64
lbl_800B7650:
/* 800B7650  38 60 00 00 */	li r3, 0
/* 800B7654  A0 9F 1F BC */	lhz r4, 0x1fbc(r31)
/* 800B7658  28 04 00 62 */	cmplwi r4, 0x62
/* 800B765C  41 82 00 10 */	beq lbl_800B766C
/* 800B7660  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 800B7664  28 00 02 A0 */	cmplwi r0, 0x2a0
/* 800B7668  40 82 00 08 */	bne lbl_800B7670
lbl_800B766C:
/* 800B766C  38 60 00 01 */	li r3, 1
lbl_800B7670:
/* 800B7670  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B7674  41 82 01 1C */	beq lbl_800B7790
/* 800B7678  88 1F 2F A3 */	lbz r0, 0x2fa3(r31)
/* 800B767C  28 00 00 00 */	cmplwi r0, 0
/* 800B7680  40 82 00 18 */	bne lbl_800B7698
/* 800B7684  7F E3 FB 78 */	mr r3, r31
/* 800B7688  38 80 00 02 */	li r4, 2
/* 800B768C  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 800B7690  4B FF 60 95 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 800B7694  48 00 04 CC */	b lbl_800B7B60
lbl_800B7698:
/* 800B7698  80 1F 05 8C */	lwz r0, 0x58c(r31)
/* 800B769C  54 00 01 CF */	rlwinm. r0, r0, 0, 7, 7
/* 800B76A0  41 82 00 1C */	beq lbl_800B76BC
/* 800B76A4  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800B76A8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B76AC  40 82 00 10 */	bne lbl_800B76BC
/* 800B76B0  7F E3 FB 78 */	mr r3, r31
/* 800B76B4  48 03 07 25 */	bl procFmChainStrongPullInit__9daAlink_cFv
/* 800B76B8  48 00 04 AC */	b lbl_800B7B64
lbl_800B76BC:
/* 800B76BC  7F E3 FB 78 */	mr r3, r31
/* 800B76C0  48 03 08 59 */	bl wallGrabButton__9daAlink_cFv
/* 800B76C4  2C 03 00 00 */	cmpwi r3, 0
/* 800B76C8  40 82 00 38 */	bne lbl_800B7700
/* 800B76CC  7F E3 FB 78 */	mr r3, r31
/* 800B76D0  38 80 00 02 */	li r4, 2
/* 800B76D4  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 800B76D8  4B FF 60 4D */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 800B76DC  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800B76E0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B76E4  41 82 00 10 */	beq lbl_800B76F4
/* 800B76E8  7F E3 FB 78 */	mr r3, r31
/* 800B76EC  48 07 5A BD */	bl procWolfWaitInit__9daAlink_cFv
/* 800B76F0  48 00 04 74 */	b lbl_800B7B64
lbl_800B76F4:
/* 800B76F4  7F E3 FB 78 */	mr r3, r31
/* 800B76F8  48 00 BC C1 */	bl procWaitInit__9daAlink_cFv
/* 800B76FC  48 00 04 68 */	b lbl_800B7B64
lbl_800B7700:
/* 800B7700  7F E3 FB 78 */	mr r3, r31
/* 800B7704  38 80 00 96 */	li r4, 0x96
/* 800B7708  38 A0 00 02 */	li r5, 2
/* 800B770C  48 03 07 C5 */	bl setWallGrabStatus__9daAlink_cFUcUc
/* 800B7710  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800B7714  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B7718  40 82 00 2C */	bne lbl_800B7744
/* 800B771C  7F E3 FB 78 */	mr r3, r31
/* 800B7720  38 80 01 82 */	li r4, 0x182
/* 800B7724  4B FF 4E 35 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800B7728  2C 03 00 00 */	cmpwi r3, 0
/* 800B772C  40 82 00 4C */	bne lbl_800B7778
/* 800B7730  7F E3 FB 78 */	mr r3, r31
/* 800B7734  38 80 01 84 */	li r4, 0x184
/* 800B7738  4B FF 4E 21 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800B773C  2C 03 00 00 */	cmpwi r3, 0
/* 800B7740  40 82 00 38 */	bne lbl_800B7778
lbl_800B7744:
/* 800B7744  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800B7748  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B774C  41 82 00 38 */	beq lbl_800B7784
/* 800B7750  7F E3 FB 78 */	mr r3, r31
/* 800B7754  38 80 00 8A */	li r4, 0x8a
/* 800B7758  48 07 10 B5 */	bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 800B775C  2C 03 00 00 */	cmpwi r3, 0
/* 800B7760  40 82 00 18 */	bne lbl_800B7778
/* 800B7764  7F E3 FB 78 */	mr r3, r31
/* 800B7768  38 80 00 8B */	li r4, 0x8b
/* 800B776C  48 07 10 A1 */	bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 800B7770  2C 03 00 00 */	cmpwi r3, 0
/* 800B7774  41 82 00 10 */	beq lbl_800B7784
lbl_800B7778:
/* 800B7778  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800B777C  D0 1F 1F 50 */	stfs f0, 0x1f50(r31)
/* 800B7780  48 00 03 E0 */	b lbl_800B7B60
lbl_800B7784:
/* 800B7784  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800B7788  D0 1F 1F 50 */	stfs f0, 0x1f50(r31)
/* 800B778C  48 00 03 D4 */	b lbl_800B7B60
lbl_800B7790:
/* 800B7790  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800B7794  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B7798  41 82 01 40 */	beq lbl_800B78D8
/* 800B779C  38 60 00 00 */	li r3, 0
/* 800B77A0  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 800B77A4  28 00 02 DA */	cmplwi r0, 0x2da
/* 800B77A8  41 82 00 0C */	beq lbl_800B77B4
/* 800B77AC  28 00 02 DB */	cmplwi r0, 0x2db
/* 800B77B0  40 82 00 08 */	bne lbl_800B77B8
lbl_800B77B4:
/* 800B77B4  38 60 00 01 */	li r3, 1
lbl_800B77B8:
/* 800B77B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B77BC  41 82 03 A4 */	beq lbl_800B7B60
/* 800B77C0  7F E3 FB 78 */	mr r3, r31
/* 800B77C4  4B FF D1 8D */	bl notTalk__9daAlink_cFv
/* 800B77C8  2C 03 00 00 */	cmpwi r3, 0
/* 800B77CC  40 82 00 1C */	bne lbl_800B77E8
/* 800B77D0  7F E3 FB 78 */	mr r3, r31
/* 800B77D4  48 00 08 F1 */	bl orderZTalk__9daAlink_cFv
/* 800B77D8  2C 03 00 00 */	cmpwi r3, 0
/* 800B77DC  41 82 00 0C */	beq lbl_800B77E8
/* 800B77E0  38 60 00 01 */	li r3, 1
/* 800B77E4  48 00 03 80 */	b lbl_800B7B64
lbl_800B77E8:
/* 800B77E8  80 1F 28 30 */	lwz r0, 0x2830(r31)
/* 800B77EC  28 00 00 00 */	cmplwi r0, 0
/* 800B77F0  40 82 00 0C */	bne lbl_800B77FC
/* 800B77F4  38 60 00 00 */	li r3, 0
/* 800B77F8  48 00 03 6C */	b lbl_800B7B64
lbl_800B77FC:
/* 800B77FC  7F E3 FB 78 */	mr r3, r31
/* 800B7800  48 02 C3 CD */	bl getGrabThrowRate__9daAlink_cFv
/* 800B7804  C0 1F 33 A8 */	lfs f0, 0x33a8(r31)
/* 800B7808  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800B780C  41 81 00 34 */	bgt lbl_800B7840
/* 800B7810  83 DF 27 E0 */	lwz r30, 0x27e0(r31)
/* 800B7814  3B A0 00 01 */	li r29, 1
/* 800B7818  7F C3 F3 78 */	mr r3, r30
/* 800B781C  4B FB BF C9 */	bl LockonTruth__12dAttention_cFv
/* 800B7820  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B7824  40 82 00 14 */	bne lbl_800B7838
/* 800B7828  80 1E 03 34 */	lwz r0, 0x334(r30)
/* 800B782C  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 800B7830  40 82 00 08 */	bne lbl_800B7838
/* 800B7834  3B A0 00 00 */	li r29, 0
lbl_800B7838:
/* 800B7838  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 800B783C  41 82 00 0C */	beq lbl_800B7848
lbl_800B7840:
/* 800B7840  3B A0 00 13 */	li r29, 0x13
/* 800B7844  48 00 00 08 */	b lbl_800B784C
lbl_800B7848:
/* 800B7848  3B A0 00 14 */	li r29, 0x14
lbl_800B784C:
/* 800B784C  7F E3 FB 78 */	mr r3, r31
/* 800B7850  7F A4 EB 78 */	mr r4, r29
/* 800B7854  4B FF BA 45 */	bl setBStatus__9daAlink_cFUc
/* 800B7858  7F E3 FB 78 */	mr r3, r31
/* 800B785C  7F A4 EB 78 */	mr r4, r29
/* 800B7860  4B FF B9 F1 */	bl setDoStatus__9daAlink_cFUc
/* 800B7864  57 A4 06 3E */	clrlwi r4, r29, 0x18
/* 800B7868  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800B786C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800B7870  88 03 5E 24 */	lbz r0, 0x5e24(r3)
/* 800B7874  7C 04 00 40 */	cmplw r4, r0
/* 800B7878  40 82 00 10 */	bne lbl_800B7888
/* 800B787C  88 1F 2F 8D */	lbz r0, 0x2f8d(r31)
/* 800B7880  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800B7884  40 82 00 30 */	bne lbl_800B78B4
lbl_800B7888:
/* 800B7888  57 A4 06 3E */	clrlwi r4, r29, 0x18
/* 800B788C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800B7890  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800B7894  88 03 5E 1D */	lbz r0, 0x5e1d(r3)
/* 800B7898  7C 04 00 40 */	cmplw r4, r0
/* 800B789C  40 82 02 C4 */	bne lbl_800B7B60
/* 800B78A0  7F E3 FB 78 */	mr r3, r31
/* 800B78A4  38 80 00 08 */	li r4, 8
/* 800B78A8  4B FF AD 25 */	bl itemTriggerCheck__9daAlink_cFUc
/* 800B78AC  2C 03 00 00 */	cmpwi r3, 0
/* 800B78B0  41 82 02 B0 */	beq lbl_800B7B60
lbl_800B78B4:
/* 800B78B4  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 800B78B8  28 00 00 13 */	cmplwi r0, 0x13
/* 800B78BC  40 82 00 10 */	bne lbl_800B78CC
/* 800B78C0  7F E3 FB 78 */	mr r3, r31
/* 800B78C4  48 08 5F 55 */	bl procWolfGrabThrowInit__9daAlink_cFv
/* 800B78C8  48 00 02 9C */	b lbl_800B7B64
lbl_800B78CC:
/* 800B78CC  7F E3 FB 78 */	mr r3, r31
/* 800B78D0  48 08 5C B9 */	bl procWolfGrabPutInit__9daAlink_cFv
/* 800B78D4  48 00 02 90 */	b lbl_800B7B64
lbl_800B78D8:
/* 800B78D8  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 800B78DC  28 00 02 62 */	cmplwi r0, 0x262
/* 800B78E0  40 82 01 18 */	bne lbl_800B79F8
/* 800B78E4  7F E3 FB 78 */	mr r3, r31
/* 800B78E8  48 01 F7 B9 */	bl checkCaughtEscapeCutTurn__9daAlink_cFv
/* 800B78EC  2C 03 00 00 */	cmpwi r3, 0
/* 800B78F0  41 82 00 0C */	beq lbl_800B78FC
/* 800B78F4  38 60 00 01 */	li r3, 1
/* 800B78F8  48 00 02 6C */	b lbl_800B7B64
lbl_800B78FC:
/* 800B78FC  A8 7F 30 F6 */	lha r3, 0x30f6(r31)
/* 800B7900  38 03 FF FF */	addi r0, r3, -1
/* 800B7904  B0 1F 30 F6 */	sth r0, 0x30f6(r31)
/* 800B7908  7F E3 FB 78 */	mr r3, r31
/* 800B790C  38 80 00 08 */	li r4, 8
/* 800B7910  4B FF AC BD */	bl itemTriggerCheck__9daAlink_cFUc
/* 800B7914  2C 03 00 00 */	cmpwi r3, 0
/* 800B7918  40 82 00 10 */	bne lbl_800B7928
/* 800B791C  88 1F 2F 8D */	lbz r0, 0x2f8d(r31)
/* 800B7920  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800B7924  41 82 00 1C */	beq lbl_800B7940
lbl_800B7928:
/* 800B7928  3C 60 80 39 */	lis r3, m__23daAlinkHIO_damCaught_c0@ha
/* 800B792C  38 63 E4 9C */	addi r3, r3, m__23daAlinkHIO_damCaught_c0@l
/* 800B7930  A8 63 00 16 */	lha r3, 0x16(r3)
/* 800B7934  A8 1F 30 F6 */	lha r0, 0x30f6(r31)
/* 800B7938  7C 03 00 50 */	subf r0, r3, r0
/* 800B793C  B0 1F 30 F6 */	sth r0, 0x30f6(r31)
lbl_800B7940:
/* 800B7940  C0 3F 33 AC */	lfs f1, 0x33ac(r31)
/* 800B7944  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800B7948  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B794C  40 81 00 38 */	ble lbl_800B7984
/* 800B7950  A8 7F 30 7C */	lha r3, 0x307c(r31)
/* 800B7954  A8 1F 2F E0 */	lha r0, 0x2fe0(r31)
/* 800B7958  7C 03 00 50 */	subf r0, r3, r0
/* 800B795C  7C 03 07 34 */	extsh r3, r0
/* 800B7960  48 2A D7 71 */	bl abs
/* 800B7964  2C 03 10 00 */	cmpwi r3, 0x1000
/* 800B7968  40 81 00 1C */	ble lbl_800B7984
/* 800B796C  3C 60 80 39 */	lis r3, m__23daAlinkHIO_damCaught_c0@ha
/* 800B7970  38 63 E4 9C */	addi r3, r3, m__23daAlinkHIO_damCaught_c0@l
/* 800B7974  A8 63 00 16 */	lha r3, 0x16(r3)
/* 800B7978  A8 1F 30 F6 */	lha r0, 0x30f6(r31)
/* 800B797C  7C 03 00 50 */	subf r0, r3, r0
/* 800B7980  B0 1F 30 F6 */	sth r0, 0x30f6(r31)
lbl_800B7984:
/* 800B7984  A8 1F 30 F6 */	lha r0, 0x30f6(r31)
/* 800B7988  2C 00 00 00 */	cmpwi r0, 0
/* 800B798C  41 80 00 10 */	blt lbl_800B799C
/* 800B7990  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800B7994  54 00 03 9D */	rlwinm. r0, r0, 0, 0xe, 0xe
/* 800B7998  40 82 00 4C */	bne lbl_800B79E4
lbl_800B799C:
/* 800B799C  7F E3 FB 78 */	mr r3, r31
/* 800B79A0  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010009@ha */
/* 800B79A4  38 84 00 09 */	addi r4, r4, 0x0009 /* 0x00010009@l */
/* 800B79A8  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800B79AC  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800B79B0  7D 89 03 A6 */	mtctr r12
/* 800B79B4  4E 80 04 21 */	bctrl 
/* 800B79B8  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 800B79BC  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800B79C0  41 82 00 10 */	beq lbl_800B79D0
/* 800B79C4  7F E3 FB 78 */	mr r3, r31
/* 800B79C8  48 02 3B E9 */	bl procStEscapeInit__9daAlink_cFv
/* 800B79CC  48 00 01 98 */	b lbl_800B7B64
lbl_800B79D0:
/* 800B79D0  7F E3 FB 78 */	mr r3, r31
/* 800B79D4  38 80 00 02 */	li r4, 2
/* 800B79D8  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 800B79DC  4B FF 5D 49 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 800B79E0  48 00 01 80 */	b lbl_800B7B60
lbl_800B79E4:
/* 800B79E4  7F E3 FB 78 */	mr r3, r31
/* 800B79E8  3C 80 00 01 */	lis r4, 0x0001 /* 0x0001001E@ha */
/* 800B79EC  38 84 00 1E */	addi r4, r4, 0x001E /* 0x0001001E@l */
/* 800B79F0  48 00 76 C9 */	bl voiceStartLevel__9daAlink_cFUl
/* 800B79F4  48 00 01 6C */	b lbl_800B7B60
lbl_800B79F8:
/* 800B79F8  7F E3 FB 78 */	mr r3, r31
/* 800B79FC  48 02 6F ED */	bl checkBowAnime__9daAlink_cCFv
/* 800B7A00  2C 03 00 00 */	cmpwi r3, 0
/* 800B7A04  41 82 00 1C */	beq lbl_800B7A20
/* 800B7A08  7F E3 FB 78 */	mr r3, r31
/* 800B7A0C  48 02 76 B1 */	bl checkUpperItemActionBow__9daAlink_cFv
/* 800B7A10  2C 03 00 00 */	cmpwi r3, 0
/* 800B7A14  41 82 01 4C */	beq lbl_800B7B60
/* 800B7A18  38 60 00 01 */	li r3, 1
/* 800B7A1C  48 00 01 48 */	b lbl_800B7B64
lbl_800B7A20:
/* 800B7A20  7F E3 FB 78 */	mr r3, r31
/* 800B7A24  48 02 C2 49 */	bl checkGrabAnime__9daAlink_cCFv
/* 800B7A28  2C 03 00 00 */	cmpwi r3, 0
/* 800B7A2C  41 82 00 1C */	beq lbl_800B7A48
/* 800B7A30  7F E3 FB 78 */	mr r3, r31
/* 800B7A34  48 02 D7 3D */	bl checkNextActionGrab__9daAlink_cFv
/* 800B7A38  2C 03 00 00 */	cmpwi r3, 0
/* 800B7A3C  41 82 01 24 */	beq lbl_800B7B60
/* 800B7A40  38 60 00 01 */	li r3, 1
/* 800B7A44  48 00 01 20 */	b lbl_800B7B64
lbl_800B7A48:
/* 800B7A48  38 60 00 00 */	li r3, 0
/* 800B7A4C  A0 9F 2F DC */	lhz r4, 0x2fdc(r31)
/* 800B7A50  28 04 00 40 */	cmplwi r4, 0x40
/* 800B7A54  41 82 00 0C */	beq lbl_800B7A60
/* 800B7A58  28 04 01 02 */	cmplwi r4, 0x102
/* 800B7A5C  40 82 00 14 */	bne lbl_800B7A70
lbl_800B7A60:
/* 800B7A60  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800B7A64  28 00 00 54 */	cmplwi r0, 0x54
/* 800B7A68  40 82 00 08 */	bne lbl_800B7A70
/* 800B7A6C  38 60 00 01 */	li r3, 1
lbl_800B7A70:
/* 800B7A70  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B7A74  41 82 00 1C */	beq lbl_800B7A90
/* 800B7A78  7F E3 FB 78 */	mr r3, r31
/* 800B7A7C  48 02 90 21 */	bl checkUpperItemActionBoomerang__9daAlink_cFv
/* 800B7A80  2C 03 00 00 */	cmpwi r3, 0
/* 800B7A84  41 82 00 DC */	beq lbl_800B7B60
/* 800B7A88  38 60 00 01 */	li r3, 1
/* 800B7A8C  48 00 00 D8 */	b lbl_800B7B64
lbl_800B7A90:
/* 800B7A90  38 60 00 00 */	li r3, 0
/* 800B7A94  28 04 00 46 */	cmplwi r4, 0x46
/* 800B7A98  40 82 00 14 */	bne lbl_800B7AAC
/* 800B7A9C  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800B7AA0  28 00 00 54 */	cmplwi r0, 0x54
/* 800B7AA4  40 82 00 08 */	bne lbl_800B7AAC
/* 800B7AA8  38 60 00 01 */	li r3, 1
lbl_800B7AAC:
/* 800B7AAC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B7AB0  41 82 00 1C */	beq lbl_800B7ACC
/* 800B7AB4  7F E3 FB 78 */	mr r3, r31
/* 800B7AB8  48 02 A0 25 */	bl checkUpperItemActionCopyRod__9daAlink_cFv
/* 800B7ABC  2C 03 00 00 */	cmpwi r3, 0
/* 800B7AC0  41 82 00 A0 */	beq lbl_800B7B60
/* 800B7AC4  38 60 00 01 */	li r3, 1
/* 800B7AC8  48 00 00 9C */	b lbl_800B7B64
lbl_800B7ACC:
/* 800B7ACC  38 60 00 00 */	li r3, 0
/* 800B7AD0  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800B7AD4  28 00 01 8D */	cmplwi r0, 0x18d
/* 800B7AD8  41 82 00 10 */	beq lbl_800B7AE8
/* 800B7ADC  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800B7AE0  28 00 01 8C */	cmplwi r0, 0x18c
/* 800B7AE4  40 82 00 08 */	bne lbl_800B7AEC
lbl_800B7AE8:
/* 800B7AE8  38 60 00 01 */	li r3, 1
lbl_800B7AEC:
/* 800B7AEC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B7AF0  41 82 00 1C */	beq lbl_800B7B0C
/* 800B7AF4  7F E3 FB 78 */	mr r3, r31
/* 800B7AF8  48 05 17 8D */	bl checkUpperItemActionHookshot__9daAlink_cFv
/* 800B7AFC  2C 03 00 00 */	cmpwi r3, 0
/* 800B7B00  41 82 00 60 */	beq lbl_800B7B60
/* 800B7B04  38 60 00 01 */	li r3, 1
/* 800B7B08  48 00 00 5C */	b lbl_800B7B64
lbl_800B7B0C:
/* 800B7B0C  7F E3 FB 78 */	mr r3, r31
/* 800B7B10  48 05 D5 D5 */	bl checkIronBallAnime__9daAlink_cCFv
/* 800B7B14  2C 03 00 00 */	cmpwi r3, 0
/* 800B7B18  41 82 00 1C */	beq lbl_800B7B34
/* 800B7B1C  7F E3 FB 78 */	mr r3, r31
/* 800B7B20  48 05 D7 35 */	bl checkUpperItemActionIronBall__9daAlink_cFv
/* 800B7B24  2C 03 00 00 */	cmpwi r3, 0
/* 800B7B28  41 82 00 38 */	beq lbl_800B7B60
/* 800B7B2C  38 60 00 01 */	li r3, 1
/* 800B7B30  48 00 00 34 */	b lbl_800B7B64
lbl_800B7B34:
/* 800B7B34  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800B7B38  28 00 00 42 */	cmplwi r0, 0x42
/* 800B7B3C  40 82 00 14 */	bne lbl_800B7B50
/* 800B7B40  7F E3 FB 78 */	mr r3, r31
/* 800B7B44  38 80 00 00 */	li r4, 0
/* 800B7B48  48 05 AA 21 */	bl setIronBallWaitUpperAnime__9daAlink_cFi
/* 800B7B4C  48 00 00 14 */	b lbl_800B7B60
lbl_800B7B50:
/* 800B7B50  28 00 00 46 */	cmplwi r0, 0x46
/* 800B7B54  40 82 00 0C */	bne lbl_800B7B60
/* 800B7B58  7F E3 FB 78 */	mr r3, r31
/* 800B7B5C  48 02 9A 31 */	bl setCopyRodControllAnime__9daAlink_cFv
lbl_800B7B60:
/* 800B7B60  38 60 00 00 */	li r3, 0
lbl_800B7B64:
/* 800B7B64  39 61 00 20 */	addi r11, r1, 0x20
/* 800B7B68  48 2A A6 C1 */	bl _restgpr_29
/* 800B7B6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800B7B70  7C 08 03 A6 */	mtlr r0
/* 800B7B74  38 21 00 20 */	addi r1, r1, 0x20
/* 800B7B78  4E 80 00 20 */	blr 

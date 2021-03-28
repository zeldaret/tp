lbl_8050E6B4:
/* 8050E6B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050E6B8  7C 08 02 A6 */	mflr r0
/* 8050E6BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050E6C0  39 61 00 20 */	addi r11, r1, 0x20
/* 8050E6C4  4B E5 3B 18 */	b _savegpr_29
/* 8050E6C8  7C 7E 1B 78 */	mr r30, r3
/* 8050E6CC  3C 60 80 52 */	lis r3, lit_4208@ha
/* 8050E6D0  3B E3 85 84 */	addi r31, r3, lit_4208@l
/* 8050E6D4  80 1E 09 8C */	lwz r0, 0x98c(r30)
/* 8050E6D8  90 01 00 08 */	stw r0, 8(r1)
/* 8050E6DC  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 8050E6E0  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 8050E6E4  38 81 00 08 */	addi r4, r1, 8
/* 8050E6E8  4B B0 B1 10 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 8050E6EC  7C 7D 1B 78 */	mr r29, r3
/* 8050E6F0  38 00 00 0A */	li r0, 0xa
/* 8050E6F4  B0 1E 09 98 */	sth r0, 0x998(r30)
/* 8050E6F8  A8 1E 05 B4 */	lha r0, 0x5b4(r30)
/* 8050E6FC  2C 00 00 03 */	cmpwi r0, 3
/* 8050E700  41 82 00 DC */	beq lbl_8050E7DC
/* 8050E704  40 80 00 1C */	bge lbl_8050E720
/* 8050E708  2C 00 00 01 */	cmpwi r0, 1
/* 8050E70C  41 82 00 48 */	beq lbl_8050E754
/* 8050E710  40 80 00 74 */	bge lbl_8050E784
/* 8050E714  2C 00 00 00 */	cmpwi r0, 0
/* 8050E718  40 80 00 18 */	bge lbl_8050E730
/* 8050E71C  48 00 01 BC */	b lbl_8050E8D8
lbl_8050E720:
/* 8050E720  2C 00 00 05 */	cmpwi r0, 5
/* 8050E724  41 82 01 B4 */	beq lbl_8050E8D8
/* 8050E728  40 80 01 B0 */	bge lbl_8050E8D8
/* 8050E72C  48 00 01 5C */	b lbl_8050E888
lbl_8050E730:
/* 8050E730  7F C3 F3 78 */	mr r3, r30
/* 8050E734  38 80 00 43 */	li r4, 0x43
/* 8050E738  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8050E73C  38 A0 00 02 */	li r5, 2
/* 8050E740  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050E744  4B FF 64 91 */	bl anm_init__FP10e_rd_classifUcf
/* 8050E748  38 00 00 01 */	li r0, 1
/* 8050E74C  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8050E750  48 00 01 88 */	b lbl_8050E8D8
lbl_8050E754:
/* 8050E754  A0 1D 06 BE */	lhz r0, 0x6be(r29)
/* 8050E758  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8050E75C  41 82 01 7C */	beq lbl_8050E8D8
/* 8050E760  7F C3 F3 78 */	mr r3, r30
/* 8050E764  38 80 00 41 */	li r4, 0x41
/* 8050E768  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8050E76C  38 A0 00 02 */	li r5, 2
/* 8050E770  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050E774  4B FF 64 61 */	bl anm_init__FP10e_rd_classifUcf
/* 8050E778  38 00 00 02 */	li r0, 2
/* 8050E77C  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8050E780  48 00 01 58 */	b lbl_8050E8D8
lbl_8050E784:
/* 8050E784  A0 1D 06 BE */	lhz r0, 0x6be(r29)
/* 8050E788  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8050E78C  41 82 01 4C */	beq lbl_8050E8D8
/* 8050E790  7F C3 F3 78 */	mr r3, r30
/* 8050E794  38 80 00 1C */	li r4, 0x1c
/* 8050E798  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8050E79C  38 A0 00 00 */	li r5, 0
/* 8050E7A0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050E7A4  4B FF 64 31 */	bl anm_init__FP10e_rd_classifUcf
/* 8050E7A8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007056F@ha */
/* 8050E7AC  38 03 05 6F */	addi r0, r3, 0x056F /* 0x0007056F@l */
/* 8050E7B0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8050E7B4  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 8050E7B8  38 81 00 0C */	addi r4, r1, 0xc
/* 8050E7BC  38 A0 FF FF */	li r5, -1
/* 8050E7C0  81 9E 05 D4 */	lwz r12, 0x5d4(r30)
/* 8050E7C4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8050E7C8  7D 89 03 A6 */	mtctr r12
/* 8050E7CC  4E 80 04 21 */	bctrl 
/* 8050E7D0  38 00 00 03 */	li r0, 3
/* 8050E7D4  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8050E7D8  48 00 01 00 */	b lbl_8050E8D8
lbl_8050E7DC:
/* 8050E7DC  80 1E 06 7C */	lwz r0, 0x67c(r30)
/* 8050E7E0  2C 00 00 1C */	cmpwi r0, 0x1c
/* 8050E7E4  40 82 00 50 */	bne lbl_8050E834
/* 8050E7E8  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 8050E7EC  38 80 00 01 */	li r4, 1
/* 8050E7F0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8050E7F4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8050E7F8  40 82 00 18 */	bne lbl_8050E810
/* 8050E7FC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8050E800  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8050E804  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8050E808  41 82 00 08 */	beq lbl_8050E810
/* 8050E80C  38 80 00 00 */	li r4, 0
lbl_8050E810:
/* 8050E810  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8050E814  41 82 00 C4 */	beq lbl_8050E8D8
/* 8050E818  7F C3 F3 78 */	mr r3, r30
/* 8050E81C  38 80 00 41 */	li r4, 0x41
/* 8050E820  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8050E824  38 A0 00 02 */	li r5, 2
/* 8050E828  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050E82C  4B FF 63 A9 */	bl anm_init__FP10e_rd_classifUcf
/* 8050E830  48 00 00 A8 */	b lbl_8050E8D8
lbl_8050E834:
/* 8050E834  3C 60 80 51 */	lis r3, s_rdb_sub__FPvPv@ha
/* 8050E838  38 63 E6 68 */	addi r3, r3, s_rdb_sub__FPvPv@l
/* 8050E83C  7F C4 F3 78 */	mr r4, r30
/* 8050E840  4B B1 2A F8 */	b fpcEx_Search__FPFPvPv_PvPv
/* 8050E844  28 03 00 00 */	cmplwi r3, 0
/* 8050E848  41 82 00 90 */	beq lbl_8050E8D8
/* 8050E84C  A8 03 10 A8 */	lha r0, 0x10a8(r3)
/* 8050E850  2C 00 00 0E */	cmpwi r0, 0xe
/* 8050E854  40 82 00 84 */	bne lbl_8050E8D8
/* 8050E858  7F C3 F3 78 */	mr r3, r30
/* 8050E85C  38 80 00 34 */	li r4, 0x34
/* 8050E860  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 8050E864  38 A0 00 00 */	li r5, 0
/* 8050E868  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050E86C  4B FF 63 69 */	bl anm_init__FP10e_rd_classifUcf
/* 8050E870  A8 7D 05 B4 */	lha r3, 0x5b4(r29)
/* 8050E874  38 03 00 01 */	addi r0, r3, 1
/* 8050E878  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8050E87C  38 00 00 04 */	li r0, 4
/* 8050E880  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8050E884  48 00 00 54 */	b lbl_8050E8D8
lbl_8050E888:
/* 8050E888  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 8050E88C  38 80 00 01 */	li r4, 1
/* 8050E890  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8050E894  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8050E898  40 82 00 18 */	bne lbl_8050E8B0
/* 8050E89C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8050E8A0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8050E8A4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8050E8A8  41 82 00 08 */	beq lbl_8050E8B0
/* 8050E8AC  38 80 00 00 */	li r4, 0
lbl_8050E8B0:
/* 8050E8B0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8050E8B4  41 82 00 24 */	beq lbl_8050E8D8
/* 8050E8B8  7F C3 F3 78 */	mr r3, r30
/* 8050E8BC  38 80 00 3B */	li r4, 0x3b
/* 8050E8C0  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 8050E8C4  38 A0 00 02 */	li r5, 2
/* 8050E8C8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050E8CC  4B FF 63 09 */	bl anm_init__FP10e_rd_classifUcf
/* 8050E8D0  38 00 00 05 */	li r0, 5
/* 8050E8D4  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_8050E8D8:
/* 8050E8D8  39 61 00 20 */	addi r11, r1, 0x20
/* 8050E8DC  4B E5 39 4C */	b _restgpr_29
/* 8050E8E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050E8E4  7C 08 03 A6 */	mtlr r0
/* 8050E8E8  38 21 00 20 */	addi r1, r1, 0x20
/* 8050E8EC  4E 80 00 20 */	blr 

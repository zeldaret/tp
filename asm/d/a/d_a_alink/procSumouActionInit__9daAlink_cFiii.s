lbl_800EB624:
/* 800EB624  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800EB628  7C 08 02 A6 */	mflr r0
/* 800EB62C  90 01 00 54 */	stw r0, 0x54(r1)
/* 800EB630  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 800EB634  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 800EB638  39 61 00 40 */	addi r11, r1, 0x40
/* 800EB63C  48 27 6B 99 */	bl _savegpr_27
/* 800EB640  7C 7B 1B 78 */	mr r27, r3
/* 800EB644  7C 9C 23 78 */	mr r28, r4
/* 800EB648  7C BD 2B 78 */	mr r29, r5
/* 800EB64C  38 80 00 D1 */	li r4, 0xd1
/* 800EB650  4B FD 69 1D */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800EB654  83 FB 28 58 */	lwz r31, 0x2858(r27)
/* 800EB658  80 7F 0E 74 */	lwz r3, 0xe74(r31)
/* 800EB65C  38 00 00 00 */	li r0, 0
/* 800EB660  B0 1B 30 12 */	sth r0, 0x3012(r27)
/* 800EB664  88 1B 05 6A */	lbz r0, 0x56a(r27)
/* 800EB668  28 00 00 21 */	cmplwi r0, 0x21
/* 800EB66C  40 82 00 14 */	bne lbl_800EB680
/* 800EB670  38 00 00 22 */	li r0, 0x22
/* 800EB674  98 1B 05 6A */	stb r0, 0x56a(r27)
/* 800EB678  3B C0 01 52 */	li r30, 0x152
/* 800EB67C  48 00 02 20 */	b lbl_800EB89C
lbl_800EB680:
/* 800EB680  28 00 00 1C */	cmplwi r0, 0x1c
/* 800EB684  40 82 00 50 */	bne lbl_800EB6D4
/* 800EB688  3B 80 00 00 */	li r28, 0
/* 800EB68C  3B A0 00 00 */	li r29, 0
/* 800EB690  38 00 00 1E */	li r0, 0x1e
/* 800EB694  98 1B 05 6A */	stb r0, 0x56a(r27)
/* 800EB698  7F 63 DB 78 */	mr r3, r27
/* 800EB69C  4B FC 82 69 */	bl checkZeroSpeedF__9daAlink_cCFv
/* 800EB6A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800EB6A4  40 82 00 28 */	bne lbl_800EB6CC
/* 800EB6A8  88 1B 2F 98 */	lbz r0, 0x2f98(r27)
/* 800EB6AC  28 00 00 02 */	cmplwi r0, 2
/* 800EB6B0  38 00 01 43 */	li r0, 0x143
/* 800EB6B4  40 82 00 08 */	bne lbl_800EB6BC
/* 800EB6B8  38 00 01 42 */	li r0, 0x142
lbl_800EB6BC:
/* 800EB6BC  7C 1E 03 78 */	mr r30, r0
/* 800EB6C0  38 00 00 01 */	li r0, 1
/* 800EB6C4  B0 1B 30 12 */	sth r0, 0x3012(r27)
/* 800EB6C8  48 00 01 D4 */	b lbl_800EB89C
lbl_800EB6CC:
/* 800EB6CC  3B C0 01 52 */	li r30, 0x152
/* 800EB6D0  48 00 01 CC */	b lbl_800EB89C
lbl_800EB6D4:
/* 800EB6D4  28 00 00 1B */	cmplwi r0, 0x1b
/* 800EB6D8  40 82 00 1C */	bne lbl_800EB6F4
/* 800EB6DC  3B 80 00 00 */	li r28, 0
/* 800EB6E0  3B A0 00 00 */	li r29, 0
/* 800EB6E4  38 00 00 1D */	li r0, 0x1d
/* 800EB6E8  98 1B 05 6A */	stb r0, 0x56a(r27)
/* 800EB6EC  3B C0 01 49 */	li r30, 0x149
/* 800EB6F0  48 00 01 AC */	b lbl_800EB89C
lbl_800EB6F4:
/* 800EB6F4  2C 03 00 02 */	cmpwi r3, 2
/* 800EB6F8  40 82 00 78 */	bne lbl_800EB770
/* 800EB6FC  2C 1C 00 00 */	cmpwi r28, 0
/* 800EB700  41 82 00 14 */	beq lbl_800EB714
/* 800EB704  38 00 00 10 */	li r0, 0x10
/* 800EB708  98 1B 05 6A */	stb r0, 0x56a(r27)
/* 800EB70C  3B C0 01 47 */	li r30, 0x147
/* 800EB710  48 00 01 8C */	b lbl_800EB89C
lbl_800EB714:
/* 800EB714  2C 1D 00 00 */	cmpwi r29, 0
/* 800EB718  41 82 00 14 */	beq lbl_800EB72C
/* 800EB71C  38 00 00 15 */	li r0, 0x15
/* 800EB720  98 1B 05 6A */	stb r0, 0x56a(r27)
/* 800EB724  3B C0 01 51 */	li r30, 0x151
/* 800EB728  48 00 01 74 */	b lbl_800EB89C
lbl_800EB72C:
/* 800EB72C  38 00 00 1E */	li r0, 0x1e
/* 800EB730  98 1B 05 6A */	stb r0, 0x56a(r27)
/* 800EB734  7F 63 DB 78 */	mr r3, r27
/* 800EB738  4B FC 81 CD */	bl checkZeroSpeedF__9daAlink_cCFv
/* 800EB73C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800EB740  40 82 00 28 */	bne lbl_800EB768
/* 800EB744  88 1B 2F 98 */	lbz r0, 0x2f98(r27)
/* 800EB748  28 00 00 02 */	cmplwi r0, 2
/* 800EB74C  38 00 01 43 */	li r0, 0x143
/* 800EB750  40 82 00 08 */	bne lbl_800EB758
/* 800EB754  38 00 01 42 */	li r0, 0x142
lbl_800EB758:
/* 800EB758  7C 1E 03 78 */	mr r30, r0
/* 800EB75C  38 00 00 01 */	li r0, 1
/* 800EB760  B0 1B 30 12 */	sth r0, 0x3012(r27)
/* 800EB764  48 00 01 38 */	b lbl_800EB89C
lbl_800EB768:
/* 800EB768  3B C0 01 52 */	li r30, 0x152
/* 800EB76C  48 00 01 30 */	b lbl_800EB89C
lbl_800EB770:
/* 800EB770  2C 03 00 03 */	cmpwi r3, 3
/* 800EB774  40 82 00 80 */	bne lbl_800EB7F4
/* 800EB778  2C 1C 00 00 */	cmpwi r28, 0
/* 800EB77C  41 82 00 14 */	beq lbl_800EB790
/* 800EB780  38 00 00 12 */	li r0, 0x12
/* 800EB784  98 1B 05 6A */	stb r0, 0x56a(r27)
/* 800EB788  3B C0 01 4E */	li r30, 0x14e
/* 800EB78C  48 00 01 10 */	b lbl_800EB89C
lbl_800EB790:
/* 800EB790  2C 1D 00 00 */	cmpwi r29, 0
/* 800EB794  41 82 00 14 */	beq lbl_800EB7A8
/* 800EB798  38 00 00 14 */	li r0, 0x14
/* 800EB79C  98 1B 05 6A */	stb r0, 0x56a(r27)
/* 800EB7A0  3B C0 01 50 */	li r30, 0x150
/* 800EB7A4  48 00 00 F8 */	b lbl_800EB89C
lbl_800EB7A8:
/* 800EB7A8  7F 63 DB 78 */	mr r3, r27
/* 800EB7AC  4B FC 81 59 */	bl checkZeroSpeedF__9daAlink_cCFv
/* 800EB7B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800EB7B4  40 82 00 30 */	bne lbl_800EB7E4
/* 800EB7B8  88 1B 2F 98 */	lbz r0, 0x2f98(r27)
/* 800EB7BC  28 00 00 03 */	cmplwi r0, 3
/* 800EB7C0  40 82 00 14 */	bne lbl_800EB7D4
/* 800EB7C4  38 00 00 1A */	li r0, 0x1a
/* 800EB7C8  98 1B 05 6A */	stb r0, 0x56a(r27)
/* 800EB7CC  3B C0 01 43 */	li r30, 0x143
/* 800EB7D0  48 00 00 CC */	b lbl_800EB89C
lbl_800EB7D4:
/* 800EB7D4  38 00 00 19 */	li r0, 0x19
/* 800EB7D8  98 1B 05 6A */	stb r0, 0x56a(r27)
/* 800EB7DC  3B C0 01 42 */	li r30, 0x142
/* 800EB7E0  48 00 00 BC */	b lbl_800EB89C
lbl_800EB7E4:
/* 800EB7E4  38 00 00 1D */	li r0, 0x1d
/* 800EB7E8  98 1B 05 6A */	stb r0, 0x56a(r27)
/* 800EB7EC  3B C0 01 49 */	li r30, 0x149
/* 800EB7F0  48 00 00 AC */	b lbl_800EB89C
lbl_800EB7F4:
/* 800EB7F4  2C 03 00 01 */	cmpwi r3, 1
/* 800EB7F8  40 82 00 2C */	bne lbl_800EB824
/* 800EB7FC  2C 1C 00 00 */	cmpwi r28, 0
/* 800EB800  41 82 00 14 */	beq lbl_800EB814
/* 800EB804  38 00 00 11 */	li r0, 0x11
/* 800EB808  98 1B 05 6A */	stb r0, 0x56a(r27)
/* 800EB80C  3B C0 01 48 */	li r30, 0x148
/* 800EB810  48 00 00 8C */	b lbl_800EB89C
lbl_800EB814:
/* 800EB814  38 00 00 13 */	li r0, 0x13
/* 800EB818  98 1B 05 6A */	stb r0, 0x56a(r27)
/* 800EB81C  3B C0 01 4F */	li r30, 0x14f
/* 800EB820  48 00 00 7C */	b lbl_800EB89C
lbl_800EB824:
/* 800EB824  88 1F 04 99 */	lbz r0, 0x499(r31)
/* 800EB828  54 00 06 7F */	clrlwi. r0, r0, 0x19
/* 800EB82C  41 82 00 38 */	beq lbl_800EB864
/* 800EB830  80 1B 05 70 */	lwz r0, 0x570(r27)
/* 800EB834  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800EB838  40 82 00 2C */	bne lbl_800EB864
/* 800EB83C  2C 1C 00 00 */	cmpwi r28, 0
/* 800EB840  41 82 00 14 */	beq lbl_800EB854
/* 800EB844  38 00 00 12 */	li r0, 0x12
/* 800EB848  98 1B 05 6A */	stb r0, 0x56a(r27)
/* 800EB84C  3B C0 01 4E */	li r30, 0x14e
/* 800EB850  48 00 00 4C */	b lbl_800EB89C
lbl_800EB854:
/* 800EB854  38 00 00 15 */	li r0, 0x15
/* 800EB858  98 1B 05 6A */	stb r0, 0x56a(r27)
/* 800EB85C  3B C0 01 51 */	li r30, 0x151
/* 800EB860  48 00 00 3C */	b lbl_800EB89C
lbl_800EB864:
/* 800EB864  2C 1C 00 00 */	cmpwi r28, 0
/* 800EB868  41 82 00 28 */	beq lbl_800EB890
/* 800EB86C  38 00 00 0F */	li r0, 0xf
/* 800EB870  98 1B 05 6A */	stb r0, 0x56a(r27)
/* 800EB874  88 1F 04 99 */	lbz r0, 0x499(r31)
/* 800EB878  54 00 06 7F */	clrlwi. r0, r0, 0x19
/* 800EB87C  40 82 00 0C */	bne lbl_800EB888
/* 800EB880  3B C0 01 45 */	li r30, 0x145
/* 800EB884  48 00 00 18 */	b lbl_800EB89C
lbl_800EB888:
/* 800EB888  3B C0 01 46 */	li r30, 0x146
/* 800EB88C  48 00 00 10 */	b lbl_800EB89C
lbl_800EB890:
/* 800EB890  38 00 00 13 */	li r0, 0x13
/* 800EB894  98 1B 05 6A */	stb r0, 0x56a(r27)
/* 800EB898  3B C0 01 4F */	li r30, 0x14f
lbl_800EB89C:
/* 800EB89C  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 800EB8A0  4B F2 14 C5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 800EB8A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800EB8A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800EB8AC  A8 9B 04 E6 */	lha r4, 0x4e6(r27)
/* 800EB8B0  4B F2 0B 85 */	bl mDoMtx_YrotM__FPA4_fs
/* 800EB8B4  38 00 00 82 */	li r0, 0x82
/* 800EB8B8  B0 1B 30 0E */	sth r0, 0x300e(r27)
/* 800EB8BC  88 1B 05 6A */	lbz r0, 0x56a(r27)
/* 800EB8C0  28 00 00 19 */	cmplwi r0, 0x19
/* 800EB8C4  40 82 00 2C */	bne lbl_800EB8F0
/* 800EB8C8  38 00 00 01 */	li r0, 1
/* 800EB8CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800EB8D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800EB8D4  98 03 5E 81 */	stb r0, 0x5e81(r3)
/* 800EB8D8  A8 7B 04 E6 */	lha r3, 0x4e6(r27)
/* 800EB8DC  38 03 D8 00 */	addi r0, r3, -10240
/* 800EB8E0  B0 1B 30 10 */	sth r0, 0x3010(r27)
/* 800EB8E4  38 00 00 02 */	li r0, 2
/* 800EB8E8  98 1B 2F 98 */	stb r0, 0x2f98(r27)
/* 800EB8EC  48 00 00 C4 */	b lbl_800EB9B0
lbl_800EB8F0:
/* 800EB8F0  28 00 00 1A */	cmplwi r0, 0x1a
/* 800EB8F4  40 82 00 2C */	bne lbl_800EB920
/* 800EB8F8  38 00 00 03 */	li r0, 3
/* 800EB8FC  98 1B 2F 98 */	stb r0, 0x2f98(r27)
/* 800EB900  38 00 00 04 */	li r0, 4
/* 800EB904  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800EB908  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800EB90C  98 03 5E 81 */	stb r0, 0x5e81(r3)
/* 800EB910  A8 7B 04 E6 */	lha r3, 0x4e6(r27)
/* 800EB914  38 03 28 00 */	addi r0, r3, 0x2800
/* 800EB918  B0 1B 30 10 */	sth r0, 0x3010(r27)
/* 800EB91C  48 00 00 94 */	b lbl_800EB9B0
lbl_800EB920:
/* 800EB920  2C 1C 00 00 */	cmpwi r28, 0
/* 800EB924  41 82 00 24 */	beq lbl_800EB948
/* 800EB928  7F 63 DB 78 */	mr r3, r27
/* 800EB92C  38 80 00 15 */	li r4, 0x15
/* 800EB930  4B FC 79 39 */	bl setDoStatusEmphasys__9daAlink_cFUc
/* 800EB934  38 00 00 15 */	li r0, 0x15
/* 800EB938  B0 1B 30 0E */	sth r0, 0x300e(r27)
/* 800EB93C  38 00 00 04 */	li r0, 4
/* 800EB940  98 1B 2F 98 */	stb r0, 0x2f98(r27)
/* 800EB944  48 00 00 6C */	b lbl_800EB9B0
lbl_800EB948:
/* 800EB948  2C 1D 00 00 */	cmpwi r29, 0
/* 800EB94C  41 82 00 20 */	beq lbl_800EB96C
/* 800EB950  7F 63 DB 78 */	mr r3, r27
/* 800EB954  4B FF EF D9 */	bl setSumouPunchStatus__9daAlink_cFv
/* 800EB958  38 00 00 44 */	li r0, 0x44
/* 800EB95C  B0 1B 30 0E */	sth r0, 0x300e(r27)
/* 800EB960  38 00 00 04 */	li r0, 4
/* 800EB964  98 1B 2F 98 */	stb r0, 0x2f98(r27)
/* 800EB968  48 00 00 48 */	b lbl_800EB9B0
lbl_800EB96C:
/* 800EB96C  7F 63 DB 78 */	mr r3, r27
/* 800EB970  4B FC 7F 95 */	bl checkZeroSpeedF__9daAlink_cCFv
/* 800EB974  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800EB978  40 82 00 30 */	bne lbl_800EB9A8
/* 800EB97C  88 1B 2F 98 */	lbz r0, 0x2f98(r27)
/* 800EB980  28 00 00 02 */	cmplwi r0, 2
/* 800EB984  40 82 00 14 */	bne lbl_800EB998
/* 800EB988  A8 7B 04 E6 */	lha r3, 0x4e6(r27)
/* 800EB98C  38 03 D8 00 */	addi r0, r3, -10240
/* 800EB990  B0 1B 30 10 */	sth r0, 0x3010(r27)
/* 800EB994  48 00 00 1C */	b lbl_800EB9B0
lbl_800EB998:
/* 800EB998  A8 7B 04 E6 */	lha r3, 0x4e6(r27)
/* 800EB99C  38 03 28 00 */	addi r0, r3, 0x2800
/* 800EB9A0  B0 1B 30 10 */	sth r0, 0x3010(r27)
/* 800EB9A4  48 00 00 0C */	b lbl_800EB9B0
lbl_800EB9A8:
/* 800EB9A8  38 00 00 04 */	li r0, 4
/* 800EB9AC  98 1B 2F 98 */	stb r0, 0x2f98(r27)
lbl_800EB9B0:
/* 800EB9B0  2C 1E 01 43 */	cmpwi r30, 0x143
/* 800EB9B4  41 82 00 0C */	beq lbl_800EB9C0
/* 800EB9B8  2C 1E 01 42 */	cmpwi r30, 0x142
/* 800EB9BC  40 82 00 30 */	bne lbl_800EB9EC
lbl_800EB9C0:
/* 800EB9C0  A3 9B 1F 58 */	lhz r28, 0x1f58(r27)
/* 800EB9C4  7F 63 DB 78 */	mr r3, r27
/* 800EB9C8  7F C4 F3 78 */	mr r4, r30
/* 800EB9CC  4B FC 0A 85 */	bl getMainBckData__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800EB9D0  A0 03 00 00 */	lhz r0, 0(r3)
/* 800EB9D4  54 03 05 3E */	clrlwi r3, r0, 0x14
/* 800EB9D8  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 800EB9DC  7C 00 18 00 */	cmpw r0, r3
/* 800EB9E0  41 82 00 0C */	beq lbl_800EB9EC
/* 800EB9E4  C3 FB 1F E0 */	lfs f31, 0x1fe0(r27)
/* 800EB9E8  48 00 00 08 */	b lbl_800EB9F0
lbl_800EB9EC:
/* 800EB9EC  C3 E2 92 C0 */	lfs f31, lit_6108(r2)
lbl_800EB9F0:
/* 800EB9F0  38 00 00 00 */	li r0, 0
/* 800EB9F4  B0 1B 30 0C */	sth r0, 0x300c(r27)
/* 800EB9F8  93 DB 31 98 */	stw r30, 0x3198(r27)
/* 800EB9FC  7F 63 DB 78 */	mr r3, r27
/* 800EBA00  7F C4 F3 78 */	mr r4, r30
/* 800EBA04  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800EBA08  C0 42 92 C0 */	lfs f2, lit_6108(r2)
/* 800EBA0C  2C 1E 01 42 */	cmpwi r30, 0x142
/* 800EBA10  38 00 FF FF */	li r0, -1
/* 800EBA14  40 82 00 08 */	bne lbl_800EBA1C
/* 800EBA18  38 00 00 18 */	li r0, 0x18
lbl_800EBA1C:
/* 800EBA1C  7C 05 07 34 */	extsh r5, r0
/* 800EBA20  C0 62 92 C4 */	lfs f3, lit_6109(r2)
/* 800EBA24  4B FC 15 E9 */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 800EBA28  D3 FB 1F E0 */	stfs f31, 0x1fe0(r27)
/* 800EBA2C  80 7B 1F 2C */	lwz r3, 0x1f2c(r27)
/* 800EBA30  D3 E3 00 08 */	stfs f31, 8(r3)
/* 800EBA34  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 800EBA38  80 9B 28 58 */	lwz r4, 0x2858(r27)
/* 800EBA3C  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 800EBA40  48 18 51 C5 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 800EBA44  7C 64 1B 78 */	mr r4, r3
/* 800EBA48  38 7B 04 E6 */	addi r3, r27, 0x4e6
/* 800EBA4C  38 A0 00 02 */	li r5, 2
/* 800EBA50  38 C0 20 00 */	li r6, 0x2000
/* 800EBA54  38 E0 08 00 */	li r7, 0x800
/* 800EBA58  48 18 4A E9 */	bl cLib_addCalcAngleS__FPsssss
/* 800EBA5C  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 800EBA60  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 800EBA64  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800EBA68  D0 3B 33 98 */	stfs f1, 0x3398(r27)
/* 800EBA6C  C0 5B 04 D8 */	lfs f2, 0x4d8(r27)
/* 800EBA70  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 800EBA74  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800EBA78  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 800EBA7C  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 800EBA80  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 800EBA84  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 800EBA88  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800EBA8C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 800EBA90  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 800EBA94  38 61 00 0C */	addi r3, r1, 0xc
/* 800EBA98  38 81 00 18 */	addi r4, r1, 0x18
/* 800EBA9C  48 25 B9 01 */	bl PSVECSquareDistance
/* 800EBAA0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800EBAA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800EBAA8  40 81 00 58 */	ble lbl_800EBB00
/* 800EBAAC  FC 00 08 34 */	frsqrte f0, f1
/* 800EBAB0  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800EBAB4  FC 44 00 32 */	fmul f2, f4, f0
/* 800EBAB8  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800EBABC  FC 00 00 32 */	fmul f0, f0, f0
/* 800EBAC0  FC 01 00 32 */	fmul f0, f1, f0
/* 800EBAC4  FC 03 00 28 */	fsub f0, f3, f0
/* 800EBAC8  FC 02 00 32 */	fmul f0, f2, f0
/* 800EBACC  FC 44 00 32 */	fmul f2, f4, f0
/* 800EBAD0  FC 00 00 32 */	fmul f0, f0, f0
/* 800EBAD4  FC 01 00 32 */	fmul f0, f1, f0
/* 800EBAD8  FC 03 00 28 */	fsub f0, f3, f0
/* 800EBADC  FC 02 00 32 */	fmul f0, f2, f0
/* 800EBAE0  FC 44 00 32 */	fmul f2, f4, f0
/* 800EBAE4  FC 00 00 32 */	fmul f0, f0, f0
/* 800EBAE8  FC 01 00 32 */	fmul f0, f1, f0
/* 800EBAEC  FC 03 00 28 */	fsub f0, f3, f0
/* 800EBAF0  FC 02 00 32 */	fmul f0, f2, f0
/* 800EBAF4  FC 21 00 32 */	fmul f1, f1, f0
/* 800EBAF8  FC 20 08 18 */	frsp f1, f1
/* 800EBAFC  48 00 00 88 */	b lbl_800EBB84
lbl_800EBB00:
/* 800EBB00  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800EBB04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800EBB08  40 80 00 10 */	bge lbl_800EBB18
/* 800EBB0C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800EBB10  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800EBB14  48 00 00 70 */	b lbl_800EBB84
lbl_800EBB18:
/* 800EBB18  D0 21 00 08 */	stfs f1, 8(r1)
/* 800EBB1C  80 81 00 08 */	lwz r4, 8(r1)
/* 800EBB20  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800EBB24  3C 00 7F 80 */	lis r0, 0x7f80
/* 800EBB28  7C 03 00 00 */	cmpw r3, r0
/* 800EBB2C  41 82 00 14 */	beq lbl_800EBB40
/* 800EBB30  40 80 00 40 */	bge lbl_800EBB70
/* 800EBB34  2C 03 00 00 */	cmpwi r3, 0
/* 800EBB38  41 82 00 20 */	beq lbl_800EBB58
/* 800EBB3C  48 00 00 34 */	b lbl_800EBB70
lbl_800EBB40:
/* 800EBB40  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800EBB44  41 82 00 0C */	beq lbl_800EBB50
/* 800EBB48  38 00 00 01 */	li r0, 1
/* 800EBB4C  48 00 00 28 */	b lbl_800EBB74
lbl_800EBB50:
/* 800EBB50  38 00 00 02 */	li r0, 2
/* 800EBB54  48 00 00 20 */	b lbl_800EBB74
lbl_800EBB58:
/* 800EBB58  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800EBB5C  41 82 00 0C */	beq lbl_800EBB68
/* 800EBB60  38 00 00 05 */	li r0, 5
/* 800EBB64  48 00 00 10 */	b lbl_800EBB74
lbl_800EBB68:
/* 800EBB68  38 00 00 03 */	li r0, 3
/* 800EBB6C  48 00 00 08 */	b lbl_800EBB74
lbl_800EBB70:
/* 800EBB70  38 00 00 04 */	li r0, 4
lbl_800EBB74:
/* 800EBB74  2C 00 00 01 */	cmpwi r0, 1
/* 800EBB78  40 82 00 0C */	bne lbl_800EBB84
/* 800EBB7C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800EBB80  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_800EBB84:
/* 800EBB84  D0 3B 34 78 */	stfs f1, 0x3478(r27)
/* 800EBB88  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 800EBB8C  D0 1B 37 C8 */	stfs f0, 0x37c8(r27)
/* 800EBB90  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800EBB94  D0 1B 37 CC */	stfs f0, 0x37cc(r27)
/* 800EBB98  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 800EBB9C  D0 1B 37 D0 */	stfs f0, 0x37d0(r27)
/* 800EBBA0  38 00 00 0C */	li r0, 0xc
/* 800EBBA4  98 1B 2F 99 */	stb r0, 0x2f99(r27)
/* 800EBBA8  C0 02 93 B8 */	lfs f0, lit_10041(r2)
/* 800EBBAC  D0 1B 34 7C */	stfs f0, 0x347c(r27)
/* 800EBBB0  D0 1B 34 80 */	stfs f0, 0x3480(r27)
/* 800EBBB4  2C 1E 01 52 */	cmpwi r30, 0x152
/* 800EBBB8  41 82 00 0C */	beq lbl_800EBBC4
/* 800EBBBC  2C 1E 01 51 */	cmpwi r30, 0x151
/* 800EBBC0  40 82 00 1C */	bne lbl_800EBBDC
lbl_800EBBC4:
/* 800EBBC4  C0 02 93 1C */	lfs f0, lit_7448(r2)
/* 800EBBC8  D0 1B 34 7C */	stfs f0, 0x347c(r27)
/* 800EBBCC  3C 60 00 01 */	lis r3, 0x0001 /* 0x00010049@ha */
/* 800EBBD0  38 03 00 49 */	addi r0, r3, 0x0049 /* 0x00010049@l */
/* 800EBBD4  90 1B 32 CC */	stw r0, 0x32cc(r27)
/* 800EBBD8  48 00 00 BC */	b lbl_800EBC94
lbl_800EBBDC:
/* 800EBBDC  2C 1E 01 50 */	cmpwi r30, 0x150
/* 800EBBE0  40 82 00 24 */	bne lbl_800EBC04
/* 800EBBE4  C0 02 94 B4 */	lfs f0, lit_17382(r2)
/* 800EBBE8  D0 1B 34 7C */	stfs f0, 0x347c(r27)
/* 800EBBEC  3C 60 00 01 */	lis r3, 0x0001 /* 0x00010048@ha */
/* 800EBBF0  38 03 00 48 */	addi r0, r3, 0x0048 /* 0x00010048@l */
/* 800EBBF4  90 1B 32 CC */	stw r0, 0x32cc(r27)
/* 800EBBF8  C0 02 93 BC */	lfs f0, lit_10042(r2)
/* 800EBBFC  D0 1B 34 80 */	stfs f0, 0x3480(r27)
/* 800EBC00  48 00 00 94 */	b lbl_800EBC94
lbl_800EBC04:
/* 800EBC04  2C 1E 01 4F */	cmpwi r30, 0x14f
/* 800EBC08  40 82 00 1C */	bne lbl_800EBC24
/* 800EBC0C  C0 02 94 B4 */	lfs f0, lit_17382(r2)
/* 800EBC10  D0 1B 34 7C */	stfs f0, 0x347c(r27)
/* 800EBC14  3C 60 00 01 */	lis r3, 0x0001 /* 0x00010048@ha */
/* 800EBC18  38 03 00 48 */	addi r0, r3, 0x0048 /* 0x00010048@l */
/* 800EBC1C  90 1B 32 CC */	stw r0, 0x32cc(r27)
/* 800EBC20  48 00 00 74 */	b lbl_800EBC94
lbl_800EBC24:
/* 800EBC24  38 1E FE BB */	addi r0, r30, -325
/* 800EBC28  28 00 00 01 */	cmplwi r0, 1
/* 800EBC2C  40 81 00 0C */	ble lbl_800EBC38
/* 800EBC30  2C 1E 01 48 */	cmpwi r30, 0x148
/* 800EBC34  40 82 00 1C */	bne lbl_800EBC50
lbl_800EBC38:
/* 800EBC38  C0 02 93 14 */	lfs f0, lit_7307(r2)
/* 800EBC3C  D0 1B 34 7C */	stfs f0, 0x347c(r27)
/* 800EBC40  3C 60 00 01 */	lis r3, 0x0001 /* 0x0001004A@ha */
/* 800EBC44  38 03 00 4A */	addi r0, r3, 0x004A /* 0x0001004A@l */
/* 800EBC48  90 1B 32 CC */	stw r0, 0x32cc(r27)
/* 800EBC4C  48 00 00 48 */	b lbl_800EBC94
lbl_800EBC50:
/* 800EBC50  2C 1E 01 47 */	cmpwi r30, 0x147
/* 800EBC54  40 82 00 1C */	bne lbl_800EBC70
/* 800EBC58  C0 02 94 28 */	lfs f0, lit_14621(r2)
/* 800EBC5C  D0 1B 34 7C */	stfs f0, 0x347c(r27)
/* 800EBC60  3C 60 00 01 */	lis r3, 0x0001 /* 0x0001004A@ha */
/* 800EBC64  38 03 00 4A */	addi r0, r3, 0x004A /* 0x0001004A@l */
/* 800EBC68  90 1B 32 CC */	stw r0, 0x32cc(r27)
/* 800EBC6C  48 00 00 28 */	b lbl_800EBC94
lbl_800EBC70:
/* 800EBC70  2C 1E 01 49 */	cmpwi r30, 0x149
/* 800EBC74  41 82 00 0C */	beq lbl_800EBC80
/* 800EBC78  2C 1E 01 4E */	cmpwi r30, 0x14e
/* 800EBC7C  40 82 00 18 */	bne lbl_800EBC94
lbl_800EBC80:
/* 800EBC80  C0 02 93 74 */	lfs f0, lit_8502(r2)
/* 800EBC84  D0 1B 34 7C */	stfs f0, 0x347c(r27)
/* 800EBC88  3C 60 00 01 */	lis r3, 0x0001 /* 0x0001004B@ha */
/* 800EBC8C  38 03 00 4B */	addi r0, r3, 0x004B /* 0x0001004B@l */
/* 800EBC90  90 1B 32 CC */	stw r0, 0x32cc(r27)
lbl_800EBC94:
/* 800EBC94  7F 63 DB 78 */	mr r3, r27
/* 800EBC98  38 80 00 05 */	li r4, 5
/* 800EBC9C  48 03 55 25 */	bl setFootEffectProcType__9daAlink_cFi
/* 800EBCA0  80 1B 31 98 */	lwz r0, 0x3198(r27)
/* 800EBCA4  2C 00 01 42 */	cmpwi r0, 0x142
/* 800EBCA8  41 82 00 0C */	beq lbl_800EBCB4
/* 800EBCAC  2C 00 01 43 */	cmpwi r0, 0x143
/* 800EBCB0  40 82 00 0C */	bne lbl_800EBCBC
lbl_800EBCB4:
/* 800EBCB4  38 00 00 60 */	li r0, 0x60
/* 800EBCB8  98 1B 2F 9D */	stb r0, 0x2f9d(r27)
lbl_800EBCBC:
/* 800EBCBC  38 60 00 01 */	li r3, 1
/* 800EBCC0  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 800EBCC4  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 800EBCC8  39 61 00 40 */	addi r11, r1, 0x40
/* 800EBCCC  48 27 65 55 */	bl _restgpr_27
/* 800EBCD0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800EBCD4  7C 08 03 A6 */	mtlr r0
/* 800EBCD8  38 21 00 50 */	addi r1, r1, 0x50
/* 800EBCDC  4E 80 00 20 */	blr 

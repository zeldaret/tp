lbl_800A2710:
/* 800A2710  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 800A2714  7C 08 02 A6 */	mflr r0
/* 800A2718  90 01 00 64 */	stw r0, 0x64(r1)
/* 800A271C  39 61 00 60 */	addi r11, r1, 0x60
/* 800A2720  48 2B FA 89 */	bl _savegpr_16
/* 800A2724  7C 79 1B 78 */	mr r25, r3
/* 800A2728  3A 79 2A 4C */	addi r19, r25, 0x2a4c
/* 800A272C  3A 80 00 00 */	li r20, 0
/* 800A2730  3A 00 00 00 */	li r16, 0
/* 800A2734  3A 42 98 28 */	la r18, armJointTable(r2) /* 80453228-_SDA2_BASE_ */
lbl_800A2738:
/* 800A2738  3A A0 00 00 */	li r21, 0
/* 800A273C  3A 20 00 00 */	li r17, 0
lbl_800A2740:
/* 800A2740  80 79 06 50 */	lwz r3, 0x650(r25)
/* 800A2744  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A2748  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A274C  7C 12 82 2E */	lhzx r0, r18, r16
/* 800A2750  7C 15 02 14 */	add r0, r21, r0
/* 800A2754  1C 00 00 30 */	mulli r0, r0, 0x30
/* 800A2758  7C 63 02 14 */	add r3, r3, r0
/* 800A275C  38 91 00 14 */	addi r4, r17, 0x14
/* 800A2760  7C 93 22 14 */	add r4, r19, r4
/* 800A2764  48 2A 3D 4D */	bl PSMTXCopy
/* 800A2768  3A B5 00 01 */	addi r21, r21, 1
/* 800A276C  2C 15 00 03 */	cmpwi r21, 3
/* 800A2770  3A 31 00 30 */	addi r17, r17, 0x30
/* 800A2774  41 80 FF CC */	blt lbl_800A2740
/* 800A2778  3A 94 00 01 */	addi r20, r20, 1
/* 800A277C  2C 14 00 02 */	cmpwi r20, 2
/* 800A2780  3A 10 00 02 */	addi r16, r16, 2
/* 800A2784  3A 73 00 A4 */	addi r19, r19, 0xa4
/* 800A2788  41 80 FF B0 */	blt lbl_800A2738
/* 800A278C  80 79 20 60 */	lwz r3, 0x2060(r25)
/* 800A2790  88 03 00 00 */	lbz r0, 0(r3)
/* 800A2794  28 00 00 00 */	cmplwi r0, 0
/* 800A2798  40 82 00 0C */	bne lbl_800A27A4
/* 800A279C  38 60 00 00 */	li r3, 0
/* 800A27A0  48 00 02 24 */	b lbl_800A29C4
lbl_800A27A4:
/* 800A27A4  3B F9 2A 4C */	addi r31, r25, 0x2a4c
/* 800A27A8  3B B9 31 2A */	addi r29, r25, 0x312a
/* 800A27AC  3B 99 31 36 */	addi r28, r25, 0x3136
/* 800A27B0  3B C0 00 00 */	li r30, 0
/* 800A27B4  3B 00 00 00 */	li r24, 0
/* 800A27B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 800A27BC  3A A3 D4 70 */	addi r21, r3, now__14mDoMtx_stack_c@l
/* 800A27C0  3C 60 80 39 */	lis r3, arm1Vec@ha
/* 800A27C4  3A C3 1E C0 */	addi r22, r3, arm1Vec@l
/* 800A27C8  7E B7 AB 78 */	mr r23, r21
/* 800A27CC  7E B4 AB 78 */	mr r20, r21
/* 800A27D0  3C 60 80 39 */	lis r3, arm2Vec@ha
/* 800A27D4  3A 43 1E CC */	addi r18, r3, arm2Vec@l
/* 800A27D8  7E B0 AB 78 */	mr r16, r21
lbl_800A27DC:
/* 800A27DC  38 62 98 28 */	la r3, armJointTable(r2) /* 80453228-_SDA2_BASE_ */
/* 800A27E0  7E 63 C2 2E */	lhzx r19, r3, r24
/* 800A27E4  3B 40 00 00 */	li r26, 0
/* 800A27E8  A0 79 2F E8 */	lhz r3, 0x2fe8(r25)
/* 800A27EC  28 03 00 C8 */	cmplwi r3, 0xc8
/* 800A27F0  41 82 00 0C */	beq lbl_800A27FC
/* 800A27F4  28 03 00 CB */	cmplwi r3, 0xcb
/* 800A27F8  40 82 00 30 */	bne lbl_800A2828
lbl_800A27FC:
/* 800A27FC  A8 19 30 20 */	lha r0, 0x3020(r25)
/* 800A2800  7C 00 F0 00 */	cmpw r0, r30
/* 800A2804  40 82 00 24 */	bne lbl_800A2828
/* 800A2808  AB 79 30 0E */	lha r27, 0x300e(r25)
/* 800A280C  28 03 00 CB */	cmplwi r3, 0xcb
/* 800A2810  40 82 00 1C */	bne lbl_800A282C
/* 800A2814  A8 79 04 E6 */	lha r3, 0x4e6(r25)
/* 800A2818  A8 19 30 10 */	lha r0, 0x3010(r25)
/* 800A281C  7C 03 00 50 */	subf r0, r3, r0
/* 800A2820  7C 1A 07 34 */	extsh r26, r0
/* 800A2824  48 00 00 08 */	b lbl_800A282C
lbl_800A2828:
/* 800A2828  3B 60 00 00 */	li r27, 0
lbl_800A282C:
/* 800A282C  80 79 06 50 */	lwz r3, 0x650(r25)
/* 800A2830  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A2834  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A2838  56 60 04 3E */	clrlwi r0, r19, 0x10
/* 800A283C  1E 20 00 30 */	mulli r17, r0, 0x30
/* 800A2840  7C 83 8A 14 */	add r4, r3, r17
/* 800A2844  7F 23 CB 78 */	mr r3, r25
/* 800A2848  7F 65 DB 78 */	mr r5, r27
/* 800A284C  7F 46 D3 78 */	mr r6, r26
/* 800A2850  A8 FF 00 06 */	lha r7, 6(r31)
/* 800A2854  39 00 00 00 */	li r8, 0
/* 800A2858  39 20 00 00 */	li r9, 0
/* 800A285C  4B FF B4 11 */	bl setMatrixWorldAxisRot__9daAlink_cFPA4_fsssiPC4cXyz
/* 800A2860  7F A3 EB 78 */	mr r3, r29
/* 800A2864  4B F6 A6 E1 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 800A2868  80 79 06 50 */	lwz r3, 0x650(r25)
/* 800A286C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A2870  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800A2874  7C 80 8A 14 */	add r4, r0, r17
/* 800A2878  7E A3 AB 78 */	mr r3, r21
/* 800A287C  48 2A 3C 35 */	bl PSMTXCopy
/* 800A2880  7E A3 AB 78 */	mr r3, r21
/* 800A2884  7E C4 B3 78 */	mr r4, r22
/* 800A2888  38 A1 00 14 */	addi r5, r1, 0x14
/* 800A288C  48 2A 44 E1 */	bl PSMTXMultVec
/* 800A2890  80 79 06 50 */	lwz r3, 0x650(r25)
/* 800A2894  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A2898  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A289C  56 73 04 3E */	clrlwi r19, r19, 0x10
/* 800A28A0  38 13 00 01 */	addi r0, r19, 1
/* 800A28A4  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800A28A8  1E 20 00 30 */	mulli r17, r0, 0x30
/* 800A28AC  7C 83 8A 14 */	add r4, r3, r17
/* 800A28B0  7F 23 CB 78 */	mr r3, r25
/* 800A28B4  7F 65 DB 78 */	mr r5, r27
/* 800A28B8  7F 46 D3 78 */	mr r6, r26
/* 800A28BC  A8 FF 00 04 */	lha r7, 4(r31)
/* 800A28C0  39 00 00 00 */	li r8, 0
/* 800A28C4  39 21 00 14 */	addi r9, r1, 0x14
/* 800A28C8  4B FF B3 A5 */	bl setMatrixWorldAxisRot__9daAlink_cFPA4_fsssiPC4cXyz
/* 800A28CC  7F 83 E3 78 */	mr r3, r28
/* 800A28D0  4B F6 A6 75 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 800A28D4  80 79 06 50 */	lwz r3, 0x650(r25)
/* 800A28D8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A28DC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800A28E0  7C 80 8A 14 */	add r4, r0, r17
/* 800A28E4  7E E3 BB 78 */	mr r3, r23
/* 800A28E8  48 2A 3B C9 */	bl PSMTXCopy
/* 800A28EC  7E 83 A3 78 */	mr r3, r20
/* 800A28F0  7E 44 93 78 */	mr r4, r18
/* 800A28F4  38 A1 00 14 */	addi r5, r1, 0x14
/* 800A28F8  48 2A 44 75 */	bl PSMTXMultVec
/* 800A28FC  80 79 06 50 */	lwz r3, 0x650(r25)
/* 800A2900  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A2904  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A2908  38 13 00 02 */	addi r0, r19, 2
/* 800A290C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800A2910  1C 00 00 30 */	mulli r0, r0, 0x30
/* 800A2914  7C 83 02 14 */	add r4, r3, r0
/* 800A2918  7F 23 CB 78 */	mr r3, r25
/* 800A291C  7F 65 DB 78 */	mr r5, r27
/* 800A2920  7F 46 D3 78 */	mr r6, r26
/* 800A2924  A8 FF 00 02 */	lha r7, 2(r31)
/* 800A2928  39 00 00 00 */	li r8, 0
/* 800A292C  39 21 00 14 */	addi r9, r1, 0x14
/* 800A2930  4B FF B3 3D */	bl setMatrixWorldAxisRot__9daAlink_cFPA4_fsssiPC4cXyz
/* 800A2934  80 79 20 60 */	lwz r3, 0x2060(r25)
/* 800A2938  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 800A293C  38 13 00 03 */	addi r0, r19, 3
/* 800A2940  54 11 04 3E */	clrlwi r17, r0, 0x10
/* 800A2944  54 00 2A F4 */	rlwinm r0, r0, 5, 0xb, 0x1a
/* 800A2948  7C 63 02 14 */	add r3, r3, r0
/* 800A294C  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 800A2950  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 800A2954  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 800A2958  D0 01 00 08 */	stfs f0, 8(r1)
/* 800A295C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 800A2960  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 800A2964  7E 03 83 78 */	mr r3, r16
/* 800A2968  38 81 00 08 */	addi r4, r1, 8
/* 800A296C  38 A1 00 14 */	addi r5, r1, 0x14
/* 800A2970  48 2A 43 FD */	bl PSMTXMultVec
/* 800A2974  80 79 06 50 */	lwz r3, 0x650(r25)
/* 800A2978  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A297C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A2980  1C 11 00 30 */	mulli r0, r17, 0x30
/* 800A2984  7C 83 02 14 */	add r4, r3, r0
/* 800A2988  7F 23 CB 78 */	mr r3, r25
/* 800A298C  7F 65 DB 78 */	mr r5, r27
/* 800A2990  7F 46 D3 78 */	mr r6, r26
/* 800A2994  A8 FF 00 02 */	lha r7, 2(r31)
/* 800A2998  39 00 00 00 */	li r8, 0
/* 800A299C  39 21 00 14 */	addi r9, r1, 0x14
/* 800A29A0  4B FF B2 CD */	bl setMatrixWorldAxisRot__9daAlink_cFPA4_fsssiPC4cXyz
/* 800A29A4  3B DE 00 01 */	addi r30, r30, 1
/* 800A29A8  2C 1E 00 02 */	cmpwi r30, 2
/* 800A29AC  3B 18 00 02 */	addi r24, r24, 2
/* 800A29B0  3B FF 00 A4 */	addi r31, r31, 0xa4
/* 800A29B4  3B BD 00 06 */	addi r29, r29, 6
/* 800A29B8  3B 9C 00 06 */	addi r28, r28, 6
/* 800A29BC  41 80 FE 20 */	blt lbl_800A27DC
/* 800A29C0  38 60 00 01 */	li r3, 1
lbl_800A29C4:
/* 800A29C4  39 61 00 60 */	addi r11, r1, 0x60
/* 800A29C8  48 2B F8 2D */	bl _restgpr_16
/* 800A29CC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 800A29D0  7C 08 03 A6 */	mtlr r0
/* 800A29D4  38 21 00 60 */	addi r1, r1, 0x60
/* 800A29D8  4E 80 00 20 */	blr 

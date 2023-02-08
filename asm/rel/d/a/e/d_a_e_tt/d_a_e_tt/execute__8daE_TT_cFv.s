lbl_807C1024:
/* 807C1024  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807C1028  7C 08 02 A6 */	mflr r0
/* 807C102C  90 01 00 34 */	stw r0, 0x34(r1)
/* 807C1030  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 807C1034  93 C1 00 28 */	stw r30, 0x28(r1)
/* 807C1038  7C 7F 1B 78 */	mr r31, r3
/* 807C103C  3C 60 80 7C */	lis r3, lit_3908@ha /* 0x807C1FB8@ha */
/* 807C1040  3B C3 1F B8 */	addi r30, r3, lit_3908@l /* 0x807C1FB8@l */
/* 807C1044  88 7F 06 EA */	lbz r3, 0x6ea(r31)
/* 807C1048  28 03 00 00 */	cmplwi r3, 0
/* 807C104C  41 82 00 0C */	beq lbl_807C1058
/* 807C1050  38 03 FF FF */	addi r0, r3, -1
/* 807C1054  98 1F 06 EA */	stb r0, 0x6ea(r31)
lbl_807C1058:
/* 807C1058  80 7F 06 EC */	lwz r3, 0x6ec(r31)
/* 807C105C  2C 03 00 00 */	cmpwi r3, 0
/* 807C1060  41 82 00 0C */	beq lbl_807C106C
/* 807C1064  38 03 FF FF */	addi r0, r3, -1
/* 807C1068  90 1F 06 EC */	stw r0, 0x6ec(r31)
lbl_807C106C:
/* 807C106C  A0 7F 06 E8 */	lhz r3, 0x6e8(r31)
/* 807C1070  28 03 00 00 */	cmplwi r3, 0
/* 807C1074  41 82 00 0C */	beq lbl_807C1080
/* 807C1078  38 03 FF FF */	addi r0, r3, -1
/* 807C107C  B0 1F 06 E8 */	sth r0, 0x6e8(r31)
lbl_807C1080:
/* 807C1080  88 7F 06 F4 */	lbz r3, 0x6f4(r31)
/* 807C1084  28 03 00 00 */	cmplwi r3, 0
/* 807C1088  41 82 00 0C */	beq lbl_807C1094
/* 807C108C  38 03 FF FF */	addi r0, r3, -1
/* 807C1090  98 1F 06 F4 */	stb r0, 0x6f4(r31)
lbl_807C1094:
/* 807C1094  7F E3 FB 78 */	mr r3, r31
/* 807C1098  4B FF FB 91 */	bl action__8daE_TT_cFv
/* 807C109C  7F E3 FB 78 */	mr r3, r31
/* 807C10A0  38 80 00 00 */	li r4, 0
/* 807C10A4  4B FF FD 6D */	bl mtx_set__8daE_TT_cFi
/* 807C10A8  7F E3 FB 78 */	mr r3, r31
/* 807C10AC  4B FF FE 3D */	bl cc_set__8daE_TT_cFv
/* 807C10B0  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 807C10B4  80 63 00 04 */	lwz r3, 4(r3)
/* 807C10B8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807C10BC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807C10C0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807C10C4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807C10C8  4B B8 53 E9 */	bl PSMTXCopy
/* 807C10CC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807C10D0  C0 5E 00 78 */	lfs f2, 0x78(r30)
/* 807C10D4  FC 60 08 90 */	fmr f3, f1
/* 807C10D8  4B 84 BC C5 */	bl transM__14mDoMtx_stack_cFfff
/* 807C10DC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807C10E0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807C10E4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 807C10E8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807C10EC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807C10F0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807C10F4  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 807C10F8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807C10FC  C0 1E 00 08 */	lfs f0, 8(r30)
/* 807C1100  D0 01 00 08 */	stfs f0, 8(r1)
/* 807C1104  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807C1108  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807C110C  7F E3 FB 78 */	mr r3, r31
/* 807C1110  38 9F 05 C0 */	addi r4, r31, 0x5c0
/* 807C1114  38 A1 00 14 */	addi r5, r1, 0x14
/* 807C1118  38 C1 00 08 */	addi r6, r1, 8
/* 807C111C  48 00 0A 39 */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 807C1120  38 60 00 01 */	li r3, 1
/* 807C1124  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 807C1128  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 807C112C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807C1130  7C 08 03 A6 */	mtlr r0
/* 807C1134  38 21 00 30 */	addi r1, r1, 0x30
/* 807C1138  4E 80 00 20 */	blr 

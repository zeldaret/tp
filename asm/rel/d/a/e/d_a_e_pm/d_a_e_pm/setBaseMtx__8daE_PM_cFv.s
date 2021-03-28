lbl_8074AB28:
/* 8074AB28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8074AB2C  7C 08 02 A6 */	mflr r0
/* 8074AB30  90 01 00 24 */	stw r0, 0x24(r1)
/* 8074AB34  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8074AB38  7C 7F 1B 78 */	mr r31, r3
/* 8074AB3C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8074AB40  4B 8C 22 24 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 8074AB44  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 8074AB48  4B 8C 23 FC */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 8074AB4C  80 7F 07 04 */	lwz r3, 0x704(r31)
/* 8074AB50  80 83 00 04 */	lwz r4, 4(r3)
/* 8074AB54  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8074AB58  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8074AB5C  38 84 00 24 */	addi r4, r4, 0x24
/* 8074AB60  4B BF B9 50 */	b PSMTXCopy
/* 8074AB64  80 7F 07 04 */	lwz r3, 0x704(r31)
/* 8074AB68  4B 8C 66 84 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 8074AB6C  88 1F 06 89 */	lbz r0, 0x689(r31)
/* 8074AB70  3C 60 80 75 */	lis r3, lit_7464@ha
/* 8074AB74  C8 23 C1 3C */	lfd f1, lit_7464@l(r3)
/* 8074AB78  90 01 00 0C */	stw r0, 0xc(r1)
/* 8074AB7C  3C 00 43 30 */	lis r0, 0x4330
/* 8074AB80  90 01 00 08 */	stw r0, 8(r1)
/* 8074AB84  C8 01 00 08 */	lfd f0, 8(r1)
/* 8074AB88  EC 00 08 28 */	fsubs f0, f0, f1
/* 8074AB8C  80 7F 07 00 */	lwz r3, 0x700(r31)
/* 8074AB90  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8074AB94  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8074AB98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8074AB9C  7C 08 03 A6 */	mtlr r0
/* 8074ABA0  38 21 00 20 */	addi r1, r1, 0x20
/* 8074ABA4  4E 80 00 20 */	blr 

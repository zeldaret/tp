lbl_80C99364:
/* 80C99364  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C99368  7C 08 02 A6 */	mflr r0
/* 80C9936C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C99370  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C99374  7C 7F 1B 78 */	mr r31, r3
/* 80C99378  80 83 05 A0 */	lwz r4, 0x5a0(r3)
/* 80C9937C  80 84 00 04 */	lwz r4, 4(r4)
/* 80C99380  4B 38 11 F9 */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80C99384  80 7F 05 A0 */	lwz r3, 0x5a0(r31)
/* 80C99388  38 03 00 24 */	addi r0, r3, 0x24
/* 80C9938C  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80C99390  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C99394  4B 37 39 D1 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80C99398  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80C9939C  4B 37 3B A9 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80C993A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C993A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C993A8  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80C993AC  4B 6A D1 05 */	bl PSMTXCopy
/* 80C993B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C993B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C993B8  80 9F 05 A0 */	lwz r4, 0x5a0(r31)
/* 80C993BC  38 84 00 24 */	addi r4, r4, 0x24
/* 80C993C0  4B 6A D0 F1 */	bl PSMTXCopy
/* 80C993C4  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 80C993C8  3C 60 80 CA */	lis r3, lit_3845@ha /* 0x80C99790@ha */
/* 80C993CC  C0 23 97 90 */	lfs f1, lit_3845@l(r3)  /* 0x80C99790@l */
/* 80C993D0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80C993D4  EC 21 00 2A */	fadds f1, f1, f0
/* 80C993D8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80C993DC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C993E0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80C993E4  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80C993E8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C993EC  7C 07 07 74 */	extsb r7, r0
/* 80C993F0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C993F4  54 05 C6 3E */	rlwinm r5, r0, 0x18, 0x18, 0x1f
/* 80C993F8  38 00 00 00 */	li r0, 0
/* 80C993FC  90 01 00 08 */	stw r0, 8(r1)
/* 80C99400  38 60 00 B3 */	li r3, 0xb3
/* 80C99404  28 1F 00 00 */	cmplwi r31, 0
/* 80C99408  41 82 00 0C */	beq lbl_80C99414
/* 80C9940C  80 9F 00 04 */	lwz r4, 4(r31)
/* 80C99410  48 00 00 08 */	b lbl_80C99418
lbl_80C99414:
/* 80C99414  38 80 FF FF */	li r4, -1
lbl_80C99418:
/* 80C99418  54 A5 44 2E */	rlwinm r5, r5, 8, 0x10, 0x17
/* 80C9941C  38 C1 00 10 */	addi r6, r1, 0x10
/* 80C99420  39 00 00 00 */	li r8, 0
/* 80C99424  39 20 00 00 */	li r9, 0
/* 80C99428  39 40 FF FF */	li r10, -1
/* 80C9942C  4B 38 0A C5 */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80C99430  38 00 00 00 */	li r0, 0
/* 80C99434  90 1F 05 B4 */	stw r0, 0x5b4(r31)
/* 80C99438  90 1F 05 B8 */	stw r0, 0x5b8(r31)
/* 80C9943C  90 1F 05 BC */	stw r0, 0x5bc(r31)
/* 80C99440  90 1F 05 C0 */	stw r0, 0x5c0(r31)
/* 80C99444  90 1F 05 C4 */	stw r0, 0x5c4(r31)
/* 80C99448  90 1F 05 C8 */	stw r0, 0x5c8(r31)
/* 80C9944C  90 1F 05 B0 */	stw r0, 0x5b0(r31)
/* 80C99450  80 1F 05 B0 */	lwz r0, 0x5b0(r31)
/* 80C99454  1C 80 00 18 */	mulli r4, r0, 0x18
/* 80C99458  3C 60 80 CA */	lis r3, ActionTable__18daObjMirrorScrew_c@ha /* 0x80C997F4@ha */
/* 80C9945C  38 03 97 F4 */	addi r0, r3, ActionTable__18daObjMirrorScrew_c@l /* 0x80C997F4@l */
/* 80C99460  7C 00 22 14 */	add r0, r0, r4
/* 80C99464  90 1F 05 AC */	stw r0, 0x5ac(r31)
/* 80C99468  7F E3 FB 78 */	mr r3, r31
/* 80C9946C  81 9F 05 AC */	lwz r12, 0x5ac(r31)
/* 80C99470  4B 6C 8C 15 */	bl __ptmf_scall
/* 80C99474  60 00 00 00 */	nop 
/* 80C99478  38 60 00 04 */	li r3, 4
/* 80C9947C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C99480  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C99484  7C 08 03 A6 */	mtlr r0
/* 80C99488  38 21 00 30 */	addi r1, r1, 0x30
/* 80C9948C  4E 80 00 20 */	blr 

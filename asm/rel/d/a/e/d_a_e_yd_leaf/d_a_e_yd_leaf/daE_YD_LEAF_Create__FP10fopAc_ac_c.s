lbl_807F8124:
/* 807F8124  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807F8128  7C 08 02 A6 */	mflr r0
/* 807F812C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807F8130  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807F8134  93 C1 00 08 */	stw r30, 8(r1)
/* 807F8138  7C 7F 1B 78 */	mr r31, r3
/* 807F813C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 807F8140  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 807F8144  40 82 00 1C */	bne lbl_807F8160
/* 807F8148  28 1F 00 00 */	cmplwi r31, 0
/* 807F814C  41 82 00 08 */	beq lbl_807F8154
/* 807F8150  4B 82 0A 15 */	bl __ct__10fopAc_ac_cFv
lbl_807F8154:
/* 807F8154  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 807F8158  60 00 00 08 */	ori r0, r0, 8
/* 807F815C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_807F8160:
/* 807F8160  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 807F8164  3C 80 80 80 */	lis r4, d_a_e_yd_leaf__stringBase0@ha /* 0x807F81F4@ha */
/* 807F8168  38 84 81 F4 */	addi r4, r4, d_a_e_yd_leaf__stringBase0@l /* 0x807F81F4@l */
/* 807F816C  4B 83 4D 51 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 807F8170  7C 7E 1B 78 */	mr r30, r3
/* 807F8174  2C 1E 00 04 */	cmpwi r30, 4
/* 807F8178  40 82 00 4C */	bne lbl_807F81C4
/* 807F817C  7F E3 FB 78 */	mr r3, r31
/* 807F8180  3C 80 80 80 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x807F8024@ha */
/* 807F8184  38 84 80 24 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x807F8024@l */
/* 807F8188  38 A0 0A 80 */	li r5, 0xa80
/* 807F818C  4B 82 23 25 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 807F8190  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807F8194  40 82 00 0C */	bne lbl_807F81A0
/* 807F8198  38 60 00 05 */	li r3, 5
/* 807F819C  48 00 00 2C */	b lbl_807F81C8
lbl_807F81A0:
/* 807F81A0  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807F81A4  80 63 00 04 */	lwz r3, 4(r3)
/* 807F81A8  38 03 00 24 */	addi r0, r3, 0x24
/* 807F81AC  90 1F 05 04 */	stw r0, 0x504(r31)
/* 807F81B0  3C 60 80 80 */	lis r3, lit_3707@ha /* 0x807F81E8@ha */
/* 807F81B4  C0 03 81 E8 */	lfs f0, lit_3707@l(r3)  /* 0x807F81E8@l */
/* 807F81B8  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 807F81BC  7F E3 FB 78 */	mr r3, r31
/* 807F81C0  4B FF FD 01 */	bl daE_YD_LEAF_Execute__FP15e_yd_leaf_class
lbl_807F81C4:
/* 807F81C4  7F C3 F3 78 */	mr r3, r30
lbl_807F81C8:
/* 807F81C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807F81CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 807F81D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807F81D4  7C 08 03 A6 */	mtlr r0
/* 807F81D8  38 21 00 10 */	addi r1, r1, 0x10
/* 807F81DC  4E 80 00 20 */	blr 

lbl_8083EB10:
/* 8083EB10  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8083EB14  7C 08 02 A6 */	mflr r0
/* 8083EB18  90 01 00 54 */	stw r0, 0x54(r1)
/* 8083EB1C  39 61 00 50 */	addi r11, r1, 0x50
/* 8083EB20  4B B2 36 80 */	b __save_gpr
/* 8083EB24  7C 7A 1B 78 */	mr r26, r3
/* 8083EB28  4B FF FF 51 */	bl copyFootMatrix__9daHorse_cFv
/* 8083EB2C  80 7A 05 AC */	lwz r3, 0x5ac(r26)
/* 8083EB30  88 03 00 00 */	lbz r0, 0(r3)
/* 8083EB34  28 00 00 00 */	cmplwi r0, 0
/* 8083EB38  40 82 00 0C */	bne lbl_8083EB44
/* 8083EB3C  38 60 00 00 */	li r3, 0
/* 8083EB40  48 00 02 30 */	b lbl_8083ED70
lbl_8083EB44:
/* 8083EB44  3B BA 13 24 */	addi r29, r26, 0x1324
/* 8083EB48  3B 60 00 01 */	li r27, 1
/* 8083EB4C  3B 80 00 00 */	li r28, 0
/* 8083EB50  3B 20 00 00 */	li r25, 0
/* 8083EB54  3C 60 80 84 */	lis r3, m_footJointTable__9daHorse_c@ha
/* 8083EB58  3B E3 54 C0 */	addi r31, r3, m_footJointTable__9daHorse_c@l
/* 8083EB5C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8083EB60  3A 23 D4 70 */	addi r17, r3, now__14mDoMtx_stack_c@l
/* 8083EB64  7E 32 8B 78 */	mr r18, r17
/* 8083EB68  7E 33 8B 78 */	mr r19, r17
/* 8083EB6C  7E 35 8B 78 */	mr r21, r17
/* 8083EB70  7E 36 8B 78 */	mr r22, r17
/* 8083EB74  7E 37 8B 78 */	mr r23, r17
/* 8083EB78  7E 38 8B 78 */	mr r24, r17
/* 8083EB7C  7E 2E 8B 78 */	mr r14, r17
lbl_8083EB80:
/* 8083EB80  7D FF CA 2E */	lhzx r15, r31, r25
/* 8083EB84  7E 23 8B 78 */	mr r3, r17
/* 8083EB88  A8 1D 00 04 */	lha r0, 4(r29)
/* 8083EB8C  7C 00 D9 D6 */	mullw r0, r0, r27
/* 8083EB90  7C 04 07 34 */	extsh r4, r0
/* 8083EB94  4B 7C D8 E0 */	b mDoMtx_ZrotS__FPA4_fs
/* 8083EB98  80 7A 05 70 */	lwz r3, 0x570(r26)
/* 8083EB9C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8083EBA0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8083EBA4  55 E0 04 3E */	clrlwi r0, r15, 0x10
/* 8083EBA8  1E 00 00 30 */	mulli r16, r0, 0x30
/* 8083EBAC  7C 63 82 14 */	add r3, r3, r16
/* 8083EBB0  7E 24 8B 78 */	mr r4, r17
/* 8083EBB4  7E 45 93 78 */	mr r5, r18
/* 8083EBB8  4B B0 79 2C */	b PSMTXConcat
/* 8083EBBC  7E 63 9B 78 */	mr r3, r19
/* 8083EBC0  80 9A 05 70 */	lwz r4, 0x570(r26)
/* 8083EBC4  80 84 00 84 */	lwz r4, 0x84(r4)
/* 8083EBC8  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8083EBCC  7C 80 82 14 */	add r4, r0, r16
/* 8083EBD0  4B B0 78 E0 */	b PSMTXCopy
/* 8083EBD4  80 BA 05 AC */	lwz r5, 0x5ac(r26)
/* 8083EBD8  80 65 00 1C */	lwz r3, 0x1c(r5)
/* 8083EBDC  55 FE 04 3E */	clrlwi r30, r15, 0x10
/* 8083EBE0  38 9E 00 01 */	addi r4, r30, 1
/* 8083EBE4  54 94 04 3E */	clrlwi r20, r4, 0x10
/* 8083EBE8  54 80 2A F4 */	rlwinm r0, r4, 5, 0xb, 0x1a
/* 8083EBEC  7E 03 02 14 */	add r16, r3, r0
/* 8083EBF0  80 65 00 20 */	lwz r3, 0x20(r5)
/* 8083EBF4  54 80 23 36 */	rlwinm r0, r4, 4, 0xc, 0x1b
/* 8083EBF8  7D E3 02 14 */	add r15, r3, r0
/* 8083EBFC  C0 30 00 14 */	lfs f1, 0x14(r16)
/* 8083EC00  C0 50 00 18 */	lfs f2, 0x18(r16)
/* 8083EC04  C0 70 00 1C */	lfs f3, 0x1c(r16)
/* 8083EC08  4B 7C E1 94 */	b transM__14mDoMtx_stack_cFfff
/* 8083EC0C  7D E3 7B 78 */	mr r3, r15
/* 8083EC10  4B 7C E3 6C */	b quatM__14mDoMtx_stack_cFPC10Quaternion
/* 8083EC14  7E A3 AB 78 */	mr r3, r21
/* 8083EC18  A8 9D 00 04 */	lha r4, 4(r29)
/* 8083EC1C  A8 1D 00 06 */	lha r0, 6(r29)
/* 8083EC20  7C 04 00 50 */	subf r0, r4, r0
/* 8083EC24  7C 1B 01 D6 */	mullw r0, r27, r0
/* 8083EC28  7C 04 07 34 */	extsh r4, r0
/* 8083EC2C  4B 7C D8 A0 */	b mDoMtx_ZrotM__FPA4_fs
/* 8083EC30  C0 30 00 00 */	lfs f1, 0(r16)
/* 8083EC34  C0 50 00 04 */	lfs f2, 4(r16)
/* 8083EC38  C0 70 00 08 */	lfs f3, 8(r16)
/* 8083EC3C  4B 7C E1 FC */	b scaleM__14mDoMtx_stack_cFfff
/* 8083EC40  7E C3 B3 78 */	mr r3, r22
/* 8083EC44  80 9A 05 70 */	lwz r4, 0x570(r26)
/* 8083EC48  80 84 00 84 */	lwz r4, 0x84(r4)
/* 8083EC4C  80 84 00 0C */	lwz r4, 0xc(r4)
/* 8083EC50  1C 14 00 30 */	mulli r0, r20, 0x30
/* 8083EC54  7C 84 02 14 */	add r4, r4, r0
/* 8083EC58  4B B0 78 58 */	b PSMTXCopy
/* 8083EC5C  C0 30 00 34 */	lfs f1, 0x34(r16)
/* 8083EC60  C0 50 00 38 */	lfs f2, 0x38(r16)
/* 8083EC64  C0 70 00 3C */	lfs f3, 0x3c(r16)
/* 8083EC68  4B 7C E1 34 */	b transM__14mDoMtx_stack_cFfff
/* 8083EC6C  38 6F 00 10 */	addi r3, r15, 0x10
/* 8083EC70  4B 7C E3 0C */	b quatM__14mDoMtx_stack_cFPC10Quaternion
/* 8083EC74  7E E3 BB 78 */	mr r3, r23
/* 8083EC78  A8 9D 00 06 */	lha r4, 6(r29)
/* 8083EC7C  A8 1D 00 08 */	lha r0, 8(r29)
/* 8083EC80  7C 04 00 50 */	subf r0, r4, r0
/* 8083EC84  7C 1B 01 D6 */	mullw r0, r27, r0
/* 8083EC88  7C 04 07 34 */	extsh r4, r0
/* 8083EC8C  4B 7C D8 40 */	b mDoMtx_ZrotM__FPA4_fs
/* 8083EC90  C0 30 00 20 */	lfs f1, 0x20(r16)
/* 8083EC94  C0 50 00 24 */	lfs f2, 0x24(r16)
/* 8083EC98  C0 70 00 28 */	lfs f3, 0x28(r16)
/* 8083EC9C  4B 7C E1 9C */	b scaleM__14mDoMtx_stack_cFfff
/* 8083ECA0  7F 03 C3 78 */	mr r3, r24
/* 8083ECA4  80 9A 05 70 */	lwz r4, 0x570(r26)
/* 8083ECA8  80 84 00 84 */	lwz r4, 0x84(r4)
/* 8083ECAC  80 84 00 0C */	lwz r4, 0xc(r4)
/* 8083ECB0  38 1E 00 02 */	addi r0, r30, 2
/* 8083ECB4  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8083ECB8  1C 00 00 30 */	mulli r0, r0, 0x30
/* 8083ECBC  7C 84 02 14 */	add r4, r4, r0
/* 8083ECC0  4B B0 77 F0 */	b PSMTXCopy
/* 8083ECC4  C0 30 00 54 */	lfs f1, 0x54(r16)
/* 8083ECC8  C0 50 00 58 */	lfs f2, 0x58(r16)
/* 8083ECCC  C0 70 00 5C */	lfs f3, 0x5c(r16)
/* 8083ECD0  4B 7C E0 CC */	b transM__14mDoMtx_stack_cFfff
/* 8083ECD4  38 6F 00 20 */	addi r3, r15, 0x20
/* 8083ECD8  4B 7C E2 A4 */	b quatM__14mDoMtx_stack_cFPC10Quaternion
/* 8083ECDC  C0 30 00 40 */	lfs f1, 0x40(r16)
/* 8083ECE0  C0 50 00 44 */	lfs f2, 0x44(r16)
/* 8083ECE4  C0 70 00 48 */	lfs f3, 0x48(r16)
/* 8083ECE8  4B 7C E1 50 */	b scaleM__14mDoMtx_stack_cFfff
/* 8083ECEC  2C 1C 00 02 */	cmpwi r28, 2
/* 8083ECF0  41 80 00 28 */	blt lbl_8083ED18
/* 8083ECF4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8083ECF8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8083ECFC  A8 9D 00 08 */	lha r4, 8(r29)
/* 8083ED00  A8 1D 00 0A */	lha r0, 0xa(r29)
/* 8083ED04  7C 04 00 50 */	subf r0, r4, r0
/* 8083ED08  7C 1B 01 D6 */	mullw r0, r27, r0
/* 8083ED0C  7C 04 07 34 */	extsh r4, r0
/* 8083ED10  4B 7C D7 BC */	b mDoMtx_ZrotM__FPA4_fs
/* 8083ED14  48 00 00 14 */	b lbl_8083ED28
lbl_8083ED18:
/* 8083ED18  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8083ED1C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8083ED20  A8 9D 00 0A */	lha r4, 0xa(r29)
/* 8083ED24  4B 7C D7 A8 */	b mDoMtx_ZrotM__FPA4_fs
lbl_8083ED28:
/* 8083ED28  7D C3 73 78 */	mr r3, r14
/* 8083ED2C  80 9A 05 70 */	lwz r4, 0x570(r26)
/* 8083ED30  80 84 00 84 */	lwz r4, 0x84(r4)
/* 8083ED34  80 84 00 0C */	lwz r4, 0xc(r4)
/* 8083ED38  38 1E 00 03 */	addi r0, r30, 3
/* 8083ED3C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8083ED40  1C 00 00 30 */	mulli r0, r0, 0x30
/* 8083ED44  7C 84 02 14 */	add r4, r4, r0
/* 8083ED48  4B B0 77 68 */	b PSMTXCopy
/* 8083ED4C  2C 1C 00 01 */	cmpwi r28, 1
/* 8083ED50  40 82 00 08 */	bne lbl_8083ED58
/* 8083ED54  3B 60 FF FF */	li r27, -1
lbl_8083ED58:
/* 8083ED58  3B 9C 00 01 */	addi r28, r28, 1
/* 8083ED5C  2C 1C 00 04 */	cmpwi r28, 4
/* 8083ED60  3B 39 00 02 */	addi r25, r25, 2
/* 8083ED64  3B BD 00 E4 */	addi r29, r29, 0xe4
/* 8083ED68  41 80 FE 18 */	blt lbl_8083EB80
/* 8083ED6C  38 60 00 01 */	li r3, 1
lbl_8083ED70:
/* 8083ED70  39 61 00 50 */	addi r11, r1, 0x50
/* 8083ED74  4B B2 34 78 */	b __restore_gpr
/* 8083ED78  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8083ED7C  7C 08 03 A6 */	mtlr r0
/* 8083ED80  38 21 00 50 */	addi r1, r1, 0x50
/* 8083ED84  4E 80 00 20 */	blr 

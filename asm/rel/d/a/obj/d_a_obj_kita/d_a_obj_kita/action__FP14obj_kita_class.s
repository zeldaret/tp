lbl_80C458D8:
/* 80C458D8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C458DC  7C 08 02 A6 */	mflr r0
/* 80C458E0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C458E4  39 61 00 40 */	addi r11, r1, 0x40
/* 80C458E8  4B 71 C8 D5 */	bl _savegpr_21
/* 80C458EC  7C 7C 1B 78 */	mr r28, r3
/* 80C458F0  3C 60 80 C4 */	lis r3, lit_3769@ha /* 0x80C45F1C@ha */
/* 80C458F4  3B C3 5F 1C */	addi r30, r3, lit_3769@l /* 0x80C45F1C@l */
/* 80C458F8  A8 1C 05 74 */	lha r0, 0x574(r28)
/* 80C458FC  2C 00 00 00 */	cmpwi r0, 0
/* 80C45900  7F 83 E3 78 */	mr r3, r28
/* 80C45904  4B FF FB 2D */	bl ita_control__FP14obj_kita_class
/* 80C45908  3B A0 00 00 */	li r29, 0
/* 80C4590C  3B 60 00 00 */	li r27, 0
/* 80C45910  3C 60 80 C4 */	lis r3, l_HIO@ha /* 0x80C46000@ha */
/* 80C45914  3B E3 60 00 */	addi r31, r3, l_HIO@l /* 0x80C46000@l */
/* 80C45918  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C4591C  3A C3 D4 70 */	addi r22, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C45920  7E D7 B3 78 */	mr r23, r22
/* 80C45924  7E D8 B3 78 */	mr r24, r22
/* 80C45928  7E D9 B3 78 */	mr r25, r22
/* 80C4592C  7E DA B3 78 */	mr r26, r22
/* 80C45930  48 00 00 B8 */	b lbl_80C459E8
lbl_80C45934:
/* 80C45934  7E BC DA 14 */	add r21, r28, r27
/* 80C45938  7E C3 B3 78 */	mr r3, r22
/* 80C4593C  C0 35 05 98 */	lfs f1, 0x598(r21)
/* 80C45940  C0 55 05 9C */	lfs f2, 0x59c(r21)
/* 80C45944  C0 75 05 A0 */	lfs f3, 0x5a0(r21)
/* 80C45948  4B 70 0F A1 */	bl PSMTXTrans
/* 80C4594C  7E C3 B3 78 */	mr r3, r22
/* 80C45950  A8 95 05 B2 */	lha r4, 0x5b2(r21)
/* 80C45954  4B 3C 6A E1 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C45958  7E E3 BB 78 */	mr r3, r23
/* 80C4595C  A8 95 05 B0 */	lha r4, 0x5b0(r21)
/* 80C45960  4B 3C 6A 3D */	bl mDoMtx_XrotM__FPA4_fs
/* 80C45964  7F 03 C3 78 */	mr r3, r24
/* 80C45968  A8 95 05 B4 */	lha r4, 0x5b4(r21)
/* 80C4596C  4B 3C 6B 61 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80C45970  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80C45974  C0 15 05 B8 */	lfs f0, 0x5b8(r21)
/* 80C45978  EC 22 00 32 */	fmuls f1, f2, f0
/* 80C4597C  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 80C45980  4B 3C 74 B9 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80C45984  A8 95 05 BC */	lha r4, 0x5bc(r21)
/* 80C45988  7C 80 07 35 */	extsh. r0, r4
/* 80C4598C  41 82 00 20 */	beq lbl_80C459AC
/* 80C45990  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C45994  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C45998  4B 3C 6A 9D */	bl mDoMtx_YrotM__FPA4_fs
/* 80C4599C  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 80C459A0  FC 40 08 90 */	fmr f2, f1
/* 80C459A4  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 80C459A8  4B 3C 73 F5 */	bl transM__14mDoMtx_stack_cFfff
lbl_80C459AC:
/* 80C459AC  7F 23 CB 78 */	mr r3, r25
/* 80C459B0  80 95 05 94 */	lwz r4, 0x594(r21)
/* 80C459B4  38 84 00 24 */	addi r4, r4, 0x24
/* 80C459B8  4B 70 0A F9 */	bl PSMTXCopy
/* 80C459BC  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80C459C0  FC 40 08 90 */	fmr f2, f1
/* 80C459C4  C0 7E 00 54 */	lfs f3, 0x54(r30)
/* 80C459C8  4B 3C 74 71 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80C459CC  7F 43 D3 78 */	mr r3, r26
/* 80C459D0  38 95 05 C0 */	addi r4, r21, 0x5c0
/* 80C459D4  4B 70 0A DD */	bl PSMTXCopy
/* 80C459D8  80 75 05 F0 */	lwz r3, 0x5f0(r21)
/* 80C459DC  4B 43 5F E5 */	bl Move__4dBgWFv
/* 80C459E0  3B BD 00 01 */	addi r29, r29, 1
/* 80C459E4  3B 7B 00 60 */	addi r27, r27, 0x60
lbl_80C459E8:
/* 80C459E8  80 7C 05 7C */	lwz r3, 0x57c(r28)
/* 80C459EC  38 03 FF FF */	addi r0, r3, -1
/* 80C459F0  7C 1D 00 00 */	cmpw r29, r0
/* 80C459F4  41 80 FF 40 */	blt lbl_80C45934
/* 80C459F8  39 61 00 40 */	addi r11, r1, 0x40
/* 80C459FC  4B 71 C8 0D */	bl _restgpr_21
/* 80C45A00  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C45A04  7C 08 03 A6 */	mtlr r0
/* 80C45A08  38 21 00 40 */	addi r1, r1, 0x40
/* 80C45A0C  4E 80 00 20 */	blr 

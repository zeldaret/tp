lbl_8048B918:
/* 8048B918  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048B91C  7C 08 02 A6 */	mflr r0
/* 8048B920  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048B924  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048B928  93 C1 00 08 */	stw r30, 8(r1)
/* 8048B92C  7C 7E 1B 78 */	mr r30, r3
/* 8048B930  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8048B934  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8048B938  40 82 00 34 */	bne lbl_8048B96C
/* 8048B93C  7F C0 F3 79 */	or. r0, r30, r30
/* 8048B940  41 82 00 20 */	beq lbl_8048B960
/* 8048B944  7C 1F 03 78 */	mr r31, r0
/* 8048B948  4B B8 D2 1D */	bl __ct__10fopAc_ac_cFv
/* 8048B94C  3C 60 80 49 */	lis r3, __vt__11daTag_Evt_c@ha /* 0x8048C464@ha */
/* 8048B950  38 03 C4 64 */	addi r0, r3, __vt__11daTag_Evt_c@l /* 0x8048C464@l */
/* 8048B954  90 1F 05 E8 */	stw r0, 0x5e8(r31)
/* 8048B958  38 7F 05 78 */	addi r3, r31, 0x578
/* 8048B95C  4B DB E5 A5 */	bl __ct__10dMsgFlow_cFv
lbl_8048B960:
/* 8048B960  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 8048B964  60 00 00 08 */	ori r0, r0, 8
/* 8048B968  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_8048B96C:
/* 8048B96C  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 8048B970  3C 80 80 49 */	lis r4, l_resFileName@ha /* 0x8048C404@ha */
/* 8048B974  38 84 C4 04 */	addi r4, r4, l_resFileName@l /* 0x8048C404@l */
/* 8048B978  80 84 00 00 */	lwz r4, 0(r4)
/* 8048B97C  4B BA 15 41 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8048B980  7C 7F 1B 78 */	mr r31, r3
/* 8048B984  2C 1F 00 04 */	cmpwi r31, 4
/* 8048B988  40 82 00 34 */	bne lbl_8048B9BC
/* 8048B98C  3C 60 80 49 */	lis r3, l_resFileName@ha /* 0x8048C404@ha */
/* 8048B990  80 03 C4 04 */	lwz r0, l_resFileName@l(r3)  /* 0x8048C404@l */
/* 8048B994  90 1E 01 00 */	stw r0, 0x100(r30)
/* 8048B998  38 7E 05 68 */	addi r3, r30, 0x568
/* 8048B99C  3C 80 80 49 */	lis r4, d_a_tag_evt__stringBase0@ha /* 0x8048C3BC@ha */
/* 8048B9A0  38 84 C3 BC */	addi r4, r4, d_a_tag_evt__stringBase0@l /* 0x8048C3BC@l */
/* 8048B9A4  38 84 00 25 */	addi r4, r4, 0x25
/* 8048B9A8  4B ED D1 85 */	bl strcpy
/* 8048B9AC  7F C3 F3 78 */	mr r3, r30
/* 8048B9B0  48 00 04 9D */	bl getParam__11daTag_Evt_cFv
/* 8048B9B4  38 00 FF FF */	li r0, -1
/* 8048B9B8  B0 1E 05 72 */	sth r0, 0x572(r30)
lbl_8048B9BC:
/* 8048B9BC  7F E3 FB 78 */	mr r3, r31
/* 8048B9C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048B9C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8048B9C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048B9CC  7C 08 03 A6 */	mtlr r0
/* 8048B9D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8048B9D4  4E 80 00 20 */	blr 

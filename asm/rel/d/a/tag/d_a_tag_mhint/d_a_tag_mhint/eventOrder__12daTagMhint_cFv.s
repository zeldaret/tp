lbl_805A5974:
/* 805A5974  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A5978  7C 08 02 A6 */	mflr r0
/* 805A597C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A5980  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805A5984  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805A5988  7C 7F 1B 78 */	mr r31, r3
/* 805A598C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805A5990  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 805A5994  88 1E 4F AD */	lbz r0, 0x4fad(r30)
/* 805A5998  28 00 00 00 */	cmplwi r0, 0
/* 805A599C  40 82 01 30 */	bne lbl_805A5ACC
/* 805A59A0  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 805A59A4  60 00 00 01 */	ori r0, r0, 1
/* 805A59A8  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 805A59AC  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 805A59B0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805A59B4  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 805A59B8  7D 89 03 A6 */	mtctr r12
/* 805A59BC  4E 80 04 21 */	bctrl 
/* 805A59C0  28 03 00 00 */	cmplwi r3, 0
/* 805A59C4  41 82 00 18 */	beq lbl_805A59DC
/* 805A59C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805A59CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805A59D0  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 805A59D4  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 805A59D8  41 82 00 F4 */	beq lbl_805A5ACC
lbl_805A59DC:
/* 805A59DC  88 1F 05 6A */	lbz r0, 0x56a(r31)
/* 805A59E0  28 00 00 00 */	cmplwi r0, 0
/* 805A59E4  41 82 00 44 */	beq lbl_805A5A28
/* 805A59E8  88 BF 05 6C */	lbz r5, 0x56c(r31)
/* 805A59EC  28 05 00 FF */	cmplwi r5, 0xff
/* 805A59F0  41 82 00 24 */	beq lbl_805A5A14
/* 805A59F4  7F E3 FB 78 */	mr r3, r31
/* 805A59F8  A8 9F 05 76 */	lha r4, 0x576(r31)
/* 805A59FC  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 805A5A00  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 805A5A04  38 E0 00 00 */	li r7, 0
/* 805A5A08  39 00 00 01 */	li r8, 1
/* 805A5A0C  4B A7 5C 70 */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 805A5A10  48 00 00 BC */	b lbl_805A5ACC
lbl_805A5A14:
/* 805A5A14  7F E3 FB 78 */	mr r3, r31
/* 805A5A18  38 80 00 00 */	li r4, 0
/* 805A5A1C  38 A0 00 00 */	li r5, 0
/* 805A5A20  4B A7 57 7C */	b fopAcM_orderSpeakEvent__FP10fopAc_ac_cUsUs
/* 805A5A24  48 00 00 A8 */	b lbl_805A5ACC
lbl_805A5A28:
/* 805A5A28  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 805A5A2C  80 03 05 70 */	lwz r0, 0x570(r3)
/* 805A5A30  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 805A5A34  41 82 00 1C */	beq lbl_805A5A50
/* 805A5A38  38 7E 4E 00 */	addi r3, r30, 0x4e00
/* 805A5A3C  3C 80 80 5A */	lis r4, stringBase0@ha
/* 805A5A40  38 84 60 4C */	addi r4, r4, stringBase0@l
/* 805A5A44  4B DC 2F 50 */	b strcmp
/* 805A5A48  2C 03 00 00 */	cmpwi r3, 0
/* 805A5A4C  40 82 00 80 */	bne lbl_805A5ACC
lbl_805A5A50:
/* 805A5A50  38 7E 5B 48 */	addi r3, r30, 0x5b48
/* 805A5A54  7F E4 FB 78 */	mr r4, r31
/* 805A5A58  38 A0 01 FF */	li r5, 0x1ff
/* 805A5A5C  4B AC DE A0 */	b request__10dAttHint_cFP10fopAc_ac_ci
/* 805A5A60  88 1F 05 6F */	lbz r0, 0x56f(r31)
/* 805A5A64  28 00 00 00 */	cmplwi r0, 0
/* 805A5A68  40 82 00 64 */	bne lbl_805A5ACC
/* 805A5A6C  38 00 00 01 */	li r0, 1
/* 805A5A70  98 1F 05 6F */	stb r0, 0x56f(r31)
/* 805A5A74  A0 1F 05 7E */	lhz r0, 0x57e(r31)
/* 805A5A78  28 00 00 00 */	cmplwi r0, 0
/* 805A5A7C  40 82 00 48 */	bne lbl_805A5AC4
/* 805A5A80  38 00 00 0E */	li r0, 0xe
/* 805A5A84  90 01 00 08 */	stw r0, 8(r1)
/* 805A5A88  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805A5A8C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805A5A90  80 63 00 00 */	lwz r3, 0(r3)
/* 805A5A94  38 81 00 08 */	addi r4, r1, 8
/* 805A5A98  38 A0 00 00 */	li r5, 0
/* 805A5A9C  38 C0 00 00 */	li r6, 0
/* 805A5AA0  38 E0 00 00 */	li r7, 0
/* 805A5AA4  3D 00 80 5A */	lis r8, lit_3803@ha
/* 805A5AA8  C0 28 60 40 */	lfs f1, lit_3803@l(r8)
/* 805A5AAC  FC 40 08 90 */	fmr f2, f1
/* 805A5AB0  3D 00 80 5A */	lis r8, lit_3804@ha
/* 805A5AB4  C0 68 60 44 */	lfs f3, lit_3804@l(r8)
/* 805A5AB8  FC 80 18 90 */	fmr f4, f3
/* 805A5ABC  39 00 00 00 */	li r8, 0
/* 805A5AC0  4B D0 5E C4 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_805A5AC4:
/* 805A5AC4  38 00 00 3C */	li r0, 0x3c
/* 805A5AC8  B0 1F 05 7E */	sth r0, 0x57e(r31)
lbl_805A5ACC:
/* 805A5ACC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805A5AD0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805A5AD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A5AD8  7C 08 03 A6 */	mtlr r0
/* 805A5ADC  38 21 00 20 */	addi r1, r1, 0x20
/* 805A5AE0  4E 80 00 20 */	blr 

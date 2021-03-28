lbl_80843A44:
/* 80843A44  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80843A48  7C 08 02 A6 */	mflr r0
/* 80843A4C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80843A50  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80843A54  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80843A58  39 61 00 30 */	addi r11, r1, 0x30
/* 80843A5C  4B B1 E7 80 */	b _savegpr_29
/* 80843A60  7C 7D 1B 78 */	mr r29, r3
/* 80843A64  3C 60 80 84 */	lis r3, lit_3894@ha
/* 80843A68  3B E3 54 AC */	addi r31, r3, lit_3894@l
/* 80843A6C  3C 60 80 45 */	lis r3, m_object__7dDemo_c@ha
/* 80843A70  38 63 0E 20 */	addi r3, r3, m_object__7dDemo_c@l
/* 80843A74  80 63 00 00 */	lwz r3, 0(r3)
/* 80843A78  88 9D 04 98 */	lbz r4, 0x498(r29)
/* 80843A7C  4B 7F 56 0C */	b getActor__14dDemo_object_cFUc
/* 80843A80  7C 7E 1B 79 */	or. r30, r3, r3
/* 80843A84  38 00 00 00 */	li r0, 0
/* 80843A88  90 1D 17 30 */	stw r0, 0x1730(r29)
/* 80843A8C  41 82 01 38 */	beq lbl_80843BC4
/* 80843A90  C3 FF 01 50 */	lfs f31, 0x150(r31)
/* 80843A94  A0 1E 00 04 */	lhz r0, 4(r30)
/* 80843A98  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80843A9C  41 82 00 1C */	beq lbl_80843AB8
/* 80843AA0  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80843AA4  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80843AA8  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80843AAC  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80843AB0  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80843AB4  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
lbl_80843AB8:
/* 80843AB8  A0 1E 00 04 */	lhz r0, 4(r30)
/* 80843ABC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80843AC0  41 82 00 34 */	beq lbl_80843AF4
/* 80843AC4  A8 1E 00 20 */	lha r0, 0x20(r30)
/* 80843AC8  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 80843ACC  A8 1E 00 22 */	lha r0, 0x22(r30)
/* 80843AD0  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80843AD4  A8 1E 00 24 */	lha r0, 0x24(r30)
/* 80843AD8  B0 1D 04 E8 */	sth r0, 0x4e8(r29)
/* 80843ADC  A8 1D 04 E4 */	lha r0, 0x4e4(r29)
/* 80843AE0  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 80843AE4  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80843AE8  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80843AEC  A8 1D 04 E8 */	lha r0, 0x4e8(r29)
/* 80843AF0  B0 1D 04 E0 */	sth r0, 0x4e0(r29)
lbl_80843AF4:
/* 80843AF4  A0 7E 00 04 */	lhz r3, 4(r30)
/* 80843AF8  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 80843AFC  41 82 00 08 */	beq lbl_80843B04
/* 80843B00  C3 FE 00 30 */	lfs f31, 0x30(r30)
lbl_80843B04:
/* 80843B04  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80843B08  41 82 00 78 */	beq lbl_80843B80
/* 80843B0C  48 00 00 50 */	b lbl_80843B5C
lbl_80843B10:
/* 80843B10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80843B14  2C 00 00 00 */	cmpwi r0, 0
/* 80843B18  41 82 00 44 */	beq lbl_80843B5C
/* 80843B1C  2C 00 00 02 */	cmpwi r0, 2
/* 80843B20  40 82 00 3C */	bne lbl_80843B5C
/* 80843B24  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80843B28  2C 00 00 01 */	cmpwi r0, 1
/* 80843B2C  40 82 00 30 */	bne lbl_80843B5C
/* 80843B30  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80843B34  2C 00 00 02 */	cmpwi r0, 2
/* 80843B38  40 82 00 24 */	bne lbl_80843B5C
/* 80843B3C  7F A3 EB 78 */	mr r3, r29
/* 80843B40  A0 81 00 08 */	lhz r4, 8(r1)
/* 80843B44  C0 3F 01 48 */	lfs f1, 0x148(r31)
/* 80843B48  C0 5F 01 50 */	lfs f2, 0x150(r31)
/* 80843B4C  38 A0 FF FF */	li r5, -1
/* 80843B50  C0 7F 01 B8 */	lfs f3, 0x1b8(r31)
/* 80843B54  38 C0 00 01 */	li r6, 1
/* 80843B58  4B FF 66 B5 */	bl setSingleAnime__9daHorse_cFUsffsfi
lbl_80843B5C:
/* 80843B5C  7F C3 F3 78 */	mr r3, r30
/* 80843B60  38 81 00 14 */	addi r4, r1, 0x14
/* 80843B64  38 A1 00 10 */	addi r5, r1, 0x10
/* 80843B68  38 C1 00 0C */	addi r6, r1, 0xc
/* 80843B6C  38 E1 00 08 */	addi r7, r1, 8
/* 80843B70  39 00 00 00 */	li r8, 0
/* 80843B74  4B 7F 47 C4 */	b getDemoIDData__13dDemo_actor_cFPiPiPiPUsPUc
/* 80843B78  2C 03 00 00 */	cmpwi r3, 0
/* 80843B7C  40 82 FF 94 */	bne lbl_80843B10
lbl_80843B80:
/* 80843B80  A0 1E 00 04 */	lhz r0, 4(r30)
/* 80843B84  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 80843B88  41 82 00 50 */	beq lbl_80843BD8
/* 80843B8C  80 7D 05 98 */	lwz r3, 0x598(r29)
/* 80843B90  D3 E3 00 08 */	stfs f31, 8(r3)
/* 80843B94  80 7D 05 98 */	lwz r3, 0x598(r29)
/* 80843B98  A8 03 00 06 */	lha r0, 6(r3)
/* 80843B9C  C8 3F 01 80 */	lfd f1, 0x180(r31)
/* 80843BA0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80843BA4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80843BA8  3C 00 43 30 */	lis r0, 0x4330
/* 80843BAC  90 01 00 18 */	stw r0, 0x18(r1)
/* 80843BB0  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80843BB4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80843BB8  D0 1E 00 38 */	stfs f0, 0x38(r30)
/* 80843BBC  D3 FD 05 C0 */	stfs f31, 0x5c0(r29)
/* 80843BC0  48 00 00 18 */	b lbl_80843BD8
lbl_80843BC4:
/* 80843BC4  80 1D 17 44 */	lwz r0, 0x1744(r29)
/* 80843BC8  54 00 03 56 */	rlwinm r0, r0, 0, 0xd, 0xb
/* 80843BCC  90 1D 17 44 */	stw r0, 0x1744(r29)
/* 80843BD0  7F A3 EB 78 */	mr r3, r29
/* 80843BD4  4B FF DB 35 */	bl procWaitInit__9daHorse_cFv
lbl_80843BD8:
/* 80843BD8  38 60 00 01 */	li r3, 1
/* 80843BDC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80843BE0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80843BE4  39 61 00 30 */	addi r11, r1, 0x30
/* 80843BE8  4B B1 E6 40 */	b _restgpr_29
/* 80843BEC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80843BF0  7C 08 03 A6 */	mtlr r0
/* 80843BF4  38 21 00 40 */	addi r1, r1, 0x40
/* 80843BF8  4E 80 00 20 */	blr 

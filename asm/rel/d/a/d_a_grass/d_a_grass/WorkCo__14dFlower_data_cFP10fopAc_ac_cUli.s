lbl_80520988:
/* 80520988  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8052098C  7C 08 02 A6 */	mflr r0
/* 80520990  90 01 00 44 */	stw r0, 0x44(r1)
/* 80520994  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80520998  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8052099C  39 61 00 30 */	addi r11, r1, 0x30
/* 805209A0  4B E4 18 38 */	b _savegpr_28
/* 805209A4  7C 7C 1B 78 */	mr r28, r3
/* 805209A8  7C 9D 23 78 */	mr r29, r4
/* 805209AC  3C 60 80 52 */	lis r3, lit_3999@ha
/* 805209B0  3B C3 30 28 */	addi r30, r3, lit_3999@l
/* 805209B4  C0 3C 00 08 */	lfs f1, 8(r28)
/* 805209B8  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 805209BC  EC 41 00 28 */	fsubs f2, f1, f0
/* 805209C0  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 805209C4  C0 3C 00 10 */	lfs f1, 0x10(r28)
/* 805209C8  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 805209CC  EC 21 00 28 */	fsubs f1, f1, f0
/* 805209D0  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 805209D4  D0 41 00 08 */	stfs f2, 8(r1)
/* 805209D8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805209DC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805209E0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 805209E4  38 61 00 08 */	addi r3, r1, 8
/* 805209E8  4B E2 67 50 */	b PSVECSquareMag
/* 805209EC  FF E0 08 90 */	fmr f31, f1
/* 805209F0  C0 1E 01 34 */	lfs f0, 0x134(r30)
/* 805209F4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 805209F8  41 81 00 C0 */	bgt lbl_80520AB8
/* 805209FC  C0 3C 00 0C */	lfs f1, 0xc(r28)
/* 80520A00  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80520A04  EC 01 00 28 */	fsubs f0, f1, f0
/* 80520A08  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80520A0C  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80520A10  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 80520A14  4B D4 6C 60 */	b cM_atan2s__Fff
/* 80520A18  7C 7F 1B 78 */	mr r31, r3
/* 80520A1C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80520A20  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80520A24  40 81 00 0C */	ble lbl_80520A30
/* 80520A28  FC 00 F8 34 */	frsqrte f0, f31
/* 80520A2C  EF E0 07 F2 */	fmuls f31, f0, f31
lbl_80520A30:
/* 80520A30  88 1C 00 01 */	lbz r0, 1(r28)
/* 80520A34  7C 04 07 74 */	extsb r4, r0
/* 80520A38  2C 04 00 08 */	cmpwi r4, 8
/* 80520A3C  40 80 00 48 */	bge lbl_80520A84
/* 80520A40  3C 60 80 45 */	lis r3, m_flower__9daGrass_c@ha
/* 80520A44  38 63 0D B4 */	addi r3, r3, m_flower__9daGrass_c@l
/* 80520A48  80 63 00 00 */	lwz r3, 0(r3)
/* 80520A4C  48 00 24 F5 */	bl newAnm__16dFlower_packet_cFv
/* 80520A50  2C 03 00 00 */	cmpwi r3, 0
/* 80520A54  41 80 00 64 */	blt lbl_80520AB8
/* 80520A58  98 7C 00 01 */	stb r3, 1(r28)
/* 80520A5C  3C 60 80 45 */	lis r3, m_flower__9daGrass_c@ha
/* 80520A60  80 83 0D B4 */	lwz r4, m_flower__9daGrass_c@l(r3)
/* 80520A64  88 1C 00 01 */	lbz r0, 1(r28)
/* 80520A68  7C 00 07 74 */	extsb r0, r0
/* 80520A6C  1C 60 00 38 */	mulli r3, r0, 0x38
/* 80520A70  3C 63 00 01 */	addis r3, r3, 1
/* 80520A74  38 63 19 54 */	addi r3, r3, 0x1954
/* 80520A78  7C 64 1A 14 */	add r3, r4, r3
/* 80520A7C  7C 7D 1B 78 */	mr r29, r3
/* 80520A80  48 00 00 20 */	b lbl_80520AA0
lbl_80520A84:
/* 80520A84  3C 60 80 45 */	lis r3, m_flower__9daGrass_c@ha
/* 80520A88  80 03 0D B4 */	lwz r0, m_flower__9daGrass_c@l(r3)
/* 80520A8C  1C 64 00 38 */	mulli r3, r4, 0x38
/* 80520A90  3C 63 00 01 */	addis r3, r3, 1
/* 80520A94  38 63 19 54 */	addi r3, r3, 0x1954
/* 80520A98  7C 60 1A 14 */	add r3, r0, r3
/* 80520A9C  7C 7D 1B 78 */	mr r29, r3
lbl_80520AA0:
/* 80520AA0  B3 FD 00 02 */	sth r31, 2(r29)
/* 80520AA4  C0 1E 01 38 */	lfs f0, 0x138(r30)
/* 80520AA8  EC 20 F8 28 */	fsubs f1, f0, f31
/* 80520AAC  C0 5E 00 10 */	lfs f2, 0x10(r30)
/* 80520AB0  4B D4 6B C4 */	b cM_atan2s__Fff
/* 80520AB4  B0 7D 00 04 */	sth r3, 4(r29)
lbl_80520AB8:
/* 80520AB8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80520ABC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80520AC0  39 61 00 30 */	addi r11, r1, 0x30
/* 80520AC4  4B E4 17 60 */	b _restgpr_28
/* 80520AC8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80520ACC  7C 08 03 A6 */	mtlr r0
/* 80520AD0  38 21 00 40 */	addi r1, r1, 0x40
/* 80520AD4  4E 80 00 20 */	blr 

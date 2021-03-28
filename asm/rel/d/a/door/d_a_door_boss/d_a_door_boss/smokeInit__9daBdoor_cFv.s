lbl_8067002C:
/* 8067002C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80670030  7C 08 02 A6 */	mflr r0
/* 80670034  90 01 00 24 */	stw r0, 0x24(r1)
/* 80670038  7C 68 1B 78 */	mr r8, r3
/* 8067003C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80670040  D0 03 05 98 */	stfs f0, 0x598(r3)
/* 80670044  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80670048  D0 03 05 9C */	stfs f0, 0x59c(r3)
/* 8067004C  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80670050  D0 03 05 A0 */	stfs f0, 0x5a0(r3)
/* 80670054  A8 03 04 E4 */	lha r0, 0x4e4(r3)
/* 80670058  B0 03 05 A4 */	sth r0, 0x5a4(r3)
/* 8067005C  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 80670060  B0 03 05 A6 */	sth r0, 0x5a6(r3)
/* 80670064  A8 03 04 E8 */	lha r0, 0x4e8(r3)
/* 80670068  B0 03 05 A8 */	sth r0, 0x5a8(r3)
/* 8067006C  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 80670070  7C 03 07 74 */	extsb r3, r0
/* 80670074  38 00 00 00 */	li r0, 0
/* 80670078  90 01 00 08 */	stw r0, 8(r1)
/* 8067007C  90 61 00 0C */	stw r3, 0xc(r1)
/* 80670080  90 01 00 10 */	stw r0, 0x10(r1)
/* 80670084  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80670088  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8067008C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80670090  3C 80 00 01 */	lis r4, 0x0001 /* 0x00008156@ha */
/* 80670094  38 84 81 56 */	addi r4, r4, 0x8156 /* 0x00008156@l */
/* 80670098  38 A8 06 9C */	addi r5, r8, 0x69c
/* 8067009C  38 C8 05 98 */	addi r6, r8, 0x598
/* 806700A0  38 E8 01 0C */	addi r7, r8, 0x10c
/* 806700A4  39 08 05 A4 */	addi r8, r8, 0x5a4
/* 806700A8  39 20 00 00 */	li r9, 0
/* 806700AC  39 40 00 00 */	li r10, 0
/* 806700B0  4B 9D CF B8 */	b setPoly__13dPa_control_cFUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz
/* 806700B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806700B8  7C 08 03 A6 */	mtlr r0
/* 806700BC  38 21 00 20 */	addi r1, r1, 0x20
/* 806700C0  4E 80 00 20 */	blr 

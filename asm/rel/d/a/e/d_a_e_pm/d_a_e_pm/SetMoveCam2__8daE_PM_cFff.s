lbl_807433E8:
/* 807433E8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 807433EC  7C 08 02 A6 */	mflr r0
/* 807433F0  90 01 00 64 */	stw r0, 0x64(r1)
/* 807433F4  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 807433F8  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 807433FC  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80743400  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80743404  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 80743408  F3 A1 00 38 */	psq_st f29, 56(r1), 0, 0 /* qr0 */
/* 8074340C  39 61 00 30 */	addi r11, r1, 0x30
/* 80743410  4B C1 ED CD */	bl _savegpr_29
/* 80743414  7C 7D 1B 78 */	mr r29, r3
/* 80743418  FF A0 08 90 */	fmr f29, f1
/* 8074341C  FF C0 10 90 */	fmr f30, f2
/* 80743420  3C 60 80 75 */	lis r3, lit_3910@ha /* 0x8074BF3C@ha */
/* 80743424  3B E3 BF 3C */	addi r31, r3, lit_3910@l /* 0x8074BF3C@l */
/* 80743428  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8074342C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80743430  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 80743434  7C 00 07 74 */	extsb r0, r0
/* 80743438  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8074343C  7C 63 02 14 */	add r3, r3, r0
/* 80743440  83 C3 5D 74 */	lwz r30, 0x5d74(r3)
/* 80743444  38 7D 06 BC */	addi r3, r29, 0x6bc
/* 80743448  38 9D 06 A4 */	addi r4, r29, 0x6a4
/* 8074344C  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80743450  EF E0 07 72 */	fmuls f31, f0, f29
/* 80743454  FC 20 F8 90 */	fmr f1, f31
/* 80743458  EC 40 07 B2 */	fmuls f2, f0, f30
/* 8074345C  C0 7F 00 04 */	lfs f3, 4(r31)
/* 80743460  4B B2 C6 59 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80743464  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80743468  38 9D 06 BC */	addi r4, r29, 0x6bc
/* 8074346C  FC 20 E8 90 */	fmr f1, f29
/* 80743470  FC 40 F0 90 */	fmr f2, f30
/* 80743474  C0 7F 00 04 */	lfs f3, 4(r31)
/* 80743478  4B B2 C6 41 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8074347C  38 7D 06 C8 */	addi r3, r29, 0x6c8
/* 80743480  38 9D 06 B0 */	addi r4, r29, 0x6b0
/* 80743484  FC 20 F8 90 */	fmr f1, f31
/* 80743488  C0 5F 00 B4 */	lfs f2, 0xb4(r31)
/* 8074348C  C0 7F 00 04 */	lfs f3, 4(r31)
/* 80743490  4B B2 C6 29 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80743494  38 7D 06 98 */	addi r3, r29, 0x698
/* 80743498  38 9D 06 C8 */	addi r4, r29, 0x6c8
/* 8074349C  FC 20 E8 90 */	fmr f1, f29
/* 807434A0  C0 5F 00 B8 */	lfs f2, 0xb8(r31)
/* 807434A4  C0 7F 00 04 */	lfs f3, 4(r31)
/* 807434A8  4B B2 C6 11 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 807434AC  C0 1D 06 8C */	lfs f0, 0x68c(r29)
/* 807434B0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807434B4  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 807434B8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807434BC  C0 1D 06 94 */	lfs f0, 0x694(r29)
/* 807434C0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807434C4  C0 1D 06 98 */	lfs f0, 0x698(r29)
/* 807434C8  D0 01 00 08 */	stfs f0, 8(r1)
/* 807434CC  C0 1D 06 9C */	lfs f0, 0x69c(r29)
/* 807434D0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807434D4  C0 1D 06 A0 */	lfs f0, 0x6a0(r29)
/* 807434D8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807434DC  38 7E 02 48 */	addi r3, r30, 0x248
/* 807434E0  38 81 00 14 */	addi r4, r1, 0x14
/* 807434E4  38 A1 00 08 */	addi r5, r1, 8
/* 807434E8  C0 3D 06 D4 */	lfs f1, 0x6d4(r29)
/* 807434EC  38 C0 00 00 */	li r6, 0
/* 807434F0  4B A3 D5 F1 */	bl Set__9dCamera_cF4cXyz4cXyzfs
/* 807434F4  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 807434F8  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 807434FC  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 80743500  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80743504  E3 A1 00 38 */	psq_l f29, 56(r1), 0, 0 /* qr0 */
/* 80743508  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 8074350C  39 61 00 30 */	addi r11, r1, 0x30
/* 80743510  4B C1 ED 19 */	bl _restgpr_29
/* 80743514  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80743518  7C 08 03 A6 */	mtlr r0
/* 8074351C  38 21 00 60 */	addi r1, r1, 0x60
/* 80743520  4E 80 00 20 */	blr 

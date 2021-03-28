lbl_8023D7D8:
/* 8023D7D8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8023D7DC  7C 08 02 A6 */	mflr r0
/* 8023D7E0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8023D7E4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8023D7E8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8023D7EC  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8023D7F0  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8023D7F4  39 61 00 20 */	addi r11, r1, 0x20
/* 8023D7F8  48 12 49 DD */	bl _savegpr_27
/* 8023D7FC  7C 7B 1B 78 */	mr r27, r3
/* 8023D800  8B A3 00 60 */	lbz r29, 0x60(r3)
/* 8023D804  C3 C2 B1 C0 */	lfs f30, lit_3980(r2)
/* 8023D808  88 03 00 66 */	lbz r0, 0x66(r3)
/* 8023D80C  28 00 00 02 */	cmplwi r0, 2
/* 8023D810  40 82 00 08 */	bne lbl_8023D818
/* 8023D814  C3 C2 B1 C8 */	lfs f30, lit_4078(r2)
lbl_8023D818:
/* 8023D818  3B 80 00 00 */	li r28, 0
/* 8023D81C  3B E0 00 00 */	li r31, 0
/* 8023D820  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha
/* 8023D824  3B C3 02 8C */	addi r30, r3, g_MsgObject_HIO_c@l
lbl_8023D828:
/* 8023D828  38 1F 00 20 */	addi r0, r31, 0x20
/* 8023D82C  7C 7B 00 2E */	lwzx r3, r27, r0
/* 8023D830  C0 3B 00 48 */	lfs f1, 0x48(r27)
/* 8023D834  C0 1E 01 EC */	lfs f0, 0x1ec(r30)
/* 8023D838  EC 21 00 2A */	fadds f1, f1, f0
/* 8023D83C  C0 5B 00 4C */	lfs f2, 0x4c(r27)
/* 8023D840  C0 1E 02 64 */	lfs f0, 0x264(r30)
/* 8023D844  EC 02 00 2A */	fadds f0, f2, f0
/* 8023D848  EC 5E 00 2A */	fadds f2, f30, f0
/* 8023D84C  48 01 6D 65 */	bl paneTrans__8CPaneMgrFff
/* 8023D850  3B 9C 00 01 */	addi r28, r28, 1
/* 8023D854  2C 1C 00 02 */	cmpwi r28, 2
/* 8023D858  3B FF 00 04 */	addi r31, r31, 4
/* 8023D85C  41 80 FF CC */	blt lbl_8023D828
/* 8023D860  7F 63 DB 78 */	mr r3, r27
/* 8023D864  88 1B 00 60 */	lbz r0, 0x60(r27)
/* 8023D868  1C A0 00 0C */	mulli r5, r0, 0xc
/* 8023D86C  3C 80 80 3C */	lis r4, move_process@ha
/* 8023D870  38 04 0F 24 */	addi r0, r4, move_process@l
/* 8023D874  7D 80 2A 14 */	add r12, r0, r5
/* 8023D878  48 12 48 0D */	bl __ptmf_scall
/* 8023D87C  60 00 00 00 */	nop 
/* 8023D880  88 1B 00 60 */	lbz r0, 0x60(r27)
/* 8023D884  7C 1D 00 40 */	cmplw r29, r0
/* 8023D888  41 82 00 20 */	beq lbl_8023D8A8
/* 8023D88C  7F 63 DB 78 */	mr r3, r27
/* 8023D890  1C A0 00 0C */	mulli r5, r0, 0xc
/* 8023D894  3C 80 80 3C */	lis r4, init_process@ha
/* 8023D898  38 04 0E 94 */	addi r0, r4, init_process@l
/* 8023D89C  7D 80 2A 14 */	add r12, r0, r5
/* 8023D8A0  48 12 47 E5 */	bl __ptmf_scall
/* 8023D8A4  60 00 00 00 */	nop 
lbl_8023D8A8:
/* 8023D8A8  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha
/* 8023D8AC  38 63 02 8C */	addi r3, r3, g_MsgObject_HIO_c@l
/* 8023D8B0  C3 C3 00 9C */	lfs f30, 0x9c(r3)
/* 8023D8B4  C3 E3 00 70 */	lfs f31, 0x70(r3)
/* 8023D8B8  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 8023D8BC  3C 80 5F 61 */	lis r4, 0x5F61 /* 0x5F616C6C@ha */
/* 8023D8C0  38 C4 6C 6C */	addi r6, r4, 0x6C6C /* 0x5F616C6C@l */
/* 8023D8C4  38 A0 00 6E */	li r5, 0x6e
/* 8023D8C8  81 83 00 00 */	lwz r12, 0(r3)
/* 8023D8CC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8023D8D0  7D 89 03 A6 */	mtctr r12
/* 8023D8D4  4E 80 04 21 */	bctrl 
/* 8023D8D8  D3 E3 00 CC */	stfs f31, 0xcc(r3)
/* 8023D8DC  D3 C3 00 D0 */	stfs f30, 0xd0(r3)
/* 8023D8E0  81 83 00 00 */	lwz r12, 0(r3)
/* 8023D8E4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8023D8E8  7D 89 03 A6 */	mtctr r12
/* 8023D8EC  4E 80 04 21 */	bctrl 
/* 8023D8F0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8023D8F4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8023D8F8  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8023D8FC  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8023D900  39 61 00 20 */	addi r11, r1, 0x20
/* 8023D904  48 12 49 1D */	bl _restgpr_27
/* 8023D908  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8023D90C  7C 08 03 A6 */	mtlr r0
/* 8023D910  38 21 00 40 */	addi r1, r1, 0x40
/* 8023D914  4E 80 00 20 */	blr 

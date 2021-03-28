lbl_809A83A8:
/* 809A83A8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809A83AC  7C 08 02 A6 */	mflr r0
/* 809A83B0  90 01 00 44 */	stw r0, 0x44(r1)
/* 809A83B4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 809A83B8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 809A83BC  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 809A83C0  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 809A83C4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809A83C8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 809A83CC  7C 7F 1B 78 */	mr r31, r3
/* 809A83D0  3C 60 80 9B */	lis r3, m__17daNpc_Doc_Param_c@ha
/* 809A83D4  3B C3 A3 1C */	addi r30, r3, m__17daNpc_Doc_Param_c@l
/* 809A83D8  88 1F 0E 25 */	lbz r0, 0xe25(r31)
/* 809A83DC  28 00 00 00 */	cmplwi r0, 0
/* 809A83E0  40 82 01 00 */	bne lbl_809A84E0
/* 809A83E4  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 809A83E8  38 63 FD FF */	addi r3, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 809A83EC  38 80 00 1F */	li r4, 0x1f
/* 809A83F0  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 809A83F4  28 00 00 00 */	cmplwi r0, 0
/* 809A83F8  41 82 00 10 */	beq lbl_809A8408
/* 809A83FC  38 60 00 00 */	li r3, 0
/* 809A8400  38 80 00 00 */	li r4, 0
/* 809A8404  48 00 00 18 */	b lbl_809A841C
lbl_809A8408:
/* 809A8408  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 809A840C  2C 00 00 00 */	cmpwi r0, 0
/* 809A8410  41 82 00 0C */	beq lbl_809A841C
/* 809A8414  38 60 00 00 */	li r3, 0
/* 809A8418  38 80 00 00 */	li r4, 0
lbl_809A841C:
/* 809A841C  38 00 00 79 */	li r0, 0x79
/* 809A8420  90 1F 0E 70 */	stw r0, 0xe70(r31)
/* 809A8424  90 7F 0E 6C */	stw r3, 0xe6c(r31)
/* 809A8428  90 9F 0E 5C */	stw r4, 0xe5c(r31)
/* 809A842C  80 1F 0E E0 */	lwz r0, 0xee0(r31)
/* 809A8430  60 00 00 04 */	ori r0, r0, 4
/* 809A8434  90 1F 0E E0 */	stw r0, 0xee0(r31)
/* 809A8438  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 809A843C  D0 01 00 08 */	stfs f0, 8(r1)
/* 809A8440  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809A8444  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 809A8448  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809A844C  C3 FF 0D EC */	lfs f31, 0xdec(r31)
/* 809A8450  C3 DF 0D F0 */	lfs f30, 0xdf0(r31)
/* 809A8454  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 809A8458  28 00 00 01 */	cmplwi r0, 1
/* 809A845C  40 82 00 18 */	bne lbl_809A8474
/* 809A8460  38 60 01 41 */	li r3, 0x141
/* 809A8464  4B 7A 46 48 */	b daNpcT_chkEvtBit__FUl
/* 809A8468  2C 03 00 00 */	cmpwi r3, 0
/* 809A846C  40 82 00 08 */	bne lbl_809A8474
/* 809A8470  C3 DE 00 BC */	lfs f30, 0xbc(r30)
lbl_809A8474:
/* 809A8474  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809A8478  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809A847C  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 809A8480  4B 66 3F 5C */	b mDoMtx_YrotS__FPA4_fs
/* 809A8484  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809A8488  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809A848C  38 81 00 08 */	addi r4, r1, 8
/* 809A8490  7C 85 23 78 */	mr r5, r4
/* 809A8494  4B 99 E8 D8 */	b PSMTXMultVec
/* 809A8498  38 61 00 08 */	addi r3, r1, 8
/* 809A849C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 809A84A0  7C 65 1B 78 */	mr r5, r3
/* 809A84A4  4B 99 EB EC */	b PSVECAdd
/* 809A84A8  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 809A84AC  FC 20 F8 90 */	fmr f1, f31
/* 809A84B0  4B 8C 6D 48 */	b SetH__8cM3dGCylFf
/* 809A84B4  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 809A84B8  FC 20 F0 90 */	fmr f1, f30
/* 809A84BC  4B 8C 6D 44 */	b SetR__8cM3dGCylFf
/* 809A84C0  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 809A84C4  38 81 00 08 */	addi r4, r1, 8
/* 809A84C8  4B 8C 6D 14 */	b SetC__8cM3dGCylFRC4cXyz
/* 809A84CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809A84D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809A84D4  38 63 23 3C */	addi r3, r3, 0x233c
/* 809A84D8  38 9F 0E 44 */	addi r4, r31, 0xe44
/* 809A84DC  4B 8B C6 CC */	b Set__4cCcSFP8cCcD_Obj
lbl_809A84E0:
/* 809A84E0  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 809A84E4  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 809A84E8  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 809A84EC  7D 89 03 A6 */	mtctr r12
/* 809A84F0  4E 80 04 21 */	bctrl 
/* 809A84F4  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 809A84F8  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 809A84FC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 809A8500  7D 89 03 A6 */	mtctr r12
/* 809A8504  4E 80 04 21 */	bctrl 
/* 809A8508  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 809A850C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 809A8510  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 809A8514  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 809A8518  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809A851C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 809A8520  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809A8524  7C 08 03 A6 */	mtlr r0
/* 809A8528  38 21 00 40 */	addi r1, r1, 0x40
/* 809A852C  4E 80 00 20 */	blr 

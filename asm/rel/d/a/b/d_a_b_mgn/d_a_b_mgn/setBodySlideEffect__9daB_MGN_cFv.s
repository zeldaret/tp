lbl_80606424:
/* 80606424  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80606428  7C 08 02 A6 */	mflr r0
/* 8060642C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80606430  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80606434  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 80606438  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 8060643C  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 80606440  39 61 00 90 */	addi r11, r1, 0x90
/* 80606444  4B D5 BD 8D */	bl _savegpr_26
/* 80606448  7C 7B 1B 78 */	mr r27, r3
/* 8060644C  3C 60 80 61 */	lis r3, lit_3928@ha /* 0x8060FDE0@ha */
/* 80606450  3B C3 FD E0 */	addi r30, r3, lit_3928@l /* 0x8060FDE0@l */
/* 80606454  38 61 00 18 */	addi r3, r1, 0x18
/* 80606458  4B A7 11 25 */	bl __ct__11dBgS_GndChkFv
/* 8060645C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704F8@ha */
/* 80606460  38 03 04 F8 */	addi r0, r3, 0x04F8 /* 0x000704F8@l */
/* 80606464  90 01 00 08 */	stw r0, 8(r1)
/* 80606468  38 7B 09 E0 */	addi r3, r27, 0x9e0
/* 8060646C  38 81 00 08 */	addi r4, r1, 8
/* 80606470  38 A0 00 00 */	li r5, 0
/* 80606474  38 C0 FF FF */	li r6, -1
/* 80606478  81 9B 09 E0 */	lwz r12, 0x9e0(r27)
/* 8060647C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80606480  7D 89 03 A6 */	mtctr r12
/* 80606484  4E 80 04 21 */	bctrl 
/* 80606488  3B 80 00 00 */	li r28, 0
/* 8060648C  3B 40 00 00 */	li r26, 0
/* 80606490  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80606494  3B E3 D4 70 */	addi r31, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80606498  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8060649C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806064A0  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 806064A4  C3 DE 00 00 */	lfs f30, 0(r30)
/* 806064A8  C3 FE 00 3C */	lfs f31, 0x3c(r30)
lbl_806064AC:
/* 806064AC  2C 1C 00 00 */	cmpwi r28, 0
/* 806064B0  40 82 00 40 */	bne lbl_806064F0
/* 806064B4  80 7B 05 BC */	lwz r3, 0x5bc(r27)
/* 806064B8  80 63 00 04 */	lwz r3, 4(r3)
/* 806064BC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806064C0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806064C4  38 63 0B D0 */	addi r3, r3, 0xbd0
/* 806064C8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806064CC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806064D0  4B D3 FF E1 */	bl PSMTXCopy
/* 806064D4  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 806064D8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806064DC  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 806064E0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806064E4  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 806064E8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806064EC  48 00 00 4C */	b lbl_80606538
lbl_806064F0:
/* 806064F0  80 7B 05 BC */	lwz r3, 0x5bc(r27)
/* 806064F4  80 63 00 04 */	lwz r3, 4(r3)
/* 806064F8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806064FC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80606500  38 63 00 60 */	addi r3, r3, 0x60
/* 80606504  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80606508  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8060650C  4B D3 FF A5 */	bl PSMTXCopy
/* 80606510  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 80606514  C0 5E 00 04 */	lfs f2, 4(r30)
/* 80606518  FC 60 10 90 */	fmr f3, f2
/* 8060651C  4B A0 68 81 */	bl transM__14mDoMtx_stack_cFfff
/* 80606520  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80606524  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80606528  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8060652C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80606530  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80606534  D0 01 00 14 */	stfs f0, 0x14(r1)
lbl_80606538:
/* 80606538  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8060653C  EC 00 F0 2A */	fadds f0, f0, f30
/* 80606540  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80606544  38 61 00 18 */	addi r3, r1, 0x18
/* 80606548  38 81 00 0C */	addi r4, r1, 0xc
/* 8060654C  4B C6 17 DD */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80606550  7F A3 EB 78 */	mr r3, r29
/* 80606554  38 81 00 18 */	addi r4, r1, 0x18
/* 80606558  4B A6 DF 49 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8060655C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80606560  FC 00 08 18 */	frsp f0, f1
/* 80606564  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 80606568  41 82 00 28 */	beq lbl_80606590
/* 8060656C  7C 9B D2 14 */	add r4, r27, r26
/* 80606570  38 64 25 F8 */	addi r3, r4, 0x25f8
/* 80606574  38 84 26 08 */	addi r4, r4, 0x2608
/* 80606578  38 A1 00 0C */	addi r5, r1, 0xc
/* 8060657C  38 C0 00 00 */	li r6, 0
/* 80606580  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 80606584  38 FB 01 0C */	addi r7, r27, 0x10c
/* 80606588  39 00 00 00 */	li r8, 0
/* 8060658C  4B A1 6A 95 */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
lbl_80606590:
/* 80606590  3B 9C 00 01 */	addi r28, r28, 1
/* 80606594  2C 1C 00 02 */	cmpwi r28, 2
/* 80606598  3B 5A 00 04 */	addi r26, r26, 4
/* 8060659C  41 80 FF 10 */	blt lbl_806064AC
/* 806065A0  38 61 00 18 */	addi r3, r1, 0x18
/* 806065A4  38 80 FF FF */	li r4, -1
/* 806065A8  4B A7 10 49 */	bl __dt__11dBgS_GndChkFv
/* 806065AC  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 806065B0  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 806065B4  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 806065B8  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 806065BC  39 61 00 90 */	addi r11, r1, 0x90
/* 806065C0  4B D5 BC 5D */	bl _restgpr_26
/* 806065C4  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 806065C8  7C 08 03 A6 */	mtlr r0
/* 806065CC  38 21 00 B0 */	addi r1, r1, 0xb0
/* 806065D0  4E 80 00 20 */	blr 

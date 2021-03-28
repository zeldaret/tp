lbl_80B765D4:
/* 80B765D4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B765D8  7C 08 02 A6 */	mflr r0
/* 80B765DC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B765E0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80B765E4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80B765E8  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80B765EC  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80B765F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B765F4  7C 7F 1B 78 */	mr r31, r3
/* 80B765F8  3C 60 80 B7 */	lis r3, m__19daNpc_Zelda_Param_c@ha
/* 80B765FC  38 83 7F C8 */	addi r4, r3, m__19daNpc_Zelda_Param_c@l
/* 80B76600  88 1F 0E 25 */	lbz r0, 0xe25(r31)
/* 80B76604  28 00 00 00 */	cmplwi r0, 0
/* 80B76608  40 82 01 20 */	bne lbl_80B76728
/* 80B7660C  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80B76610  38 A3 FD FF */	addi r5, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80B76614  38 C0 00 1F */	li r6, 0x1f
/* 80B76618  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B7661C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B76620  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80B76624  28 00 00 00 */	cmplwi r0, 0
/* 80B76628  41 82 00 10 */	beq lbl_80B76638
/* 80B7662C  38 A0 00 00 */	li r5, 0
/* 80B76630  38 C0 00 00 */	li r6, 0
/* 80B76634  48 00 00 30 */	b lbl_80B76664
lbl_80B76638:
/* 80B76638  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80B7663C  28 00 00 00 */	cmplwi r0, 0
/* 80B76640  41 82 00 10 */	beq lbl_80B76650
/* 80B76644  38 A0 00 00 */	li r5, 0
/* 80B76648  38 C0 00 00 */	li r6, 0
/* 80B7664C  48 00 00 18 */	b lbl_80B76664
lbl_80B76650:
/* 80B76650  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80B76654  2C 00 00 00 */	cmpwi r0, 0
/* 80B76658  41 82 00 0C */	beq lbl_80B76664
/* 80B7665C  38 A0 00 00 */	li r5, 0
/* 80B76660  38 C0 00 00 */	li r6, 0
lbl_80B76664:
/* 80B76664  38 00 00 79 */	li r0, 0x79
/* 80B76668  90 1F 0E 70 */	stw r0, 0xe70(r31)
/* 80B7666C  90 BF 0E 6C */	stw r5, 0xe6c(r31)
/* 80B76670  90 DF 0E 5C */	stw r6, 0xe5c(r31)
/* 80B76674  80 1F 0E E0 */	lwz r0, 0xee0(r31)
/* 80B76678  60 00 00 04 */	ori r0, r0, 4
/* 80B7667C  90 1F 0E E0 */	stw r0, 0xee0(r31)
/* 80B76680  C0 04 00 A8 */	lfs f0, 0xa8(r4)
/* 80B76684  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B76688  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B7668C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B76690  C3 FF 0D EC */	lfs f31, 0xdec(r31)
/* 80B76694  C3 DF 0D F0 */	lfs f30, 0xdf0(r31)
/* 80B76698  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80B7669C  28 00 00 00 */	cmplwi r0, 0
/* 80B766A0  40 82 00 1C */	bne lbl_80B766BC
/* 80B766A4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B766A8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B766AC  C0 04 00 F0 */	lfs f0, 0xf0(r4)
/* 80B766B0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B766B4  C3 E4 00 F4 */	lfs f31, 0xf4(r4)
/* 80B766B8  C3 C4 00 F8 */	lfs f30, 0xf8(r4)
lbl_80B766BC:
/* 80B766BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B766C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B766C4  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 80B766C8  4B 49 5D 14 */	b mDoMtx_YrotS__FPA4_fs
/* 80B766CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B766D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B766D4  38 81 00 08 */	addi r4, r1, 8
/* 80B766D8  7C 85 23 78 */	mr r5, r4
/* 80B766DC  4B 7D 06 90 */	b PSMTXMultVec
/* 80B766E0  38 61 00 08 */	addi r3, r1, 8
/* 80B766E4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80B766E8  7C 65 1B 78 */	mr r5, r3
/* 80B766EC  4B 7D 09 A4 */	b PSVECAdd
/* 80B766F0  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80B766F4  FC 20 F8 90 */	fmr f1, f31
/* 80B766F8  4B 6F 8B 00 */	b SetH__8cM3dGCylFf
/* 80B766FC  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80B76700  FC 20 F0 90 */	fmr f1, f30
/* 80B76704  4B 6F 8A FC */	b SetR__8cM3dGCylFf
/* 80B76708  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80B7670C  38 81 00 08 */	addi r4, r1, 8
/* 80B76710  4B 6F 8A CC */	b SetC__8cM3dGCylFRC4cXyz
/* 80B76714  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B76718  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B7671C  38 63 23 3C */	addi r3, r3, 0x233c
/* 80B76720  38 9F 0E 44 */	addi r4, r31, 0xe44
/* 80B76724  4B 6E E4 84 */	b Set__4cCcSFP8cCcD_Obj
lbl_80B76728:
/* 80B76728  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 80B7672C  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 80B76730  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80B76734  7D 89 03 A6 */	mtctr r12
/* 80B76738  4E 80 04 21 */	bctrl 
/* 80B7673C  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 80B76740  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 80B76744  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80B76748  7D 89 03 A6 */	mtctr r12
/* 80B7674C  4E 80 04 21 */	bctrl 
/* 80B76750  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80B76754  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80B76758  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80B7675C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80B76760  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B76764  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B76768  7C 08 03 A6 */	mtlr r0
/* 80B7676C  38 21 00 40 */	addi r1, r1, 0x40
/* 80B76770  4E 80 00 20 */	blr 

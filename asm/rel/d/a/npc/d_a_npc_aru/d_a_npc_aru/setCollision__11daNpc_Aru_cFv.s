lbl_80953798:
/* 80953798  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8095379C  7C 08 02 A6 */	mflr r0
/* 809537A0  90 01 00 44 */	stw r0, 0x44(r1)
/* 809537A4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 809537A8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 809537AC  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 809537B0  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 809537B4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809537B8  7C 7F 1B 78 */	mr r31, r3
/* 809537BC  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 809537C0  28 00 00 00 */	cmplwi r0, 0
/* 809537C4  40 82 00 E0 */	bne lbl_809538A4
/* 809537C8  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 809537CC  38 63 FD FF */	addi r3, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 809537D0  38 80 00 1F */	li r4, 0x1f
/* 809537D4  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 809537D8  28 00 00 00 */	cmplwi r0, 0
/* 809537DC  41 82 00 10 */	beq lbl_809537EC
/* 809537E0  38 60 00 00 */	li r3, 0
/* 809537E4  38 80 00 00 */	li r4, 0
/* 809537E8  48 00 00 18 */	b lbl_80953800
lbl_809537EC:
/* 809537EC  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 809537F0  2C 00 00 00 */	cmpwi r0, 0
/* 809537F4  41 82 00 0C */	beq lbl_80953800
/* 809537F8  38 60 00 00 */	li r3, 0
/* 809537FC  38 80 00 00 */	li r4, 0
lbl_80953800:
/* 80953800  38 00 00 79 */	li r0, 0x79
/* 80953804  90 1F 0E 70 */	stw r0, 0xe70(r31)
/* 80953808  90 7F 0E 6C */	stw r3, 0xe6c(r31)
/* 8095380C  90 9F 0E 5C */	stw r4, 0xe5c(r31)
/* 80953810  80 1F 0E E0 */	lwz r0, 0xee0(r31)
/* 80953814  60 00 00 04 */	ori r0, r0, 4
/* 80953818  90 1F 0E E0 */	stw r0, 0xee0(r31)
/* 8095381C  3C 60 80 95 */	lis r3, lit_4100@ha
/* 80953820  C0 03 77 98 */	lfs f0, lit_4100@l(r3)
/* 80953824  D0 01 00 08 */	stfs f0, 8(r1)
/* 80953828  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8095382C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80953830  C3 FF 0D EC */	lfs f31, 0xdec(r31)
/* 80953834  C3 DF 0D F0 */	lfs f30, 0xdf0(r31)
/* 80953838  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8095383C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80953840  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 80953844  4B 6B 8B 98 */	b mDoMtx_YrotS__FPA4_fs
/* 80953848  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8095384C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80953850  38 81 00 08 */	addi r4, r1, 8
/* 80953854  7C 85 23 78 */	mr r5, r4
/* 80953858  4B 9F 35 14 */	b PSMTXMultVec
/* 8095385C  38 61 00 08 */	addi r3, r1, 8
/* 80953860  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80953864  7C 65 1B 78 */	mr r5, r3
/* 80953868  4B 9F 38 28 */	b PSVECAdd
/* 8095386C  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80953870  FC 20 F8 90 */	fmr f1, f31
/* 80953874  4B 91 B9 84 */	b SetH__8cM3dGCylFf
/* 80953878  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 8095387C  FC 20 F0 90 */	fmr f1, f30
/* 80953880  4B 91 B9 80 */	b SetR__8cM3dGCylFf
/* 80953884  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80953888  38 81 00 08 */	addi r4, r1, 8
/* 8095388C  4B 91 B9 50 */	b SetC__8cM3dGCylFRC4cXyz
/* 80953890  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80953894  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80953898  38 63 23 3C */	addi r3, r3, 0x233c
/* 8095389C  38 9F 0E 44 */	addi r4, r31, 0xe44
/* 809538A0  4B 91 13 08 */	b Set__4cCcSFP8cCcD_Obj
lbl_809538A4:
/* 809538A4  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 809538A8  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 809538AC  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 809538B0  7D 89 03 A6 */	mtctr r12
/* 809538B4  4E 80 04 21 */	bctrl 
/* 809538B8  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 809538BC  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 809538C0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 809538C4  7D 89 03 A6 */	mtctr r12
/* 809538C8  4E 80 04 21 */	bctrl 
/* 809538CC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 809538D0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 809538D4  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 809538D8  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 809538DC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809538E0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809538E4  7C 08 03 A6 */	mtlr r0
/* 809538E8  38 21 00 40 */	addi r1, r1, 0x40
/* 809538EC  4E 80 00 20 */	blr 

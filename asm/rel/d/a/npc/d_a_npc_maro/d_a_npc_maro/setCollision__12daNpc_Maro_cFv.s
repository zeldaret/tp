lbl_8055D918:
/* 8055D918  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8055D91C  7C 08 02 A6 */	mflr r0
/* 8055D920  90 01 00 44 */	stw r0, 0x44(r1)
/* 8055D924  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8055D928  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8055D92C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8055D930  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8055D934  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8055D938  7C 7F 1B 78 */	mr r31, r3
/* 8055D93C  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 8055D940  28 00 00 00 */	cmplwi r0, 0
/* 8055D944  40 82 00 E0 */	bne lbl_8055DA24
/* 8055D948  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 8055D94C  38 63 FD FF */	addi r3, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 8055D950  38 80 00 1F */	li r4, 0x1f
/* 8055D954  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 8055D958  28 00 00 00 */	cmplwi r0, 0
/* 8055D95C  41 82 00 10 */	beq lbl_8055D96C
/* 8055D960  38 60 00 00 */	li r3, 0
/* 8055D964  38 80 00 00 */	li r4, 0
/* 8055D968  48 00 00 18 */	b lbl_8055D980
lbl_8055D96C:
/* 8055D96C  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 8055D970  2C 00 00 00 */	cmpwi r0, 0
/* 8055D974  41 82 00 0C */	beq lbl_8055D980
/* 8055D978  38 60 00 00 */	li r3, 0
/* 8055D97C  38 80 00 00 */	li r4, 0
lbl_8055D980:
/* 8055D980  38 00 00 79 */	li r0, 0x79
/* 8055D984  90 1F 0F AC */	stw r0, 0xfac(r31)
/* 8055D988  90 7F 0F A8 */	stw r3, 0xfa8(r31)
/* 8055D98C  90 9F 0F 98 */	stw r4, 0xf98(r31)
/* 8055D990  80 1F 10 1C */	lwz r0, 0x101c(r31)
/* 8055D994  60 00 00 04 */	ori r0, r0, 4
/* 8055D998  90 1F 10 1C */	stw r0, 0x101c(r31)
/* 8055D99C  3C 60 80 56 */	lis r3, lit_4318@ha
/* 8055D9A0  C0 03 4C A0 */	lfs f0, lit_4318@l(r3)
/* 8055D9A4  D0 01 00 08 */	stfs f0, 8(r1)
/* 8055D9A8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8055D9AC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8055D9B0  C3 FF 0D EC */	lfs f31, 0xdec(r31)
/* 8055D9B4  C3 DF 0D F0 */	lfs f30, 0xdf0(r31)
/* 8055D9B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8055D9BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8055D9C0  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 8055D9C4  4B AA EA 18 */	b mDoMtx_YrotS__FPA4_fs
/* 8055D9C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8055D9CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8055D9D0  38 81 00 08 */	addi r4, r1, 8
/* 8055D9D4  7C 85 23 78 */	mr r5, r4
/* 8055D9D8  4B DE 93 94 */	b PSMTXMultVec
/* 8055D9DC  38 61 00 08 */	addi r3, r1, 8
/* 8055D9E0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8055D9E4  7C 65 1B 78 */	mr r5, r3
/* 8055D9E8  4B DE 96 A8 */	b PSVECAdd
/* 8055D9EC  38 7F 10 A4 */	addi r3, r31, 0x10a4
/* 8055D9F0  FC 20 F8 90 */	fmr f1, f31
/* 8055D9F4  4B D1 18 04 */	b SetH__8cM3dGCylFf
/* 8055D9F8  38 7F 10 A4 */	addi r3, r31, 0x10a4
/* 8055D9FC  FC 20 F0 90 */	fmr f1, f30
/* 8055DA00  4B D1 18 00 */	b SetR__8cM3dGCylFf
/* 8055DA04  38 7F 10 A4 */	addi r3, r31, 0x10a4
/* 8055DA08  38 81 00 08 */	addi r4, r1, 8
/* 8055DA0C  4B D1 17 D0 */	b SetC__8cM3dGCylFRC4cXyz
/* 8055DA10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8055DA14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8055DA18  38 63 23 3C */	addi r3, r3, 0x233c
/* 8055DA1C  38 9F 0F 80 */	addi r4, r31, 0xf80
/* 8055DA20  4B D0 71 88 */	b Set__4cCcSFP8cCcD_Obj
lbl_8055DA24:
/* 8055DA24  38 7F 0F 80 */	addi r3, r31, 0xf80
/* 8055DA28  81 9F 0F BC */	lwz r12, 0xfbc(r31)
/* 8055DA2C  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8055DA30  7D 89 03 A6 */	mtctr r12
/* 8055DA34  4E 80 04 21 */	bctrl 
/* 8055DA38  38 7F 0F 80 */	addi r3, r31, 0xf80
/* 8055DA3C  81 9F 0F BC */	lwz r12, 0xfbc(r31)
/* 8055DA40  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8055DA44  7D 89 03 A6 */	mtctr r12
/* 8055DA48  4E 80 04 21 */	bctrl 
/* 8055DA4C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8055DA50  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8055DA54  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8055DA58  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8055DA5C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8055DA60  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8055DA64  7C 08 03 A6 */	mtlr r0
/* 8055DA68  38 21 00 40 */	addi r1, r1, 0x40
/* 8055DA6C  4E 80 00 20 */	blr 

lbl_809D54C8:
/* 809D54C8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809D54CC  7C 08 02 A6 */	mflr r0
/* 809D54D0  90 01 00 34 */	stw r0, 0x34(r1)
/* 809D54D4  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 809D54D8  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 809D54DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809D54E0  7C 7F 1B 78 */	mr r31, r3
/* 809D54E4  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 809D54E8  28 00 00 00 */	cmplwi r0, 0
/* 809D54EC  40 82 00 C8 */	bne lbl_809D55B4
/* 809D54F0  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 809D54F4  28 00 00 01 */	cmplwi r0, 1
/* 809D54F8  40 82 00 24 */	bne lbl_809D551C
/* 809D54FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809D5500  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809D5504  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 809D5508  28 00 00 00 */	cmplwi r0, 0
/* 809D550C  40 82 00 10 */	bne lbl_809D551C
/* 809D5510  38 00 00 69 */	li r0, 0x69
/* 809D5514  90 1F 0F AC */	stw r0, 0xfac(r31)
/* 809D5518  48 00 00 0C */	b lbl_809D5524
lbl_809D551C:
/* 809D551C  38 00 00 79 */	li r0, 0x79
/* 809D5520  90 1F 0F AC */	stw r0, 0xfac(r31)
lbl_809D5524:
/* 809D5524  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 809D5528  2C 00 00 00 */	cmpwi r0, 0
/* 809D552C  41 82 00 14 */	beq lbl_809D5540
/* 809D5530  38 00 00 00 */	li r0, 0
/* 809D5534  90 1F 0F A8 */	stw r0, 0xfa8(r31)
/* 809D5538  90 1F 0F 98 */	stw r0, 0xf98(r31)
/* 809D553C  48 00 00 24 */	b lbl_809D5560
lbl_809D5540:
/* 809D5540  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 809D5544  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 809D5548  90 1F 0F A8 */	stw r0, 0xfa8(r31)
/* 809D554C  38 00 00 1F */	li r0, 0x1f
/* 809D5550  90 1F 0F 98 */	stw r0, 0xf98(r31)
/* 809D5554  80 1F 10 1C */	lwz r0, 0x101c(r31)
/* 809D5558  60 00 00 04 */	ori r0, r0, 4
/* 809D555C  90 1F 10 1C */	stw r0, 0x101c(r31)
lbl_809D5560:
/* 809D5560  C0 3F 0D EC */	lfs f1, 0xdec(r31)
/* 809D5564  C3 FF 0D F0 */	lfs f31, 0xdf0(r31)
/* 809D5568  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 809D556C  D0 01 00 08 */	stfs f0, 8(r1)
/* 809D5570  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 809D5574  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809D5578  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 809D557C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809D5580  38 7F 10 A4 */	addi r3, r31, 0x10a4
/* 809D5584  4B 89 9C 74 */	b SetH__8cM3dGCylFf
/* 809D5588  38 7F 10 A4 */	addi r3, r31, 0x10a4
/* 809D558C  FC 20 F8 90 */	fmr f1, f31
/* 809D5590  4B 89 9C 70 */	b SetR__8cM3dGCylFf
/* 809D5594  38 7F 10 A4 */	addi r3, r31, 0x10a4
/* 809D5598  38 81 00 08 */	addi r4, r1, 8
/* 809D559C  4B 89 9C 40 */	b SetC__8cM3dGCylFRC4cXyz
/* 809D55A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809D55A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809D55A8  38 63 23 3C */	addi r3, r3, 0x233c
/* 809D55AC  38 9F 0F 80 */	addi r4, r31, 0xf80
/* 809D55B0  4B 88 F5 F8 */	b Set__4cCcSFP8cCcD_Obj
lbl_809D55B4:
/* 809D55B4  38 7F 0F 80 */	addi r3, r31, 0xf80
/* 809D55B8  81 9F 0F BC */	lwz r12, 0xfbc(r31)
/* 809D55BC  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 809D55C0  7D 89 03 A6 */	mtctr r12
/* 809D55C4  4E 80 04 21 */	bctrl 
/* 809D55C8  38 7F 0F 80 */	addi r3, r31, 0xf80
/* 809D55CC  81 9F 0F BC */	lwz r12, 0xfbc(r31)
/* 809D55D0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 809D55D4  7D 89 03 A6 */	mtctr r12
/* 809D55D8  4E 80 04 21 */	bctrl 
/* 809D55DC  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 809D55E0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 809D55E4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809D55E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809D55EC  7C 08 03 A6 */	mtlr r0
/* 809D55F0  38 21 00 30 */	addi r1, r1, 0x30
/* 809D55F4  4E 80 00 20 */	blr 

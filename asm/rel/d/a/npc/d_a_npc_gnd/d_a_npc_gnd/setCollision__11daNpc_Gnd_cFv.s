lbl_809BCA14:
/* 809BCA14  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809BCA18  7C 08 02 A6 */	mflr r0
/* 809BCA1C  90 01 00 34 */	stw r0, 0x34(r1)
/* 809BCA20  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 809BCA24  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 809BCA28  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809BCA2C  7C 7F 1B 78 */	mr r31, r3
/* 809BCA30  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 809BCA34  38 83 FD FF */	addi r4, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 809BCA38  38 A0 00 1F */	li r5, 0x1f
/* 809BCA3C  88 1F 0E 25 */	lbz r0, 0xe25(r31)
/* 809BCA40  28 00 00 00 */	cmplwi r0, 0
/* 809BCA44  40 82 00 C0 */	bne lbl_809BCB04
/* 809BCA48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809BCA4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809BCA50  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 809BCA54  28 00 00 00 */	cmplwi r0, 0
/* 809BCA58  41 82 00 10 */	beq lbl_809BCA68
/* 809BCA5C  38 80 00 00 */	li r4, 0
/* 809BCA60  38 A0 00 00 */	li r5, 0
/* 809BCA64  48 00 00 30 */	b lbl_809BCA94
lbl_809BCA68:
/* 809BCA68  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 809BCA6C  28 00 00 00 */	cmplwi r0, 0
/* 809BCA70  41 82 00 10 */	beq lbl_809BCA80
/* 809BCA74  38 80 00 00 */	li r4, 0
/* 809BCA78  38 A0 00 00 */	li r5, 0
/* 809BCA7C  48 00 00 18 */	b lbl_809BCA94
lbl_809BCA80:
/* 809BCA80  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 809BCA84  2C 00 00 00 */	cmpwi r0, 0
/* 809BCA88  41 82 00 0C */	beq lbl_809BCA94
/* 809BCA8C  38 80 00 00 */	li r4, 0
/* 809BCA90  38 A0 00 00 */	li r5, 0
lbl_809BCA94:
/* 809BCA94  C0 3F 0D EC */	lfs f1, 0xdec(r31)
/* 809BCA98  C3 FF 0D F0 */	lfs f31, 0xdf0(r31)
/* 809BCA9C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 809BCAA0  D0 01 00 08 */	stfs f0, 8(r1)
/* 809BCAA4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 809BCAA8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809BCAAC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 809BCAB0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809BCAB4  38 00 00 79 */	li r0, 0x79
/* 809BCAB8  90 1F 0E 70 */	stw r0, 0xe70(r31)
/* 809BCABC  90 9F 0E 6C */	stw r4, 0xe6c(r31)
/* 809BCAC0  90 BF 0E 5C */	stw r5, 0xe5c(r31)
/* 809BCAC4  80 1F 0E E0 */	lwz r0, 0xee0(r31)
/* 809BCAC8  60 00 00 04 */	ori r0, r0, 4
/* 809BCACC  90 1F 0E E0 */	stw r0, 0xee0(r31)
/* 809BCAD0  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 809BCAD4  4B 8B 27 24 */	b SetH__8cM3dGCylFf
/* 809BCAD8  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 809BCADC  FC 20 F8 90 */	fmr f1, f31
/* 809BCAE0  4B 8B 27 20 */	b SetR__8cM3dGCylFf
/* 809BCAE4  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 809BCAE8  38 81 00 08 */	addi r4, r1, 8
/* 809BCAEC  4B 8B 26 F0 */	b SetC__8cM3dGCylFRC4cXyz
/* 809BCAF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809BCAF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809BCAF8  38 63 23 3C */	addi r3, r3, 0x233c
/* 809BCAFC  38 9F 0E 44 */	addi r4, r31, 0xe44
/* 809BCB00  4B 8A 80 A8 */	b Set__4cCcSFP8cCcD_Obj
lbl_809BCB04:
/* 809BCB04  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 809BCB08  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 809BCB0C  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 809BCB10  7D 89 03 A6 */	mtctr r12
/* 809BCB14  4E 80 04 21 */	bctrl 
/* 809BCB18  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 809BCB1C  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 809BCB20  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 809BCB24  7D 89 03 A6 */	mtctr r12
/* 809BCB28  4E 80 04 21 */	bctrl 
/* 809BCB2C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 809BCB30  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 809BCB34  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809BCB38  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809BCB3C  7C 08 03 A6 */	mtlr r0
/* 809BCB40  38 21 00 30 */	addi r1, r1, 0x30
/* 809BCB44  4E 80 00 20 */	blr 

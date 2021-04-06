lbl_80ACD1D0:
/* 80ACD1D0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80ACD1D4  7C 08 02 A6 */	mflr r0
/* 80ACD1D8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80ACD1DC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80ACD1E0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80ACD1E4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80ACD1E8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80ACD1EC  7C 7F 1B 78 */	mr r31, r3
/* 80ACD1F0  3C 60 80 AD */	lis r3, cNullVec__6Z2Calc@ha /* 0x80ACFF90@ha */
/* 80ACD1F4  3B C3 FF 90 */	addi r30, r3, cNullVec__6Z2Calc@l /* 0x80ACFF90@l */
/* 80ACD1F8  88 1F 0E 25 */	lbz r0, 0xe25(r31)
/* 80ACD1FC  28 00 00 00 */	cmplwi r0, 0
/* 80ACD200  40 82 01 30 */	bne lbl_80ACD330
/* 80ACD204  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80ACD208  28 00 00 01 */	cmplwi r0, 1
/* 80ACD20C  40 82 00 24 */	bne lbl_80ACD230
/* 80ACD210  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80ACD214  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80ACD218  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80ACD21C  28 00 00 00 */	cmplwi r0, 0
/* 80ACD220  40 82 00 10 */	bne lbl_80ACD230
/* 80ACD224  38 00 00 69 */	li r0, 0x69
/* 80ACD228  90 1F 0F B0 */	stw r0, 0xfb0(r31)
/* 80ACD22C  48 00 00 0C */	b lbl_80ACD238
lbl_80ACD230:
/* 80ACD230  38 00 00 79 */	li r0, 0x79
/* 80ACD234  90 1F 0F B0 */	stw r0, 0xfb0(r31)
lbl_80ACD238:
/* 80ACD238  38 7E 07 D0 */	addi r3, r30, 0x7d0
/* 80ACD23C  38 9F 10 DC */	addi r4, r31, 0x10dc
/* 80ACD240  4B 89 4E 09 */	bl __ptmf_cmpr
/* 80ACD244  2C 03 00 00 */	cmpwi r3, 0
/* 80ACD248  41 82 00 2C */	beq lbl_80ACD274
/* 80ACD24C  38 7E 07 DC */	addi r3, r30, 0x7dc
/* 80ACD250  38 9F 10 DC */	addi r4, r31, 0x10dc
/* 80ACD254  4B 89 4D F5 */	bl __ptmf_cmpr
/* 80ACD258  2C 03 00 00 */	cmpwi r3, 0
/* 80ACD25C  41 82 00 18 */	beq lbl_80ACD274
/* 80ACD260  38 7E 07 E8 */	addi r3, r30, 0x7e8
/* 80ACD264  38 9F 10 DC */	addi r4, r31, 0x10dc
/* 80ACD268  4B 89 4D E1 */	bl __ptmf_cmpr
/* 80ACD26C  2C 03 00 00 */	cmpwi r3, 0
/* 80ACD270  40 82 00 30 */	bne lbl_80ACD2A0
lbl_80ACD274:
/* 80ACD274  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80ACD278  81 9F 0F C0 */	lwz r12, 0xfc0(r31)
/* 80ACD27C  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80ACD280  7D 89 03 A6 */	mtctr r12
/* 80ACD284  4E 80 04 21 */	bctrl 
/* 80ACD288  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80ACD28C  81 9F 0F C0 */	lwz r12, 0xfc0(r31)
/* 80ACD290  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80ACD294  7D 89 03 A6 */	mtctr r12
/* 80ACD298  4E 80 04 21 */	bctrl 
/* 80ACD29C  48 00 00 BC */	b lbl_80ACD358
lbl_80ACD2A0:
/* 80ACD2A0  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80ACD2A4  2C 00 00 00 */	cmpwi r0, 0
/* 80ACD2A8  41 82 00 14 */	beq lbl_80ACD2BC
/* 80ACD2AC  38 00 00 00 */	li r0, 0
/* 80ACD2B0  90 1F 0F AC */	stw r0, 0xfac(r31)
/* 80ACD2B4  90 1F 0F 9C */	stw r0, 0xf9c(r31)
/* 80ACD2B8  48 00 00 24 */	b lbl_80ACD2DC
lbl_80ACD2BC:
/* 80ACD2BC  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80ACD2C0  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80ACD2C4  90 1F 0F AC */	stw r0, 0xfac(r31)
/* 80ACD2C8  38 00 00 1F */	li r0, 0x1f
/* 80ACD2CC  90 1F 0F 9C */	stw r0, 0xf9c(r31)
/* 80ACD2D0  80 1F 10 20 */	lwz r0, 0x1020(r31)
/* 80ACD2D4  60 00 00 04 */	ori r0, r0, 4
/* 80ACD2D8  90 1F 10 20 */	stw r0, 0x1020(r31)
lbl_80ACD2DC:
/* 80ACD2DC  C0 3F 0D EC */	lfs f1, 0xdec(r31)
/* 80ACD2E0  C3 FF 0D F0 */	lfs f31, 0xdf0(r31)
/* 80ACD2E4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80ACD2E8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80ACD2EC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80ACD2F0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80ACD2F4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80ACD2F8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80ACD2FC  38 7F 10 A8 */	addi r3, r31, 0x10a8
/* 80ACD300  4B 7A 1E F9 */	bl SetH__8cM3dGCylFf
/* 80ACD304  38 7F 10 A8 */	addi r3, r31, 0x10a8
/* 80ACD308  FC 20 F8 90 */	fmr f1, f31
/* 80ACD30C  4B 7A 1E F5 */	bl SetR__8cM3dGCylFf
/* 80ACD310  38 7F 10 A8 */	addi r3, r31, 0x10a8
/* 80ACD314  38 81 00 08 */	addi r4, r1, 8
/* 80ACD318  4B 7A 1E C5 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80ACD31C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80ACD320  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80ACD324  38 63 23 3C */	addi r3, r3, 0x233c
/* 80ACD328  38 9F 0F 84 */	addi r4, r31, 0xf84
/* 80ACD32C  4B 79 78 7D */	bl Set__4cCcSFP8cCcD_Obj
lbl_80ACD330:
/* 80ACD330  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80ACD334  81 9F 0F C0 */	lwz r12, 0xfc0(r31)
/* 80ACD338  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80ACD33C  7D 89 03 A6 */	mtctr r12
/* 80ACD340  4E 80 04 21 */	bctrl 
/* 80ACD344  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80ACD348  81 9F 0F C0 */	lwz r12, 0xfc0(r31)
/* 80ACD34C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80ACD350  7D 89 03 A6 */	mtctr r12
/* 80ACD354  4E 80 04 21 */	bctrl 
lbl_80ACD358:
/* 80ACD358  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80ACD35C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80ACD360  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80ACD364  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80ACD368  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80ACD36C  7C 08 03 A6 */	mtlr r0
/* 80ACD370  38 21 00 30 */	addi r1, r1, 0x30
/* 80ACD374  4E 80 00 20 */	blr 

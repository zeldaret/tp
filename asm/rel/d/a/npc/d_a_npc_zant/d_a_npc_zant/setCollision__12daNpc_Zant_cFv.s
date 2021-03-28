lbl_80B6D074:
/* 80B6D074  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B6D078  7C 08 02 A6 */	mflr r0
/* 80B6D07C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B6D080  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80B6D084  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80B6D088  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B6D08C  7C 7F 1B 78 */	mr r31, r3
/* 80B6D090  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80B6D094  38 83 FD FF */	addi r4, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80B6D098  38 A0 00 1F */	li r5, 0x1f
/* 80B6D09C  88 1F 0E 25 */	lbz r0, 0xe25(r31)
/* 80B6D0A0  28 00 00 00 */	cmplwi r0, 0
/* 80B6D0A4  40 82 00 C0 */	bne lbl_80B6D164
/* 80B6D0A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B6D0AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B6D0B0  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80B6D0B4  28 00 00 00 */	cmplwi r0, 0
/* 80B6D0B8  41 82 00 10 */	beq lbl_80B6D0C8
/* 80B6D0BC  38 80 00 00 */	li r4, 0
/* 80B6D0C0  38 A0 00 00 */	li r5, 0
/* 80B6D0C4  48 00 00 30 */	b lbl_80B6D0F4
lbl_80B6D0C8:
/* 80B6D0C8  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80B6D0CC  28 00 00 00 */	cmplwi r0, 0
/* 80B6D0D0  41 82 00 10 */	beq lbl_80B6D0E0
/* 80B6D0D4  38 80 00 00 */	li r4, 0
/* 80B6D0D8  38 A0 00 00 */	li r5, 0
/* 80B6D0DC  48 00 00 18 */	b lbl_80B6D0F4
lbl_80B6D0E0:
/* 80B6D0E0  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80B6D0E4  2C 00 00 00 */	cmpwi r0, 0
/* 80B6D0E8  41 82 00 0C */	beq lbl_80B6D0F4
/* 80B6D0EC  38 80 00 00 */	li r4, 0
/* 80B6D0F0  38 A0 00 00 */	li r5, 0
lbl_80B6D0F4:
/* 80B6D0F4  C0 3F 0D EC */	lfs f1, 0xdec(r31)
/* 80B6D0F8  C3 FF 0D F0 */	lfs f31, 0xdf0(r31)
/* 80B6D0FC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80B6D100  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B6D104  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80B6D108  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B6D10C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80B6D110  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B6D114  38 00 00 79 */	li r0, 0x79
/* 80B6D118  90 1F 0E 70 */	stw r0, 0xe70(r31)
/* 80B6D11C  90 9F 0E 6C */	stw r4, 0xe6c(r31)
/* 80B6D120  90 BF 0E 5C */	stw r5, 0xe5c(r31)
/* 80B6D124  80 1F 0E E0 */	lwz r0, 0xee0(r31)
/* 80B6D128  60 00 00 04 */	ori r0, r0, 4
/* 80B6D12C  90 1F 0E E0 */	stw r0, 0xee0(r31)
/* 80B6D130  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80B6D134  4B 70 20 C4 */	b SetH__8cM3dGCylFf
/* 80B6D138  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80B6D13C  FC 20 F8 90 */	fmr f1, f31
/* 80B6D140  4B 70 20 C0 */	b SetR__8cM3dGCylFf
/* 80B6D144  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80B6D148  38 81 00 08 */	addi r4, r1, 8
/* 80B6D14C  4B 70 20 90 */	b SetC__8cM3dGCylFRC4cXyz
/* 80B6D150  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B6D154  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B6D158  38 63 23 3C */	addi r3, r3, 0x233c
/* 80B6D15C  38 9F 0E 44 */	addi r4, r31, 0xe44
/* 80B6D160  4B 6F 7A 48 */	b Set__4cCcSFP8cCcD_Obj
lbl_80B6D164:
/* 80B6D164  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 80B6D168  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 80B6D16C  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80B6D170  7D 89 03 A6 */	mtctr r12
/* 80B6D174  4E 80 04 21 */	bctrl 
/* 80B6D178  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 80B6D17C  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 80B6D180  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80B6D184  7D 89 03 A6 */	mtctr r12
/* 80B6D188  4E 80 04 21 */	bctrl 
/* 80B6D18C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80B6D190  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80B6D194  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B6D198  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B6D19C  7C 08 03 A6 */	mtlr r0
/* 80B6D1A0  38 21 00 30 */	addi r1, r1, 0x30
/* 80B6D1A4  4E 80 00 20 */	blr 

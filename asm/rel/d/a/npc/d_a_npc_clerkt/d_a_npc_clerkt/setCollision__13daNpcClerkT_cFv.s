lbl_8099C1A0:
/* 8099C1A0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8099C1A4  7C 08 02 A6 */	mflr r0
/* 8099C1A8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8099C1AC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8099C1B0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8099C1B4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8099C1B8  7C 7F 1B 78 */	mr r31, r3
/* 8099C1BC  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 8099C1C0  38 83 FD FF */	addi r4, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 8099C1C4  38 A0 00 1F */	li r5, 0x1f
/* 8099C1C8  88 1F 0E 25 */	lbz r0, 0xe25(r31)
/* 8099C1CC  28 00 00 00 */	cmplwi r0, 0
/* 8099C1D0  40 82 00 C0 */	bne lbl_8099C290
/* 8099C1D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8099C1D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8099C1DC  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8099C1E0  28 00 00 00 */	cmplwi r0, 0
/* 8099C1E4  41 82 00 10 */	beq lbl_8099C1F4
/* 8099C1E8  38 80 00 00 */	li r4, 0
/* 8099C1EC  38 A0 00 00 */	li r5, 0
/* 8099C1F0  48 00 00 30 */	b lbl_8099C220
lbl_8099C1F4:
/* 8099C1F4  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 8099C1F8  28 00 00 00 */	cmplwi r0, 0
/* 8099C1FC  41 82 00 10 */	beq lbl_8099C20C
/* 8099C200  38 80 00 00 */	li r4, 0
/* 8099C204  38 A0 00 00 */	li r5, 0
/* 8099C208  48 00 00 18 */	b lbl_8099C220
lbl_8099C20C:
/* 8099C20C  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 8099C210  2C 00 00 00 */	cmpwi r0, 0
/* 8099C214  41 82 00 0C */	beq lbl_8099C220
/* 8099C218  38 80 00 00 */	li r4, 0
/* 8099C21C  38 A0 00 00 */	li r5, 0
lbl_8099C220:
/* 8099C220  C0 3F 0D EC */	lfs f1, 0xdec(r31)
/* 8099C224  C3 FF 0D F0 */	lfs f31, 0xdf0(r31)
/* 8099C228  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8099C22C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8099C230  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8099C234  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8099C238  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8099C23C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8099C240  38 00 00 79 */	li r0, 0x79
/* 8099C244  90 1F 0F AC */	stw r0, 0xfac(r31)
/* 8099C248  90 9F 0F A8 */	stw r4, 0xfa8(r31)
/* 8099C24C  90 BF 0F 98 */	stw r5, 0xf98(r31)
/* 8099C250  80 1F 10 1C */	lwz r0, 0x101c(r31)
/* 8099C254  60 00 00 04 */	ori r0, r0, 4
/* 8099C258  90 1F 10 1C */	stw r0, 0x101c(r31)
/* 8099C25C  38 7F 10 A4 */	addi r3, r31, 0x10a4
/* 8099C260  4B 8D 2F 99 */	bl SetH__8cM3dGCylFf
/* 8099C264  38 7F 10 A4 */	addi r3, r31, 0x10a4
/* 8099C268  FC 20 F8 90 */	fmr f1, f31
/* 8099C26C  4B 8D 2F 95 */	bl SetR__8cM3dGCylFf
/* 8099C270  38 7F 10 A4 */	addi r3, r31, 0x10a4
/* 8099C274  38 81 00 08 */	addi r4, r1, 8
/* 8099C278  4B 8D 2F 65 */	bl SetC__8cM3dGCylFRC4cXyz
/* 8099C27C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8099C280  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8099C284  38 63 23 3C */	addi r3, r3, 0x233c
/* 8099C288  38 9F 0F 80 */	addi r4, r31, 0xf80
/* 8099C28C  4B 8C 89 1D */	bl Set__4cCcSFP8cCcD_Obj
lbl_8099C290:
/* 8099C290  38 7F 0F 80 */	addi r3, r31, 0xf80
/* 8099C294  81 9F 0F BC */	lwz r12, 0xfbc(r31)
/* 8099C298  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8099C29C  7D 89 03 A6 */	mtctr r12
/* 8099C2A0  4E 80 04 21 */	bctrl 
/* 8099C2A4  38 7F 0F 80 */	addi r3, r31, 0xf80
/* 8099C2A8  81 9F 0F BC */	lwz r12, 0xfbc(r31)
/* 8099C2AC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8099C2B0  7D 89 03 A6 */	mtctr r12
/* 8099C2B4  4E 80 04 21 */	bctrl 
/* 8099C2B8  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8099C2BC  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8099C2C0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8099C2C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8099C2C8  7C 08 03 A6 */	mtlr r0
/* 8099C2CC  38 21 00 30 */	addi r1, r1, 0x30
/* 8099C2D0  4E 80 00 20 */	blr 

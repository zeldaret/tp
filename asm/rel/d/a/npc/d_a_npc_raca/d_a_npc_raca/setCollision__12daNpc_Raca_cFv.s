lbl_80AB7180:
/* 80AB7180  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AB7184  7C 08 02 A6 */	mflr r0
/* 80AB7188  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AB718C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80AB7190  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80AB7194  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AB7198  7C 7F 1B 78 */	mr r31, r3
/* 80AB719C  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80AB71A0  38 83 FD FF */	addi r4, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80AB71A4  38 A0 00 1F */	li r5, 0x1f
/* 80AB71A8  88 1F 0E 25 */	lbz r0, 0xe25(r31)
/* 80AB71AC  28 00 00 00 */	cmplwi r0, 0
/* 80AB71B0  40 82 00 C0 */	bne lbl_80AB7270
/* 80AB71B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AB71B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AB71BC  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80AB71C0  28 00 00 00 */	cmplwi r0, 0
/* 80AB71C4  41 82 00 10 */	beq lbl_80AB71D4
/* 80AB71C8  38 80 00 00 */	li r4, 0
/* 80AB71CC  38 A0 00 00 */	li r5, 0
/* 80AB71D0  48 00 00 30 */	b lbl_80AB7200
lbl_80AB71D4:
/* 80AB71D4  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80AB71D8  28 00 00 00 */	cmplwi r0, 0
/* 80AB71DC  41 82 00 10 */	beq lbl_80AB71EC
/* 80AB71E0  38 80 00 00 */	li r4, 0
/* 80AB71E4  38 A0 00 00 */	li r5, 0
/* 80AB71E8  48 00 00 18 */	b lbl_80AB7200
lbl_80AB71EC:
/* 80AB71EC  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80AB71F0  2C 00 00 00 */	cmpwi r0, 0
/* 80AB71F4  41 82 00 0C */	beq lbl_80AB7200
/* 80AB71F8  38 80 00 00 */	li r4, 0
/* 80AB71FC  38 A0 00 00 */	li r5, 0
lbl_80AB7200:
/* 80AB7200  C0 3F 0D EC */	lfs f1, 0xdec(r31)
/* 80AB7204  C3 FF 0D F0 */	lfs f31, 0xdf0(r31)
/* 80AB7208  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80AB720C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80AB7210  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80AB7214  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80AB7218  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80AB721C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AB7220  38 00 00 79 */	li r0, 0x79
/* 80AB7224  90 1F 0E 70 */	stw r0, 0xe70(r31)
/* 80AB7228  90 9F 0E 6C */	stw r4, 0xe6c(r31)
/* 80AB722C  90 BF 0E 5C */	stw r5, 0xe5c(r31)
/* 80AB7230  80 1F 0E E0 */	lwz r0, 0xee0(r31)
/* 80AB7234  60 00 00 04 */	ori r0, r0, 4
/* 80AB7238  90 1F 0E E0 */	stw r0, 0xee0(r31)
/* 80AB723C  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80AB7240  4B 7B 7F B8 */	b SetH__8cM3dGCylFf
/* 80AB7244  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80AB7248  FC 20 F8 90 */	fmr f1, f31
/* 80AB724C  4B 7B 7F B4 */	b SetR__8cM3dGCylFf
/* 80AB7250  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80AB7254  38 81 00 08 */	addi r4, r1, 8
/* 80AB7258  4B 7B 7F 84 */	b SetC__8cM3dGCylFRC4cXyz
/* 80AB725C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AB7260  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AB7264  38 63 23 3C */	addi r3, r3, 0x233c
/* 80AB7268  38 9F 0E 44 */	addi r4, r31, 0xe44
/* 80AB726C  4B 7A D9 3C */	b Set__4cCcSFP8cCcD_Obj
lbl_80AB7270:
/* 80AB7270  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 80AB7274  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 80AB7278  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80AB727C  7D 89 03 A6 */	mtctr r12
/* 80AB7280  4E 80 04 21 */	bctrl 
/* 80AB7284  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 80AB7288  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 80AB728C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80AB7290  7D 89 03 A6 */	mtctr r12
/* 80AB7294  4E 80 04 21 */	bctrl 
/* 80AB7298  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80AB729C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80AB72A0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AB72A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AB72A8  7C 08 03 A6 */	mtlr r0
/* 80AB72AC  38 21 00 30 */	addi r1, r1, 0x30
/* 80AB72B0  4E 80 00 20 */	blr 

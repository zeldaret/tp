lbl_80997A1C:
/* 80997A1C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80997A20  7C 08 02 A6 */	mflr r0
/* 80997A24  90 01 00 34 */	stw r0, 0x34(r1)
/* 80997A28  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80997A2C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80997A30  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80997A34  7C 7F 1B 78 */	mr r31, r3
/* 80997A38  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80997A3C  38 83 FD FF */	addi r4, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80997A40  38 A0 00 1F */	li r5, 0x1f
/* 80997A44  88 1F 0E 25 */	lbz r0, 0xe25(r31)
/* 80997A48  28 00 00 00 */	cmplwi r0, 0
/* 80997A4C  40 82 00 C0 */	bne lbl_80997B0C
/* 80997A50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80997A54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80997A58  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80997A5C  28 00 00 00 */	cmplwi r0, 0
/* 80997A60  41 82 00 10 */	beq lbl_80997A70
/* 80997A64  38 80 00 00 */	li r4, 0
/* 80997A68  38 A0 00 00 */	li r5, 0
/* 80997A6C  48 00 00 30 */	b lbl_80997A9C
lbl_80997A70:
/* 80997A70  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80997A74  28 00 00 00 */	cmplwi r0, 0
/* 80997A78  41 82 00 10 */	beq lbl_80997A88
/* 80997A7C  38 80 00 00 */	li r4, 0
/* 80997A80  38 A0 00 00 */	li r5, 0
/* 80997A84  48 00 00 18 */	b lbl_80997A9C
lbl_80997A88:
/* 80997A88  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80997A8C  2C 00 00 00 */	cmpwi r0, 0
/* 80997A90  41 82 00 0C */	beq lbl_80997A9C
/* 80997A94  38 80 00 00 */	li r4, 0
/* 80997A98  38 A0 00 00 */	li r5, 0
lbl_80997A9C:
/* 80997A9C  C0 3F 0D EC */	lfs f1, 0xdec(r31)
/* 80997AA0  C3 FF 0D F0 */	lfs f31, 0xdf0(r31)
/* 80997AA4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80997AA8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80997AAC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80997AB0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80997AB4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80997AB8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80997ABC  38 00 00 79 */	li r0, 0x79
/* 80997AC0  90 1F 0F C4 */	stw r0, 0xfc4(r31)
/* 80997AC4  90 9F 0F C0 */	stw r4, 0xfc0(r31)
/* 80997AC8  90 BF 0F B0 */	stw r5, 0xfb0(r31)
/* 80997ACC  80 1F 10 34 */	lwz r0, 0x1034(r31)
/* 80997AD0  60 00 00 04 */	ori r0, r0, 4
/* 80997AD4  90 1F 10 34 */	stw r0, 0x1034(r31)
/* 80997AD8  38 7F 10 BC */	addi r3, r31, 0x10bc
/* 80997ADC  4B 8D 77 1C */	b SetH__8cM3dGCylFf
/* 80997AE0  38 7F 10 BC */	addi r3, r31, 0x10bc
/* 80997AE4  FC 20 F8 90 */	fmr f1, f31
/* 80997AE8  4B 8D 77 18 */	b SetR__8cM3dGCylFf
/* 80997AEC  38 7F 10 BC */	addi r3, r31, 0x10bc
/* 80997AF0  38 81 00 08 */	addi r4, r1, 8
/* 80997AF4  4B 8D 76 E8 */	b SetC__8cM3dGCylFRC4cXyz
/* 80997AF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80997AFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80997B00  38 63 23 3C */	addi r3, r3, 0x233c
/* 80997B04  38 9F 0F 98 */	addi r4, r31, 0xf98
/* 80997B08  4B 8C D0 A0 */	b Set__4cCcSFP8cCcD_Obj
lbl_80997B0C:
/* 80997B0C  38 7F 0F 98 */	addi r3, r31, 0xf98
/* 80997B10  81 9F 0F D4 */	lwz r12, 0xfd4(r31)
/* 80997B14  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80997B18  7D 89 03 A6 */	mtctr r12
/* 80997B1C  4E 80 04 21 */	bctrl 
/* 80997B20  38 7F 0F 98 */	addi r3, r31, 0xf98
/* 80997B24  81 9F 0F D4 */	lwz r12, 0xfd4(r31)
/* 80997B28  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80997B2C  7D 89 03 A6 */	mtctr r12
/* 80997B30  4E 80 04 21 */	bctrl 
/* 80997B34  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80997B38  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80997B3C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80997B40  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80997B44  7C 08 03 A6 */	mtlr r0
/* 80997B48  38 21 00 30 */	addi r1, r1, 0x30
/* 80997B4C  4E 80 00 20 */	blr 

lbl_80993A40:
/* 80993A40  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80993A44  7C 08 02 A6 */	mflr r0
/* 80993A48  90 01 00 34 */	stw r0, 0x34(r1)
/* 80993A4C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80993A50  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80993A54  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80993A58  7C 7F 1B 78 */	mr r31, r3
/* 80993A5C  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80993A60  38 83 FD FF */	addi r4, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80993A64  38 A0 00 1F */	li r5, 0x1f
/* 80993A68  88 1F 0E 25 */	lbz r0, 0xe25(r31)
/* 80993A6C  28 00 00 00 */	cmplwi r0, 0
/* 80993A70  40 82 00 C0 */	bne lbl_80993B30
/* 80993A74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80993A78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80993A7C  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80993A80  28 00 00 00 */	cmplwi r0, 0
/* 80993A84  41 82 00 10 */	beq lbl_80993A94
/* 80993A88  38 80 00 00 */	li r4, 0
/* 80993A8C  38 A0 00 00 */	li r5, 0
/* 80993A90  48 00 00 30 */	b lbl_80993AC0
lbl_80993A94:
/* 80993A94  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80993A98  28 00 00 00 */	cmplwi r0, 0
/* 80993A9C  41 82 00 10 */	beq lbl_80993AAC
/* 80993AA0  38 80 00 00 */	li r4, 0
/* 80993AA4  38 A0 00 00 */	li r5, 0
/* 80993AA8  48 00 00 18 */	b lbl_80993AC0
lbl_80993AAC:
/* 80993AAC  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80993AB0  2C 00 00 00 */	cmpwi r0, 0
/* 80993AB4  41 82 00 0C */	beq lbl_80993AC0
/* 80993AB8  38 80 00 00 */	li r4, 0
/* 80993ABC  38 A0 00 00 */	li r5, 0
lbl_80993AC0:
/* 80993AC0  C0 3F 0D EC */	lfs f1, 0xdec(r31)
/* 80993AC4  C3 FF 0D F0 */	lfs f31, 0xdf0(r31)
/* 80993AC8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80993ACC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80993AD0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80993AD4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80993AD8  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80993ADC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80993AE0  38 00 00 79 */	li r0, 0x79
/* 80993AE4  90 1F 0F AC */	stw r0, 0xfac(r31)
/* 80993AE8  90 9F 0F A8 */	stw r4, 0xfa8(r31)
/* 80993AEC  90 BF 0F 98 */	stw r5, 0xf98(r31)
/* 80993AF0  80 1F 10 1C */	lwz r0, 0x101c(r31)
/* 80993AF4  60 00 00 04 */	ori r0, r0, 4
/* 80993AF8  90 1F 10 1C */	stw r0, 0x101c(r31)
/* 80993AFC  38 7F 10 A4 */	addi r3, r31, 0x10a4
/* 80993B00  4B 8D B6 F9 */	bl SetH__8cM3dGCylFf
/* 80993B04  38 7F 10 A4 */	addi r3, r31, 0x10a4
/* 80993B08  FC 20 F8 90 */	fmr f1, f31
/* 80993B0C  4B 8D B6 F5 */	bl SetR__8cM3dGCylFf
/* 80993B10  38 7F 10 A4 */	addi r3, r31, 0x10a4
/* 80993B14  38 81 00 08 */	addi r4, r1, 8
/* 80993B18  4B 8D B6 C5 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80993B1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80993B20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80993B24  38 63 23 3C */	addi r3, r3, 0x233c
/* 80993B28  38 9F 0F 80 */	addi r4, r31, 0xf80
/* 80993B2C  4B 8D 10 7D */	bl Set__4cCcSFP8cCcD_Obj
lbl_80993B30:
/* 80993B30  38 7F 0F 80 */	addi r3, r31, 0xf80
/* 80993B34  81 9F 0F BC */	lwz r12, 0xfbc(r31)
/* 80993B38  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80993B3C  7D 89 03 A6 */	mtctr r12
/* 80993B40  4E 80 04 21 */	bctrl 
/* 80993B44  38 7F 0F 80 */	addi r3, r31, 0xf80
/* 80993B48  81 9F 0F BC */	lwz r12, 0xfbc(r31)
/* 80993B4C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80993B50  7D 89 03 A6 */	mtctr r12
/* 80993B54  4E 80 04 21 */	bctrl 
/* 80993B58  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80993B5C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80993B60  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80993B64  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80993B68  7C 08 03 A6 */	mtlr r0
/* 80993B6C  38 21 00 30 */	addi r1, r1, 0x30
/* 80993B70  4E 80 00 20 */	blr 

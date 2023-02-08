lbl_802C6AC0:
/* 802C6AC0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802C6AC4  7C 08 02 A6 */	mflr r0
/* 802C6AC8  90 01 00 34 */	stw r0, 0x34(r1)
/* 802C6ACC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 802C6AD0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 802C6AD4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802C6AD8  7C 7F 1B 78 */	mr r31, r3
/* 802C6ADC  FF E0 08 90 */	fmr f31, f1
/* 802C6AE0  C0 02 C3 74 */	lfs f0, lit_3705(r2)
/* 802C6AE4  D0 03 00 60 */	stfs f0, 0x60(r3)
/* 802C6AE8  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 802C6AEC  41 82 01 14 */	beq lbl_802C6C00
/* 802C6AF0  C0 02 C3 F0 */	lfs f0, lit_3963(r2)
/* 802C6AF4  EC 00 07 F2 */	fmuls f0, f0, f31
/* 802C6AF8  FC 00 00 1E */	fctiwz f0, f0
/* 802C6AFC  D8 01 00 08 */	stfd f0, 8(r1)
/* 802C6B00  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 802C6B04  38 E0 00 00 */	li r7, 0
/* 802C6B08  2C 04 00 21 */	cmpwi r4, 0x21
/* 802C6B0C  41 82 00 D4 */	beq lbl_802C6BE0
/* 802C6B10  40 80 00 1C */	bge lbl_802C6B2C
/* 802C6B14  2C 04 00 1F */	cmpwi r4, 0x1f
/* 802C6B18  41 82 00 7C */	beq lbl_802C6B94
/* 802C6B1C  40 80 00 B0 */	bge lbl_802C6BCC
/* 802C6B20  2C 04 00 1E */	cmpwi r4, 0x1e
/* 802C6B24  40 80 00 20 */	bge lbl_802C6B44
/* 802C6B28  48 00 00 B8 */	b lbl_802C6BE0
lbl_802C6B2C:
/* 802C6B2C  2C 04 00 45 */	cmpwi r4, 0x45
/* 802C6B30  41 82 00 AC */	beq lbl_802C6BDC
/* 802C6B34  40 80 00 AC */	bge lbl_802C6BE0
/* 802C6B38  2C 04 00 23 */	cmpwi r4, 0x23
/* 802C6B3C  40 80 00 A4 */	bge lbl_802C6BE0
/* 802C6B40  48 00 00 94 */	b lbl_802C6BD4
lbl_802C6B44:
/* 802C6B44  7C A0 07 74 */	extsb r0, r5
/* 802C6B48  2C 00 00 0A */	cmpwi r0, 0xa
/* 802C6B4C  41 82 00 40 */	beq lbl_802C6B8C
/* 802C6B50  40 80 00 1C */	bge lbl_802C6B6C
/* 802C6B54  2C 00 00 08 */	cmpwi r0, 8
/* 802C6B58  41 82 00 34 */	beq lbl_802C6B8C
/* 802C6B5C  40 80 00 28 */	bge lbl_802C6B84
/* 802C6B60  2C 00 00 07 */	cmpwi r0, 7
/* 802C6B64  40 80 00 20 */	bge lbl_802C6B84
/* 802C6B68  48 00 00 24 */	b lbl_802C6B8C
lbl_802C6B6C:
/* 802C6B6C  2C 00 00 0D */	cmpwi r0, 0xd
/* 802C6B70  41 82 00 0C */	beq lbl_802C6B7C
/* 802C6B74  40 80 00 18 */	bge lbl_802C6B8C
/* 802C6B78  48 00 00 0C */	b lbl_802C6B84
lbl_802C6B7C:
/* 802C6B7C  38 E0 00 0A */	li r7, 0xa
/* 802C6B80  48 00 00 60 */	b lbl_802C6BE0
lbl_802C6B84:
/* 802C6B84  38 E0 00 02 */	li r7, 2
/* 802C6B88  48 00 00 58 */	b lbl_802C6BE0
lbl_802C6B8C:
/* 802C6B8C  38 E0 00 06 */	li r7, 6
/* 802C6B90  48 00 00 50 */	b lbl_802C6BE0
lbl_802C6B94:
/* 802C6B94  7C A0 07 74 */	extsb r0, r5
/* 802C6B98  2C 00 00 10 */	cmpwi r0, 0x10
/* 802C6B9C  41 82 00 20 */	beq lbl_802C6BBC
/* 802C6BA0  40 80 00 10 */	bge lbl_802C6BB0
/* 802C6BA4  2C 00 00 08 */	cmpwi r0, 8
/* 802C6BA8  41 82 00 14 */	beq lbl_802C6BBC
/* 802C6BAC  48 00 00 34 */	b lbl_802C6BE0
lbl_802C6BB0:
/* 802C6BB0  2C 00 00 12 */	cmpwi r0, 0x12
/* 802C6BB4  40 80 00 2C */	bge lbl_802C6BE0
/* 802C6BB8  48 00 00 0C */	b lbl_802C6BC4
lbl_802C6BBC:
/* 802C6BBC  38 E0 00 06 */	li r7, 6
/* 802C6BC0  48 00 00 20 */	b lbl_802C6BE0
lbl_802C6BC4:
/* 802C6BC4  38 E0 00 0A */	li r7, 0xa
/* 802C6BC8  48 00 00 18 */	b lbl_802C6BE0
lbl_802C6BCC:
/* 802C6BCC  38 E0 00 0A */	li r7, 0xa
/* 802C6BD0  48 00 00 10 */	b lbl_802C6BE0
lbl_802C6BD4:
/* 802C6BD4  38 E0 00 06 */	li r7, 6
/* 802C6BD8  48 00 00 08 */	b lbl_802C6BE0
lbl_802C6BDC:
/* 802C6BDC  38 E0 00 07 */	li r7, 7
lbl_802C6BE0:
/* 802C6BE0  7F E3 FB 78 */	mr r3, r31
/* 802C6BE4  7C E4 3B 78 */	mr r4, r7
/* 802C6BE8  7C C5 33 78 */	mr r5, r6
/* 802C6BEC  38 C0 00 FF */	li r6, 0xff
/* 802C6BF0  38 E0 00 FF */	li r7, 0xff
/* 802C6BF4  39 00 00 00 */	li r8, 0
/* 802C6BF8  48 00 00 8D */	bl initStaticEnvSe__10Z2EnvSeMgrFUcUcUcUcP3Vec
/* 802C6BFC  D3 FF 00 60 */	stfs f31, 0x60(r31)
lbl_802C6C00:
/* 802C6C00  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 802C6C04  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 802C6C08  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802C6C0C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802C6C10  7C 08 03 A6 */	mtlr r0
/* 802C6C14  38 21 00 30 */	addi r1, r1, 0x30
/* 802C6C18  4E 80 00 20 */	blr 

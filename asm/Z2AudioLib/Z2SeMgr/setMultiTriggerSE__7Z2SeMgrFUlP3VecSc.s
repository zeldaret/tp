lbl_802ADFF4:
/* 802ADFF4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802ADFF8  7C 08 02 A6 */	mflr r0
/* 802ADFFC  90 01 00 34 */	stw r0, 0x34(r1)
/* 802AE000  39 61 00 30 */	addi r11, r1, 0x30
/* 802AE004  48 0B 41 D9 */	bl _savegpr_29
/* 802AE008  7C 7E 1B 78 */	mr r30, r3
/* 802AE00C  7C DF 33 78 */	mr r31, r6
/* 802AE010  38 E0 00 00 */	li r7, 0
/* 802AE014  88 C3 03 3C */	lbz r6, 0x33c(r3)
/* 802AE018  48 00 00 20 */	b lbl_802AE038
lbl_802AE01C:
/* 802AE01C  54 E0 06 3E */	clrlwi r0, r7, 0x18
/* 802AE020  1C 60 00 24 */	mulli r3, r0, 0x24
/* 802AE024  38 03 01 F0 */	addi r0, r3, 0x1f0
/* 802AE028  7C 1E 00 2E */	lwzx r0, r30, r0
/* 802AE02C  7C 00 20 40 */	cmplw r0, r4
/* 802AE030  41 82 00 14 */	beq lbl_802AE044
/* 802AE034  38 E7 00 01 */	addi r7, r7, 1
lbl_802AE038:
/* 802AE038  54 E0 06 3E */	clrlwi r0, r7, 0x18
/* 802AE03C  7C 00 30 40 */	cmplw r0, r6
/* 802AE040  41 80 FF DC */	blt lbl_802AE01C
lbl_802AE044:
/* 802AE044  54 E0 06 3E */	clrlwi r0, r7, 0x18
/* 802AE048  7C 00 30 40 */	cmplw r0, r6
/* 802AE04C  40 82 00 24 */	bne lbl_802AE070
/* 802AE050  28 06 00 0A */	cmplwi r6, 0xa
/* 802AE054  41 82 01 18 */	beq lbl_802AE16C
/* 802AE058  1C 00 00 24 */	mulli r0, r0, 0x24
/* 802AE05C  7C 7E 02 14 */	add r3, r30, r0
/* 802AE060  90 83 01 F0 */	stw r4, 0x1f0(r3)
/* 802AE064  88 7E 03 3C */	lbz r3, 0x33c(r30)
/* 802AE068  38 03 00 01 */	addi r0, r3, 1
/* 802AE06C  98 1E 03 3C */	stb r0, 0x33c(r30)
lbl_802AE070:
/* 802AE070  C0 42 BE 80 */	lfs f2, lit_4042(r2)
/* 802AE074  3C 60 80 3A */	lis r3, lit_5100@ha
/* 802AE078  38 C3 B9 FC */	addi r6, r3, lit_5100@l
/* 802AE07C  80 66 00 00 */	lwz r3, 0(r6)
/* 802AE080  80 06 00 04 */	lwz r0, 4(r6)
/* 802AE084  90 61 00 14 */	stw r3, 0x14(r1)
/* 802AE088  90 01 00 18 */	stw r0, 0x18(r1)
/* 802AE08C  80 06 00 08 */	lwz r0, 8(r6)
/* 802AE090  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802AE094  28 05 00 00 */	cmplwi r5, 0
/* 802AE098  41 82 00 20 */	beq lbl_802AE0B8
/* 802AE09C  C0 05 00 00 */	lfs f0, 0(r5)
/* 802AE0A0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802AE0A4  C0 05 00 04 */	lfs f0, 4(r5)
/* 802AE0A8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 802AE0AC  C0 05 00 08 */	lfs f0, 8(r5)
/* 802AE0B0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 802AE0B4  48 00 00 2C */	b lbl_802AE0E0
lbl_802AE0B8:
/* 802AE0B8  80 6D 85 C4 */	lwz r3, data_80450B44(r13)
/* 802AE0BC  E0 03 01 70 */	psq_l f0, 368(r3), 0, 0 /* qr0 */
/* 802AE0C0  C0 23 01 78 */	lfs f1, 0x178(r3)
/* 802AE0C4  F0 01 00 08 */	psq_st f0, 8(r1), 0, 0 /* qr0 */
/* 802AE0C8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 802AE0CC  C0 01 00 08 */	lfs f0, 8(r1)
/* 802AE0D0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802AE0D4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 802AE0D8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 802AE0DC  D0 21 00 1C */	stfs f1, 0x1c(r1)
lbl_802AE0E0:
/* 802AE0E0  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008020F@ha */
/* 802AE0E4  38 03 02 0F */	addi r0, r3, 0x020F /* 0x0008020F@l */
/* 802AE0E8  7C 04 00 00 */	cmpw r4, r0
/* 802AE0EC  41 82 00 40 */	beq lbl_802AE12C
/* 802AE0F0  40 80 00 24 */	bge lbl_802AE114
/* 802AE0F4  38 03 02 08 */	addi r0, r3, 0x208
/* 802AE0F8  7C 04 00 00 */	cmpw r4, r0
/* 802AE0FC  41 82 00 28 */	beq lbl_802AE124
/* 802AE100  41 80 00 30 */	blt lbl_802AE130
/* 802AE104  38 03 02 0B */	addi r0, r3, 0x20b
/* 802AE108  7C 04 00 00 */	cmpw r4, r0
/* 802AE10C  40 80 00 18 */	bge lbl_802AE124
/* 802AE110  48 00 00 20 */	b lbl_802AE130
lbl_802AE114:
/* 802AE114  38 03 02 13 */	addi r0, r3, 0x213
/* 802AE118  7C 04 00 00 */	cmpw r4, r0
/* 802AE11C  41 82 00 08 */	beq lbl_802AE124
/* 802AE120  48 00 00 10 */	b lbl_802AE130
lbl_802AE124:
/* 802AE124  C0 42 BF 94 */	lfs f2, lit_5134(r2)
/* 802AE128  48 00 00 08 */	b lbl_802AE130
lbl_802AE12C:
/* 802AE12C  C0 42 BE F8 */	lfs f2, lit_4590(r2)
lbl_802AE130:
/* 802AE130  54 E0 06 3E */	clrlwi r0, r7, 0x18
/* 802AE134  1F A0 00 24 */	mulli r29, r0, 0x24
/* 802AE138  7C 7E EA 14 */	add r3, r30, r29
/* 802AE13C  D0 43 01 D4 */	stfs f2, 0x1d4(r3)
/* 802AE140  38 7D 01 D4 */	addi r3, r29, 0x1d4
/* 802AE144  7C 7E 1A 14 */	add r3, r30, r3
/* 802AE148  38 81 00 14 */	addi r4, r1, 0x14
/* 802AE14C  48 00 0A 25 */	bl registMultiSePos__12Z2MultiSeMgrFP3Vec
/* 802AE150  7C 9E EA 14 */	add r4, r30, r29
/* 802AE154  88 04 01 F4 */	lbz r0, 0x1f4(r4)
/* 802AE158  7C 03 07 74 */	extsb r3, r0
/* 802AE15C  7F E0 07 74 */	extsb r0, r31
/* 802AE160  7C 03 00 00 */	cmpw r3, r0
/* 802AE164  40 80 00 08 */	bge lbl_802AE16C
/* 802AE168  9B E4 01 F4 */	stb r31, 0x1f4(r4)
lbl_802AE16C:
/* 802AE16C  39 61 00 30 */	addi r11, r1, 0x30
/* 802AE170  48 0B 40 B9 */	bl _restgpr_29
/* 802AE174  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802AE178  7C 08 03 A6 */	mtlr r0
/* 802AE17C  38 21 00 30 */	addi r1, r1, 0x30
/* 802AE180  4E 80 00 20 */	blr 

lbl_80528A78:
/* 80528A78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80528A7C  7C 08 02 A6 */	mflr r0
/* 80528A80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80528A84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80528A88  7C 7F 1B 78 */	mr r31, r3
/* 80528A8C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80528A90  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80528A94  40 82 00 1C */	bne lbl_80528AB0
/* 80528A98  28 1F 00 00 */	cmplwi r31, 0
/* 80528A9C  41 82 00 08 */	beq lbl_80528AA4
/* 80528AA0  4B AF 00 C4 */	b __ct__10fopAc_ac_cFv
lbl_80528AA4:
/* 80528AA4  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80528AA8  60 00 00 08 */	ori r0, r0, 8
/* 80528AAC  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80528AB0:
/* 80528AB0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80528AB4  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80528AB8  98 1F 05 6C */	stb r0, 0x56c(r31)
/* 80528ABC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80528AC0  98 1F 05 6D */	stb r0, 0x56d(r31)
/* 80528AC4  3C 60 80 53 */	lis r3, lit_3665@ha
/* 80528AC8  C0 23 8B 18 */	lfs f1, lit_3665@l(r3)
/* 80528ACC  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80528AD0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80528AD4  D0 1F 05 68 */	stfs f0, 0x568(r31)
/* 80528AD8  88 1F 05 6C */	lbz r0, 0x56c(r31)
/* 80528ADC  28 00 00 00 */	cmplwi r0, 0
/* 80528AE0  40 82 00 18 */	bne lbl_80528AF8
/* 80528AE4  38 00 00 21 */	li r0, 0x21
/* 80528AE8  98 1F 05 4B */	stb r0, 0x54b(r31)
/* 80528AEC  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 80528AF0  60 00 00 80 */	ori r0, r0, 0x80
/* 80528AF4  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_80528AF8:
/* 80528AF8  38 60 00 04 */	li r3, 4
/* 80528AFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80528B00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80528B04  7C 08 03 A6 */	mtlr r0
/* 80528B08  38 21 00 10 */	addi r1, r1, 0x10
/* 80528B0C  4E 80 00 20 */	blr 

lbl_805CBB80:
/* 805CBB80  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805CBB84  7C 08 02 A6 */	mflr r0
/* 805CBB88  90 01 00 54 */	stw r0, 0x54(r1)
/* 805CBB8C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 805CBB90  7C 7F 1B 78 */	mr r31, r3
/* 805CBB94  80 03 08 38 */	lwz r0, 0x838(r3)
/* 805CBB98  2C 00 00 14 */	cmpwi r0, 0x14
/* 805CBB9C  40 80 01 50 */	bge lbl_805CBCEC
/* 805CBBA0  80 1F 08 DC */	lwz r0, 0x8dc(r31)
/* 805CBBA4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 805CBBA8  41 82 01 3C */	beq lbl_805CBCE4
/* 805CBBAC  88 1F 08 4D */	lbz r0, 0x84d(r31)
/* 805CBBB0  28 00 00 00 */	cmplwi r0, 0
/* 805CBBB4  40 82 01 38 */	bne lbl_805CBCEC
/* 805CBBB8  3C 60 80 5E */	lis r3, lit_4339@ha /* 0x805DCAB0@ha */
/* 805CBBBC  C0 03 CA B0 */	lfs f0, lit_4339@l(r3)  /* 0x805DCAB0@l */
/* 805CBBC0  C0 5F 09 48 */	lfs f2, 0x948(r31)
/* 805CBBC4  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 805CBBC8  41 82 01 24 */	beq lbl_805CBCEC
/* 805CBBCC  3C 60 80 5E */	lis r3, lit_3934@ha /* 0x805DCA5C@ha */
/* 805CBBD0  C0 23 CA 5C */	lfs f1, lit_3934@l(r3)  /* 0x805DCA5C@l */
/* 805CBBD4  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 805CBBD8  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 805CBBDC  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 805CBBE0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805CBBE4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805CBBE8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805CBBEC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805CBBF0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805CBBF4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805CBBF8  80 1F 04 E4 */	lwz r0, 0x4e4(r31)
/* 805CBBFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805CBC00  A0 1F 04 E8 */	lhz r0, 0x4e8(r31)
/* 805CBC04  B0 01 00 28 */	sth r0, 0x28(r1)
/* 805CBC08  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 805CBC0C  38 80 00 00 */	li r4, 0
/* 805CBC10  B0 81 00 28 */	sth r4, 0x28(r1)
/* 805CBC14  B0 81 00 24 */	sth r4, 0x24(r1)
/* 805CBC18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805CBC1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805CBC20  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 805CBC24  38 00 00 FF */	li r0, 0xff
/* 805CBC28  90 01 00 08 */	stw r0, 8(r1)
/* 805CBC2C  90 81 00 0C */	stw r4, 0xc(r1)
/* 805CBC30  38 00 FF FF */	li r0, -1
/* 805CBC34  90 01 00 10 */	stw r0, 0x10(r1)
/* 805CBC38  90 81 00 14 */	stw r4, 0x14(r1)
/* 805CBC3C  90 81 00 18 */	stw r4, 0x18(r1)
/* 805CBC40  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805CBC44  80 1F 08 38 */	lwz r0, 0x838(r31)
/* 805CBC48  54 00 10 3A */	slwi r0, r0, 2
/* 805CBC4C  7C 9F 02 14 */	add r4, r31, r0
/* 805CBC50  80 84 2E 1C */	lwz r4, 0x2e1c(r4)
/* 805CBC54  38 A0 00 00 */	li r5, 0
/* 805CBC58  3C C0 80 5E */	lis r6, eff_smoke_id@ha /* 0x805DD470@ha */
/* 805CBC5C  38 C6 D4 70 */	addi r6, r6, eff_smoke_id@l /* 0x805DD470@l */
/* 805CBC60  A0 C6 00 02 */	lhz r6, 2(r6)
/* 805CBC64  38 E1 00 2C */	addi r7, r1, 0x2c
/* 805CBC68  39 00 00 00 */	li r8, 0
/* 805CBC6C  39 21 00 24 */	addi r9, r1, 0x24
/* 805CBC70  39 41 00 38 */	addi r10, r1, 0x38
/* 805CBC74  4B A8 18 59 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805CBC78  80 1F 08 38 */	lwz r0, 0x838(r31)
/* 805CBC7C  54 00 10 3A */	slwi r0, r0, 2
/* 805CBC80  7C 9F 02 14 */	add r4, r31, r0
/* 805CBC84  90 64 2E 1C */	stw r3, 0x2e1c(r4)
/* 805CBC88  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805CBC8C  D0 1F 06 C4 */	stfs f0, 0x6c4(r31)
/* 805CBC90  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805CBC94  D0 1F 06 C8 */	stfs f0, 0x6c8(r31)
/* 805CBC98  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805CBC9C  D0 1F 06 CC */	stfs f0, 0x6cc(r31)
/* 805CBCA0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704D5@ha */
/* 805CBCA4  38 03 04 D5 */	addi r0, r3, 0x04D5 /* 0x000704D5@l */
/* 805CBCA8  90 01 00 20 */	stw r0, 0x20(r1)
/* 805CBCAC  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 805CBCB0  38 81 00 20 */	addi r4, r1, 0x20
/* 805CBCB4  38 A0 00 00 */	li r5, 0
/* 805CBCB8  38 C0 FF FF */	li r6, -1
/* 805CBCBC  81 9F 05 DC */	lwz r12, 0x5dc(r31)
/* 805CBCC0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805CBCC4  7D 89 03 A6 */	mtctr r12
/* 805CBCC8  4E 80 04 21 */	bctrl 
/* 805CBCCC  38 00 00 01 */	li r0, 1
/* 805CBCD0  98 1F 08 4D */	stb r0, 0x84d(r31)
/* 805CBCD4  80 7F 08 38 */	lwz r3, 0x838(r31)
/* 805CBCD8  38 03 00 01 */	addi r0, r3, 1
/* 805CBCDC  90 1F 08 38 */	stw r0, 0x838(r31)
/* 805CBCE0  48 00 00 0C */	b lbl_805CBCEC
lbl_805CBCE4:
/* 805CBCE4  38 00 00 00 */	li r0, 0
/* 805CBCE8  98 1F 08 4D */	stb r0, 0x84d(r31)
lbl_805CBCEC:
/* 805CBCEC  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 805CBCF0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805CBCF4  7C 08 03 A6 */	mtlr r0
/* 805CBCF8  38 21 00 50 */	addi r1, r1, 0x50
/* 805CBCFC  4E 80 00 20 */	blr 

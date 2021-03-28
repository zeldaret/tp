lbl_80A29500:
/* 80A29500  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80A29504  7C 08 02 A6 */	mflr r0
/* 80A29508  90 01 00 54 */	stw r0, 0x54(r1)
/* 80A2950C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80A29510  7C 7F 1B 78 */	mr r31, r3
/* 80A29514  28 04 00 00 */	cmplwi r4, 0
/* 80A29518  40 82 00 0C */	bne lbl_80A29524
/* 80A2951C  38 60 00 01 */	li r3, 1
/* 80A29520  48 00 00 A4 */	b lbl_80A295C4
lbl_80A29524:
/* 80A29524  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 80A29528  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80A2952C  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 80A29530  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80A29534  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 80A29538  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80A2953C  38 61 00 08 */	addi r3, r1, 8
/* 80A29540  38 81 00 38 */	addi r4, r1, 0x38
/* 80A29544  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80A29548  4B 83 D5 EC */	b __mi__4cXyzCFRC3Vec
/* 80A2954C  C0 01 00 08 */	lfs f0, 8(r1)
/* 80A29550  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A29554  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80A29558  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A2955C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80A29560  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A29564  3C 60 80 A3 */	lis r3, lit_4449@ha
/* 80A29568  C0 03 A0 F0 */	lfs f0, lit_4449@l(r3)
/* 80A2956C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A29570  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A29574  3C 60 80 A3 */	lis r3, lit_4247@ha
/* 80A29578  C0 03 A0 D0 */	lfs f0, lit_4247@l(r3)
/* 80A2957C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A29580  7F E3 FB 78 */	mr r3, r31
/* 80A29584  38 81 00 20 */	addi r4, r1, 0x20
/* 80A29588  38 A1 00 14 */	addi r5, r1, 0x14
/* 80A2958C  48 00 00 4D */	bl _getOffset__15daNpcKasiMich_cFRC4cXyzR4cXyz
/* 80A29590  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80A29594  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80A29598  EC 41 00 32 */	fmuls f2, f1, f0
/* 80A2959C  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80A295A0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A295A4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80A295A8  EC 22 00 2A */	fadds f1, f2, f0
/* 80A295AC  3C 60 80 A3 */	lis r3, lit_4449@ha
/* 80A295B0  C0 03 A0 F0 */	lfs f0, lit_4449@l(r3)
/* 80A295B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A295B8  4C 41 13 82 */	cror 2, 1, 2
/* 80A295BC  7C 00 00 26 */	mfcr r0
/* 80A295C0  54 03 1F FE */	rlwinm r3, r0, 3, 0x1f, 0x1f
lbl_80A295C4:
/* 80A295C4  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80A295C8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80A295CC  7C 08 03 A6 */	mtlr r0
/* 80A295D0  38 21 00 50 */	addi r1, r1, 0x50
/* 80A295D4  4E 80 00 20 */	blr 

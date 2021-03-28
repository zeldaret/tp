lbl_8015C41C:
/* 8015C41C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8015C420  7C 08 02 A6 */	mflr r0
/* 8015C424  90 01 00 24 */	stw r0, 0x24(r1)
/* 8015C428  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8015C42C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8015C430  7C 7F 1B 78 */	mr r31, r3
/* 8015C434  88 03 09 48 */	lbz r0, 0x948(r3)
/* 8015C438  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8015C43C  98 03 09 48 */	stb r0, 0x948(r3)
/* 8015C440  C0 03 09 30 */	lfs f0, 0x930(r3)
/* 8015C444  D0 03 04 EC */	stfs f0, 0x4ec(r3)
/* 8015C448  C0 03 09 34 */	lfs f0, 0x934(r3)
/* 8015C44C  D0 03 04 F0 */	stfs f0, 0x4f0(r3)
/* 8015C450  C0 03 09 38 */	lfs f0, 0x938(r3)
/* 8015C454  D0 03 04 F4 */	stfs f0, 0x4f4(r3)
/* 8015C458  38 7F 09 60 */	addi r3, r31, 0x960
/* 8015C45C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8015C460  48 00 21 51 */	bl initOffset__20daPy_boomerangMove_cFPC4cXyz
/* 8015C464  3C 60 80 3B */	lis r3, item_info__10dItem_data@ha
/* 8015C468  38 63 ED 78 */	addi r3, r3, item_info__10dItem_data@l
/* 8015C46C  88 1F 09 2A */	lbz r0, 0x92a(r31)
/* 8015C470  54 00 10 3A */	slwi r0, r0, 2
/* 8015C474  7C 63 02 14 */	add r3, r3, r0
/* 8015C478  8B C3 00 01 */	lbz r30, 1(r3)
/* 8015C47C  88 03 00 02 */	lbz r0, 2(r3)
/* 8015C480  38 7F 09 04 */	addi r3, r31, 0x904
/* 8015C484  C0 42 9B 9C */	lfs f2, lit_4506(r2)
/* 8015C488  C8 22 9B 88 */	lfd f1, lit_4072(r2)
/* 8015C48C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8015C490  3C 00 43 30 */	lis r0, 0x4330
/* 8015C494  90 01 00 08 */	stw r0, 8(r1)
/* 8015C498  C8 01 00 08 */	lfd f0, 8(r1)
/* 8015C49C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8015C4A0  EC 22 00 32 */	fmuls f1, f2, f0
/* 8015C4A4  48 11 2D 5D */	bl SetR__8cM3dGCylFf
/* 8015C4A8  38 7F 09 04 */	addi r3, r31, 0x904
/* 8015C4AC  C0 42 9B 9C */	lfs f2, lit_4506(r2)
/* 8015C4B0  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 8015C4B4  C8 22 9B 88 */	lfd f1, lit_4072(r2)
/* 8015C4B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015C4BC  3C 00 43 30 */	lis r0, 0x4330
/* 8015C4C0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8015C4C4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8015C4C8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8015C4CC  EC 22 00 32 */	fmuls f1, f2, f0
/* 8015C4D0  48 11 2D 29 */	bl SetH__8cM3dGCylFf
/* 8015C4D4  80 1F 08 0C */	lwz r0, 0x80c(r31)
/* 8015C4D8  60 00 00 01 */	ori r0, r0, 1
/* 8015C4DC  90 1F 08 0C */	stw r0, 0x80c(r31)
/* 8015C4E0  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 8015C4E4  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8015C4E8  90 1F 05 B8 */	stw r0, 0x5b8(r31)
/* 8015C4EC  38 7F 05 8C */	addi r3, r31, 0x58c
/* 8015C4F0  4B F1 AE B5 */	bl ClrMoveBGOnly__9dBgS_AcchFv
/* 8015C4F4  38 00 00 05 */	li r0, 5
/* 8015C4F8  98 1F 09 4A */	stb r0, 0x94a(r31)
/* 8015C4FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8015C500  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8015C504  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8015C508  7C 08 03 A6 */	mtlr r0
/* 8015C50C  38 21 00 20 */	addi r1, r1, 0x20
/* 8015C510  4E 80 00 20 */	blr 

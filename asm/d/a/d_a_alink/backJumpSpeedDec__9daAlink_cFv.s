lbl_800C5700:
/* 800C5700  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C5704  7C 08 02 A6 */	mflr r0
/* 800C5708  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C570C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C5710  7C 7F 1B 78 */	mr r31, r3
/* 800C5714  80 03 19 9C */	lwz r0, 0x199c(r3)
/* 800C5718  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800C571C  41 82 00 74 */	beq lbl_800C5790
/* 800C5720  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800C5724  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800C5728  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800C572C  38 9F 1A 60 */	addi r4, r31, 0x1a60
/* 800C5730  4B FA EF 31 */	bl ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 800C5734  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C5738  41 82 00 58 */	beq lbl_800C5790
/* 800C573C  38 7F 1A 60 */	addi r3, r31, 0x1a60
/* 800C5740  4B FB 05 CD */	bl dBgS_CheckBWallPoly__FRC13cBgS_PolyInfo
/* 800C5744  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C5748  41 82 00 0C */	beq lbl_800C5754
/* 800C574C  C0 42 92 C0 */	lfs f2, lit_6108(r2)
/* 800C5750  48 00 00 30 */	b lbl_800C5780
lbl_800C5754:
/* 800C5754  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800C5758  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800C575C  A8 9F 2F F0 */	lha r4, 0x2ff0(r31)
/* 800C5760  54 80 04 38 */	rlwinm r0, r4, 0, 0x10, 0x1c
/* 800C5764  7C 63 02 14 */	add r3, r3, r0
/* 800C5768  C0 23 00 04 */	lfs f1, 4(r3)
/* 800C576C  C0 1F 34 78 */	lfs f0, 0x3478(r31)
/* 800C5770  EC 40 00 72 */	fmuls f2, f0, f1
/* 800C5774  7C 80 07 35 */	extsh. r0, r4
/* 800C5778  40 81 00 08 */	ble lbl_800C5780
/* 800C577C  EC 42 00 72 */	fmuls f2, f2, f1
lbl_800C5780:
/* 800C5780  C0 1F 33 98 */	lfs f0, 0x3398(r31)
/* 800C5784  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 800C5788  40 81 00 08 */	ble lbl_800C5790
/* 800C578C  D0 5F 33 98 */	stfs f2, 0x3398(r31)
lbl_800C5790:
/* 800C5790  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C5794  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C5798  7C 08 03 A6 */	mtlr r0
/* 800C579C  38 21 00 10 */	addi r1, r1, 0x10
/* 800C57A0  4E 80 00 20 */	blr 

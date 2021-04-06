lbl_80946D64:
/* 80946D64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80946D68  7C 08 02 A6 */	mflr r0
/* 80946D6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80946D70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80946D74  7C 7F 1B 78 */	mr r31, r3
/* 80946D78  38 7F 06 C4 */	addi r3, r31, 0x6c4
/* 80946D7C  4B 73 CA B5 */	bl Move__10dCcD_GSttsFv
/* 80946D80  A0 1F 09 1E */	lhz r0, 0x91e(r31)
/* 80946D84  28 00 00 00 */	cmplwi r0, 0
/* 80946D88  41 82 00 0C */	beq lbl_80946D94
/* 80946D8C  38 00 00 02 */	li r0, 2
/* 80946D90  98 1F 09 2C */	stb r0, 0x92c(r31)
lbl_80946D94:
/* 80946D94  38 7F 06 E4 */	addi r3, r31, 0x6e4
/* 80946D98  4B 73 D5 29 */	bl ChkAtHit__12dCcD_GObjInfFv
/* 80946D9C  28 03 00 00 */	cmplwi r3, 0
/* 80946DA0  41 82 00 20 */	beq lbl_80946DC0
/* 80946DA4  3C 60 80 95 */	lis r3, l_HOSTIO@ha /* 0x8094BA3C@ha */
/* 80946DA8  38 63 BA 3C */	addi r3, r3, l_HOSTIO@l /* 0x8094BA3C@l */
/* 80946DAC  A8 03 00 30 */	lha r0, 0x30(r3)
/* 80946DB0  B0 1F 09 26 */	sth r0, 0x926(r31)
/* 80946DB4  80 1F 06 E4 */	lwz r0, 0x6e4(r31)
/* 80946DB8  54 00 07 B6 */	rlwinm r0, r0, 0, 0x1e, 0x1b
/* 80946DBC  90 1F 06 E4 */	stw r0, 0x6e4(r31)
lbl_80946DC0:
/* 80946DC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80946DC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80946DC8  7C 08 03 A6 */	mtlr r0
/* 80946DCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80946DD0  4E 80 00 20 */	blr 

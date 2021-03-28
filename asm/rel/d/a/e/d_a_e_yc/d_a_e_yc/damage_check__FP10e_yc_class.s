lbl_807F00BC:
/* 807F00BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807F00C0  7C 08 02 A6 */	mflr r0
/* 807F00C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 807F00C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807F00CC  93 C1 00 08 */	stw r30, 8(r1)
/* 807F00D0  7C 7E 1B 78 */	mr r30, r3
/* 807F00D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807F00D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807F00DC  83 E3 5D AC */	lwz r31, 0x5dac(r3)
/* 807F00E0  38 7E 08 E8 */	addi r3, r30, 0x8e8
/* 807F00E4  4B 89 37 4C */	b Move__10dCcD_GSttsFv
/* 807F00E8  A8 1E 06 AA */	lha r0, 0x6aa(r30)
/* 807F00EC  2C 00 00 00 */	cmpwi r0, 0
/* 807F00F0  40 82 00 A4 */	bne lbl_807F0194
/* 807F00F4  38 7E 09 08 */	addi r3, r30, 0x908
/* 807F00F8  4B 89 43 68 */	b ChkTgHit__12dCcD_GObjInfFv
/* 807F00FC  28 03 00 00 */	cmplwi r3, 0
/* 807F0100  41 82 00 94 */	beq lbl_807F0194
/* 807F0104  38 7E 09 08 */	addi r3, r30, 0x908
/* 807F0108  4B 89 43 F0 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 807F010C  90 7E 0B 78 */	stw r3, 0xb78(r30)
/* 807F0110  88 1F 05 68 */	lbz r0, 0x568(r31)
/* 807F0114  28 00 00 2C */	cmplwi r0, 0x2c
/* 807F0118  41 82 00 7C */	beq lbl_807F0194
/* 807F011C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 807F0120  28 00 00 2D */	cmplwi r0, 0x2d
/* 807F0124  41 82 00 70 */	beq lbl_807F0194
/* 807F0128  80 7E 0B 78 */	lwz r3, 0xb78(r30)
/* 807F012C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 807F0130  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 807F0134  41 82 00 60 */	beq lbl_807F0194
/* 807F0138  7F E3 FB 78 */	mr r3, r31
/* 807F013C  7F C4 F3 78 */	mr r4, r30
/* 807F0140  38 A0 00 40 */	li r5, 0x40
/* 807F0144  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 807F0148  81 8C 01 DC */	lwz r12, 0x1dc(r12)
/* 807F014C  7D 89 03 A6 */	mtctr r12
/* 807F0150  4E 80 04 21 */	bctrl 
/* 807F0154  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807F0158  41 82 00 3C */	beq lbl_807F0194
/* 807F015C  38 00 00 14 */	li r0, 0x14
/* 807F0160  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 807F0164  38 00 00 00 */	li r0, 0
/* 807F0168  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 807F016C  38 00 03 E8 */	li r0, 0x3e8
/* 807F0170  B0 1E 06 AA */	sth r0, 0x6aa(r30)
/* 807F0174  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 807F0178  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040003@ha */
/* 807F017C  38 84 00 03 */	addi r4, r4, 0x0003 /* 0x00040003@l */
/* 807F0180  38 A0 00 1F */	li r5, 0x1f
/* 807F0184  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 807F0188  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 807F018C  7D 89 03 A6 */	mtctr r12
/* 807F0190  4E 80 04 21 */	bctrl 
lbl_807F0194:
/* 807F0194  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807F0198  83 C1 00 08 */	lwz r30, 8(r1)
/* 807F019C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807F01A0  7C 08 03 A6 */	mtlr r0
/* 807F01A4  38 21 00 10 */	addi r1, r1, 0x10
/* 807F01A8  4E 80 00 20 */	blr 

lbl_800E00C0:
/* 800E00C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E00C4  7C 08 02 A6 */	mflr r0
/* 800E00C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E00CC  80 03 31 A0 */	lwz r0, 0x31a0(r3)
/* 800E00D0  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 800E00D4  41 82 00 2C */	beq lbl_800E0100
/* 800E00D8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 800E00DC  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 800E00E0  7D 89 03 A6 */	mtctr r12
/* 800E00E4  4E 80 04 21 */	bctrl 
/* 800E00E8  28 03 00 00 */	cmplwi r3, 0
/* 800E00EC  40 82 00 14 */	bne lbl_800E0100
/* 800E00F0  3C 60 80 39 */	lis r3, m__18daAlinkHIO_boom_c0@ha /* 0x8038E6C8@ha */
/* 800E00F4  38 63 E6 C8 */	addi r3, r3, m__18daAlinkHIO_boom_c0@l /* 0x8038E6C8@l */
/* 800E00F8  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 800E00FC  48 00 00 10 */	b lbl_800E010C
lbl_800E0100:
/* 800E0100  3C 60 80 39 */	lis r3, m__18daAlinkHIO_boom_c0@ha /* 0x8038E6C8@ha */
/* 800E0104  38 63 E6 C8 */	addi r3, r3, m__18daAlinkHIO_boom_c0@l /* 0x8038E6C8@l */
/* 800E0108  C0 23 00 3C */	lfs f1, 0x3c(r3)
lbl_800E010C:
/* 800E010C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E0110  7C 08 03 A6 */	mtlr r0
/* 800E0114  38 21 00 10 */	addi r1, r1, 0x10
/* 800E0118  4E 80 00 20 */	blr 

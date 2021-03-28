lbl_802ED21C:
/* 802ED21C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802ED220  7C 08 02 A6 */	mflr r0
/* 802ED224  90 01 00 14 */	stw r0, 0x14(r1)
/* 802ED228  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802ED22C  93 C1 00 08 */	stw r30, 8(r1)
/* 802ED230  7C 7E 1B 78 */	mr r30, r3
/* 802ED234  7C 9F 23 78 */	mr r31, r4
/* 802ED238  28 1F 00 02 */	cmplwi r31, 2
/* 802ED23C  41 80 00 0C */	blt lbl_802ED248
/* 802ED240  38 60 00 00 */	li r3, 0
/* 802ED244  48 00 00 94 */	b lbl_802ED2D8
lbl_802ED248:
/* 802ED248  88 7E 00 78 */	lbz r3, 0x78(r30)
/* 802ED24C  38 00 00 01 */	li r0, 1
/* 802ED250  7C 00 F8 30 */	slw r0, r0, r31
/* 802ED254  7C 60 00 39 */	and. r0, r3, r0
/* 802ED258  41 82 00 18 */	beq lbl_802ED270
/* 802ED25C  57 E0 10 3A */	slwi r0, r31, 2
/* 802ED260  7C 7E 02 14 */	add r3, r30, r0
/* 802ED264  80 63 00 64 */	lwz r3, 0x64(r3)
/* 802ED268  38 80 00 01 */	li r4, 1
/* 802ED26C  4B FF 0F C9 */	bl __dt__10JUTTextureFv
lbl_802ED270:
/* 802ED270  57 E0 10 3A */	slwi r0, r31, 2
/* 802ED274  7C 7E 02 14 */	add r3, r30, r0
/* 802ED278  80 63 00 6C */	lwz r3, 0x6c(r3)
/* 802ED27C  4B FE 1A C1 */	bl __dl__FPv
/* 802ED280  28 1F 00 00 */	cmplwi r31, 0
/* 802ED284  40 82 00 1C */	bne lbl_802ED2A0
/* 802ED288  80 1E 00 68 */	lwz r0, 0x68(r30)
/* 802ED28C  90 1E 00 64 */	stw r0, 0x64(r30)
/* 802ED290  80 1E 00 70 */	lwz r0, 0x70(r30)
/* 802ED294  90 1E 00 6C */	stw r0, 0x6c(r30)
/* 802ED298  A0 1E 00 06 */	lhz r0, 6(r30)
/* 802ED29C  B0 1E 00 04 */	sth r0, 4(r30)
lbl_802ED2A0:
/* 802ED2A0  38 00 00 00 */	li r0, 0
/* 802ED2A4  90 1E 00 68 */	stw r0, 0x68(r30)
/* 802ED2A8  90 1E 00 70 */	stw r0, 0x70(r30)
/* 802ED2AC  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 802ED2B0  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 802ED2B4  B0 1E 00 06 */	sth r0, 6(r30)
/* 802ED2B8  7F C3 F3 78 */	mr r3, r30
/* 802ED2BC  57 E4 06 3E */	clrlwi r4, r31, 0x18
/* 802ED2C0  38 A0 00 00 */	li r5, 0
/* 802ED2C4  81 9E 00 00 */	lwz r12, 0(r30)
/* 802ED2C8  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 802ED2CC  7D 89 03 A6 */	mtctr r12
/* 802ED2D0  4E 80 04 21 */	bctrl 
/* 802ED2D4  38 60 00 01 */	li r3, 1
lbl_802ED2D8:
/* 802ED2D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802ED2DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 802ED2E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802ED2E4  7C 08 03 A6 */	mtlr r0
/* 802ED2E8  38 21 00 10 */	addi r1, r1, 0x10
/* 802ED2EC  4E 80 00 20 */	blr 

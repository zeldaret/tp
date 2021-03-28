lbl_802EC1D8:
/* 802EC1D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EC1DC  7C 08 02 A6 */	mflr r0
/* 802EC1E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EC1E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EC1E8  93 C1 00 08 */	stw r30, 8(r1)
/* 802EC1EC  7C 7E 1B 78 */	mr r30, r3
/* 802EC1F0  7C 9F 23 79 */	or. r31, r4, r4
/* 802EC1F4  40 82 00 0C */	bne lbl_802EC200
/* 802EC1F8  38 60 00 00 */	li r3, 0
/* 802EC1FC  48 00 00 44 */	b lbl_802EC240
lbl_802EC200:
/* 802EC200  88 1E 00 5C */	lbz r0, 0x5c(r30)
/* 802EC204  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 802EC208  41 82 00 24 */	beq lbl_802EC22C
/* 802EC20C  80 7E 00 58 */	lwz r3, 0x58(r30)
/* 802EC210  28 03 00 00 */	cmplwi r3, 0
/* 802EC214  41 82 00 18 */	beq lbl_802EC22C
/* 802EC218  38 80 00 01 */	li r4, 1
/* 802EC21C  81 83 00 00 */	lwz r12, 0(r3)
/* 802EC220  81 8C 00 08 */	lwz r12, 8(r12)
/* 802EC224  7D 89 03 A6 */	mtctr r12
/* 802EC228  4E 80 04 21 */	bctrl 
lbl_802EC22C:
/* 802EC22C  93 FE 00 58 */	stw r31, 0x58(r30)
/* 802EC230  88 1E 00 5C */	lbz r0, 0x5c(r30)
/* 802EC234  54 00 06 7E */	clrlwi r0, r0, 0x19
/* 802EC238  98 1E 00 5C */	stb r0, 0x5c(r30)
/* 802EC23C  38 60 00 01 */	li r3, 1
lbl_802EC240:
/* 802EC240  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EC244  83 C1 00 08 */	lwz r30, 8(r1)
/* 802EC248  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EC24C  7C 08 03 A6 */	mtlr r0
/* 802EC250  38 21 00 10 */	addi r1, r1, 0x10
/* 802EC254  4E 80 00 20 */	blr 

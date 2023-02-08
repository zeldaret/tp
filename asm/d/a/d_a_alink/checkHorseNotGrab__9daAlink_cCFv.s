lbl_800ED1F0:
/* 800ED1F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800ED1F4  7C 08 02 A6 */	mflr r0
/* 800ED1F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800ED1FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800ED200  93 C1 00 08 */	stw r30, 8(r1)
/* 800ED204  7C 7E 1B 78 */	mr r30, r3
/* 800ED208  3B E0 00 00 */	li r31, 0
/* 800ED20C  4B FF 17 DD */	bl checkBowAnime__9daAlink_cCFv
/* 800ED210  2C 03 00 00 */	cmpwi r3, 0
/* 800ED214  40 82 00 DC */	bne lbl_800ED2F0
/* 800ED218  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 800ED21C  28 00 00 4C */	cmplwi r0, 0x4c
/* 800ED220  41 82 00 D0 */	beq lbl_800ED2F0
/* 800ED224  28 00 00 4E */	cmplwi r0, 0x4e
/* 800ED228  41 82 00 C8 */	beq lbl_800ED2F0
/* 800ED22C  28 00 00 4F */	cmplwi r0, 0x4f
/* 800ED230  41 82 00 C0 */	beq lbl_800ED2F0
/* 800ED234  28 00 00 50 */	cmplwi r0, 0x50
/* 800ED238  41 82 00 B8 */	beq lbl_800ED2F0
/* 800ED23C  28 00 01 50 */	cmplwi r0, 0x150
/* 800ED240  41 82 00 B0 */	beq lbl_800ED2F0
/* 800ED244  28 00 01 48 */	cmplwi r0, 0x148
/* 800ED248  41 82 00 A8 */	beq lbl_800ED2F0
/* 800ED24C  28 00 00 51 */	cmplwi r0, 0x51
/* 800ED250  40 82 00 10 */	bne lbl_800ED260
/* 800ED254  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 800ED258  2C 00 00 00 */	cmpwi r0, 0
/* 800ED25C  40 82 00 94 */	bne lbl_800ED2F0
lbl_800ED260:
/* 800ED260  7F C3 F3 78 */	mr r3, r30
/* 800ED264  4B FE FB 8D */	bl checkUpperGuardAnime__9daAlink_cCFv
/* 800ED268  2C 03 00 00 */	cmpwi r3, 0
/* 800ED26C  40 82 00 84 */	bne lbl_800ED2F0
/* 800ED270  A0 1E 1F BC */	lhz r0, 0x1fbc(r30)
/* 800ED274  28 00 02 45 */	cmplwi r0, 0x245
/* 800ED278  41 82 00 78 */	beq lbl_800ED2F0
/* 800ED27C  7F C3 F3 78 */	mr r3, r30
/* 800ED280  4B FF 6A 1D */	bl checkGrabAnimeAndThrow__9daAlink_cCFv
/* 800ED284  2C 03 00 00 */	cmpwi r3, 0
/* 800ED288  40 82 00 68 */	bne lbl_800ED2F0
/* 800ED28C  7F C3 F3 78 */	mr r3, r30
/* 800ED290  4B FF 32 1D */	bl checkBoomerangThrowAnime__9daAlink_cCFv
/* 800ED294  2C 03 00 00 */	cmpwi r3, 0
/* 800ED298  40 82 00 58 */	bne lbl_800ED2F0
/* 800ED29C  A0 1E 1F BC */	lhz r0, 0x1fbc(r30)
/* 800ED2A0  28 00 00 52 */	cmplwi r0, 0x52
/* 800ED2A4  41 82 00 4C */	beq lbl_800ED2F0
/* 800ED2A8  38 60 00 00 */	li r3, 0
/* 800ED2AC  28 00 01 8D */	cmplwi r0, 0x18d
/* 800ED2B0  41 82 00 10 */	beq lbl_800ED2C0
/* 800ED2B4  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800ED2B8  28 00 01 8C */	cmplwi r0, 0x18c
/* 800ED2BC  40 82 00 08 */	bne lbl_800ED2C4
lbl_800ED2C0:
/* 800ED2C0  38 60 00 01 */	li r3, 1
lbl_800ED2C4:
/* 800ED2C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800ED2C8  40 82 00 28 */	bne lbl_800ED2F0
/* 800ED2CC  88 1E 2F AB */	lbz r0, 0x2fab(r30)
/* 800ED2D0  54 00 06 F9 */	rlwinm. r0, r0, 0, 0x1b, 0x1c
/* 800ED2D4  41 82 00 1C */	beq lbl_800ED2F0
/* 800ED2D8  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 800ED2DC  28 00 00 53 */	cmplwi r0, 0x53
/* 800ED2E0  40 82 00 14 */	bne lbl_800ED2F4
/* 800ED2E4  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 800ED2E8  2C 00 00 00 */	cmpwi r0, 0
/* 800ED2EC  41 82 00 08 */	beq lbl_800ED2F4
lbl_800ED2F0:
/* 800ED2F0  3B E0 00 01 */	li r31, 1
lbl_800ED2F4:
/* 800ED2F4  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 800ED2F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800ED2FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 800ED300  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800ED304  7C 08 03 A6 */	mtlr r0
/* 800ED308  38 21 00 10 */	addi r1, r1, 0x10
/* 800ED30C  4E 80 00 20 */	blr 

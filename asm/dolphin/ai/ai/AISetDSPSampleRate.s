lbl_8034FE54:
/* 8034FE54  7C 08 02 A6 */	mflr r0
/* 8034FE58  90 01 00 04 */	stw r0, 4(r1)
/* 8034FE5C  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8034FE60  BF 41 00 10 */	stmw r26, 0x10(r1)
/* 8034FE64  7C 7A 1B 78 */	mr r26, r3
/* 8034FE68  48 00 00 CD */	bl AIGetDSPSampleRate
/* 8034FE6C  7C 1A 18 40 */	cmplw r26, r3
/* 8034FE70  41 82 00 B0 */	beq lbl_8034FF20
/* 8034FE74  3F E0 CC 00 */	lis r31, 0xCC00 /* 0xCC006C00@ha */
/* 8034FE78  80 1F 6C 00 */	lwz r0, 0x6C00(r31)  /* 0xCC006C00@l */
/* 8034FE7C  28 1A 00 00 */	cmplwi r26, 0
/* 8034FE80  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 8034FE84  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8034FE88  40 82 00 98 */	bne lbl_8034FF20
/* 8034FE8C  48 00 01 BD */	bl AIGetStreamVolLeft
/* 8034FE90  7C 7E 1B 78 */	mr r30, r3
/* 8034FE94  48 00 01 E1 */	bl AIGetStreamVolRight
/* 8034FE98  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 8034FE9C  3B A3 00 00 */	addi r29, r3, 0
/* 8034FEA0  54 1B 07 FE */	clrlwi r27, r0, 0x1f
/* 8034FEA4  48 00 01 79 */	bl AIGetStreamSampleRate
/* 8034FEA8  3B 83 00 00 */	addi r28, r3, 0
/* 8034FEAC  38 60 00 00 */	li r3, 0
/* 8034FEB0  48 00 01 7D */	bl AISetStreamVolLeft
/* 8034FEB4  38 60 00 00 */	li r3, 0
/* 8034FEB8  48 00 01 A1 */	bl AISetStreamVolRight
/* 8034FEBC  4B FE D8 39 */	bl OSDisableInterrupts
/* 8034FEC0  7C 7A 1B 78 */	mr r26, r3
/* 8034FEC4  48 00 04 AD */	bl __AI_SRC_INIT
/* 8034FEC8  80 9F 6C 00 */	lwz r4, 0x6c00(r31)
/* 8034FECC  57 80 08 3C */	slwi r0, r28, 1
/* 8034FED0  38 7A 00 00 */	addi r3, r26, 0
/* 8034FED4  54 84 06 F2 */	rlwinm r4, r4, 0, 0x1b, 0x19
/* 8034FED8  60 84 00 20 */	ori r4, r4, 0x20
/* 8034FEDC  90 9F 6C 00 */	stw r4, 0x6c00(r31)
/* 8034FEE0  80 9F 6C 00 */	lwz r4, 0x6c00(r31)
/* 8034FEE4  54 84 07 FA */	rlwinm r4, r4, 0, 0x1f, 0x1d
/* 8034FEE8  7C 80 03 78 */	or r0, r4, r0
/* 8034FEEC  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8034FEF0  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 8034FEF4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8034FEF8  7C 00 DB 78 */	or r0, r0, r27
/* 8034FEFC  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8034FF00  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 8034FF04  60 00 00 40 */	ori r0, r0, 0x40
/* 8034FF08  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8034FF0C  4B FE D8 11 */	bl OSRestoreInterrupts
/* 8034FF10  7F C3 F3 78 */	mr r3, r30
/* 8034FF14  48 00 01 19 */	bl AISetStreamVolLeft
/* 8034FF18  7F A3 EB 78 */	mr r3, r29
/* 8034FF1C  48 00 01 3D */	bl AISetStreamVolRight
lbl_8034FF20:
/* 8034FF20  BB 41 00 10 */	lmw r26, 0x10(r1)
/* 8034FF24  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8034FF28  38 21 00 28 */	addi r1, r1, 0x28
/* 8034FF2C  7C 08 03 A6 */	mtlr r0
/* 8034FF30  4E 80 00 20 */	blr 

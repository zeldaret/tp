lbl_80285844:
/* 80285844  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80285848  7C 08 02 A6 */	mflr r0
/* 8028584C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80285850  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80285854  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80285858  80 C3 00 04 */	lwz r6, 4(r3)
/* 8028585C  80 64 00 00 */	lwz r3, 0(r4)
/* 80285860  3B E3 00 08 */	addi r31, r3, 8
/* 80285864  54 BE 07 3E */	clrlwi r30, r5, 0x1c
/* 80285868  54 A0 06 F7 */	rlwinm. r0, r5, 0, 0x1b, 0x1b
/* 8028586C  41 82 00 08 */	beq lbl_80285874
/* 80285870  63 DE 00 10 */	ori r30, r30, 0x10
lbl_80285874:
/* 80285874  54 A0 06 B5 */	rlwinm. r0, r5, 0, 0x1a, 0x1a
/* 80285878  41 82 00 08 */	beq lbl_80285880
/* 8028587C  63 DE 00 20 */	ori r30, r30, 0x20
lbl_80285880:
/* 80285880  54 A0 06 73 */	rlwinm. r0, r5, 0, 0x19, 0x19
/* 80285884  41 82 00 08 */	beq lbl_8028588C
/* 80285888  63 DE 00 40 */	ori r30, r30, 0x40
lbl_8028588C:
/* 8028588C  38 61 00 0C */	addi r3, r1, 0xc
/* 80285890  38 86 00 60 */	addi r4, r6, 0x60
/* 80285894  4B FF F2 49 */	bl __ct__Q37JStudio3fvb6TParseFPQ37JStudio3fvb8TControl
/* 80285898  93 E1 00 08 */	stw r31, 8(r1)
/* 8028589C  38 61 00 0C */	addi r3, r1, 0xc
/* 802858A0  38 81 00 08 */	addi r4, r1, 8
/* 802858A4  7F C5 F3 78 */	mr r5, r30
/* 802858A8  48 05 70 69 */	bl parse_next__Q37JGadget6binary19TParse_header_blockFPPCvUl
/* 802858AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802858B0  40 82 00 18 */	bne lbl_802858C8
/* 802858B4  38 61 00 0C */	addi r3, r1, 0xc
/* 802858B8  38 80 FF FF */	li r4, -1
/* 802858BC  4B FF F2 41 */	bl __dt__Q37JStudio3fvb6TParseFv
/* 802858C0  38 60 00 00 */	li r3, 0
/* 802858C4  48 00 00 14 */	b lbl_802858D8
lbl_802858C8:
/* 802858C8  38 61 00 0C */	addi r3, r1, 0xc
/* 802858CC  38 80 FF FF */	li r4, -1
/* 802858D0  4B FF F2 2D */	bl __dt__Q37JStudio3fvb6TParseFv
/* 802858D4  38 60 00 01 */	li r3, 1
lbl_802858D8:
/* 802858D8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802858DC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802858E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802858E4  7C 08 03 A6 */	mtlr r0
/* 802858E8  38 21 00 20 */	addi r1, r1, 0x20
/* 802858EC  4E 80 00 20 */	blr 

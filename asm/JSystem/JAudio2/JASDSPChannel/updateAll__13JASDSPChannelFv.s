lbl_8029D89C:
/* 8029D89C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029D8A0  7C 08 02 A6 */	mflr r0
/* 8029D8A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029D8A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029D8AC  93 C1 00 08 */	stw r30, 8(r1)
/* 8029D8B0  3B C0 00 00 */	li r30, 0
/* 8029D8B4  3B E0 00 00 */	li r31, 0
lbl_8029D8B8:
/* 8029D8B8  57 C0 07 3F */	clrlwi. r0, r30, 0x1c
/* 8029D8BC  40 82 00 18 */	bne lbl_8029D8D4
/* 8029D8C0  28 1E 00 00 */	cmplwi r30, 0
/* 8029D8C4  41 82 00 10 */	beq lbl_8029D8D4
/* 8029D8C8  38 1E FF FF */	addi r0, r30, -1
/* 8029D8CC  54 03 E1 3E */	srwi r3, r0, 4
/* 8029D8D0  48 00 00 D5 */	bl releaseHalt__6JASDspFUl
lbl_8029D8D4:
/* 8029D8D4  80 0D 8D 60 */	lwz r0, sDspChannels__13JASDSPChannel(r13)
/* 8029D8D8  7C 60 FA 14 */	add r3, r0, r31
/* 8029D8DC  4B FF FD 81 */	bl updateProc__13JASDSPChannelFv
/* 8029D8E0  3B DE 00 01 */	addi r30, r30, 1
/* 8029D8E4  28 1E 00 40 */	cmplwi r30, 0x40
/* 8029D8E8  3B FF 00 1C */	addi r31, r31, 0x1c
/* 8029D8EC  41 80 FF CC */	blt lbl_8029D8B8
/* 8029D8F0  38 60 00 03 */	li r3, 3
/* 8029D8F4  48 00 00 B1 */	bl releaseHalt__6JASDspFUl
/* 8029D8F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029D8FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8029D900  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029D904  7C 08 03 A6 */	mtlr r0
/* 8029D908  38 21 00 10 */	addi r1, r1, 0x10
/* 8029D90C  4E 80 00 20 */	blr 

lbl_80D5C698:
/* 80D5C698  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5C69C  7C 08 02 A6 */	mflr r0
/* 80D5C6A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5C6A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5C6A8  7C 7F 1B 78 */	mr r31, r3
/* 80D5C6AC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D5C6B0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D5C6B4  40 82 00 1C */	bne lbl_80D5C6D0
/* 80D5C6B8  28 1F 00 00 */	cmplwi r31, 0
/* 80D5C6BC  41 82 00 08 */	beq lbl_80D5C6C4
/* 80D5C6C0  4B 2B C4 A5 */	bl __ct__10fopAc_ac_cFv
lbl_80D5C6C4:
/* 80D5C6C4  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D5C6C8  60 00 00 08 */	ori r0, r0, 8
/* 80D5C6CC  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D5C6D0:
/* 80D5C6D0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D5C6D4  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80D5C6D8  90 1F 05 68 */	stw r0, 0x568(r31)
/* 80D5C6DC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D5C6E0  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80D5C6E4  90 1F 05 6C */	stw r0, 0x56c(r31)
/* 80D5C6E8  38 00 00 05 */	li r0, 5
/* 80D5C6EC  B0 1F 05 70 */	sth r0, 0x570(r31)
/* 80D5C6F0  38 60 00 04 */	li r3, 4
/* 80D5C6F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5C6F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5C6FC  7C 08 03 A6 */	mtlr r0
/* 80D5C700  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5C704  4E 80 00 20 */	blr 

lbl_800BB458:
/* 800BB458  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BB45C  7C 08 02 A6 */	mflr r0
/* 800BB460  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BB464  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800BB468  93 C1 00 08 */	stw r30, 8(r1)
/* 800BB46C  7C 7E 1B 78 */	mr r30, r3
/* 800BB470  3B E0 00 00 */	li r31, 0
/* 800BB474  80 03 05 70 */	lwz r0, 0x570(r3)
/* 800BB478  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800BB47C  40 82 00 1C */	bne lbl_800BB498
/* 800BB480  4B FF FF 89 */	bl checkMagicArmorHeavy__9daAlink_cCFv
/* 800BB484  2C 03 00 00 */	cmpwi r3, 0
/* 800BB488  40 82 00 10 */	bne lbl_800BB498
/* 800BB48C  A0 1E 1F BC */	lhz r0, 0x1fbc(r30)
/* 800BB490  28 00 01 9C */	cmplwi r0, 0x19c
/* 800BB494  40 82 00 08 */	bne lbl_800BB49C
lbl_800BB498:
/* 800BB498  3B E0 00 01 */	li r31, 1
lbl_800BB49C:
/* 800BB49C  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 800BB4A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800BB4A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 800BB4A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BB4AC  7C 08 03 A6 */	mtlr r0
/* 800BB4B0  38 21 00 10 */	addi r1, r1, 0x10
/* 800BB4B4  4E 80 00 20 */	blr 

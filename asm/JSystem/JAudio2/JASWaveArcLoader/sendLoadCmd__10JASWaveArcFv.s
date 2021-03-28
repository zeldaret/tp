lbl_8029A404:
/* 8029A404  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8029A408  7C 08 02 A6 */	mflr r0
/* 8029A40C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8029A410  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8029A414  7C 7F 1B 78 */	mr r31, r3
/* 8029A418  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8029A41C  90 61 00 08 */	stw r3, 8(r1)
/* 8029A420  48 0A 4C 21 */	bl OSLockMutex
/* 8029A424  38 00 00 00 */	li r0, 0
/* 8029A428  90 1F 00 48 */	stw r0, 0x48(r31)
/* 8029A42C  38 00 00 01 */	li r0, 1
/* 8029A430  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8029A434  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029A438  80 1F 00 50 */	lwz r0, 0x50(r31)
/* 8029A43C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8029A440  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 8029A444  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029A448  A0 7F 00 58 */	lhz r3, 0x58(r31)
/* 8029A44C  38 03 00 01 */	addi r0, r3, 1
/* 8029A450  B0 1F 00 58 */	sth r0, 0x58(r31)
/* 8029A454  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8029A458  90 01 00 18 */	stw r0, 0x18(r1)
/* 8029A45C  A0 7F 00 5A */	lhz r3, 0x5a(r31)
/* 8029A460  38 03 00 01 */	addi r0, r3, 1
/* 8029A464  B0 1F 00 5A */	sth r0, 0x5a(r31)
/* 8029A468  4B FF 5A 95 */	bl getThreadPointer__6JASDvdFv
/* 8029A46C  3C 80 80 2A */	lis r4, loadToAramCallback__10JASWaveArcFPv@ha
/* 8029A470  38 84 A3 78 */	addi r4, r4, loadToAramCallback__10JASWaveArcFPv@l
/* 8029A474  38 A1 00 0C */	addi r5, r1, 0xc
/* 8029A478  38 C0 00 10 */	li r6, 0x10
/* 8029A47C  4B FF 56 E1 */	bl sendCmdMsg__13JASTaskThreadFPFPv_vPCvUl
/* 8029A480  2C 03 00 00 */	cmpwi r3, 0
/* 8029A484  40 82 00 1C */	bne lbl_8029A4A0
/* 8029A488  38 7F 00 04 */	addi r3, r31, 4
/* 8029A48C  4B FF 60 59 */	bl free__7JASHeapFv
/* 8029A490  80 61 00 08 */	lwz r3, 8(r1)
/* 8029A494  48 0A 4C 89 */	bl OSUnlockMutex
/* 8029A498  38 60 00 00 */	li r3, 0
/* 8029A49C  48 00 00 10 */	b lbl_8029A4AC
lbl_8029A4A0:
/* 8029A4A0  80 61 00 08 */	lwz r3, 8(r1)
/* 8029A4A4  48 0A 4C 79 */	bl OSUnlockMutex
/* 8029A4A8  38 60 00 01 */	li r3, 1
lbl_8029A4AC:
/* 8029A4AC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8029A4B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8029A4B4  7C 08 03 A6 */	mtlr r0
/* 8029A4B8  38 21 00 30 */	addi r1, r1, 0x30
/* 8029A4BC  4E 80 00 20 */	blr 

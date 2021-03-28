lbl_800DD018:
/* 800DD018  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DD01C  7C 08 02 A6 */	mflr r0
/* 800DD020  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DD024  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800DD028  7C 7F 1B 78 */	mr r31, r3
/* 800DD02C  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800DD030  28 00 00 1D */	cmplwi r0, 0x1d
/* 800DD034  40 82 00 10 */	bne lbl_800DD044
/* 800DD038  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800DD03C  28 00 00 42 */	cmplwi r0, 0x42
/* 800DD040  40 82 00 A4 */	bne lbl_800DD0E4
lbl_800DD044:
/* 800DD044  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800DD048  28 00 00 16 */	cmplwi r0, 0x16
/* 800DD04C  41 82 00 98 */	beq lbl_800DD0E4
/* 800DD050  7F E3 FB 78 */	mr r3, r31
/* 800DD054  4B FF FF 11 */	bl checkGuardAccept__9daAlink_cFv
/* 800DD058  2C 03 00 00 */	cmpwi r3, 0
/* 800DD05C  41 82 00 98 */	beq lbl_800DD0F4
/* 800DD060  7F E3 FB 78 */	mr r3, r31
/* 800DD064  48 00 6C 09 */	bl checkGrabAnime__9daAlink_cCFv
/* 800DD068  2C 03 00 00 */	cmpwi r3, 0
/* 800DD06C  40 82 00 88 */	bne lbl_800DD0F4
/* 800DD070  7F E3 FB 78 */	mr r3, r31
/* 800DD074  4B FD DF 0D */	bl checkUpperReadyThrowAnime__9daAlink_cCFv
/* 800DD078  2C 03 00 00 */	cmpwi r3, 0
/* 800DD07C  40 82 00 78 */	bne lbl_800DD0F4
/* 800DD080  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800DD084  28 00 02 62 */	cmplwi r0, 0x262
/* 800DD088  41 82 00 6C */	beq lbl_800DD0F4
/* 800DD08C  7F E3 FB 78 */	mr r3, r31
/* 800DD090  4B FF 3E 3D */	bl checkCutDashAnime__9daAlink_cCFv
/* 800DD094  2C 03 00 00 */	cmpwi r3, 0
/* 800DD098  40 82 00 5C */	bne lbl_800DD0F4
/* 800DD09C  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800DD0A0  28 00 00 83 */	cmplwi r0, 0x83
/* 800DD0A4  41 82 00 50 */	beq lbl_800DD0F4
/* 800DD0A8  7F E3 FB 78 */	mr r3, r31
/* 800DD0AC  4B FD C2 95 */	bl checkEquipAnime__9daAlink_cCFv
/* 800DD0B0  2C 03 00 00 */	cmpwi r3, 0
/* 800DD0B4  41 82 00 14 */	beq lbl_800DD0C8
/* 800DD0B8  7F E3 FB 78 */	mr r3, r31
/* 800DD0BC  4B FF FD 35 */	bl checkUpperGuardAnime__9daAlink_cCFv
/* 800DD0C0  2C 03 00 00 */	cmpwi r3, 0
/* 800DD0C4  41 82 00 30 */	beq lbl_800DD0F4
lbl_800DD0C8:
/* 800DD0C8  88 1F 2F AA */	lbz r0, 0x2faa(r31)
/* 800DD0CC  28 00 00 00 */	cmplwi r0, 0
/* 800DD0D0  40 82 00 24 */	bne lbl_800DD0F4
/* 800DD0D4  7F E3 FB 78 */	mr r3, r31
/* 800DD0D8  4B FF F5 A1 */	bl checkGuardActionChange__9daAlink_cFv
/* 800DD0DC  2C 03 00 00 */	cmpwi r3, 0
/* 800DD0E0  41 82 00 14 */	beq lbl_800DD0F4
lbl_800DD0E4:
/* 800DD0E4  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 800DD0E8  64 00 08 00 */	oris r0, r0, 0x800
/* 800DD0EC  90 1F 05 78 */	stw r0, 0x578(r31)
/* 800DD0F0  48 00 00 10 */	b lbl_800DD100
lbl_800DD0F4:
/* 800DD0F4  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 800DD0F8  54 00 01 46 */	rlwinm r0, r0, 0, 5, 3
/* 800DD0FC  90 1F 05 78 */	stw r0, 0x578(r31)
lbl_800DD100:
/* 800DD100  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800DD104  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DD108  7C 08 03 A6 */	mtlr r0
/* 800DD10C  38 21 00 10 */	addi r1, r1, 0x10
/* 800DD110  4E 80 00 20 */	blr 

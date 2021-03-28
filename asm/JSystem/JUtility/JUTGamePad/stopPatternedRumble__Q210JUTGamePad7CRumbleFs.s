lbl_802E1948:
/* 802E1948  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E194C  7C 08 02 A6 */	mflr r0
/* 802E1950  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E1954  38 00 00 00 */	li r0, 0
/* 802E1958  90 03 00 04 */	stw r0, 4(r3)
/* 802E195C  7C 83 07 34 */	extsh r3, r4
/* 802E1960  38 80 00 01 */	li r4, 1
/* 802E1964  4B FF FD 29 */	bl stopMotor__Q210JUTGamePad7CRumbleFib
/* 802E1968  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E196C  7C 08 03 A6 */	mtlr r0
/* 802E1970  38 21 00 10 */	addi r1, r1, 0x10
/* 802E1974  4E 80 00 20 */	blr 

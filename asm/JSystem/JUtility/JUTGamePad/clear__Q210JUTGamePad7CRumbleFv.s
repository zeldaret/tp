lbl_802E15B4:
/* 802E15B4  38 00 00 00 */	li r0, 0
/* 802E15B8  90 03 00 00 */	stw r0, 0(r3)
/* 802E15BC  90 03 00 04 */	stw r0, 4(r3)
/* 802E15C0  90 03 00 08 */	stw r0, 8(r3)
/* 802E15C4  90 03 00 0C */	stw r0, 0xc(r3)
/* 802E15C8  90 03 00 10 */	stw r0, 0x10(r3)
/* 802E15CC  3C 00 F0 00 */	lis r0, 0xf000
/* 802E15D0  90 0D 8F 68 */	stw r0, mEnabled__Q210JUTGamePad7CRumble(r13)
/* 802E15D4  4E 80 00 20 */	blr 

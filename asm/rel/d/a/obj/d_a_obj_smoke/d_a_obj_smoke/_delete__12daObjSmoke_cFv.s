lbl_80CDD0B8:
/* 80CDD0B8  80 83 05 68 */	lwz r4, 0x568(r3)
/* 80CDD0BC  28 04 00 00 */	cmplwi r4, 0
/* 80CDD0C0  41 82 00 30 */	beq lbl_80CDD0F0
/* 80CDD0C4  80 04 00 F4 */	lwz r0, 0xf4(r4)
/* 80CDD0C8  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80CDD0CC  90 04 00 F4 */	stw r0, 0xf4(r4)
/* 80CDD0D0  80 83 05 68 */	lwz r4, 0x568(r3)
/* 80CDD0D4  80 04 00 F4 */	lwz r0, 0xf4(r4)
/* 80CDD0D8  60 00 00 01 */	ori r0, r0, 1
/* 80CDD0DC  90 04 00 F4 */	stw r0, 0xf4(r4)
/* 80CDD0E0  38 00 00 01 */	li r0, 1
/* 80CDD0E4  90 04 00 24 */	stw r0, 0x24(r4)
/* 80CDD0E8  38 00 00 00 */	li r0, 0
/* 80CDD0EC  90 03 05 68 */	stw r0, 0x568(r3)
lbl_80CDD0F0:
/* 80CDD0F0  38 60 00 01 */	li r3, 1
/* 80CDD0F4  4E 80 00 20 */	blr 

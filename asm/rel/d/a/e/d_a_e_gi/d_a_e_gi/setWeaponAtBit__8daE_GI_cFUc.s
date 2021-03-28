lbl_806CDD1C:
/* 806CDD1C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806CDD20  40 82 00 38 */	bne lbl_806CDD58
/* 806CDD24  80 03 0B 70 */	lwz r0, 0xb70(r3)
/* 806CDD28  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806CDD2C  90 03 0B 70 */	stw r0, 0xb70(r3)
/* 806CDD30  80 03 0C A8 */	lwz r0, 0xca8(r3)
/* 806CDD34  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806CDD38  90 03 0C A8 */	stw r0, 0xca8(r3)
/* 806CDD3C  80 03 0D E0 */	lwz r0, 0xde0(r3)
/* 806CDD40  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806CDD44  90 03 0D E0 */	stw r0, 0xde0(r3)
/* 806CDD48  80 03 0F 18 */	lwz r0, 0xf18(r3)
/* 806CDD4C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806CDD50  90 03 0F 18 */	stw r0, 0xf18(r3)
/* 806CDD54  4E 80 00 20 */	blr 
lbl_806CDD58:
/* 806CDD58  80 03 0B 70 */	lwz r0, 0xb70(r3)
/* 806CDD5C  60 00 00 01 */	ori r0, r0, 1
/* 806CDD60  90 03 0B 70 */	stw r0, 0xb70(r3)
/* 806CDD64  80 03 0C A8 */	lwz r0, 0xca8(r3)
/* 806CDD68  60 00 00 01 */	ori r0, r0, 1
/* 806CDD6C  90 03 0C A8 */	stw r0, 0xca8(r3)
/* 806CDD70  80 03 0D E0 */	lwz r0, 0xde0(r3)
/* 806CDD74  60 00 00 01 */	ori r0, r0, 1
/* 806CDD78  90 03 0D E0 */	stw r0, 0xde0(r3)
/* 806CDD7C  80 03 0F 18 */	lwz r0, 0xf18(r3)
/* 806CDD80  60 00 00 01 */	ori r0, r0, 1
/* 806CDD84  90 03 0F 18 */	stw r0, 0xf18(r3)
/* 806CDD88  4E 80 00 20 */	blr 

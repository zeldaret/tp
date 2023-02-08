lbl_804C0D2C:
/* 804C0D2C  B0 83 08 78 */	sth r4, 0x878(r3)
/* 804C0D30  80 A3 06 9C */	lwz r5, 0x69c(r3)
/* 804C0D34  28 05 00 00 */	cmplwi r5, 0
/* 804C0D38  41 82 00 10 */	beq lbl_804C0D48
/* 804C0D3C  80 05 00 0C */	lwz r0, 0xc(r5)
/* 804C0D40  60 00 00 01 */	ori r0, r0, 1
/* 804C0D44  90 05 00 0C */	stw r0, 0xc(r5)
lbl_804C0D48:
/* 804C0D48  80 A3 06 A4 */	lwz r5, 0x6a4(r3)
/* 804C0D4C  80 05 00 0C */	lwz r0, 0xc(r5)
/* 804C0D50  60 00 00 01 */	ori r0, r0, 1
/* 804C0D54  90 05 00 0C */	stw r0, 0xc(r5)
/* 804C0D58  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 804C0D5C  28 00 00 FE */	cmplwi r0, 0xfe
/* 804C0D60  41 82 00 0C */	beq lbl_804C0D6C
/* 804C0D64  28 00 00 FD */	cmplwi r0, 0xfd
/* 804C0D68  40 82 00 44 */	bne lbl_804C0DAC
lbl_804C0D6C:
/* 804C0D6C  80 83 05 74 */	lwz r4, 0x574(r3)
/* 804C0D70  80 84 00 04 */	lwz r4, 4(r4)
/* 804C0D74  80 84 00 60 */	lwz r4, 0x60(r4)
/* 804C0D78  80 84 00 04 */	lwz r4, 4(r4)
/* 804C0D7C  80 04 00 08 */	lwz r0, 8(r4)
/* 804C0D80  90 03 06 A4 */	stw r0, 0x6a4(r3)
/* 804C0D84  80 03 06 9C */	lwz r0, 0x69c(r3)
/* 804C0D88  28 00 00 00 */	cmplwi r0, 0
/* 804C0D8C  41 82 00 60 */	beq lbl_804C0DEC
/* 804C0D90  80 83 05 70 */	lwz r4, 0x570(r3)
/* 804C0D94  80 84 00 04 */	lwz r4, 4(r4)
/* 804C0D98  80 84 00 60 */	lwz r4, 0x60(r4)
/* 804C0D9C  80 84 00 18 */	lwz r4, 0x18(r4)
/* 804C0DA0  80 04 00 08 */	lwz r0, 8(r4)
/* 804C0DA4  90 03 06 9C */	stw r0, 0x69c(r3)
/* 804C0DA8  48 00 00 44 */	b lbl_804C0DEC
lbl_804C0DAC:
/* 804C0DAC  80 A3 06 7C */	lwz r5, 0x67c(r3)
/* 804C0DB0  80 A5 00 04 */	lwz r5, 4(r5)
/* 804C0DB4  80 A5 00 60 */	lwz r5, 0x60(r5)
/* 804C0DB8  54 86 13 BA */	rlwinm r6, r4, 2, 0xe, 0x1d
/* 804C0DBC  7C 85 30 2E */	lwzx r4, r5, r6
/* 804C0DC0  80 04 00 08 */	lwz r0, 8(r4)
/* 804C0DC4  90 03 06 A4 */	stw r0, 0x6a4(r3)
/* 804C0DC8  80 03 06 9C */	lwz r0, 0x69c(r3)
/* 804C0DCC  28 00 00 00 */	cmplwi r0, 0
/* 804C0DD0  41 82 00 1C */	beq lbl_804C0DEC
/* 804C0DD4  80 83 06 78 */	lwz r4, 0x678(r3)
/* 804C0DD8  80 84 00 04 */	lwz r4, 4(r4)
/* 804C0DDC  80 84 00 60 */	lwz r4, 0x60(r4)
/* 804C0DE0  7C 84 30 2E */	lwzx r4, r4, r6
/* 804C0DE4  80 04 00 08 */	lwz r0, 8(r4)
/* 804C0DE8  90 03 06 9C */	stw r0, 0x69c(r3)
lbl_804C0DEC:
/* 804C0DEC  80 83 06 A4 */	lwz r4, 0x6a4(r3)
/* 804C0DF0  80 04 00 0C */	lwz r0, 0xc(r4)
/* 804C0DF4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 804C0DF8  90 04 00 0C */	stw r0, 0xc(r4)
/* 804C0DFC  80 63 06 9C */	lwz r3, 0x69c(r3)
/* 804C0E00  28 03 00 00 */	cmplwi r3, 0
/* 804C0E04  4D 82 00 20 */	beqlr 
/* 804C0E08  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804C0E0C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 804C0E10  90 03 00 0C */	stw r0, 0xc(r3)
/* 804C0E14  4E 80 00 20 */	blr 

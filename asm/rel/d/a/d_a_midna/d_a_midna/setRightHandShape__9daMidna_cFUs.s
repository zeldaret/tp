lbl_804C0E18:
/* 804C0E18  B0 83 08 7A */	sth r4, 0x87a(r3)
/* 804C0E1C  80 A3 06 A0 */	lwz r5, 0x6a0(r3)
/* 804C0E20  28 05 00 00 */	cmplwi r5, 0
/* 804C0E24  41 82 00 10 */	beq lbl_804C0E34
/* 804C0E28  80 05 00 0C */	lwz r0, 0xc(r5)
/* 804C0E2C  60 00 00 01 */	ori r0, r0, 1
/* 804C0E30  90 05 00 0C */	stw r0, 0xc(r5)
lbl_804C0E34:
/* 804C0E34  80 A3 06 A8 */	lwz r5, 0x6a8(r3)
/* 804C0E38  80 05 00 0C */	lwz r0, 0xc(r5)
/* 804C0E3C  60 00 00 01 */	ori r0, r0, 1
/* 804C0E40  90 05 00 0C */	stw r0, 0xc(r5)
/* 804C0E44  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 804C0E48  28 00 00 FE */	cmplwi r0, 0xfe
/* 804C0E4C  41 82 00 0C */	beq lbl_804C0E58
/* 804C0E50  28 00 00 FD */	cmplwi r0, 0xfd
/* 804C0E54  40 82 00 44 */	bne lbl_804C0E98
lbl_804C0E58:
/* 804C0E58  80 83 05 74 */	lwz r4, 0x574(r3)
/* 804C0E5C  80 84 00 04 */	lwz r4, 4(r4)
/* 804C0E60  80 84 00 60 */	lwz r4, 0x60(r4)
/* 804C0E64  80 84 00 08 */	lwz r4, 8(r4)
/* 804C0E68  80 04 00 08 */	lwz r0, 8(r4)
/* 804C0E6C  90 03 06 A8 */	stw r0, 0x6a8(r3)
/* 804C0E70  80 03 06 A0 */	lwz r0, 0x6a0(r3)
/* 804C0E74  28 00 00 00 */	cmplwi r0, 0
/* 804C0E78  41 82 00 60 */	beq lbl_804C0ED8
/* 804C0E7C  80 83 05 70 */	lwz r4, 0x570(r3)
/* 804C0E80  80 84 00 04 */	lwz r4, 4(r4)
/* 804C0E84  80 84 00 60 */	lwz r4, 0x60(r4)
/* 804C0E88  80 84 00 1C */	lwz r4, 0x1c(r4)
/* 804C0E8C  80 04 00 08 */	lwz r0, 8(r4)
/* 804C0E90  90 03 06 A0 */	stw r0, 0x6a0(r3)
/* 804C0E94  48 00 00 44 */	b lbl_804C0ED8
lbl_804C0E98:
/* 804C0E98  80 A3 06 7C */	lwz r5, 0x67c(r3)
/* 804C0E9C  80 A5 00 04 */	lwz r5, 4(r5)
/* 804C0EA0  80 A5 00 60 */	lwz r5, 0x60(r5)
/* 804C0EA4  54 86 13 BA */	rlwinm r6, r4, 2, 0xe, 0x1d
/* 804C0EA8  7C 85 30 2E */	lwzx r4, r5, r6
/* 804C0EAC  80 04 00 08 */	lwz r0, 8(r4)
/* 804C0EB0  90 03 06 A8 */	stw r0, 0x6a8(r3)
/* 804C0EB4  80 03 06 A0 */	lwz r0, 0x6a0(r3)
/* 804C0EB8  28 00 00 00 */	cmplwi r0, 0
/* 804C0EBC  41 82 00 1C */	beq lbl_804C0ED8
/* 804C0EC0  80 83 06 78 */	lwz r4, 0x678(r3)
/* 804C0EC4  80 84 00 04 */	lwz r4, 4(r4)
/* 804C0EC8  80 84 00 60 */	lwz r4, 0x60(r4)
/* 804C0ECC  7C 84 30 2E */	lwzx r4, r4, r6
/* 804C0ED0  80 04 00 08 */	lwz r0, 8(r4)
/* 804C0ED4  90 03 06 A0 */	stw r0, 0x6a0(r3)
lbl_804C0ED8:
/* 804C0ED8  80 83 06 A8 */	lwz r4, 0x6a8(r3)
/* 804C0EDC  80 04 00 0C */	lwz r0, 0xc(r4)
/* 804C0EE0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 804C0EE4  90 04 00 0C */	stw r0, 0xc(r4)
/* 804C0EE8  80 63 06 A0 */	lwz r3, 0x6a0(r3)
/* 804C0EEC  28 03 00 00 */	cmplwi r3, 0
/* 804C0EF0  4D 82 00 20 */	beqlr 
/* 804C0EF4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804C0EF8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 804C0EFC  90 03 00 0C */	stw r0, 0xc(r3)
/* 804C0F00  4E 80 00 20 */	blr 

lbl_8018DB80:
/* 8018DB80  54 89 06 3E */	clrlwi r9, r4, 0x18
/* 8018DB84  28 09 00 FF */	cmplwi r9, 0xff
/* 8018DB88  4D 82 00 20 */	beqlr 
/* 8018DB8C  38 00 00 00 */	li r0, 0
/* 8018DB90  54 84 15 BA */	rlwinm r4, r4, 2, 0x16, 0x1d
/* 8018DB94  7D 03 22 14 */	add r8, r3, r4
/* 8018DB98  80 88 01 A0 */	lwz r4, 0x1a0(r8)
/* 8018DB9C  B0 04 00 16 */	sth r0, 0x16(r4)
/* 8018DBA0  80 88 01 A8 */	lwz r4, 0x1a8(r8)
/* 8018DBA4  B0 04 00 16 */	sth r0, 0x16(r4)
/* 8018DBA8  80 88 01 B0 */	lwz r4, 0x1b0(r8)
/* 8018DBAC  B0 04 00 16 */	sth r0, 0x16(r4)
/* 8018DBB0  7C 63 4A 14 */	add r3, r3, r9
/* 8018DBB4  98 A3 01 B8 */	stb r5, 0x1b8(r3)
/* 8018DBB8  98 C3 01 BA */	stb r6, 0x1ba(r3)
/* 8018DBBC  98 E3 01 BC */	stb r7, 0x1bc(r3)
/* 8018DBC0  80 68 01 C0 */	lwz r3, 0x1c0(r8)
/* 8018DBC4  B0 03 00 6A */	sth r0, 0x6a(r3)
/* 8018DBC8  4E 80 00 20 */	blr 

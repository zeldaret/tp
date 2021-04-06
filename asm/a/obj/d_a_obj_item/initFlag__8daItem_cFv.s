lbl_8015DAAC:
/* 8015DAAC  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8015DAB0  54 00 47 3E */	rlwinm r0, r0, 8, 0x1c, 0x1f
/* 8015DAB4  28 00 00 09 */	cmplwi r0, 9
/* 8015DAB8  41 81 00 1C */	bgt lbl_8015DAD4
/* 8015DABC  3C 80 80 3C */	lis r4, lit_5171@ha /* 0x803B9DDC@ha */
/* 8015DAC0  38 84 9D DC */	addi r4, r4, lit_5171@l /* 0x803B9DDC@l */
/* 8015DAC4  54 00 10 3A */	slwi r0, r0, 2
/* 8015DAC8  7C 04 00 2E */	lwzx r0, r4, r0
/* 8015DACC  7C 09 03 A6 */	mtctr r0
/* 8015DAD0  4E 80 04 20 */	bctr 
lbl_8015DAD4:
/* 8015DAD4  88 03 09 48 */	lbz r0, 0x948(r3)
/* 8015DAD8  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8015DADC  98 03 09 48 */	stb r0, 0x948(r3)
/* 8015DAE0  88 03 09 48 */	lbz r0, 0x948(r3)
/* 8015DAE4  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 8015DAE8  98 03 09 48 */	stb r0, 0x948(r3)
/* 8015DAEC  88 03 09 48 */	lbz r0, 0x948(r3)
/* 8015DAF0  60 00 00 02 */	ori r0, r0, 2
/* 8015DAF4  98 03 09 48 */	stb r0, 0x948(r3)
/* 8015DAF8  48 00 00 C8 */	b lbl_8015DBC0
/* 8015DAFC  88 03 09 48 */	lbz r0, 0x948(r3)
/* 8015DB00  60 00 00 04 */	ori r0, r0, 4
/* 8015DB04  98 03 09 48 */	stb r0, 0x948(r3)
/* 8015DB08  88 03 09 48 */	lbz r0, 0x948(r3)
/* 8015DB0C  60 00 00 08 */	ori r0, r0, 8
/* 8015DB10  98 03 09 48 */	stb r0, 0x948(r3)
/* 8015DB14  88 03 09 48 */	lbz r0, 0x948(r3)
/* 8015DB18  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8015DB1C  98 03 09 48 */	stb r0, 0x948(r3)
/* 8015DB20  48 00 00 A0 */	b lbl_8015DBC0
/* 8015DB24  88 03 09 48 */	lbz r0, 0x948(r3)
/* 8015DB28  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8015DB2C  98 03 09 48 */	stb r0, 0x948(r3)
/* 8015DB30  88 03 09 48 */	lbz r0, 0x948(r3)
/* 8015DB34  60 00 00 08 */	ori r0, r0, 8
/* 8015DB38  98 03 09 48 */	stb r0, 0x948(r3)
/* 8015DB3C  88 03 09 48 */	lbz r0, 0x948(r3)
/* 8015DB40  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8015DB44  98 03 09 48 */	stb r0, 0x948(r3)
/* 8015DB48  48 00 00 78 */	b lbl_8015DBC0
/* 8015DB4C  88 03 09 48 */	lbz r0, 0x948(r3)
/* 8015DB50  60 00 00 04 */	ori r0, r0, 4
/* 8015DB54  98 03 09 48 */	stb r0, 0x948(r3)
/* 8015DB58  88 03 09 48 */	lbz r0, 0x948(r3)
/* 8015DB5C  60 00 00 08 */	ori r0, r0, 8
/* 8015DB60  98 03 09 48 */	stb r0, 0x948(r3)
/* 8015DB64  88 03 09 48 */	lbz r0, 0x948(r3)
/* 8015DB68  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8015DB6C  98 03 09 48 */	stb r0, 0x948(r3)
/* 8015DB70  48 00 00 50 */	b lbl_8015DBC0
/* 8015DB74  88 03 09 48 */	lbz r0, 0x948(r3)
/* 8015DB78  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8015DB7C  98 03 09 48 */	stb r0, 0x948(r3)
/* 8015DB80  88 03 09 48 */	lbz r0, 0x948(r3)
/* 8015DB84  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 8015DB88  98 03 09 48 */	stb r0, 0x948(r3)
/* 8015DB8C  88 03 09 48 */	lbz r0, 0x948(r3)
/* 8015DB90  60 00 00 02 */	ori r0, r0, 2
/* 8015DB94  98 03 09 48 */	stb r0, 0x948(r3)
/* 8015DB98  48 00 00 28 */	b lbl_8015DBC0
/* 8015DB9C  88 03 09 48 */	lbz r0, 0x948(r3)
/* 8015DBA0  60 00 00 04 */	ori r0, r0, 4
/* 8015DBA4  98 03 09 48 */	stb r0, 0x948(r3)
/* 8015DBA8  88 03 09 48 */	lbz r0, 0x948(r3)
/* 8015DBAC  60 00 00 08 */	ori r0, r0, 8
/* 8015DBB0  98 03 09 48 */	stb r0, 0x948(r3)
/* 8015DBB4  88 03 09 48 */	lbz r0, 0x948(r3)
/* 8015DBB8  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8015DBBC  98 03 09 48 */	stb r0, 0x948(r3)
lbl_8015DBC0:
/* 8015DBC0  3C 80 80 3B */	lis r4, item_info__10dItem_data@ha /* 0x803AED78@ha */
/* 8015DBC4  38 84 ED 78 */	addi r4, r4, item_info__10dItem_data@l /* 0x803AED78@l */
/* 8015DBC8  88 03 09 2A */	lbz r0, 0x92a(r3)
/* 8015DBCC  54 00 10 3A */	slwi r0, r0, 2
/* 8015DBD0  7C 84 02 14 */	add r4, r4, r0
/* 8015DBD4  88 04 00 03 */	lbz r0, 3(r4)
/* 8015DBD8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8015DBDC  4D 82 00 20 */	beqlr 
/* 8015DBE0  88 03 09 48 */	lbz r0, 0x948(r3)
/* 8015DBE4  60 00 00 08 */	ori r0, r0, 8
/* 8015DBE8  98 03 09 48 */	stb r0, 0x948(r3)
/* 8015DBEC  4E 80 00 20 */	blr 

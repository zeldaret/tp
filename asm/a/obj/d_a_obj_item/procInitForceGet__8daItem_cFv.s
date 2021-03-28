lbl_8015BFEC:
/* 8015BFEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015BFF0  7C 08 02 A6 */	mflr r0
/* 8015BFF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015BFF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015BFFC  7C 7F 1B 78 */	mr r31, r3
/* 8015C000  80 03 05 B8 */	lwz r0, 0x5b8(r3)
/* 8015C004  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8015C008  90 03 05 B8 */	stw r0, 0x5b8(r3)
/* 8015C00C  38 7F 05 8C */	addi r3, r31, 0x58c
/* 8015C010  4B F1 B3 95 */	bl ClrMoveBGOnly__9dBgS_AcchFv
/* 8015C014  38 00 00 08 */	li r0, 8
/* 8015C018  98 1F 09 4A */	stb r0, 0x94a(r31)
/* 8015C01C  7F E3 FB 78 */	mr r3, r31
/* 8015C020  48 00 0E CD */	bl itemGetNextExecute__8daItem_cFv
/* 8015C024  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015C028  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015C02C  7C 08 03 A6 */	mtlr r0
/* 8015C030  38 21 00 10 */	addi r1, r1, 0x10
/* 8015C034  4E 80 00 20 */	blr 

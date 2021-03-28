lbl_80A3CB14:
/* 80A3CB14  88 03 15 AE */	lbz r0, 0x15ae(r3)
/* 80A3CB18  7C 00 07 74 */	extsb r0, r0
/* 80A3CB1C  2C 00 00 02 */	cmpwi r0, 2
/* 80A3CB20  41 82 00 74 */	beq lbl_80A3CB94
/* 80A3CB24  40 80 00 14 */	bge lbl_80A3CB38
/* 80A3CB28  2C 00 00 00 */	cmpwi r0, 0
/* 80A3CB2C  4D 82 00 20 */	beqlr 
/* 80A3CB30  40 80 00 14 */	bge lbl_80A3CB44
/* 80A3CB34  4E 80 00 20 */	blr 
lbl_80A3CB38:
/* 80A3CB38  2C 00 00 04 */	cmpwi r0, 4
/* 80A3CB3C  4C 80 00 20 */	bgelr 
/* 80A3CB40  48 00 00 A0 */	b lbl_80A3CBE0
lbl_80A3CB44:
/* 80A3CB44  38 00 FF FF */	li r0, -1
/* 80A3CB48  90 03 12 04 */	stw r0, 0x1204(r3)
/* 80A3CB4C  38 00 00 02 */	li r0, 2
/* 80A3CB50  98 03 12 96 */	stb r0, 0x1296(r3)
/* 80A3CB54  38 00 00 13 */	li r0, 0x13
/* 80A3CB58  90 03 11 F4 */	stw r0, 0x11f4(r3)
/* 80A3CB5C  80 03 12 78 */	lwz r0, 0x1278(r3)
/* 80A3CB60  60 00 00 02 */	ori r0, r0, 2
/* 80A3CB64  90 03 12 78 */	stw r0, 0x1278(r3)
/* 80A3CB68  88 03 17 0C */	lbz r0, 0x170c(r3)
/* 80A3CB6C  28 00 00 00 */	cmplwi r0, 0
/* 80A3CB70  40 82 00 14 */	bne lbl_80A3CB84
/* 80A3CB74  80 03 12 78 */	lwz r0, 0x1278(r3)
/* 80A3CB78  60 00 00 01 */	ori r0, r0, 1
/* 80A3CB7C  90 03 12 78 */	stw r0, 0x1278(r3)
/* 80A3CB80  4E 80 00 20 */	blr 
lbl_80A3CB84:
/* 80A3CB84  80 03 12 78 */	lwz r0, 0x1278(r3)
/* 80A3CB88  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80A3CB8C  90 03 12 78 */	stw r0, 0x1278(r3)
/* 80A3CB90  4E 80 00 20 */	blr 
lbl_80A3CB94:
/* 80A3CB94  38 00 FF FF */	li r0, -1
/* 80A3CB98  90 03 12 04 */	stw r0, 0x1204(r3)
/* 80A3CB9C  38 00 00 01 */	li r0, 1
/* 80A3CBA0  98 03 12 96 */	stb r0, 0x1296(r3)
/* 80A3CBA4  38 00 00 13 */	li r0, 0x13
/* 80A3CBA8  90 03 11 F4 */	stw r0, 0x11f4(r3)
/* 80A3CBAC  80 03 12 78 */	lwz r0, 0x1278(r3)
/* 80A3CBB0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80A3CBB4  90 03 12 78 */	stw r0, 0x1278(r3)
/* 80A3CBB8  80 03 11 F4 */	lwz r0, 0x11f4(r3)
/* 80A3CBBC  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 80A3CBC0  90 03 11 F4 */	stw r0, 0x11f4(r3)
/* 80A3CBC4  80 03 12 78 */	lwz r0, 0x1278(r3)
/* 80A3CBC8  60 00 00 02 */	ori r0, r0, 2
/* 80A3CBCC  90 03 12 78 */	stw r0, 0x1278(r3)
/* 80A3CBD0  80 03 12 08 */	lwz r0, 0x1208(r3)
/* 80A3CBD4  60 00 00 01 */	ori r0, r0, 1
/* 80A3CBD8  90 03 12 08 */	stw r0, 0x1208(r3)
/* 80A3CBDC  4E 80 00 20 */	blr 
lbl_80A3CBE0:
/* 80A3CBE0  80 03 11 F4 */	lwz r0, 0x11f4(r3)
/* 80A3CBE4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80A3CBE8  90 03 11 F4 */	stw r0, 0x11f4(r3)
/* 80A3CBEC  80 03 12 08 */	lwz r0, 0x1208(r3)
/* 80A3CBF0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80A3CBF4  90 03 12 08 */	stw r0, 0x1208(r3)
/* 80A3CBF8  4E 80 00 20 */	blr 

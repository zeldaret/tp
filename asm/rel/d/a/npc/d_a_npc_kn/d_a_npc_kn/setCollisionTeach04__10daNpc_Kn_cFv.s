lbl_80A2CC24:
/* 80A2CC24  88 03 15 AE */	lbz r0, 0x15ae(r3)
/* 80A2CC28  7C 00 07 74 */	extsb r0, r0
/* 80A2CC2C  2C 00 00 09 */	cmpwi r0, 9
/* 80A2CC30  41 82 00 14 */	beq lbl_80A2CC44
/* 80A2CC34  4D 80 00 20 */	bltlr 
/* 80A2CC38  2C 00 00 0C */	cmpwi r0, 0xc
/* 80A2CC3C  4C 80 00 20 */	bgelr 
/* 80A2CC40  48 00 00 80 */	b lbl_80A2CCC0
lbl_80A2CC44:
/* 80A2CC44  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A2CC48  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A2CC4C  88 04 4F AD */	lbz r0, 0x4fad(r4)
/* 80A2CC50  28 00 00 00 */	cmplwi r0, 0
/* 80A2CC54  41 82 00 2C */	beq lbl_80A2CC80
/* 80A2CC58  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80A2CC5C  28 00 00 02 */	cmplwi r0, 2
/* 80A2CC60  40 82 00 20 */	bne lbl_80A2CC80
/* 80A2CC64  80 03 11 F4 */	lwz r0, 0x11f4(r3)
/* 80A2CC68  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80A2CC6C  90 03 11 F4 */	stw r0, 0x11f4(r3)
/* 80A2CC70  80 03 12 08 */	lwz r0, 0x1208(r3)
/* 80A2CC74  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80A2CC78  90 03 12 08 */	stw r0, 0x1208(r3)
/* 80A2CC7C  4E 80 00 20 */	blr 
lbl_80A2CC80:
/* 80A2CC80  38 00 FF FF */	li r0, -1
/* 80A2CC84  90 03 12 04 */	stw r0, 0x1204(r3)
/* 80A2CC88  38 00 00 02 */	li r0, 2
/* 80A2CC8C  98 03 12 96 */	stb r0, 0x1296(r3)
/* 80A2CC90  38 00 00 13 */	li r0, 0x13
/* 80A2CC94  90 03 11 F4 */	stw r0, 0x11f4(r3)
/* 80A2CC98  80 03 12 78 */	lwz r0, 0x1278(r3)
/* 80A2CC9C  60 00 00 01 */	ori r0, r0, 1
/* 80A2CCA0  90 03 12 78 */	stw r0, 0x1278(r3)
/* 80A2CCA4  80 03 11 F4 */	lwz r0, 0x11f4(r3)
/* 80A2CCA8  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 80A2CCAC  90 03 11 F4 */	stw r0, 0x11f4(r3)
/* 80A2CCB0  80 03 12 78 */	lwz r0, 0x1278(r3)
/* 80A2CCB4  60 00 00 02 */	ori r0, r0, 2
/* 80A2CCB8  90 03 12 78 */	stw r0, 0x1278(r3)
/* 80A2CCBC  4E 80 00 20 */	blr 
lbl_80A2CCC0:
/* 80A2CCC0  38 00 FF FF */	li r0, -1
/* 80A2CCC4  90 03 12 04 */	stw r0, 0x1204(r3)
/* 80A2CCC8  38 00 00 01 */	li r0, 1
/* 80A2CCCC  98 03 12 96 */	stb r0, 0x1296(r3)
/* 80A2CCD0  38 00 00 13 */	li r0, 0x13
/* 80A2CCD4  90 03 11 F4 */	stw r0, 0x11f4(r3)
/* 80A2CCD8  80 03 12 78 */	lwz r0, 0x1278(r3)
/* 80A2CCDC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80A2CCE0  90 03 12 78 */	stw r0, 0x1278(r3)
/* 80A2CCE4  80 03 11 F4 */	lwz r0, 0x11f4(r3)
/* 80A2CCE8  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 80A2CCEC  90 03 11 F4 */	stw r0, 0x11f4(r3)
/* 80A2CCF0  80 03 12 78 */	lwz r0, 0x1278(r3)
/* 80A2CCF4  60 00 00 02 */	ori r0, r0, 2
/* 80A2CCF8  90 03 12 78 */	stw r0, 0x1278(r3)
/* 80A2CCFC  4E 80 00 20 */	blr 

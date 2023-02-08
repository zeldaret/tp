lbl_802289A8:
/* 802289A8  54 66 06 3E */	clrlwi r6, r3, 0x18
/* 802289AC  28 06 00 08 */	cmplwi r6, 8
/* 802289B0  40 81 00 0C */	ble lbl_802289BC
/* 802289B4  38 60 FF FF */	li r3, -1
/* 802289B8  4E 80 00 20 */	blr 
lbl_802289BC:
/* 802289BC  3C A0 80 43 */	lis r5, g_MsgObject_HIO_c@ha /* 0x8043028C@ha */
/* 802289C0  38 A5 02 8C */	addi r5, r5, g_MsgObject_HIO_c@l /* 0x8043028C@l */
/* 802289C4  88 05 03 20 */	lbz r0, 0x320(r5)
/* 802289C8  28 00 00 00 */	cmplwi r0, 0
/* 802289CC  41 82 00 28 */	beq lbl_802289F4
/* 802289D0  7C A5 32 14 */	add r5, r5, r6
/* 802289D4  88 85 03 4E */	lbz r4, 0x34e(r5)
/* 802289D8  88 65 03 3C */	lbz r3, 0x33c(r5)
/* 802289DC  88 05 03 45 */	lbz r0, 0x345(r5)
/* 802289E0  54 00 80 1E */	slwi r0, r0, 0x10
/* 802289E4  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 802289E8  50 80 44 2E */	rlwimi r0, r4, 8, 0x10, 0x17
/* 802289EC  60 03 00 FF */	ori r3, r0, 0xff
/* 802289F0  4E 80 00 20 */	blr 
lbl_802289F4:
/* 802289F4  54 60 15 BA */	rlwinm r0, r3, 2, 0x16, 0x1d
/* 802289F8  3C 60 80 3A */	lis r3, colorTable_3877@ha /* 0x803995EC@ha */
/* 802289FC  38 63 95 EC */	addi r3, r3, colorTable_3877@l /* 0x803995EC@l */
/* 80228A00  7C 63 00 2E */	lwzx r3, r3, r0
/* 80228A04  28 06 00 00 */	cmplwi r6, 0
/* 80228A08  4C 82 00 20 */	bnelr 
/* 80228A0C  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80228A10  2C 00 00 0D */	cmpwi r0, 0xd
/* 80228A14  41 82 00 20 */	beq lbl_80228A34
/* 80228A18  40 80 00 10 */	bge lbl_80228A28
/* 80228A1C  2C 00 00 08 */	cmpwi r0, 8
/* 80228A20  41 82 00 20 */	beq lbl_80228A40
/* 80228A24  4E 80 00 20 */	blr 
lbl_80228A28:
/* 80228A28  2C 00 00 0F */	cmpwi r0, 0xf
/* 80228A2C  4C 80 00 20 */	bgelr 
/* 80228A30  48 00 00 18 */	b lbl_80228A48
lbl_80228A34:
/* 80228A34  3C 60 82 E7 */	lis r3, 0x82E7 /* 0x82E6E6FF@ha */
/* 80228A38  38 63 E6 FF */	addi r3, r3, 0xE6FF /* 0x82E6E6FF@l */
/* 80228A3C  4E 80 00 20 */	blr 
lbl_80228A40:
/* 80228A40  38 60 FF FF */	li r3, -1
/* 80228A44  4E 80 00 20 */	blr 
lbl_80228A48:
/* 80228A48  3C 60 96 DC */	lis r3, 0x96DC /* 0x96DC64FF@ha */
/* 80228A4C  38 63 64 FF */	addi r3, r3, 0x64FF /* 0x96DC64FF@l */
/* 80228A50  4E 80 00 20 */	blr 

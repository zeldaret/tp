lbl_800D7B18:
/* 800D7B18  80 03 31 A0 */	lwz r0, 0x31a0(r3)
/* 800D7B1C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 800D7B20  40 82 00 70 */	bne lbl_800D7B90
/* 800D7B24  88 83 2F B5 */	lbz r4, 0x2fb5(r3)
/* 800D7B28  28 04 00 00 */	cmplwi r4, 0
/* 800D7B2C  41 82 00 0C */	beq lbl_800D7B38
/* 800D7B30  38 04 FF FF */	addi r0, r4, -1
/* 800D7B34  98 03 2F B5 */	stb r0, 0x2fb5(r3)
lbl_800D7B38:
/* 800D7B38  A8 83 05 6C */	lha r4, 0x56c(r3)
/* 800D7B3C  38 04 FF FF */	addi r0, r4, -1
/* 800D7B40  B0 03 05 6C */	sth r0, 0x56c(r3)
/* 800D7B44  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800D7B48  28 00 00 78 */	cmplwi r0, 0x78
/* 800D7B4C  41 82 00 1C */	beq lbl_800D7B68
/* 800D7B50  80 03 05 74 */	lwz r0, 0x574(r3)
/* 800D7B54  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800D7B58  41 82 00 10 */	beq lbl_800D7B68
/* 800D7B5C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 800D7B60  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800D7B64  90 03 05 74 */	stw r0, 0x574(r3)
lbl_800D7B68:
/* 800D7B68  A0 03 1F BC */	lhz r0, 0x1fbc(r3)
/* 800D7B6C  28 00 02 62 */	cmplwi r0, 0x262
/* 800D7B70  4D 82 00 20 */	beqlr 
/* 800D7B74  80 03 05 70 */	lwz r0, 0x570(r3)
/* 800D7B78  54 00 03 9D */	rlwinm. r0, r0, 0, 0xe, 0xe
/* 800D7B7C  4D 82 00 20 */	beqlr 
/* 800D7B80  80 03 05 70 */	lwz r0, 0x570(r3)
/* 800D7B84  54 00 03 DA */	rlwinm r0, r0, 0, 0xf, 0xd
/* 800D7B88  90 03 05 70 */	stw r0, 0x570(r3)
/* 800D7B8C  4E 80 00 20 */	blr 
lbl_800D7B90:
/* 800D7B90  88 83 2F B5 */	lbz r4, 0x2fb5(r3)
/* 800D7B94  28 04 00 00 */	cmplwi r4, 0
/* 800D7B98  4D 82 00 20 */	beqlr 
/* 800D7B9C  38 04 FF FF */	addi r0, r4, -1
/* 800D7BA0  98 03 2F B5 */	stb r0, 0x2fb5(r3)
/* 800D7BA4  88 03 2F B5 */	lbz r0, 0x2fb5(r3)
/* 800D7BA8  A8 A3 05 6C */	lha r5, 0x56c(r3)
/* 800D7BAC  7C 80 2A 14 */	add r4, r0, r5
/* 800D7BB0  54 80 E0 06 */	slwi r0, r4, 0x1c
/* 800D7BB4  54 84 0F FE */	srwi r4, r4, 0x1f
/* 800D7BB8  7C 04 00 50 */	subf r0, r4, r0
/* 800D7BBC  54 00 20 3E */	rotlwi r0, r0, 4
/* 800D7BC0  7C 00 22 15 */	add. r0, r0, r4
/* 800D7BC4  4C 82 00 20 */	bnelr 
/* 800D7BC8  54 A0 E0 06 */	slwi r0, r5, 0x1c
/* 800D7BCC  54 A4 0F FE */	srwi r4, r5, 0x1f
/* 800D7BD0  7C 04 00 50 */	subf r0, r4, r0
/* 800D7BD4  54 00 20 3E */	rotlwi r0, r0, 4
/* 800D7BD8  7C 00 22 14 */	add r0, r0, r4
/* 800D7BDC  20 00 00 20 */	subfic r0, r0, 0x20
/* 800D7BE0  98 03 2F B5 */	stb r0, 0x2fb5(r3)
/* 800D7BE4  4E 80 00 20 */	blr 

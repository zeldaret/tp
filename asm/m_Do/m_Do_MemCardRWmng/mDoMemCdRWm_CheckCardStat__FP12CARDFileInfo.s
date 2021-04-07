lbl_80017B4C:
/* 80017B4C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80017B50  7C 08 02 A6 */	mflr r0
/* 80017B54  90 01 00 84 */	stw r0, 0x84(r1)
/* 80017B58  7C 64 1B 78 */	mr r4, r3
/* 80017B5C  3C 60 80 3F */	lis r3, g_mDoMemCd_control@ha /* 0x803EAF40@ha */
/* 80017B60  38 63 AF 40 */	addi r3, r3, g_mDoMemCd_control@l /* 0x803EAF40@l */
/* 80017B64  88 63 1F BC */	lbz r3, 0x1fbc(r3)
/* 80017B68  80 84 00 04 */	lwz r4, 4(r4)
/* 80017B6C  38 A1 00 08 */	addi r5, r1, 8
/* 80017B70  48 34 13 19 */	bl CARDGetStatus
/* 80017B74  80 01 00 38 */	lwz r0, 0x38(r1)
/* 80017B78  28 00 00 00 */	cmplwi r0, 0
/* 80017B7C  40 82 00 DC */	bne lbl_80017C58
/* 80017B80  80 01 00 40 */	lwz r0, 0x40(r1)
/* 80017B84  28 00 24 00 */	cmplwi r0, 0x2400
/* 80017B88  40 82 00 D0 */	bne lbl_80017C58
/* 80017B8C  88 61 00 36 */	lbz r3, 0x36(r1)
/* 80017B90  54 60 07 BE */	clrlwi r0, r3, 0x1e
/* 80017B94  2C 00 00 01 */	cmpwi r0, 1
/* 80017B98  40 82 00 C0 */	bne lbl_80017C58
/* 80017B9C  54 60 07 7A */	rlwinm r0, r3, 0, 0x1d, 0x1d
/* 80017BA0  2C 00 00 04 */	cmpwi r0, 4
/* 80017BA4  40 82 00 B4 */	bne lbl_80017C58
/* 80017BA8  A0 61 00 3C */	lhz r3, 0x3c(r1)
/* 80017BAC  54 60 07 BE */	clrlwi r0, r3, 0x1e
/* 80017BB0  2C 00 00 01 */	cmpwi r0, 1
/* 80017BB4  40 82 00 A4 */	bne lbl_80017C58
/* 80017BB8  54 60 F7 BE */	rlwinm r0, r3, 0x1e, 0x1e, 0x1f
/* 80017BBC  2C 00 00 01 */	cmpwi r0, 1
/* 80017BC0  40 82 00 98 */	bne lbl_80017C58
/* 80017BC4  54 60 E7 BE */	rlwinm r0, r3, 0x1c, 0x1e, 0x1f
/* 80017BC8  2C 00 00 01 */	cmpwi r0, 1
/* 80017BCC  40 82 00 8C */	bne lbl_80017C58
/* 80017BD0  54 60 D7 BE */	rlwinm r0, r3, 0x1a, 0x1e, 0x1f
/* 80017BD4  2C 00 00 01 */	cmpwi r0, 1
/* 80017BD8  40 82 00 80 */	bne lbl_80017C58
/* 80017BDC  54 60 C7 BE */	rlwinm r0, r3, 0x18, 0x1e, 0x1f
/* 80017BE0  2C 00 00 01 */	cmpwi r0, 1
/* 80017BE4  40 82 00 74 */	bne lbl_80017C58
/* 80017BE8  54 60 B7 BF */	rlwinm. r0, r3, 0x16, 0x1e, 0x1f
/* 80017BEC  40 82 00 6C */	bne lbl_80017C58
/* 80017BF0  54 60 A7 BF */	rlwinm. r0, r3, 0x14, 0x1e, 0x1f
/* 80017BF4  40 82 00 64 */	bne lbl_80017C58
/* 80017BF8  54 60 97 BF */	rlwinm. r0, r3, 0x12, 0x1e, 0x1f
/* 80017BFC  40 82 00 5C */	bne lbl_80017C58
/* 80017C00  A0 61 00 3E */	lhz r3, 0x3e(r1)
/* 80017C04  54 60 07 BE */	clrlwi r0, r3, 0x1e
/* 80017C08  2C 00 00 01 */	cmpwi r0, 1
/* 80017C0C  40 82 00 4C */	bne lbl_80017C58
/* 80017C10  54 60 F7 BE */	rlwinm r0, r3, 0x1e, 0x1e, 0x1f
/* 80017C14  2C 00 00 01 */	cmpwi r0, 1
/* 80017C18  40 82 00 40 */	bne lbl_80017C58
/* 80017C1C  54 60 E7 BE */	rlwinm r0, r3, 0x1c, 0x1e, 0x1f
/* 80017C20  2C 00 00 01 */	cmpwi r0, 1
/* 80017C24  40 82 00 34 */	bne lbl_80017C58
/* 80017C28  54 60 D7 BE */	rlwinm r0, r3, 0x1a, 0x1e, 0x1f
/* 80017C2C  2C 00 00 01 */	cmpwi r0, 1
/* 80017C30  40 82 00 28 */	bne lbl_80017C58
/* 80017C34  54 60 C7 BE */	rlwinm r0, r3, 0x18, 0x1e, 0x1f
/* 80017C38  2C 00 00 01 */	cmpwi r0, 1
/* 80017C3C  40 82 00 1C */	bne lbl_80017C58
/* 80017C40  54 60 B7 BF */	rlwinm. r0, r3, 0x16, 0x1e, 0x1f
/* 80017C44  40 82 00 14 */	bne lbl_80017C58
/* 80017C48  54 60 A7 BF */	rlwinm. r0, r3, 0x14, 0x1e, 0x1f
/* 80017C4C  40 82 00 0C */	bne lbl_80017C58
/* 80017C50  54 60 97 BF */	rlwinm. r0, r3, 0x12, 0x1e, 0x1f
/* 80017C54  41 82 00 0C */	beq lbl_80017C60
lbl_80017C58:
/* 80017C58  38 60 00 00 */	li r3, 0
/* 80017C5C  48 00 00 08 */	b lbl_80017C64
lbl_80017C60:
/* 80017C60  38 60 00 01 */	li r3, 1
lbl_80017C64:
/* 80017C64  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80017C68  7C 08 03 A6 */	mtlr r0
/* 80017C6C  38 21 00 80 */	addi r1, r1, 0x80
/* 80017C70  4E 80 00 20 */	blr 

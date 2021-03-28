lbl_802A8BAC:
/* 802A8BAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A8BB0  7C 08 02 A6 */	mflr r0
/* 802A8BB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A8BB8  54 80 86 3E */	rlwinm r0, r4, 0x10, 0x18, 0x1f
/* 802A8BBC  54 87 04 3E */	clrlwi r7, r4, 0x10
/* 802A8BC0  2C 00 00 FF */	cmpwi r0, 0xff
/* 802A8BC4  41 82 00 1C */	beq lbl_802A8BE0
/* 802A8BC8  40 80 00 48 */	bge lbl_802A8C10
/* 802A8BCC  2C 00 00 FD */	cmpwi r0, 0xfd
/* 802A8BD0  40 80 00 40 */	bge lbl_802A8C10
/* 802A8BD4  2C 00 00 F7 */	cmpwi r0, 0xf7
/* 802A8BD8  40 80 00 3C */	bge lbl_802A8C14
/* 802A8BDC  48 00 00 34 */	b lbl_802A8C10
lbl_802A8BE0:
/* 802A8BE0  2C 07 00 06 */	cmpwi r7, 6
/* 802A8BE4  40 80 00 18 */	bge lbl_802A8BFC
/* 802A8BE8  2C 07 00 04 */	cmpwi r7, 4
/* 802A8BEC  40 80 00 1C */	bge lbl_802A8C08
/* 802A8BF0  2C 07 00 00 */	cmpwi r7, 0
/* 802A8BF4  40 80 00 20 */	bge lbl_802A8C14
/* 802A8BF8  48 00 00 10 */	b lbl_802A8C08
lbl_802A8BFC:
/* 802A8BFC  2C 07 00 08 */	cmpwi r7, 8
/* 802A8C00  40 80 00 08 */	bge lbl_802A8C08
/* 802A8C04  48 00 00 10 */	b lbl_802A8C14
lbl_802A8C08:
/* 802A8C08  4B FF F4 89 */	bl do_tag___Q28JMessage10TProcessorFUlPCvUl
/* 802A8C0C  48 00 00 08 */	b lbl_802A8C14
lbl_802A8C10:
/* 802A8C10  4B FF F4 81 */	bl do_tag___Q28JMessage10TProcessorFUlPCvUl
lbl_802A8C14:
/* 802A8C14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A8C18  7C 08 03 A6 */	mtlr r0
/* 802A8C1C  38 21 00 10 */	addi r1, r1, 0x10
/* 802A8C20  4E 80 00 20 */	blr 

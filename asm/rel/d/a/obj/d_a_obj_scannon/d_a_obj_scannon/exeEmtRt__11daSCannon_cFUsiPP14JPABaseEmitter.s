lbl_80CC8B60:
/* 80CC8B60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CC8B64  7C 08 02 A6 */	mflr r0
/* 80CC8B68  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CC8B6C  39 61 00 20 */	addi r11, r1, 0x20
/* 80CC8B70  4B 69 96 64 */	b _savegpr_27
/* 80CC8B74  7C BB 2B 78 */	mr r27, r5
/* 80CC8B78  7C DC 33 78 */	mr r28, r6
/* 80CC8B7C  88 03 06 17 */	lbz r0, 0x617(r3)
/* 80CC8B80  54 00 10 3A */	slwi r0, r0, 2
/* 80CC8B84  7C 63 02 14 */	add r3, r3, r0
/* 80CC8B88  80 63 05 E4 */	lwz r3, 0x5e4(r3)
/* 80CC8B8C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80CC8B90  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80CC8B94  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 80CC8B98  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80CC8B9C  7F C3 02 15 */	add. r30, r3, r0
/* 80CC8BA0  41 82 00 3C */	beq lbl_80CC8BDC
/* 80CC8BA4  3B A0 00 00 */	li r29, 0
/* 80CC8BA8  3B E0 00 00 */	li r31, 0
/* 80CC8BAC  48 00 00 28 */	b lbl_80CC8BD4
lbl_80CC8BB0:
/* 80CC8BB0  7C BC F8 2E */	lwzx r5, r28, r31
/* 80CC8BB4  28 05 00 00 */	cmplwi r5, 0
/* 80CC8BB8  41 82 00 14 */	beq lbl_80CC8BCC
/* 80CC8BBC  7F C3 F3 78 */	mr r3, r30
/* 80CC8BC0  38 85 00 68 */	addi r4, r5, 0x68
/* 80CC8BC4  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 80CC8BC8  4B 5B 7C 18 */	b func_802807E0
lbl_80CC8BCC:
/* 80CC8BCC  3B BD 00 01 */	addi r29, r29, 1
/* 80CC8BD0  3B FF 00 04 */	addi r31, r31, 4
lbl_80CC8BD4:
/* 80CC8BD4  7C 1D D8 00 */	cmpw r29, r27
/* 80CC8BD8  41 80 FF D8 */	blt lbl_80CC8BB0
lbl_80CC8BDC:
/* 80CC8BDC  39 61 00 20 */	addi r11, r1, 0x20
/* 80CC8BE0  4B 69 96 40 */	b _restgpr_27
/* 80CC8BE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CC8BE8  7C 08 03 A6 */	mtlr r0
/* 80CC8BEC  38 21 00 20 */	addi r1, r1, 0x20
/* 80CC8BF0  4E 80 00 20 */	blr 

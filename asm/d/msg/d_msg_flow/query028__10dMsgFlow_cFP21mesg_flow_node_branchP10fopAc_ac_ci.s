lbl_8024BA4C:
/* 8024BA4C  A0 04 00 04 */	lhz r0, 4(r4)
/* 8024BA50  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8024BA54  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8024BA58  80 A3 00 84 */	lwz r5, 0x84(r3)
/* 8024BA5C  1C 80 03 E8 */	mulli r4, r0, 0x3e8
/* 8024BA60  38 C4 03 E7 */	addi r6, r4, 0x3e7
/* 8024BA64  7C A0 32 78 */	xor r0, r5, r6
/* 8024BA68  7C 03 0E 70 */	srawi r3, r0, 1
/* 8024BA6C  7C 00 28 38 */	and r0, r0, r5
/* 8024BA70  7C 00 18 50 */	subf r0, r0, r3
/* 8024BA74  54 00 0F FE */	srwi r0, r0, 0x1f
/* 8024BA78  7C 03 03 78 */	mr r3, r0
/* 8024BA7C  7C 05 30 00 */	cmpw r5, r6
/* 8024BA80  7C 84 28 50 */	subf r4, r4, r5
/* 8024BA84  38 04 03 E7 */	addi r0, r4, 0x3e7
/* 8024BA88  41 81 00 08 */	bgt lbl_8024BA90
/* 8024BA8C  7C 05 30 50 */	subf r0, r5, r6
lbl_8024BA90:
/* 8024BA90  3C 80 80 43 */	lis r4, g_meter2_info@ha
/* 8024BA94  38 84 01 88 */	addi r4, r4, g_meter2_info@l
/* 8024BA98  90 04 00 88 */	stw r0, 0x88(r4)
/* 8024BA9C  4E 80 00 20 */	blr 

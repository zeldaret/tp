lbl_802A9A70:
/* 802A9A70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A9A74  7C 08 02 A6 */	mflr r0
/* 802A9A78  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A9A7C  38 C0 00 00 */	li r6, 0
/* 802A9A80  3C A0 62 66 */	lis r5, 0x6266 /* 0x62666361@ha */
/* 802A9A84  38 05 63 61 */	addi r0, r5, 0x6361 /* 0x62666361@l */
/* 802A9A88  7C 04 00 00 */	cmpw r4, r0
/* 802A9A8C  41 82 00 08 */	beq lbl_802A9A94
/* 802A9A90  48 00 00 24 */	b lbl_802A9AB4
lbl_802A9A94:
/* 802A9A94  80 83 00 04 */	lwz r4, 4(r3)
/* 802A9A98  80 A4 00 00 */	lwz r5, 0(r4)
/* 802A9A9C  38 04 00 04 */	addi r0, r4, 4
/* 802A9AA0  90 03 00 04 */	stw r0, 4(r3)
/* 802A9AA4  80 03 00 08 */	lwz r0, 8(r3)
/* 802A9AA8  7C 80 2A 14 */	add r4, r0, r5
/* 802A9AAC  48 00 00 1D */	bl readBFCA__16Z2AudioArcLoaderFPCv
/* 802A9AB0  38 C0 00 01 */	li r6, 1
lbl_802A9AB4:
/* 802A9AB4  7C C3 33 78 */	mr r3, r6
/* 802A9AB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A9ABC  7C 08 03 A6 */	mtlr r0
/* 802A9AC0  38 21 00 10 */	addi r1, r1, 0x10
/* 802A9AC4  4E 80 00 20 */	blr 

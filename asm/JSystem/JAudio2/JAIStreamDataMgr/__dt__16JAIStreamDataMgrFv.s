lbl_802A3AD8:
/* 802A3AD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A3ADC  7C 08 02 A6 */	mflr r0
/* 802A3AE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A3AE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A3AE8  7C 7F 1B 79 */	or. r31, r3, r3
/* 802A3AEC  41 82 00 1C */	beq lbl_802A3B08
/* 802A3AF0  3C A0 80 3D */	lis r5, __vt__16JAIStreamDataMgr@ha /* 0x803C9A1C@ha */
/* 802A3AF4  38 05 9A 1C */	addi r0, r5, __vt__16JAIStreamDataMgr@l /* 0x803C9A1C@l */
/* 802A3AF8  90 1F 00 00 */	stw r0, 0(r31)
/* 802A3AFC  7C 80 07 35 */	extsh. r0, r4
/* 802A3B00  40 81 00 08 */	ble lbl_802A3B08
/* 802A3B04  48 02 B2 39 */	bl __dl__FPv
lbl_802A3B08:
/* 802A3B08  7F E3 FB 78 */	mr r3, r31
/* 802A3B0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A3B10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A3B14  7C 08 03 A6 */	mtlr r0
/* 802A3B18  38 21 00 10 */	addi r1, r1, 0x10
/* 802A3B1C  4E 80 00 20 */	blr 

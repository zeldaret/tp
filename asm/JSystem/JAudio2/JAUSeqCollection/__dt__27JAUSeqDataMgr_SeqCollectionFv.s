lbl_802A6894:
/* 802A6894  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A6898  7C 08 02 A6 */	mflr r0
/* 802A689C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A68A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A68A4  93 C1 00 08 */	stw r30, 8(r1)
/* 802A68A8  7C 7E 1B 79 */	or. r30, r3, r3
/* 802A68AC  7C 9F 23 78 */	mr r31, r4
/* 802A68B0  41 82 00 28 */	beq lbl_802A68D8
/* 802A68B4  3C 80 80 3D */	lis r4, __vt__27JAUSeqDataMgr_SeqCollection@ha /* 0x803C9B38@ha */
/* 802A68B8  38 04 9B 38 */	addi r0, r4, __vt__27JAUSeqDataMgr_SeqCollection@l /* 0x803C9B38@l */
/* 802A68BC  90 1E 00 00 */	stw r0, 0(r30)
/* 802A68C0  38 80 00 00 */	li r4, 0
/* 802A68C4  4B FF AE F9 */	bl __dt__13JAISeqDataMgrFv
/* 802A68C8  7F E0 07 35 */	extsh. r0, r31
/* 802A68CC  40 81 00 0C */	ble lbl_802A68D8
/* 802A68D0  7F C3 F3 78 */	mr r3, r30
/* 802A68D4  48 02 84 69 */	bl __dl__FPv
lbl_802A68D8:
/* 802A68D8  7F C3 F3 78 */	mr r3, r30
/* 802A68DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A68E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A68E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A68E8  7C 08 03 A6 */	mtlr r0
/* 802A68EC  38 21 00 10 */	addi r1, r1, 0x10
/* 802A68F0  4E 80 00 20 */	blr 

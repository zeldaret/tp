lbl_802A3B20:
/* 802A3B20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A3B24  7C 08 02 A6 */	mflr r0
/* 802A3B28  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A3B2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A3B30  7C 7F 1B 79 */	or. r31, r3, r3
/* 802A3B34  41 82 00 1C */	beq lbl_802A3B50
/* 802A3B38  3C A0 80 3D */	lis r5, __vt__16JAIStreamAramMgr@ha /* 0x803C9A08@ha */
/* 802A3B3C  38 05 9A 08 */	addi r0, r5, __vt__16JAIStreamAramMgr@l /* 0x803C9A08@l */
/* 802A3B40  90 1F 00 00 */	stw r0, 0(r31)
/* 802A3B44  7C 80 07 35 */	extsh. r0, r4
/* 802A3B48  40 81 00 08 */	ble lbl_802A3B50
/* 802A3B4C  48 02 B1 F1 */	bl __dl__FPv
lbl_802A3B50:
/* 802A3B50  7F E3 FB 78 */	mr r3, r31
/* 802A3B54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A3B58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A3B5C  7C 08 03 A6 */	mtlr r0
/* 802A3B60  38 21 00 10 */	addi r1, r1, 0x10
/* 802A3B64  4E 80 00 20 */	blr 

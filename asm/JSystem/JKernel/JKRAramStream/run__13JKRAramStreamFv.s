lbl_802D3C68:
/* 802D3C68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D3C6C  7C 08 02 A6 */	mflr r0
/* 802D3C70  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D3C74  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D3C78  3C 60 80 3D */	lis r3, sMessageQueue__13JKRAramStream@ha /* 0x803CC198@ha */
/* 802D3C7C  38 63 C1 98 */	addi r3, r3, sMessageQueue__13JKRAramStream@l /* 0x803CC198@l */
/* 802D3C80  3C 80 80 3D */	lis r4, sMessageBuffer__13JKRAramStream@ha /* 0x803CC188@ha */
/* 802D3C84  38 84 C1 88 */	addi r4, r4, sMessageBuffer__13JKRAramStream@l /* 0x803CC188@l */
/* 802D3C88  38 A0 00 04 */	li r5, 4
/* 802D3C8C  48 06 AD 09 */	bl OSInitMessageQueue
/* 802D3C90  3C 60 80 3D */	lis r3, sMessageQueue__13JKRAramStream@ha /* 0x803CC198@ha */
/* 802D3C94  3B E3 C1 98 */	addi r31, r3, sMessageQueue__13JKRAramStream@l /* 0x803CC198@l */
lbl_802D3C98:
/* 802D3C98  7F E3 FB 78 */	mr r3, r31
/* 802D3C9C  38 81 00 08 */	addi r4, r1, 8
/* 802D3CA0  38 A0 00 01 */	li r5, 1
/* 802D3CA4  48 06 AE 19 */	bl OSReceiveMessage
/* 802D3CA8  80 61 00 08 */	lwz r3, 8(r1)
/* 802D3CAC  80 03 00 00 */	lwz r0, 0(r3)
/* 802D3CB0  2C 00 00 02 */	cmpwi r0, 2
/* 802D3CB4  41 82 00 1C */	beq lbl_802D3CD0
/* 802D3CB8  40 80 FF E0 */	bge lbl_802D3C98
/* 802D3CBC  2C 00 00 01 */	cmpwi r0, 1
/* 802D3CC0  40 80 00 08 */	bge lbl_802D3CC8
/* 802D3CC4  4B FF FF D4 */	b lbl_802D3C98
lbl_802D3CC8:
/* 802D3CC8  48 00 00 11 */	bl readFromAram__13JKRAramStreamFv
/* 802D3CCC  4B FF FF CC */	b lbl_802D3C98
lbl_802D3CD0:
/* 802D3CD0  48 00 00 11 */	bl writeToAram__13JKRAramStreamFP20JKRAramStreamCommand
/* 802D3CD4  4B FF FF C4 */	b lbl_802D3C98

/* run__13JKRAramStreamFv __ct__13JKRAramStreamFl::run(void) */
/* missing reference */
/* 802D3C68 002D0BA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D3C6C 002D0BAC  7C 08 02 A6 */	mflr r0
/* 802D3C70 002D0BB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D3C74 002D0BB4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D3C78 002D0BB8  3C 60 80 3D */	lis r3, sMessageQueue__13JKRAramStream@ha
/* 802D3C7C 002D0BBC  38 63 C1 98 */	addi r3, r3, sMessageQueue__13JKRAramStream@l
/* 802D3C80 002D0BC0  3C 80 80 3D */	lis r4, sMessageBuffer__13JKRAramStream@ha
/* 802D3C84 002D0BC4  38 84 C1 88 */	addi r4, r4, sMessageBuffer__13JKRAramStream@l
/* 802D3C88 002D0BC8  38 A0 00 04 */	li r5, 4
/* 802D3C8C 002D0BCC  48 06 AD 09 */	bl OSInitMessageQueue
/* 802D3C90 002D0BD0  3C 60 80 3D */	lis r3, sMessageQueue__13JKRAramStream@ha
/* 802D3C94 002D0BD4  3B E3 C1 98 */	addi r31, r3, sMessageQueue__13JKRAramStream@l
lbl_802D3C98:
/* 802D3C98 002D0BD8  7F E3 FB 78 */	mr r3, r31
/* 802D3C9C 002D0BDC  38 81 00 08 */	addi r4, r1, 8
/* 802D3CA0 002D0BE0  38 A0 00 01 */	li r5, 1
/* 802D3CA4 002D0BE4  48 06 AE 19 */	bl OSReceiveMessage
/* 802D3CA8 002D0BE8  80 61 00 08 */	lwz r3, 8(r1)
/* 802D3CAC 002D0BEC  80 03 00 00 */	lwz r0, 0(r3)
/* 802D3CB0 002D0BF0  2C 00 00 02 */	cmpwi r0, 2
/* 802D3CB4 002D0BF4  41 82 00 1C */	beq lbl_802D3CD0
/* 802D3CB8 002D0BF8  40 80 FF E0 */	bge lbl_802D3C98
/* 802D3CBC 002D0BFC  2C 00 00 01 */	cmpwi r0, 1
/* 802D3CC0 002D0C00  40 80 00 08 */	bge lbl_802D3CC8
/* 802D3CC4 002D0C04  4B FF FF D4 */	b lbl_802D3C98
lbl_802D3CC8:
/* 802D3CC8 002D0C08  48 00 00 11 */	bl readFromAram__13JKRAramStreamFv
/* 802D3CCC 002D0C0C  4B FF FF CC */	b lbl_802D3C98
lbl_802D3CD0:
/* 802D3CD0 002D0C10  48 00 00 11 */	bl writeToAram__13JKRAramStreamFP20JKRAramStreamCommand
/* 802D3CD4 002D0C14  4B FF FF C4 */	b lbl_802D3C98

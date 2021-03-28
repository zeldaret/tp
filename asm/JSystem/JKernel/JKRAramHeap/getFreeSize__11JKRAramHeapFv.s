lbl_802D3134:
/* 802D3134  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D3138  7C 08 02 A6 */	mflr r0
/* 802D313C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D3140  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D3144  93 C1 00 08 */	stw r30, 8(r1)
/* 802D3148  7C 7E 1B 78 */	mr r30, r3
/* 802D314C  3B E0 00 00 */	li r31, 0
/* 802D3150  38 7E 00 18 */	addi r3, r30, 0x18
/* 802D3154  48 06 BE ED */	bl OSLockMutex
/* 802D3158  3C 60 80 43 */	lis r3, sAramList__11JKRAramHeap@ha
/* 802D315C  38 63 43 0C */	addi r3, r3, sAramList__11JKRAramHeap@l
/* 802D3160  80 63 00 00 */	lwz r3, 0(r3)
/* 802D3164  48 00 00 1C */	b lbl_802D3180
lbl_802D3168:
/* 802D3168  80 83 00 00 */	lwz r4, 0(r3)
/* 802D316C  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 802D3170  7C 00 F8 40 */	cmplw r0, r31
/* 802D3174  40 81 00 08 */	ble lbl_802D317C
/* 802D3178  7C 1F 03 78 */	mr r31, r0
lbl_802D317C:
/* 802D317C  80 63 00 0C */	lwz r3, 0xc(r3)
lbl_802D3180:
/* 802D3180  28 03 00 00 */	cmplwi r3, 0
/* 802D3184  40 82 FF E4 */	bne lbl_802D3168
/* 802D3188  38 7E 00 18 */	addi r3, r30, 0x18
/* 802D318C  48 06 BF 91 */	bl OSUnlockMutex
/* 802D3190  7F E3 FB 78 */	mr r3, r31
/* 802D3194  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D3198  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D319C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D31A0  7C 08 03 A6 */	mtlr r0
/* 802D31A4  38 21 00 10 */	addi r1, r1, 0x10
/* 802D31A8  4E 80 00 20 */	blr 

lbl_802D3770:
/* 802D3770  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D3774  7C 08 02 A6 */	mflr r0
/* 802D3778  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D377C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D3780  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802D3784  7C 7E 1B 78 */	mr r30, r3
/* 802D3788  7C 9F 23 78 */	mr r31, r4
/* 802D378C  3C 60 80 43 */	lis r3, mMutex__12JKRAramPiece@ha /* 0x80434330@ha */
/* 802D3790  38 63 43 30 */	addi r3, r3, mMutex__12JKRAramPiece@l /* 0x80434330@l */
/* 802D3794  48 06 B8 AD */	bl OSLockMutex
/* 802D3798  2C 1F 00 00 */	cmpwi r31, 0
/* 802D379C  40 82 00 38 */	bne lbl_802D37D4
/* 802D37A0  38 7E 00 68 */	addi r3, r30, 0x68
/* 802D37A4  38 81 00 08 */	addi r4, r1, 8
/* 802D37A8  38 A0 00 01 */	li r5, 1
/* 802D37AC  48 06 B3 11 */	bl OSReceiveMessage
/* 802D37B0  3C 60 80 43 */	lis r3, sAramPieceCommandList__12JKRAramPiece@ha /* 0x80434324@ha */
/* 802D37B4  38 63 43 24 */	addi r3, r3, sAramPieceCommandList__12JKRAramPiece@l /* 0x80434324@l */
/* 802D37B8  38 9E 00 20 */	addi r4, r30, 0x20
/* 802D37BC  48 00 89 A1 */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 802D37C0  3C 60 80 43 */	lis r3, mMutex__12JKRAramPiece@ha /* 0x80434330@ha */
/* 802D37C4  38 63 43 30 */	addi r3, r3, mMutex__12JKRAramPiece@l /* 0x80434330@l */
/* 802D37C8  48 06 B9 55 */	bl OSUnlockMutex
/* 802D37CC  38 60 00 01 */	li r3, 1
/* 802D37D0  48 00 00 50 */	b lbl_802D3820
lbl_802D37D4:
/* 802D37D4  38 7E 00 68 */	addi r3, r30, 0x68
/* 802D37D8  38 81 00 08 */	addi r4, r1, 8
/* 802D37DC  38 A0 00 00 */	li r5, 0
/* 802D37E0  48 06 B2 DD */	bl OSReceiveMessage
/* 802D37E4  2C 03 00 00 */	cmpwi r3, 0
/* 802D37E8  40 82 00 18 */	bne lbl_802D3800
/* 802D37EC  3C 60 80 43 */	lis r3, mMutex__12JKRAramPiece@ha /* 0x80434330@ha */
/* 802D37F0  38 63 43 30 */	addi r3, r3, mMutex__12JKRAramPiece@l /* 0x80434330@l */
/* 802D37F4  48 06 B9 29 */	bl OSUnlockMutex
/* 802D37F8  38 60 00 00 */	li r3, 0
/* 802D37FC  48 00 00 24 */	b lbl_802D3820
lbl_802D3800:
/* 802D3800  3C 60 80 43 */	lis r3, sAramPieceCommandList__12JKRAramPiece@ha /* 0x80434324@ha */
/* 802D3804  38 63 43 24 */	addi r3, r3, sAramPieceCommandList__12JKRAramPiece@l /* 0x80434324@l */
/* 802D3808  38 9E 00 20 */	addi r4, r30, 0x20
/* 802D380C  48 00 89 51 */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 802D3810  3C 60 80 43 */	lis r3, mMutex__12JKRAramPiece@ha /* 0x80434330@ha */
/* 802D3814  38 63 43 30 */	addi r3, r3, mMutex__12JKRAramPiece@l /* 0x80434330@l */
/* 802D3818  48 06 B9 05 */	bl OSUnlockMutex
/* 802D381C  38 60 00 01 */	li r3, 1
lbl_802D3820:
/* 802D3820  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802D3824  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802D3828  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D382C  7C 08 03 A6 */	mtlr r0
/* 802D3830  38 21 00 20 */	addi r1, r1, 0x20
/* 802D3834  4E 80 00 20 */	blr 

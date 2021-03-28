lbl_803553AC:
/* 803553AC  7C 08 02 A6 */	mflr r0
/* 803553B0  1D 23 01 10 */	mulli r9, r3, 0x110
/* 803553B4  90 01 00 04 */	stw r0, 4(r1)
/* 803553B8  3D 00 80 45 */	lis r8, __CARDBlock@ha
/* 803553BC  94 21 FF F8 */	stwu r1, -8(r1)
/* 803553C0  38 08 CB C0 */	addi r0, r8, __CARDBlock@l
/* 803553C4  7D 00 4A 14 */	add r8, r0, r9
/* 803553C8  80 08 00 00 */	lwz r0, 0(r8)
/* 803553CC  2C 00 00 00 */	cmpwi r0, 0
/* 803553D0  40 82 00 0C */	bne lbl_803553DC
/* 803553D4  38 60 FF FD */	li r3, -3
/* 803553D8  48 00 00 2C */	b lbl_80355404
lbl_803553DC:
/* 803553DC  90 E8 00 D4 */	stw r7, 0xd4(r8)
/* 803553E0  3C E0 80 35 */	lis r7, BlockWriteCallback@ha
/* 803553E4  38 07 52 C4 */	addi r0, r7, BlockWriteCallback@l
/* 803553E8  A0 E8 00 0A */	lhz r7, 0xa(r8)
/* 803553EC  7C A5 3B D6 */	divw r5, r5, r7
/* 803553F0  90 A8 00 AC */	stw r5, 0xac(r8)
/* 803553F4  90 88 00 B0 */	stw r4, 0xb0(r8)
/* 803553F8  7C 04 03 78 */	mr r4, r0
/* 803553FC  90 C8 00 B4 */	stw r6, 0xb4(r8)
/* 80355400  4B FF E4 7D */	bl __CARDWritePage
lbl_80355404:
/* 80355404  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80355408  38 21 00 08 */	addi r1, r1, 8
/* 8035540C  7C 08 03 A6 */	mtlr r0
/* 80355410  4E 80 00 20 */	blr 

lbl_80355260:
/* 80355260  7C 08 02 A6 */	mflr r0
/* 80355264  1D 23 01 10 */	mulli r9, r3, 0x110
/* 80355268  90 01 00 04 */	stw r0, 4(r1)
/* 8035526C  3D 00 80 45 */	lis r8, __CARDBlock@ha
/* 80355270  94 21 FF F8 */	stwu r1, -8(r1)
/* 80355274  38 08 CB C0 */	addi r0, r8, __CARDBlock@l
/* 80355278  7D 00 4A 14 */	add r8, r0, r9
/* 8035527C  80 08 00 00 */	lwz r0, 0(r8)
/* 80355280  2C 00 00 00 */	cmpwi r0, 0
/* 80355284  40 82 00 0C */	bne lbl_80355290
/* 80355288  38 60 FF FD */	li r3, -3
/* 8035528C  48 00 00 28 */	b lbl_803552B4
lbl_80355290:
/* 80355290  90 E8 00 D4 */	stw r7, 0xd4(r8)
/* 80355294  54 A0 BA 7E */	srwi r0, r5, 9
/* 80355298  3C A0 80 35 */	lis r5, BlockReadCallback@ha
/* 8035529C  90 08 00 AC */	stw r0, 0xac(r8)
/* 803552A0  38 05 51 84 */	addi r0, r5, BlockReadCallback@l
/* 803552A4  90 88 00 B0 */	stw r4, 0xb0(r8)
/* 803552A8  7C 04 03 78 */	mr r4, r0
/* 803552AC  90 C8 00 B4 */	stw r6, 0xb4(r8)
/* 803552B0  4B FF E4 99 */	bl __CARDReadSegment
lbl_803552B4:
/* 803552B4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803552B8  38 21 00 08 */	addi r1, r1, 8
/* 803552BC  7C 08 03 A6 */	mtlr r0
/* 803552C0  4E 80 00 20 */	blr 

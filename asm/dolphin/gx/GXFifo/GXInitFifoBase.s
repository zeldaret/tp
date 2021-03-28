lbl_8035A6DC:
/* 8035A6DC  7C 08 02 A6 */	mflr r0
/* 8035A6E0  90 01 00 04 */	stw r0, 4(r1)
/* 8035A6E4  38 05 FF FC */	addi r0, r5, -4
/* 8035A6E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8035A6EC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8035A6F0  3B E4 00 00 */	addi r31, r4, 0
/* 8035A6F4  7C 1F 02 14 */	add r0, r31, r0
/* 8035A6F8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8035A6FC  3B C3 00 00 */	addi r30, r3, 0
/* 8035A700  38 85 C0 00 */	addi r4, r5, -16384
/* 8035A704  93 E3 00 00 */	stw r31, 0(r3)
/* 8035A708  90 03 00 04 */	stw r0, 4(r3)
/* 8035A70C  38 00 00 00 */	li r0, 0
/* 8035A710  90 A3 00 08 */	stw r5, 8(r3)
/* 8035A714  54 A5 F8 74 */	rlwinm r5, r5, 0x1f, 1, 0x1a
/* 8035A718  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 8035A71C  48 00 00 9D */	bl GXInitFifoLimits
/* 8035A720  38 7E 00 00 */	addi r3, r30, 0
/* 8035A724  38 9F 00 00 */	addi r4, r31, 0
/* 8035A728  38 BF 00 00 */	addi r5, r31, 0
/* 8035A72C  48 00 00 1D */	bl GXInitFifoPtrs
/* 8035A730  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8035A734  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8035A738  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8035A73C  38 21 00 20 */	addi r1, r1, 0x20
/* 8035A740  7C 08 03 A6 */	mtlr r0
/* 8035A744  4E 80 00 20 */	blr 

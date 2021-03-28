lbl_802DD130:
/* 802DD130  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DD134  7C 08 02 A6 */	mflr r0
/* 802DD138  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DD13C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DD140  93 C1 00 08 */	stw r30, 8(r1)
/* 802DD144  7C 7E 1B 78 */	mr r30, r3
/* 802DD148  7C A6 2B 78 */	mr r6, r5
/* 802DD14C  80 03 00 04 */	lwz r0, 4(r3)
/* 802DD150  7C 00 20 50 */	subf r0, r0, r4
/* 802DD154  7C 00 16 70 */	srawi r0, r0, 2
/* 802DD158  7F E0 01 94 */	addze r31, r0
/* 802DD15C  38 A0 00 01 */	li r5, 1
/* 802DD160  4B FF FC BD */	bl func_802DCE1C
/* 802DD164  80 7E 00 04 */	lwz r3, 4(r30)
/* 802DD168  57 E0 10 3A */	slwi r0, r31, 2
/* 802DD16C  7C 63 02 14 */	add r3, r3, r0
/* 802DD170  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DD174  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DD178  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DD17C  7C 08 03 A6 */	mtlr r0
/* 802DD180  38 21 00 10 */	addi r1, r1, 0x10
/* 802DD184  4E 80 00 20 */	blr 

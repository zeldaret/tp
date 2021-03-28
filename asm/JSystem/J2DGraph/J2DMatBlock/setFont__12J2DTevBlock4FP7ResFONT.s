lbl_802EE798:
/* 802EE798  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802EE79C  7C 08 02 A6 */	mflr r0
/* 802EE7A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802EE7A4  39 61 00 20 */	addi r11, r1, 0x20
/* 802EE7A8  48 07 3A 35 */	bl _savegpr_29
/* 802EE7AC  7C 7D 1B 78 */	mr r29, r3
/* 802EE7B0  7C 9E 23 79 */	or. r30, r4, r4
/* 802EE7B4  40 82 00 0C */	bne lbl_802EE7C0
/* 802EE7B8  38 60 00 00 */	li r3, 0
/* 802EE7BC  48 00 00 78 */	b lbl_802EE834
lbl_802EE7C0:
/* 802EE7C0  38 60 00 70 */	li r3, 0x70
/* 802EE7C4  4B FE 04 89 */	bl __nw__FUl
/* 802EE7C8  7C 7F 1B 79 */	or. r31, r3, r3
/* 802EE7CC  41 82 00 14 */	beq lbl_802EE7E0
/* 802EE7D0  7F C4 F3 78 */	mr r4, r30
/* 802EE7D4  38 A0 00 00 */	li r5, 0
/* 802EE7D8  4B FF 07 BD */	bl __ct__10JUTResFontFPC7ResFONTP7JKRHeap
/* 802EE7DC  7C 7F 1B 78 */	mr r31, r3
lbl_802EE7E0:
/* 802EE7E0  28 1F 00 00 */	cmplwi r31, 0
/* 802EE7E4  40 82 00 0C */	bne lbl_802EE7F0
/* 802EE7E8  38 60 00 00 */	li r3, 0
/* 802EE7EC  48 00 00 48 */	b lbl_802EE834
lbl_802EE7F0:
/* 802EE7F0  88 1D 00 B0 */	lbz r0, 0xb0(r29)
/* 802EE7F4  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 802EE7F8  41 82 00 24 */	beq lbl_802EE81C
/* 802EE7FC  80 7D 00 AC */	lwz r3, 0xac(r29)
/* 802EE800  28 03 00 00 */	cmplwi r3, 0
/* 802EE804  41 82 00 18 */	beq lbl_802EE81C
/* 802EE808  38 80 00 01 */	li r4, 1
/* 802EE80C  81 83 00 00 */	lwz r12, 0(r3)
/* 802EE810  81 8C 00 08 */	lwz r12, 8(r12)
/* 802EE814  7D 89 03 A6 */	mtctr r12
/* 802EE818  4E 80 04 21 */	bctrl 
lbl_802EE81C:
/* 802EE81C  93 FD 00 AC */	stw r31, 0xac(r29)
/* 802EE820  88 1D 00 B0 */	lbz r0, 0xb0(r29)
/* 802EE824  54 00 06 7E */	clrlwi r0, r0, 0x19
/* 802EE828  60 00 00 80 */	ori r0, r0, 0x80
/* 802EE82C  98 1D 00 B0 */	stb r0, 0xb0(r29)
/* 802EE830  38 60 00 01 */	li r3, 1
lbl_802EE834:
/* 802EE834  39 61 00 20 */	addi r11, r1, 0x20
/* 802EE838  48 07 39 F1 */	bl _restgpr_29
/* 802EE83C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802EE840  7C 08 03 A6 */	mtlr r0
/* 802EE844  38 21 00 20 */	addi r1, r1, 0x20
/* 802EE848  4E 80 00 20 */	blr 

lbl_8027A6DC:
/* 8027A6DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8027A6E0  7C 08 02 A6 */	mflr r0
/* 8027A6E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8027A6E8  39 61 00 20 */	addi r11, r1, 0x20
/* 8027A6EC  48 0E 7A F1 */	bl _savegpr_29
/* 8027A6F0  7C 7D 1B 78 */	mr r29, r3
/* 8027A6F4  7C 9E 23 78 */	mr r30, r4
/* 8027A6F8  7C BF 2B 78 */	mr r31, r5
/* 8027A6FC  93 C3 00 00 */	stw r30, 0(r3)
/* 8027A700  80 63 00 00 */	lwz r3, 0(r3)
/* 8027A704  80 03 00 08 */	lwz r0, 8(r3)
/* 8027A708  54 00 01 CF */	rlwinm. r0, r0, 0, 7, 7
/* 8027A70C  41 82 00 10 */	beq lbl_8027A71C
/* 8027A710  38 1E 00 34 */	addi r0, r30, 0x34
/* 8027A714  90 1D 00 04 */	stw r0, 4(r29)
/* 8027A718  48 00 00 0C */	b lbl_8027A724
lbl_8027A71C:
/* 8027A71C  38 00 00 00 */	li r0, 0
/* 8027A720  90 1D 00 04 */	stw r0, 4(r29)
lbl_8027A724:
/* 8027A724  80 7D 00 00 */	lwz r3, 0(r29)
/* 8027A728  88 03 00 1E */	lbz r0, 0x1e(r3)
/* 8027A72C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8027A730  41 82 00 24 */	beq lbl_8027A754
/* 8027A734  38 80 00 34 */	li r4, 0x34
/* 8027A738  80 03 00 08 */	lwz r0, 8(r3)
/* 8027A73C  54 00 01 CF */	rlwinm. r0, r0, 0, 7, 7
/* 8027A740  41 82 00 08 */	beq lbl_8027A748
/* 8027A744  38 80 00 5C */	li r4, 0x5c
lbl_8027A748:
/* 8027A748  7C 1E 22 14 */	add r0, r30, r4
/* 8027A74C  90 1D 00 08 */	stw r0, 8(r29)
/* 8027A750  48 00 00 0C */	b lbl_8027A75C
lbl_8027A754:
/* 8027A754  38 00 00 00 */	li r0, 0
/* 8027A758  90 1D 00 08 */	stw r0, 8(r29)
lbl_8027A75C:
/* 8027A75C  80 DD 00 00 */	lwz r6, 0(r29)
/* 8027A760  88 06 00 21 */	lbz r0, 0x21(r6)
/* 8027A764  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8027A768  41 82 00 24 */	beq lbl_8027A78C
/* 8027A76C  38 7D 00 0C */	addi r3, r29, 0xc
/* 8027A770  A8 06 00 0C */	lha r0, 0xc(r6)
/* 8027A774  7C 9E 02 14 */	add r4, r30, r0
/* 8027A778  88 A6 00 22 */	lbz r5, 0x22(r6)
/* 8027A77C  A8 C6 00 24 */	lha r6, 0x24(r6)
/* 8027A780  7F E7 FB 78 */	mr r7, r31
/* 8027A784  4B FF FC D1 */	bl makeColorTable__FPP8_GXColorPC16JPAClrAnmKeyDataUcsP7JKRHeap
/* 8027A788  48 00 00 0C */	b lbl_8027A794
lbl_8027A78C:
/* 8027A78C  38 00 00 00 */	li r0, 0
/* 8027A790  90 1D 00 0C */	stw r0, 0xc(r29)
lbl_8027A794:
/* 8027A794  80 DD 00 00 */	lwz r6, 0(r29)
/* 8027A798  88 06 00 21 */	lbz r0, 0x21(r6)
/* 8027A79C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8027A7A0  41 82 00 24 */	beq lbl_8027A7C4
/* 8027A7A4  38 7D 00 10 */	addi r3, r29, 0x10
/* 8027A7A8  A8 06 00 0E */	lha r0, 0xe(r6)
/* 8027A7AC  7C 9E 02 14 */	add r4, r30, r0
/* 8027A7B0  88 A6 00 23 */	lbz r5, 0x23(r6)
/* 8027A7B4  A8 C6 00 24 */	lha r6, 0x24(r6)
/* 8027A7B8  7F E7 FB 78 */	mr r7, r31
/* 8027A7BC  4B FF FC 99 */	bl makeColorTable__FPP8_GXColorPC16JPAClrAnmKeyDataUcsP7JKRHeap
/* 8027A7C0  48 00 00 0C */	b lbl_8027A7CC
lbl_8027A7C4:
/* 8027A7C4  38 00 00 00 */	li r0, 0
/* 8027A7C8  90 1D 00 10 */	stw r0, 0x10(r29)
lbl_8027A7CC:
/* 8027A7CC  7F A3 EB 78 */	mr r3, r29
/* 8027A7D0  39 61 00 20 */	addi r11, r1, 0x20
/* 8027A7D4  48 0E 7A 55 */	bl _restgpr_29
/* 8027A7D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8027A7DC  7C 08 03 A6 */	mtlr r0
/* 8027A7E0  38 21 00 20 */	addi r1, r1, 0x20
/* 8027A7E4  4E 80 00 20 */	blr 

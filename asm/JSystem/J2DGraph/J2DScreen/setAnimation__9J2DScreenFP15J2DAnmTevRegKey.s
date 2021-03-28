lbl_802F98CC:
/* 802F98CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F98D0  7C 08 02 A6 */	mflr r0
/* 802F98D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F98D8  39 61 00 20 */	addi r11, r1, 0x20
/* 802F98DC  48 06 88 FD */	bl _savegpr_28
/* 802F98E0  7C 7E 1B 78 */	mr r30, r3
/* 802F98E4  7C 9F 23 78 */	mr r31, r4
/* 802F98E8  7F E3 FB 78 */	mr r3, r31
/* 802F98EC  7F C4 F3 78 */	mr r4, r30
/* 802F98F0  81 9F 00 00 */	lwz r12, 0(r31)
/* 802F98F4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802F98F8  7D 89 03 A6 */	mtctr r12
/* 802F98FC  4E 80 04 21 */	bctrl 
/* 802F9900  A3 BF 00 10 */	lhz r29, 0x10(r31)
/* 802F9904  3B 80 00 00 */	li r28, 0
/* 802F9908  48 00 00 34 */	b lbl_802F993C
lbl_802F990C:
/* 802F990C  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 802F9910  57 80 0B FC */	rlwinm r0, r28, 1, 0xf, 0x1e
/* 802F9914  7C 83 02 2E */	lhzx r4, r3, r0
/* 802F9918  A0 1E 01 02 */	lhz r0, 0x102(r30)
/* 802F991C  7C 04 00 40 */	cmplw r4, r0
/* 802F9920  40 80 00 18 */	bge lbl_802F9938
/* 802F9924  80 7E 01 04 */	lwz r3, 0x104(r30)
/* 802F9928  1C 04 00 88 */	mulli r0, r4, 0x88
/* 802F992C  7C 63 02 14 */	add r3, r3, r0
/* 802F9930  7F E4 FB 78 */	mr r4, r31
/* 802F9934  4B FF 11 D9 */	bl setAnimation__11J2DMaterialFP15J2DAnmTevRegKey
lbl_802F9938:
/* 802F9938  3B 9C 00 01 */	addi r28, r28, 1
lbl_802F993C:
/* 802F993C  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 802F9940  7C 00 E8 40 */	cmplw r0, r29
/* 802F9944  41 80 FF C8 */	blt lbl_802F990C
/* 802F9948  A3 BF 00 12 */	lhz r29, 0x12(r31)
/* 802F994C  3B 80 00 00 */	li r28, 0
/* 802F9950  48 00 00 34 */	b lbl_802F9984
lbl_802F9954:
/* 802F9954  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 802F9958  57 80 0B FC */	rlwinm r0, r28, 1, 0xf, 0x1e
/* 802F995C  7C 83 02 2E */	lhzx r4, r3, r0
/* 802F9960  A0 1E 01 02 */	lhz r0, 0x102(r30)
/* 802F9964  7C 04 00 40 */	cmplw r4, r0
/* 802F9968  40 80 00 18 */	bge lbl_802F9980
/* 802F996C  80 7E 01 04 */	lwz r3, 0x104(r30)
/* 802F9970  1C 04 00 88 */	mulli r0, r4, 0x88
/* 802F9974  7C 63 02 14 */	add r3, r3, r0
/* 802F9978  7F E4 FB 78 */	mr r4, r31
/* 802F997C  4B FF 11 91 */	bl setAnimation__11J2DMaterialFP15J2DAnmTevRegKey
lbl_802F9980:
/* 802F9980  3B 9C 00 01 */	addi r28, r28, 1
lbl_802F9984:
/* 802F9984  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 802F9988  7C 00 E8 40 */	cmplw r0, r29
/* 802F998C  41 80 FF C8 */	blt lbl_802F9954
/* 802F9990  39 61 00 20 */	addi r11, r1, 0x20
/* 802F9994  48 06 88 91 */	bl _restgpr_28
/* 802F9998  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F999C  7C 08 03 A6 */	mtlr r0
/* 802F99A0  38 21 00 20 */	addi r1, r1, 0x20
/* 802F99A4  4E 80 00 20 */	blr 

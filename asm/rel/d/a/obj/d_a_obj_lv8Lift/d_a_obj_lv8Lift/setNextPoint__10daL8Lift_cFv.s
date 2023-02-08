lbl_80C89ADC:
/* 80C89ADC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C89AE0  7C 08 02 A6 */	mflr r0
/* 80C89AE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C89AE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C89AEC  93 C1 00 08 */	stw r30, 8(r1)
/* 80C89AF0  7C 7E 1B 78 */	mr r30, r3
/* 80C89AF4  A8 63 05 C8 */	lha r3, 0x5c8(r3)
/* 80C89AF8  88 1E 05 C7 */	lbz r0, 0x5c7(r30)
/* 80C89AFC  7C 00 07 74 */	extsb r0, r0
/* 80C89B00  7C 03 02 14 */	add r0, r3, r0
/* 80C89B04  7C 1F 07 34 */	extsh r31, r0
/* 80C89B08  88 7E 05 C6 */	lbz r3, 0x5c6(r30)
/* 80C89B0C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C89B10  7C 04 07 74 */	extsb r4, r0
/* 80C89B14  4B 3C 7C D9 */	bl dPath_GetRoomPath__Fii
/* 80C89B18  88 03 00 05 */	lbz r0, 5(r3)
/* 80C89B1C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80C89B20  41 82 00 30 */	beq lbl_80C89B50
/* 80C89B24  A0 83 00 00 */	lhz r4, 0(r3)
/* 80C89B28  38 84 FF FF */	addi r4, r4, -1
/* 80C89B2C  7C 1F 20 00 */	cmpw r31, r4
/* 80C89B30  40 81 00 0C */	ble lbl_80C89B3C
/* 80C89B34  3B E0 00 00 */	li r31, 0
/* 80C89B38  48 00 00 7C */	b lbl_80C89BB4
lbl_80C89B3C:
/* 80C89B3C  7F E0 07 35 */	extsh. r0, r31
/* 80C89B40  40 80 00 74 */	bge lbl_80C89BB4
/* 80C89B44  7C 80 07 74 */	extsb r0, r4
/* 80C89B48  7C 1F 03 78 */	mr r31, r0
/* 80C89B4C  48 00 00 68 */	b lbl_80C89BB4
lbl_80C89B50:
/* 80C89B50  A0 83 00 00 */	lhz r4, 0(r3)
/* 80C89B54  38 04 FF FF */	addi r0, r4, -1
/* 80C89B58  7C 1F 00 00 */	cmpw r31, r0
/* 80C89B5C  40 81 00 20 */	ble lbl_80C89B7C
/* 80C89B60  38 00 FF FF */	li r0, -1
/* 80C89B64  98 1E 05 C7 */	stb r0, 0x5c7(r30)
/* 80C89B68  A0 83 00 00 */	lhz r4, 0(r3)
/* 80C89B6C  38 04 FF FE */	addi r0, r4, -2
/* 80C89B70  7C 00 07 74 */	extsb r0, r0
/* 80C89B74  7C 1F 03 78 */	mr r31, r0
/* 80C89B78  48 00 00 3C */	b lbl_80C89BB4
lbl_80C89B7C:
/* 80C89B7C  7F E0 07 35 */	extsh. r0, r31
/* 80C89B80  40 80 00 14 */	bge lbl_80C89B94
/* 80C89B84  38 00 00 01 */	li r0, 1
/* 80C89B88  98 1E 05 C7 */	stb r0, 0x5c7(r30)
/* 80C89B8C  3B E0 00 01 */	li r31, 1
/* 80C89B90  48 00 00 24 */	b lbl_80C89BB4
lbl_80C89B94:
/* 80C89B94  80 A3 00 08 */	lwz r5, 8(r3)
/* 80C89B98  A8 DE 05 C8 */	lha r6, 0x5c8(r30)
/* 80C89B9C  54 C4 20 36 */	slwi r4, r6, 4
/* 80C89BA0  38 04 00 03 */	addi r0, r4, 3
/* 80C89BA4  7C 05 00 AE */	lbzx r0, r5, r0
/* 80C89BA8  28 00 00 00 */	cmplwi r0, 0
/* 80C89BAC  40 82 00 08 */	bne lbl_80C89BB4
/* 80C89BB0  7C DF 33 78 */	mr r31, r6
lbl_80C89BB4:
/* 80C89BB4  C0 1E 05 CC */	lfs f0, 0x5cc(r30)
/* 80C89BB8  D0 1E 05 D8 */	stfs f0, 0x5d8(r30)
/* 80C89BBC  C0 1E 05 D0 */	lfs f0, 0x5d0(r30)
/* 80C89BC0  D0 1E 05 DC */	stfs f0, 0x5dc(r30)
/* 80C89BC4  C0 1E 05 D4 */	lfs f0, 0x5d4(r30)
/* 80C89BC8  D0 1E 05 E0 */	stfs f0, 0x5e0(r30)
/* 80C89BCC  80 63 00 08 */	lwz r3, 8(r3)
/* 80C89BD0  7F E0 07 34 */	extsh r0, r31
/* 80C89BD4  54 00 20 36 */	slwi r0, r0, 4
/* 80C89BD8  7C 63 02 14 */	add r3, r3, r0
/* 80C89BDC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80C89BE0  D0 1E 05 CC */	stfs f0, 0x5cc(r30)
/* 80C89BE4  C0 03 00 08 */	lfs f0, 8(r3)
/* 80C89BE8  D0 1E 05 D0 */	stfs f0, 0x5d0(r30)
/* 80C89BEC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80C89BF0  D0 1E 05 D4 */	stfs f0, 0x5d4(r30)
/* 80C89BF4  B3 FE 05 C8 */	sth r31, 0x5c8(r30)
/* 80C89BF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C89BFC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C89C00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C89C04  7C 08 03 A6 */	mtlr r0
/* 80C89C08  38 21 00 10 */	addi r1, r1, 0x10
/* 80C89C0C  4E 80 00 20 */	blr 

lbl_80C8E31C:
/* 80C8E31C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8E320  7C 08 02 A6 */	mflr r0
/* 80C8E324  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8E328  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8E32C  93 C1 00 08 */	stw r30, 8(r1)
/* 80C8E330  7C 7E 1B 78 */	mr r30, r3
/* 80C8E334  A8 63 05 B0 */	lha r3, 0x5b0(r3)
/* 80C8E338  88 1E 05 AF */	lbz r0, 0x5af(r30)
/* 80C8E33C  7C 00 07 74 */	extsb r0, r0
/* 80C8E340  7C 03 02 14 */	add r0, r3, r0
/* 80C8E344  7C 1F 07 34 */	extsh r31, r0
/* 80C8E348  88 7E 05 AE */	lbz r3, 0x5ae(r30)
/* 80C8E34C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C8E350  7C 04 07 74 */	extsb r4, r0
/* 80C8E354  4B 3C 34 98 */	b dPath_GetRoomPath__Fii
/* 80C8E358  88 03 00 05 */	lbz r0, 5(r3)
/* 80C8E35C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80C8E360  41 82 00 30 */	beq lbl_80C8E390
/* 80C8E364  A0 83 00 00 */	lhz r4, 0(r3)
/* 80C8E368  38 84 FF FF */	addi r4, r4, -1
/* 80C8E36C  7C 1F 20 00 */	cmpw r31, r4
/* 80C8E370  40 81 00 0C */	ble lbl_80C8E37C
/* 80C8E374  3B E0 00 00 */	li r31, 0
/* 80C8E378  48 00 00 7C */	b lbl_80C8E3F4
lbl_80C8E37C:
/* 80C8E37C  7F E0 07 35 */	extsh. r0, r31
/* 80C8E380  40 80 00 74 */	bge lbl_80C8E3F4
/* 80C8E384  7C 80 07 74 */	extsb r0, r4
/* 80C8E388  7C 1F 03 78 */	mr r31, r0
/* 80C8E38C  48 00 00 68 */	b lbl_80C8E3F4
lbl_80C8E390:
/* 80C8E390  A0 83 00 00 */	lhz r4, 0(r3)
/* 80C8E394  38 04 FF FF */	addi r0, r4, -1
/* 80C8E398  7C 1F 00 00 */	cmpw r31, r0
/* 80C8E39C  40 81 00 20 */	ble lbl_80C8E3BC
/* 80C8E3A0  38 00 FF FF */	li r0, -1
/* 80C8E3A4  98 1E 05 AF */	stb r0, 0x5af(r30)
/* 80C8E3A8  A0 83 00 00 */	lhz r4, 0(r3)
/* 80C8E3AC  38 04 FF FE */	addi r0, r4, -2
/* 80C8E3B0  7C 00 07 74 */	extsb r0, r0
/* 80C8E3B4  7C 1F 03 78 */	mr r31, r0
/* 80C8E3B8  48 00 00 3C */	b lbl_80C8E3F4
lbl_80C8E3BC:
/* 80C8E3BC  7F E0 07 35 */	extsh. r0, r31
/* 80C8E3C0  40 80 00 14 */	bge lbl_80C8E3D4
/* 80C8E3C4  38 00 00 01 */	li r0, 1
/* 80C8E3C8  98 1E 05 AF */	stb r0, 0x5af(r30)
/* 80C8E3CC  3B E0 00 01 */	li r31, 1
/* 80C8E3D0  48 00 00 24 */	b lbl_80C8E3F4
lbl_80C8E3D4:
/* 80C8E3D4  80 A3 00 08 */	lwz r5, 8(r3)
/* 80C8E3D8  A8 DE 05 B0 */	lha r6, 0x5b0(r30)
/* 80C8E3DC  54 C4 20 36 */	slwi r4, r6, 4
/* 80C8E3E0  38 04 00 03 */	addi r0, r4, 3
/* 80C8E3E4  7C 05 00 AE */	lbzx r0, r5, r0
/* 80C8E3E8  28 00 00 00 */	cmplwi r0, 0
/* 80C8E3EC  40 82 00 08 */	bne lbl_80C8E3F4
/* 80C8E3F0  7C DF 33 78 */	mr r31, r6
lbl_80C8E3F4:
/* 80C8E3F4  C0 1E 05 B4 */	lfs f0, 0x5b4(r30)
/* 80C8E3F8  D0 1E 05 C0 */	stfs f0, 0x5c0(r30)
/* 80C8E3FC  C0 1E 05 B8 */	lfs f0, 0x5b8(r30)
/* 80C8E400  D0 1E 05 C4 */	stfs f0, 0x5c4(r30)
/* 80C8E404  C0 1E 05 BC */	lfs f0, 0x5bc(r30)
/* 80C8E408  D0 1E 05 C8 */	stfs f0, 0x5c8(r30)
/* 80C8E40C  80 63 00 08 */	lwz r3, 8(r3)
/* 80C8E410  7F E0 07 34 */	extsh r0, r31
/* 80C8E414  54 00 20 36 */	slwi r0, r0, 4
/* 80C8E418  7C 63 02 14 */	add r3, r3, r0
/* 80C8E41C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80C8E420  D0 1E 05 B4 */	stfs f0, 0x5b4(r30)
/* 80C8E424  C0 03 00 08 */	lfs f0, 8(r3)
/* 80C8E428  D0 1E 05 B8 */	stfs f0, 0x5b8(r30)
/* 80C8E42C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80C8E430  D0 1E 05 BC */	stfs f0, 0x5bc(r30)
/* 80C8E434  B3 FE 05 B0 */	sth r31, 0x5b0(r30)
/* 80C8E438  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8E43C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C8E440  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8E444  7C 08 03 A6 */	mtlr r0
/* 80C8E448  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8E44C  4E 80 00 20 */	blr 

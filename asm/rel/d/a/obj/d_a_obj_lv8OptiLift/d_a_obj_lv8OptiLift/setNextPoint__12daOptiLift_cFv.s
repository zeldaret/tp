lbl_80C8B53C:
/* 80C8B53C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8B540  7C 08 02 A6 */	mflr r0
/* 80C8B544  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8B548  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8B54C  93 C1 00 08 */	stw r30, 8(r1)
/* 80C8B550  7C 7E 1B 78 */	mr r30, r3
/* 80C8B554  A8 63 05 CA */	lha r3, 0x5ca(r3)
/* 80C8B558  88 1E 05 C9 */	lbz r0, 0x5c9(r30)
/* 80C8B55C  7C 00 07 74 */	extsb r0, r0
/* 80C8B560  7C 03 02 14 */	add r0, r3, r0
/* 80C8B564  7C 1F 07 34 */	extsh r31, r0
/* 80C8B568  88 7E 05 C8 */	lbz r3, 0x5c8(r30)
/* 80C8B56C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C8B570  7C 04 07 74 */	extsb r4, r0
/* 80C8B574  4B 3C 62 78 */	b dPath_GetRoomPath__Fii
/* 80C8B578  88 03 00 05 */	lbz r0, 5(r3)
/* 80C8B57C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80C8B580  41 82 00 30 */	beq lbl_80C8B5B0
/* 80C8B584  A0 83 00 00 */	lhz r4, 0(r3)
/* 80C8B588  38 84 FF FF */	addi r4, r4, -1
/* 80C8B58C  7C 1F 20 00 */	cmpw r31, r4
/* 80C8B590  40 81 00 0C */	ble lbl_80C8B59C
/* 80C8B594  3B E0 00 00 */	li r31, 0
/* 80C8B598  48 00 00 70 */	b lbl_80C8B608
lbl_80C8B59C:
/* 80C8B59C  7F E0 07 35 */	extsh. r0, r31
/* 80C8B5A0  40 80 00 68 */	bge lbl_80C8B608
/* 80C8B5A4  7C 80 07 74 */	extsb r0, r4
/* 80C8B5A8  7C 1F 03 78 */	mr r31, r0
/* 80C8B5AC  48 00 00 5C */	b lbl_80C8B608
lbl_80C8B5B0:
/* 80C8B5B0  A0 83 00 00 */	lhz r4, 0(r3)
/* 80C8B5B4  38 04 FF FF */	addi r0, r4, -1
/* 80C8B5B8  7C 1F 00 00 */	cmpw r31, r0
/* 80C8B5BC  40 81 00 14 */	ble lbl_80C8B5D0
/* 80C8B5C0  38 00 FF FF */	li r0, -1
/* 80C8B5C4  98 1E 05 C9 */	stb r0, 0x5c9(r30)
/* 80C8B5C8  3B E0 FF FF */	li r31, -1
/* 80C8B5CC  48 00 00 3C */	b lbl_80C8B608
lbl_80C8B5D0:
/* 80C8B5D0  7F E0 07 35 */	extsh. r0, r31
/* 80C8B5D4  40 80 00 14 */	bge lbl_80C8B5E8
/* 80C8B5D8  38 00 00 01 */	li r0, 1
/* 80C8B5DC  98 1E 05 C9 */	stb r0, 0x5c9(r30)
/* 80C8B5E0  3B E0 00 01 */	li r31, 1
/* 80C8B5E4  48 00 00 24 */	b lbl_80C8B608
lbl_80C8B5E8:
/* 80C8B5E8  80 A3 00 08 */	lwz r5, 8(r3)
/* 80C8B5EC  A8 DE 05 CA */	lha r6, 0x5ca(r30)
/* 80C8B5F0  54 C4 20 36 */	slwi r4, r6, 4
/* 80C8B5F4  38 04 00 03 */	addi r0, r4, 3
/* 80C8B5F8  7C 05 00 AE */	lbzx r0, r5, r0
/* 80C8B5FC  28 00 00 00 */	cmplwi r0, 0
/* 80C8B600  40 82 00 08 */	bne lbl_80C8B608
/* 80C8B604  7C DF 33 78 */	mr r31, r6
lbl_80C8B608:
/* 80C8B608  7F E0 07 34 */	extsh r0, r31
/* 80C8B60C  2C 00 FF FF */	cmpwi r0, -1
/* 80C8B610  41 82 00 40 */	beq lbl_80C8B650
/* 80C8B614  C0 1E 05 CC */	lfs f0, 0x5cc(r30)
/* 80C8B618  D0 1E 05 D8 */	stfs f0, 0x5d8(r30)
/* 80C8B61C  C0 1E 05 D0 */	lfs f0, 0x5d0(r30)
/* 80C8B620  D0 1E 05 DC */	stfs f0, 0x5dc(r30)
/* 80C8B624  C0 1E 05 D4 */	lfs f0, 0x5d4(r30)
/* 80C8B628  D0 1E 05 E0 */	stfs f0, 0x5e0(r30)
/* 80C8B62C  80 63 00 08 */	lwz r3, 8(r3)
/* 80C8B630  54 00 20 36 */	slwi r0, r0, 4
/* 80C8B634  7C 63 02 14 */	add r3, r3, r0
/* 80C8B638  C0 03 00 04 */	lfs f0, 4(r3)
/* 80C8B63C  D0 1E 05 CC */	stfs f0, 0x5cc(r30)
/* 80C8B640  C0 03 00 08 */	lfs f0, 8(r3)
/* 80C8B644  D0 1E 05 D0 */	stfs f0, 0x5d0(r30)
/* 80C8B648  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80C8B64C  D0 1E 05 D4 */	stfs f0, 0x5d4(r30)
lbl_80C8B650:
/* 80C8B650  B3 FE 05 CA */	sth r31, 0x5ca(r30)
/* 80C8B654  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8B658  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C8B65C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8B660  7C 08 03 A6 */	mtlr r0
/* 80C8B664  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8B668  4E 80 00 20 */	blr 

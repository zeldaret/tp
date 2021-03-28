lbl_80C7C1D8:
/* 80C7C1D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7C1DC  7C 08 02 A6 */	mflr r0
/* 80C7C1E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7C1E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C7C1E8  93 C1 00 08 */	stw r30, 8(r1)
/* 80C7C1EC  7C 7F 1B 78 */	mr r31, r3
/* 80C7C1F0  A8 63 05 AE */	lha r3, 0x5ae(r3)
/* 80C7C1F4  88 1F 05 AD */	lbz r0, 0x5ad(r31)
/* 80C7C1F8  7C 00 07 74 */	extsb r0, r0
/* 80C7C1FC  7C 03 02 14 */	add r0, r3, r0
/* 80C7C200  7C 1E 07 34 */	extsh r30, r0
/* 80C7C204  88 7F 05 AC */	lbz r3, 0x5ac(r31)
/* 80C7C208  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C7C20C  7C 04 07 74 */	extsb r4, r0
/* 80C7C210  4B 3D 55 DC */	b dPath_GetRoomPath__Fii
/* 80C7C214  88 1F 05 F8 */	lbz r0, 0x5f8(r31)
/* 80C7C218  28 00 00 00 */	cmplwi r0, 0
/* 80C7C21C  41 82 00 40 */	beq lbl_80C7C25C
/* 80C7C220  A0 83 00 00 */	lhz r4, 0(r3)
/* 80C7C224  38 84 FF FF */	addi r4, r4, -1
/* 80C7C228  7C 1E 20 00 */	cmpw r30, r4
/* 80C7C22C  40 81 00 14 */	ble lbl_80C7C240
/* 80C7C230  3B C0 00 00 */	li r30, 0
/* 80C7C234  38 00 00 01 */	li r0, 1
/* 80C7C238  98 1F 05 AD */	stb r0, 0x5ad(r31)
/* 80C7C23C  48 00 00 90 */	b lbl_80C7C2CC
lbl_80C7C240:
/* 80C7C240  7F C0 07 35 */	extsh. r0, r30
/* 80C7C244  40 80 00 88 */	bge lbl_80C7C2CC
/* 80C7C248  7C 80 07 74 */	extsb r0, r4
/* 80C7C24C  7C 1E 03 78 */	mr r30, r0
/* 80C7C250  38 00 FF FF */	li r0, -1
/* 80C7C254  98 1F 05 AD */	stb r0, 0x5ad(r31)
/* 80C7C258  48 00 00 74 */	b lbl_80C7C2CC
lbl_80C7C25C:
/* 80C7C25C  A0 83 00 00 */	lhz r4, 0(r3)
/* 80C7C260  38 04 FF FF */	addi r0, r4, -1
/* 80C7C264  7C 1E 00 00 */	cmpw r30, r0
/* 80C7C268  40 81 00 34 */	ble lbl_80C7C29C
/* 80C7C26C  38 00 FF FF */	li r0, -1
/* 80C7C270  98 1F 05 AD */	stb r0, 0x5ad(r31)
/* 80C7C274  88 1F 05 DA */	lbz r0, 0x5da(r31)
/* 80C7C278  28 00 00 05 */	cmplwi r0, 5
/* 80C7C27C  40 82 00 0C */	bne lbl_80C7C288
/* 80C7C280  3B C0 FF FF */	li r30, -1
/* 80C7C284  48 00 00 48 */	b lbl_80C7C2CC
lbl_80C7C288:
/* 80C7C288  A0 83 00 00 */	lhz r4, 0(r3)
/* 80C7C28C  38 04 FF FE */	addi r0, r4, -2
/* 80C7C290  7C 00 07 74 */	extsb r0, r0
/* 80C7C294  7C 1E 03 78 */	mr r30, r0
/* 80C7C298  48 00 00 34 */	b lbl_80C7C2CC
lbl_80C7C29C:
/* 80C7C29C  7F C0 07 35 */	extsh. r0, r30
/* 80C7C2A0  40 80 00 2C */	bge lbl_80C7C2CC
/* 80C7C2A4  88 1F 05 DA */	lbz r0, 0x5da(r31)
/* 80C7C2A8  28 00 00 01 */	cmplwi r0, 1
/* 80C7C2AC  40 82 00 14 */	bne lbl_80C7C2C0
/* 80C7C2B0  38 00 00 01 */	li r0, 1
/* 80C7C2B4  98 1F 05 AD */	stb r0, 0x5ad(r31)
/* 80C7C2B8  3B C0 00 01 */	li r30, 1
/* 80C7C2BC  48 00 00 10 */	b lbl_80C7C2CC
lbl_80C7C2C0:
/* 80C7C2C0  38 00 00 00 */	li r0, 0
/* 80C7C2C4  98 1F 05 AD */	stb r0, 0x5ad(r31)
/* 80C7C2C8  3B C0 00 00 */	li r30, 0
lbl_80C7C2CC:
/* 80C7C2CC  7F C0 07 34 */	extsh r0, r30
/* 80C7C2D0  2C 00 FF FF */	cmpwi r0, -1
/* 80C7C2D4  41 82 00 48 */	beq lbl_80C7C31C
/* 80C7C2D8  C0 1F 05 B0 */	lfs f0, 0x5b0(r31)
/* 80C7C2DC  D0 1F 05 C8 */	stfs f0, 0x5c8(r31)
/* 80C7C2E0  C0 1F 05 B4 */	lfs f0, 0x5b4(r31)
/* 80C7C2E4  D0 1F 05 CC */	stfs f0, 0x5cc(r31)
/* 80C7C2E8  C0 1F 05 B8 */	lfs f0, 0x5b8(r31)
/* 80C7C2EC  D0 1F 05 D0 */	stfs f0, 0x5d0(r31)
/* 80C7C2F0  80 63 00 08 */	lwz r3, 8(r3)
/* 80C7C2F4  54 00 20 36 */	slwi r0, r0, 4
/* 80C7C2F8  7C 63 02 14 */	add r3, r3, r0
/* 80C7C2FC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80C7C300  D0 1F 05 B0 */	stfs f0, 0x5b0(r31)
/* 80C7C304  C0 03 00 08 */	lfs f0, 8(r3)
/* 80C7C308  D0 1F 05 B4 */	stfs f0, 0x5b4(r31)
/* 80C7C30C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80C7C310  D0 1F 05 B8 */	stfs f0, 0x5b8(r31)
/* 80C7C314  B3 DF 05 AE */	sth r30, 0x5ae(r31)
/* 80C7C318  48 00 00 0C */	b lbl_80C7C324
lbl_80C7C31C:
/* 80C7C31C  38 00 FF FF */	li r0, -1
/* 80C7C320  B0 1F 05 AE */	sth r0, 0x5ae(r31)
lbl_80C7C324:
/* 80C7C324  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C7C328  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C7C32C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7C330  7C 08 03 A6 */	mtlr r0
/* 80C7C334  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7C338  4E 80 00 20 */	blr 

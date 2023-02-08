lbl_80C795E8:
/* 80C795E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C795EC  7C 08 02 A6 */	mflr r0
/* 80C795F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C795F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C795F8  93 C1 00 08 */	stw r30, 8(r1)
/* 80C795FC  7C 7E 1B 78 */	mr r30, r3
/* 80C79600  A8 63 05 AE */	lha r3, 0x5ae(r3)
/* 80C79604  88 1E 05 AD */	lbz r0, 0x5ad(r30)
/* 80C79608  7C 00 07 74 */	extsb r0, r0
/* 80C7960C  7C 03 02 14 */	add r0, r3, r0
/* 80C79610  7C 1F 07 34 */	extsh r31, r0
/* 80C79614  88 7E 05 AC */	lbz r3, 0x5ac(r30)
/* 80C79618  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C7961C  7C 04 07 74 */	extsb r4, r0
/* 80C79620  4B 3D 81 CD */	bl dPath_GetRoomPath__Fii
/* 80C79624  88 03 00 05 */	lbz r0, 5(r3)
/* 80C79628  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80C7962C  41 82 00 40 */	beq lbl_80C7966C
/* 80C79630  A0 83 00 00 */	lhz r4, 0(r3)
/* 80C79634  38 84 FF FF */	addi r4, r4, -1
/* 80C79638  7C 1F 20 00 */	cmpw r31, r4
/* 80C7963C  40 81 00 14 */	ble lbl_80C79650
/* 80C79640  3B E0 00 00 */	li r31, 0
/* 80C79644  38 00 FF FF */	li r0, -1
/* 80C79648  98 1E 05 AD */	stb r0, 0x5ad(r30)
/* 80C7964C  48 00 00 60 */	b lbl_80C796AC
lbl_80C79650:
/* 80C79650  7F E0 07 35 */	extsh. r0, r31
/* 80C79654  40 80 00 58 */	bge lbl_80C796AC
/* 80C79658  7C 80 07 74 */	extsb r0, r4
/* 80C7965C  7C 1F 03 78 */	mr r31, r0
/* 80C79660  38 00 00 01 */	li r0, 1
/* 80C79664  98 1E 05 AD */	stb r0, 0x5ad(r30)
/* 80C79668  48 00 00 44 */	b lbl_80C796AC
lbl_80C7966C:
/* 80C7966C  A0 83 00 00 */	lhz r4, 0(r3)
/* 80C79670  38 04 FF FF */	addi r0, r4, -1
/* 80C79674  7C 1F 00 00 */	cmpw r31, r0
/* 80C79678  40 81 00 20 */	ble lbl_80C79698
/* 80C7967C  38 00 FF FF */	li r0, -1
/* 80C79680  98 1E 05 AD */	stb r0, 0x5ad(r30)
/* 80C79684  A0 83 00 00 */	lhz r4, 0(r3)
/* 80C79688  38 04 FF FE */	addi r0, r4, -2
/* 80C7968C  7C 00 07 74 */	extsb r0, r0
/* 80C79690  7C 1F 03 78 */	mr r31, r0
/* 80C79694  48 00 00 18 */	b lbl_80C796AC
lbl_80C79698:
/* 80C79698  7F E0 07 35 */	extsh. r0, r31
/* 80C7969C  40 80 00 10 */	bge lbl_80C796AC
/* 80C796A0  38 00 00 01 */	li r0, 1
/* 80C796A4  98 1E 05 AD */	stb r0, 0x5ad(r30)
/* 80C796A8  3B E0 00 01 */	li r31, 1
lbl_80C796AC:
/* 80C796AC  C0 1E 05 B0 */	lfs f0, 0x5b0(r30)
/* 80C796B0  D0 1E 05 C8 */	stfs f0, 0x5c8(r30)
/* 80C796B4  C0 1E 05 B4 */	lfs f0, 0x5b4(r30)
/* 80C796B8  D0 1E 05 CC */	stfs f0, 0x5cc(r30)
/* 80C796BC  C0 1E 05 B8 */	lfs f0, 0x5b8(r30)
/* 80C796C0  D0 1E 05 D0 */	stfs f0, 0x5d0(r30)
/* 80C796C4  80 63 00 08 */	lwz r3, 8(r3)
/* 80C796C8  7F E0 07 34 */	extsh r0, r31
/* 80C796CC  54 00 20 36 */	slwi r0, r0, 4
/* 80C796D0  7C 83 02 14 */	add r4, r3, r0
/* 80C796D4  C0 04 00 04 */	lfs f0, 4(r4)
/* 80C796D8  D0 1E 05 B0 */	stfs f0, 0x5b0(r30)
/* 80C796DC  3C 60 80 C8 */	lis r3, lit_3653@ha /* 0x80C799EC@ha */
/* 80C796E0  C0 23 99 EC */	lfs f1, lit_3653@l(r3)  /* 0x80C799EC@l */
/* 80C796E4  C0 04 00 08 */	lfs f0, 8(r4)
/* 80C796E8  EC 01 00 2A */	fadds f0, f1, f0
/* 80C796EC  D0 1E 05 B4 */	stfs f0, 0x5b4(r30)
/* 80C796F0  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80C796F4  D0 1E 05 B8 */	stfs f0, 0x5b8(r30)
/* 80C796F8  B3 FE 05 AE */	sth r31, 0x5ae(r30)
/* 80C796FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C79700  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C79704  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C79708  7C 08 03 A6 */	mtlr r0
/* 80C7970C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C79710  4E 80 00 20 */	blr 

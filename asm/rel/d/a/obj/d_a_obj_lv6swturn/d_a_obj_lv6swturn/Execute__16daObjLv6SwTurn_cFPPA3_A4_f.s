lbl_80C83D04:
/* 80C83D04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C83D08  7C 08 02 A6 */	mflr r0
/* 80C83D0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C83D10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C83D14  93 C1 00 08 */	stw r30, 8(r1)
/* 80C83D18  7C 7E 1B 78 */	mr r30, r3
/* 80C83D1C  7C 9F 23 78 */	mr r31, r4
/* 80C83D20  80 83 05 C0 */	lwz r4, 0x5c0(r3)
/* 80C83D24  38 04 00 01 */	addi r0, r4, 1
/* 80C83D28  90 03 05 C0 */	stw r0, 0x5c0(r3)
/* 80C83D2C  48 00 00 69 */	bl mode_proc_call__16daObjLv6SwTurn_cFv
/* 80C83D30  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80C83D34  90 1F 00 00 */	stw r0, 0(r31)
/* 80C83D38  7F C3 F3 78 */	mr r3, r30
/* 80C83D3C  4B FF FD 99 */	bl setBaseMtx__16daObjLv6SwTurn_cFv
/* 80C83D40  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C83D44  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80C83D48  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C83D4C  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80C83D50  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C83D54  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 80C83D58  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C83D5C  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80C83D60  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C83D64  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80C83D68  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C83D6C  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80C83D70  38 00 00 00 */	li r0, 0
/* 80C83D74  98 1E 05 AD */	stb r0, 0x5ad(r30)
/* 80C83D78  38 60 00 01 */	li r3, 1
/* 80C83D7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C83D80  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C83D84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C83D88  7C 08 03 A6 */	mtlr r0
/* 80C83D8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C83D90  4E 80 00 20 */	blr 

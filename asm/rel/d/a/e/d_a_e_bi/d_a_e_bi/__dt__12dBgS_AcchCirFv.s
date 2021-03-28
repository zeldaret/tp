lbl_8068D0F0:
/* 8068D0F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8068D0F4  7C 08 02 A6 */	mflr r0
/* 8068D0F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8068D0FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8068D100  93 C1 00 08 */	stw r30, 8(r1)
/* 8068D104  7C 7E 1B 79 */	or. r30, r3, r3
/* 8068D108  7C 9F 23 78 */	mr r31, r4
/* 8068D10C  41 82 00 38 */	beq lbl_8068D144
/* 8068D110  3C 60 80 69 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 8068D114  38 03 DA 44 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 8068D118  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8068D11C  38 7E 00 14 */	addi r3, r30, 0x14
/* 8068D120  38 80 FF FF */	li r4, -1
/* 8068D124  4B BE 1D F4 */	b __dt__8cM3dGCirFv
/* 8068D128  7F C3 F3 78 */	mr r3, r30
/* 8068D12C  38 80 00 00 */	li r4, 0
/* 8068D130  4B BD AF 80 */	b __dt__13cBgS_PolyInfoFv
/* 8068D134  7F E0 07 35 */	extsh. r0, r31
/* 8068D138  40 81 00 0C */	ble lbl_8068D144
/* 8068D13C  7F C3 F3 78 */	mr r3, r30
/* 8068D140  4B C4 1B FC */	b __dl__FPv
lbl_8068D144:
/* 8068D144  7F C3 F3 78 */	mr r3, r30
/* 8068D148  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8068D14C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8068D150  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8068D154  7C 08 03 A6 */	mtlr r0
/* 8068D158  38 21 00 10 */	addi r1, r1, 0x10
/* 8068D15C  4E 80 00 20 */	blr 

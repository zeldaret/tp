lbl_80BFD1C8:
/* 80BFD1C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFD1CC  7C 08 02 A6 */	mflr r0
/* 80BFD1D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFD1D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BFD1D8  93 C1 00 08 */	stw r30, 8(r1)
/* 80BFD1DC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BFD1E0  7C 9F 23 78 */	mr r31, r4
/* 80BFD1E4  41 82 00 38 */	beq lbl_80BFD21C
/* 80BFD1E8  3C 60 80 C0 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80BFD1EC  38 03 D5 24 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80BFD1F0  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80BFD1F4  38 7E 00 14 */	addi r3, r30, 0x14
/* 80BFD1F8  38 80 FF FF */	li r4, -1
/* 80BFD1FC  4B 67 1D 1C */	b __dt__8cM3dGCirFv
/* 80BFD200  7F C3 F3 78 */	mr r3, r30
/* 80BFD204  38 80 00 00 */	li r4, 0
/* 80BFD208  4B 66 AE A8 */	b __dt__13cBgS_PolyInfoFv
/* 80BFD20C  7F E0 07 35 */	extsh. r0, r31
/* 80BFD210  40 81 00 0C */	ble lbl_80BFD21C
/* 80BFD214  7F C3 F3 78 */	mr r3, r30
/* 80BFD218  4B 6D 1B 24 */	b __dl__FPv
lbl_80BFD21C:
/* 80BFD21C  7F C3 F3 78 */	mr r3, r30
/* 80BFD220  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BFD224  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BFD228  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFD22C  7C 08 03 A6 */	mtlr r0
/* 80BFD230  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFD234  4E 80 00 20 */	blr 

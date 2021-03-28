lbl_807CE1CC:
/* 807CE1CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807CE1D0  7C 08 02 A6 */	mflr r0
/* 807CE1D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 807CE1D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807CE1DC  93 C1 00 08 */	stw r30, 8(r1)
/* 807CE1E0  7C 7E 1B 79 */	or. r30, r3, r3
/* 807CE1E4  7C 9F 23 78 */	mr r31, r4
/* 807CE1E8  41 82 00 38 */	beq lbl_807CE220
/* 807CE1EC  3C 60 80 7D */	lis r3, __vt__12dBgS_AcchCir@ha
/* 807CE1F0  38 03 F3 D4 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 807CE1F4  90 1E 00 0C */	stw r0, 0xc(r30)
/* 807CE1F8  38 7E 00 14 */	addi r3, r30, 0x14
/* 807CE1FC  38 80 FF FF */	li r4, -1
/* 807CE200  4B AA 0D 18 */	b __dt__8cM3dGCirFv
/* 807CE204  7F C3 F3 78 */	mr r3, r30
/* 807CE208  38 80 00 00 */	li r4, 0
/* 807CE20C  4B A9 9E A4 */	b __dt__13cBgS_PolyInfoFv
/* 807CE210  7F E0 07 35 */	extsh. r0, r31
/* 807CE214  40 81 00 0C */	ble lbl_807CE220
/* 807CE218  7F C3 F3 78 */	mr r3, r30
/* 807CE21C  4B B0 0B 20 */	b __dl__FPv
lbl_807CE220:
/* 807CE220  7F C3 F3 78 */	mr r3, r30
/* 807CE224  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807CE228  83 C1 00 08 */	lwz r30, 8(r1)
/* 807CE22C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807CE230  7C 08 03 A6 */	mtlr r0
/* 807CE234  38 21 00 10 */	addi r1, r1, 0x10
/* 807CE238  4E 80 00 20 */	blr 

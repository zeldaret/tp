lbl_8077978C:
/* 8077978C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80779790  7C 08 02 A6 */	mflr r0
/* 80779794  90 01 00 14 */	stw r0, 0x14(r1)
/* 80779798  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8077979C  93 C1 00 08 */	stw r30, 8(r1)
/* 807797A0  7C 7E 1B 79 */	or. r30, r3, r3
/* 807797A4  7C 9F 23 78 */	mr r31, r4
/* 807797A8  41 82 00 38 */	beq lbl_807797E0
/* 807797AC  3C 60 80 78 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 807797B0  38 03 A7 8C */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 807797B4  90 1E 00 0C */	stw r0, 0xc(r30)
/* 807797B8  38 7E 00 14 */	addi r3, r30, 0x14
/* 807797BC  38 80 FF FF */	li r4, -1
/* 807797C0  4B AF 57 58 */	b __dt__8cM3dGCirFv
/* 807797C4  7F C3 F3 78 */	mr r3, r30
/* 807797C8  38 80 00 00 */	li r4, 0
/* 807797CC  4B AE E8 E4 */	b __dt__13cBgS_PolyInfoFv
/* 807797D0  7F E0 07 35 */	extsh. r0, r31
/* 807797D4  40 81 00 0C */	ble lbl_807797E0
/* 807797D8  7F C3 F3 78 */	mr r3, r30
/* 807797DC  4B B5 55 60 */	b __dl__FPv
lbl_807797E0:
/* 807797E0  7F C3 F3 78 */	mr r3, r30
/* 807797E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807797E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 807797EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807797F0  7C 08 03 A6 */	mtlr r0
/* 807797F4  38 21 00 10 */	addi r1, r1, 0x10
/* 807797F8  4E 80 00 20 */	blr 

lbl_80A3C4F0:
/* 80A3C4F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A3C4F4  7C 08 02 A6 */	mflr r0
/* 80A3C4F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A3C4FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A3C500  93 C1 00 08 */	stw r30, 8(r1)
/* 80A3C504  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A3C508  7C 9F 23 78 */	mr r31, r4
/* 80A3C50C  41 82 00 38 */	beq lbl_80A3C544
/* 80A3C510  3C 60 80 A4 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80A3C514  38 03 31 C8 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80A3C518  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80A3C51C  38 7E 00 14 */	addi r3, r30, 0x14
/* 80A3C520  38 80 FF FF */	li r4, -1
/* 80A3C524  4B 83 29 F4 */	b __dt__8cM3dGCirFv
/* 80A3C528  7F C3 F3 78 */	mr r3, r30
/* 80A3C52C  38 80 00 00 */	li r4, 0
/* 80A3C530  4B 82 BB 80 */	b __dt__13cBgS_PolyInfoFv
/* 80A3C534  7F E0 07 35 */	extsh. r0, r31
/* 80A3C538  40 81 00 0C */	ble lbl_80A3C544
/* 80A3C53C  7F C3 F3 78 */	mr r3, r30
/* 80A3C540  4B 89 27 FC */	b __dl__FPv
lbl_80A3C544:
/* 80A3C544  7F C3 F3 78 */	mr r3, r30
/* 80A3C548  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A3C54C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A3C550  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A3C554  7C 08 03 A6 */	mtlr r0
/* 80A3C558  38 21 00 10 */	addi r1, r1, 0x10
/* 80A3C55C  4E 80 00 20 */	blr 

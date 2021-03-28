lbl_80AAC9B0:
/* 80AAC9B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AAC9B4  7C 08 02 A6 */	mflr r0
/* 80AAC9B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AAC9BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AAC9C0  93 C1 00 08 */	stw r30, 8(r1)
/* 80AAC9C4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AAC9C8  7C 9F 23 78 */	mr r31, r4
/* 80AAC9CC  41 82 00 38 */	beq lbl_80AACA04
/* 80AAC9D0  3C 60 80 AB */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80AAC9D4  38 03 DA A8 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80AAC9D8  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80AAC9DC  38 7E 00 14 */	addi r3, r30, 0x14
/* 80AAC9E0  38 80 FF FF */	li r4, -1
/* 80AAC9E4  4B 7C 25 34 */	b __dt__8cM3dGCirFv
/* 80AAC9E8  7F C3 F3 78 */	mr r3, r30
/* 80AAC9EC  38 80 00 00 */	li r4, 0
/* 80AAC9F0  4B 7B B6 C0 */	b __dt__13cBgS_PolyInfoFv
/* 80AAC9F4  7F E0 07 35 */	extsh. r0, r31
/* 80AAC9F8  40 81 00 0C */	ble lbl_80AACA04
/* 80AAC9FC  7F C3 F3 78 */	mr r3, r30
/* 80AACA00  4B 82 23 3C */	b __dl__FPv
lbl_80AACA04:
/* 80AACA04  7F C3 F3 78 */	mr r3, r30
/* 80AACA08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AACA0C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AACA10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AACA14  7C 08 03 A6 */	mtlr r0
/* 80AACA18  38 21 00 10 */	addi r1, r1, 0x10
/* 80AACA1C  4E 80 00 20 */	blr 

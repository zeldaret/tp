lbl_80A5D9D8:
/* 80A5D9D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A5D9DC  7C 08 02 A6 */	mflr r0
/* 80A5D9E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A5D9E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A5D9E8  93 C1 00 08 */	stw r30, 8(r1)
/* 80A5D9EC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A5D9F0  7C 9F 23 78 */	mr r31, r4
/* 80A5D9F4  41 82 00 38 */	beq lbl_80A5DA2C
/* 80A5D9F8  3C 60 80 A6 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80A5D9FC  38 03 FD C4 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80A5DA00  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80A5DA04  38 7E 00 14 */	addi r3, r30, 0x14
/* 80A5DA08  38 80 FF FF */	li r4, -1
/* 80A5DA0C  4B 81 15 0C */	b __dt__8cM3dGCirFv
/* 80A5DA10  7F C3 F3 78 */	mr r3, r30
/* 80A5DA14  38 80 00 00 */	li r4, 0
/* 80A5DA18  4B 80 A6 98 */	b __dt__13cBgS_PolyInfoFv
/* 80A5DA1C  7F E0 07 35 */	extsh. r0, r31
/* 80A5DA20  40 81 00 0C */	ble lbl_80A5DA2C
/* 80A5DA24  7F C3 F3 78 */	mr r3, r30
/* 80A5DA28  4B 87 13 14 */	b __dl__FPv
lbl_80A5DA2C:
/* 80A5DA2C  7F C3 F3 78 */	mr r3, r30
/* 80A5DA30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A5DA34  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A5DA38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A5DA3C  7C 08 03 A6 */	mtlr r0
/* 80A5DA40  38 21 00 10 */	addi r1, r1, 0x10
/* 80A5DA44  4E 80 00 20 */	blr 

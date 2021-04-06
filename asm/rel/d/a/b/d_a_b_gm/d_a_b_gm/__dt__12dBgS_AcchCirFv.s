lbl_805F3DAC:
/* 805F3DAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F3DB0  7C 08 02 A6 */	mflr r0
/* 805F3DB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F3DB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805F3DBC  93 C1 00 08 */	stw r30, 8(r1)
/* 805F3DC0  7C 7E 1B 79 */	or. r30, r3, r3
/* 805F3DC4  7C 9F 23 78 */	mr r31, r4
/* 805F3DC8  41 82 00 38 */	beq lbl_805F3E00
/* 805F3DCC  3C 60 80 5F */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x805F4704@ha */
/* 805F3DD0  38 03 47 04 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x805F4704@l */
/* 805F3DD4  90 1E 00 0C */	stw r0, 0xc(r30)
/* 805F3DD8  38 7E 00 14 */	addi r3, r30, 0x14
/* 805F3DDC  38 80 FF FF */	li r4, -1
/* 805F3DE0  4B C7 B1 39 */	bl __dt__8cM3dGCirFv
/* 805F3DE4  7F C3 F3 78 */	mr r3, r30
/* 805F3DE8  38 80 00 00 */	li r4, 0
/* 805F3DEC  4B C7 42 C5 */	bl __dt__13cBgS_PolyInfoFv
/* 805F3DF0  7F E0 07 35 */	extsh. r0, r31
/* 805F3DF4  40 81 00 0C */	ble lbl_805F3E00
/* 805F3DF8  7F C3 F3 78 */	mr r3, r30
/* 805F3DFC  4B CD AF 41 */	bl __dl__FPv
lbl_805F3E00:
/* 805F3E00  7F C3 F3 78 */	mr r3, r30
/* 805F3E04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805F3E08  83 C1 00 08 */	lwz r30, 8(r1)
/* 805F3E0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F3E10  7C 08 03 A6 */	mtlr r0
/* 805F3E14  38 21 00 10 */	addi r1, r1, 0x10
/* 805F3E18  4E 80 00 20 */	blr 

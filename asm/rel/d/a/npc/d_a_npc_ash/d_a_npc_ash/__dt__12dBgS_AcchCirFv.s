lbl_8095D39C:
/* 8095D39C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8095D3A0  7C 08 02 A6 */	mflr r0
/* 8095D3A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8095D3A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8095D3AC  93 C1 00 08 */	stw r30, 8(r1)
/* 8095D3B0  7C 7E 1B 79 */	or. r30, r3, r3
/* 8095D3B4  7C 9F 23 78 */	mr r31, r4
/* 8095D3B8  41 82 00 38 */	beq lbl_8095D3F0
/* 8095D3BC  3C 60 80 96 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x8095DCF0@ha */
/* 8095D3C0  38 03 DC F0 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x8095DCF0@l */
/* 8095D3C4  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8095D3C8  38 7E 00 14 */	addi r3, r30, 0x14
/* 8095D3CC  38 80 FF FF */	li r4, -1
/* 8095D3D0  4B 91 1B 49 */	bl __dt__8cM3dGCirFv
/* 8095D3D4  7F C3 F3 78 */	mr r3, r30
/* 8095D3D8  38 80 00 00 */	li r4, 0
/* 8095D3DC  4B 90 AC D5 */	bl __dt__13cBgS_PolyInfoFv
/* 8095D3E0  7F E0 07 35 */	extsh. r0, r31
/* 8095D3E4  40 81 00 0C */	ble lbl_8095D3F0
/* 8095D3E8  7F C3 F3 78 */	mr r3, r30
/* 8095D3EC  4B 97 19 51 */	bl __dl__FPv
lbl_8095D3F0:
/* 8095D3F0  7F C3 F3 78 */	mr r3, r30
/* 8095D3F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8095D3F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8095D3FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8095D400  7C 08 03 A6 */	mtlr r0
/* 8095D404  38 21 00 10 */	addi r1, r1, 0x10
/* 8095D408  4E 80 00 20 */	blr 

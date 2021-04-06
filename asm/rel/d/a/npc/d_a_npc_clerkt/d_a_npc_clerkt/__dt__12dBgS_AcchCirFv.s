lbl_8099C9B0:
/* 8099C9B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8099C9B4  7C 08 02 A6 */	mflr r0
/* 8099C9B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8099C9BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8099C9C0  93 C1 00 08 */	stw r30, 8(r1)
/* 8099C9C4  7C 7E 1B 79 */	or. r30, r3, r3
/* 8099C9C8  7C 9F 23 78 */	mr r31, r4
/* 8099C9CC  41 82 00 38 */	beq lbl_8099CA04
/* 8099C9D0  3C 60 80 9A */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x8099D50C@ha */
/* 8099C9D4  38 03 D5 0C */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x8099D50C@l */
/* 8099C9D8  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8099C9DC  38 7E 00 14 */	addi r3, r30, 0x14
/* 8099C9E0  38 80 FF FF */	li r4, -1
/* 8099C9E4  4B 8D 25 35 */	bl __dt__8cM3dGCirFv
/* 8099C9E8  7F C3 F3 78 */	mr r3, r30
/* 8099C9EC  38 80 00 00 */	li r4, 0
/* 8099C9F0  4B 8C B6 C1 */	bl __dt__13cBgS_PolyInfoFv
/* 8099C9F4  7F E0 07 35 */	extsh. r0, r31
/* 8099C9F8  40 81 00 0C */	ble lbl_8099CA04
/* 8099C9FC  7F C3 F3 78 */	mr r3, r30
/* 8099CA00  4B 93 23 3D */	bl __dl__FPv
lbl_8099CA04:
/* 8099CA04  7F C3 F3 78 */	mr r3, r30
/* 8099CA08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8099CA0C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8099CA10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8099CA14  7C 08 03 A6 */	mtlr r0
/* 8099CA18  38 21 00 10 */	addi r1, r1, 0x10
/* 8099CA1C  4E 80 00 20 */	blr 

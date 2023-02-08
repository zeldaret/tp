lbl_80C32258:
/* 80C32258  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3225C  7C 08 02 A6 */	mflr r0
/* 80C32260  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C32264  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C32268  93 C1 00 08 */	stw r30, 8(r1)
/* 80C3226C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C32270  7C 9F 23 78 */	mr r31, r4
/* 80C32274  41 82 00 38 */	beq lbl_80C322AC
/* 80C32278  3C 60 80 C3 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80C33EC8@ha */
/* 80C3227C  38 03 3E C8 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80C33EC8@l */
/* 80C32280  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80C32284  38 7E 00 14 */	addi r3, r30, 0x14
/* 80C32288  38 80 FF FF */	li r4, -1
/* 80C3228C  4B 63 CC 8D */	bl __dt__8cM3dGCirFv
/* 80C32290  7F C3 F3 78 */	mr r3, r30
/* 80C32294  38 80 00 00 */	li r4, 0
/* 80C32298  4B 63 5E 19 */	bl __dt__13cBgS_PolyInfoFv
/* 80C3229C  7F E0 07 35 */	extsh. r0, r31
/* 80C322A0  40 81 00 0C */	ble lbl_80C322AC
/* 80C322A4  7F C3 F3 78 */	mr r3, r30
/* 80C322A8  4B 69 CA 95 */	bl __dl__FPv
lbl_80C322AC:
/* 80C322AC  7F C3 F3 78 */	mr r3, r30
/* 80C322B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C322B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C322B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C322BC  7C 08 03 A6 */	mtlr r0
/* 80C322C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C322C4  4E 80 00 20 */	blr 

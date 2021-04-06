lbl_80C25078:
/* 80C25078  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2507C  7C 08 02 A6 */	mflr r0
/* 80C25080  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C25084  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C25088  93 C1 00 08 */	stw r30, 8(r1)
/* 80C2508C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C25090  7C 9F 23 78 */	mr r31, r4
/* 80C25094  41 82 00 38 */	beq lbl_80C250CC
/* 80C25098  3C 60 80 C2 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80C25F28@ha */
/* 80C2509C  38 03 5F 28 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80C25F28@l */
/* 80C250A0  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80C250A4  38 7E 00 14 */	addi r3, r30, 0x14
/* 80C250A8  38 80 FF FF */	li r4, -1
/* 80C250AC  4B 64 9E 6D */	bl __dt__8cM3dGCirFv
/* 80C250B0  7F C3 F3 78 */	mr r3, r30
/* 80C250B4  38 80 00 00 */	li r4, 0
/* 80C250B8  4B 64 2F F9 */	bl __dt__13cBgS_PolyInfoFv
/* 80C250BC  7F E0 07 35 */	extsh. r0, r31
/* 80C250C0  40 81 00 0C */	ble lbl_80C250CC
/* 80C250C4  7F C3 F3 78 */	mr r3, r30
/* 80C250C8  4B 6A 9C 75 */	bl __dl__FPv
lbl_80C250CC:
/* 80C250CC  7F C3 F3 78 */	mr r3, r30
/* 80C250D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C250D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C250D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C250DC  7C 08 03 A6 */	mtlr r0
/* 80C250E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C250E4  4E 80 00 20 */	blr 

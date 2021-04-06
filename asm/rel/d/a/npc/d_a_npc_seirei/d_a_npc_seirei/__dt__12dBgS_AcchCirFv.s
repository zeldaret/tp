lbl_80AD78C4:
/* 80AD78C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD78C8  7C 08 02 A6 */	mflr r0
/* 80AD78CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD78D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD78D4  93 C1 00 08 */	stw r30, 8(r1)
/* 80AD78D8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AD78DC  7C 9F 23 78 */	mr r31, r4
/* 80AD78E0  41 82 00 38 */	beq lbl_80AD7918
/* 80AD78E4  3C 60 80 AD */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80AD7FD4@ha */
/* 80AD78E8  38 03 7F D4 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80AD7FD4@l */
/* 80AD78EC  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80AD78F0  38 7E 00 14 */	addi r3, r30, 0x14
/* 80AD78F4  38 80 FF FF */	li r4, -1
/* 80AD78F8  4B 79 76 21 */	bl __dt__8cM3dGCirFv
/* 80AD78FC  7F C3 F3 78 */	mr r3, r30
/* 80AD7900  38 80 00 00 */	li r4, 0
/* 80AD7904  4B 79 07 AD */	bl __dt__13cBgS_PolyInfoFv
/* 80AD7908  7F E0 07 35 */	extsh. r0, r31
/* 80AD790C  40 81 00 0C */	ble lbl_80AD7918
/* 80AD7910  7F C3 F3 78 */	mr r3, r30
/* 80AD7914  4B 7F 74 29 */	bl __dl__FPv
lbl_80AD7918:
/* 80AD7918  7F C3 F3 78 */	mr r3, r30
/* 80AD791C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD7920  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AD7924  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD7928  7C 08 03 A6 */	mtlr r0
/* 80AD792C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD7930  4E 80 00 20 */	blr 

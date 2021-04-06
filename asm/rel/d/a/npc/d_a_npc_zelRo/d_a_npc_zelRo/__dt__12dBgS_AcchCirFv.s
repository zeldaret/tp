lbl_80B74500:
/* 80B74500  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B74504  7C 08 02 A6 */	mflr r0
/* 80B74508  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B7450C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B74510  93 C1 00 08 */	stw r30, 8(r1)
/* 80B74514  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B74518  7C 9F 23 78 */	mr r31, r4
/* 80B7451C  41 82 00 38 */	beq lbl_80B74554
/* 80B74520  3C 60 80 B7 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80B74EE8@ha */
/* 80B74524  38 03 4E E8 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80B74EE8@l */
/* 80B74528  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80B7452C  38 7E 00 14 */	addi r3, r30, 0x14
/* 80B74530  38 80 FF FF */	li r4, -1
/* 80B74534  4B 6F A9 E5 */	bl __dt__8cM3dGCirFv
/* 80B74538  7F C3 F3 78 */	mr r3, r30
/* 80B7453C  38 80 00 00 */	li r4, 0
/* 80B74540  4B 6F 3B 71 */	bl __dt__13cBgS_PolyInfoFv
/* 80B74544  7F E0 07 35 */	extsh. r0, r31
/* 80B74548  40 81 00 0C */	ble lbl_80B74554
/* 80B7454C  7F C3 F3 78 */	mr r3, r30
/* 80B74550  4B 75 A7 ED */	bl __dl__FPv
lbl_80B74554:
/* 80B74554  7F C3 F3 78 */	mr r3, r30
/* 80B74558  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B7455C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B74560  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B74564  7C 08 03 A6 */	mtlr r0
/* 80B74568  38 21 00 10 */	addi r1, r1, 0x10
/* 80B7456C  4E 80 00 20 */	blr 

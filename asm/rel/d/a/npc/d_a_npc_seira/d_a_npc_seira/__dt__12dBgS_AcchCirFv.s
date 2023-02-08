lbl_80ACF4C4:
/* 80ACF4C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACF4C8  7C 08 02 A6 */	mflr r0
/* 80ACF4CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACF4D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACF4D4  93 C1 00 08 */	stw r30, 8(r1)
/* 80ACF4D8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80ACF4DC  7C 9F 23 78 */	mr r31, r4
/* 80ACF4E0  41 82 00 38 */	beq lbl_80ACF518
/* 80ACF4E4  3C 60 80 AD */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80AD09B4@ha */
/* 80ACF4E8  38 03 09 B4 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80AD09B4@l */
/* 80ACF4EC  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80ACF4F0  38 7E 00 14 */	addi r3, r30, 0x14
/* 80ACF4F4  38 80 FF FF */	li r4, -1
/* 80ACF4F8  4B 79 FA 21 */	bl __dt__8cM3dGCirFv
/* 80ACF4FC  7F C3 F3 78 */	mr r3, r30
/* 80ACF500  38 80 00 00 */	li r4, 0
/* 80ACF504  4B 79 8B AD */	bl __dt__13cBgS_PolyInfoFv
/* 80ACF508  7F E0 07 35 */	extsh. r0, r31
/* 80ACF50C  40 81 00 0C */	ble lbl_80ACF518
/* 80ACF510  7F C3 F3 78 */	mr r3, r30
/* 80ACF514  4B 7F F8 29 */	bl __dl__FPv
lbl_80ACF518:
/* 80ACF518  7F C3 F3 78 */	mr r3, r30
/* 80ACF51C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACF520  83 C1 00 08 */	lwz r30, 8(r1)
/* 80ACF524  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACF528  7C 08 03 A6 */	mtlr r0
/* 80ACF52C  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACF530  4E 80 00 20 */	blr 

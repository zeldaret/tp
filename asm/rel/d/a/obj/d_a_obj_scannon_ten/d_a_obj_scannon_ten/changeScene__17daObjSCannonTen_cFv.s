lbl_80CCC5A0:
/* 80CCC5A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCC5A4  7C 08 02 A6 */	mflr r0
/* 80CCC5A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCC5AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CCC5B0  93 C1 00 08 */	stw r30, 8(r1)
/* 80CCC5B4  7C 7E 1B 78 */	mr r30, r3
/* 80CCC5B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CCC5BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CCC5C0  3B E3 5B D4 */	addi r31, r3, 0x5bd4
/* 80CCC5C4  7F E3 FB 78 */	mr r3, r31
/* 80CCC5C8  4B 3A 38 94 */	b CheckQuake__12dVibration_cFv
/* 80CCC5CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CCC5D0  41 82 00 10 */	beq lbl_80CCC5E0
/* 80CCC5D4  7F E3 FB 78 */	mr r3, r31
/* 80CCC5D8  38 80 00 1F */	li r4, 0x1f
/* 80CCC5DC  4B 3A 37 B8 */	b StopQuake__12dVibration_cFi
lbl_80CCC5E0:
/* 80CCC5E0  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80CCC5E4  60 00 00 80 */	ori r0, r0, 0x80
/* 80CCC5E8  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 80CCC5EC  38 60 00 01 */	li r3, 1
/* 80CCC5F0  3C 80 80 CD */	lis r4, lit_3832@ha
/* 80CCC5F4  C0 24 CC 38 */	lfs f1, lit_3832@l(r4)
/* 80CCC5F8  38 80 00 00 */	li r4, 0
/* 80CCC5FC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CCC600  7C 05 07 74 */	extsb r5, r0
/* 80CCC604  38 C0 00 00 */	li r6, 0
/* 80CCC608  38 E0 FF FF */	li r7, -1
/* 80CCC60C  4B 35 AB 64 */	b dStage_changeScene__FifUlScsi
/* 80CCC610  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CCC614  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CCC618  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCC61C  7C 08 03 A6 */	mtlr r0
/* 80CCC620  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCC624  4E 80 00 20 */	blr 

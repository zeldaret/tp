lbl_80C00790:
/* 80C00790  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C00794  7C 08 02 A6 */	mflr r0
/* 80C00798  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C0079C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C007A0  93 C1 00 08 */	stw r30, 8(r1)
/* 80C007A4  7C 7E 1B 78 */	mr r30, r3
/* 80C007A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C007AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C007B0  3B E3 5B D4 */	addi r31, r3, 0x5bd4
/* 80C007B4  7F E3 FB 78 */	mr r3, r31
/* 80C007B8  4B 46 F6 A5 */	bl CheckQuake__12dVibration_cFv
/* 80C007BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C007C0  41 82 00 10 */	beq lbl_80C007D0
/* 80C007C4  7F E3 FB 78 */	mr r3, r31
/* 80C007C8  38 80 00 1F */	li r4, 0x1f
/* 80C007CC  4B 46 F5 C9 */	bl StopQuake__12dVibration_cFi
lbl_80C007D0:
/* 80C007D0  7F C3 F3 78 */	mr r3, r30
/* 80C007D4  38 80 FF FF */	li r4, -1
/* 80C007D8  81 9E 05 68 */	lwz r12, 0x568(r30)
/* 80C007DC  81 8C 00 08 */	lwz r12, 8(r12)
/* 80C007E0  7D 89 03 A6 */	mtctr r12
/* 80C007E4  4E 80 04 21 */	bctrl 
/* 80C007E8  38 60 00 01 */	li r3, 1
/* 80C007EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C007F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C007F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C007F8  7C 08 03 A6 */	mtlr r0
/* 80C007FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C00800  4E 80 00 20 */	blr 

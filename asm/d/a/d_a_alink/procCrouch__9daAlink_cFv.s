lbl_800C76F8:
/* 800C76F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800C76FC  7C 08 02 A6 */	mflr r0
/* 800C7700  90 01 00 24 */	stw r0, 0x24(r1)
/* 800C7704  39 61 00 20 */	addi r11, r1, 0x20
/* 800C7708  48 29 AA D5 */	bl _savegpr_29
/* 800C770C  7C 7D 1B 78 */	mr r29, r3
/* 800C7710  38 7D 33 98 */	addi r3, r29, 0x3398
/* 800C7714  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800C7718  3C 80 80 39 */	lis r4, m__18daAlinkHIO_move_c0@ha /* 0x8038D6BC@ha */
/* 800C771C  38 84 D6 BC */	addi r4, r4, m__18daAlinkHIO_move_c0@l /* 0x8038D6BC@l */
/* 800C7720  C0 44 00 38 */	lfs f2, 0x38(r4)
/* 800C7724  48 1A 90 1D */	bl cLib_chaseF__FPfff
/* 800C7728  7F A3 EB 78 */	mr r3, r29
/* 800C772C  4B FE BD D5 */	bl checkAttentionState__9daAlink_cFv
/* 800C7730  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C7734  41 82 00 20 */	beq lbl_800C7754
/* 800C7738  7F A3 EB 78 */	mr r3, r29
/* 800C773C  38 80 00 E8 */	li r4, 0xe8
/* 800C7740  38 A0 00 00 */	li r5, 0
/* 800C7744  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 800C7748  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 800C774C  4B FE 7D 65 */	bl setFaceBck__9daAlink_cFUsiUs
/* 800C7750  48 00 00 1C */	b lbl_800C776C
lbl_800C7754:
/* 800C7754  7F A3 EB 78 */	mr r3, r29
/* 800C7758  38 80 00 00 */	li r4, 0
/* 800C775C  38 A0 00 00 */	li r5, 0
/* 800C7760  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 800C7764  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 800C7768  4B FE 7D 49 */	bl setFaceBck__9daAlink_cFUsiUs
lbl_800C776C:
/* 800C776C  80 1D 06 14 */	lwz r0, 0x614(r29)
/* 800C7770  28 00 00 29 */	cmplwi r0, 0x29
/* 800C7774  41 82 00 64 */	beq lbl_800C77D8
/* 800C7778  C0 3D 2B A8 */	lfs f1, 0x2ba8(r29)
/* 800C777C  C0 02 98 EC */	lfs f0, lit_74138(r2)
/* 800C7780  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800C7784  4C 40 13 82 */	cror 2, 0, 2
/* 800C7788  41 82 00 44 */	beq lbl_800C77CC
/* 800C778C  83 FD 27 E0 */	lwz r31, 0x27e0(r29)
/* 800C7790  3B C0 00 01 */	li r30, 1
/* 800C7794  7F E3 FB 78 */	mr r3, r31
/* 800C7798  4B FA C0 4D */	bl LockonTruth__12dAttention_cFv
/* 800C779C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C77A0  40 82 00 14 */	bne lbl_800C77B4
/* 800C77A4  80 1F 03 34 */	lwz r0, 0x334(r31)
/* 800C77A8  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 800C77AC  40 82 00 08 */	bne lbl_800C77B4
/* 800C77B0  3B C0 00 00 */	li r30, 0
lbl_800C77B4:
/* 800C77B4  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 800C77B8  41 82 00 20 */	beq lbl_800C77D8
/* 800C77BC  7F A3 EB 78 */	mr r3, r29
/* 800C77C0  48 01 57 A5 */	bl checkGuardAccept__9daAlink_cFv
/* 800C77C4  2C 03 00 00 */	cmpwi r3, 0
/* 800C77C8  41 82 00 10 */	beq lbl_800C77D8
lbl_800C77CC:
/* 800C77CC  7F A3 EB 78 */	mr r3, r29
/* 800C77D0  38 80 00 00 */	li r4, 0
/* 800C77D4  4B FF 37 35 */	bl checkNextActionFromCrouch__9daAlink_cFi
lbl_800C77D8:
/* 800C77D8  38 60 00 01 */	li r3, 1
/* 800C77DC  39 61 00 20 */	addi r11, r1, 0x20
/* 800C77E0  48 29 AA 49 */	bl _restgpr_29
/* 800C77E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800C77E8  7C 08 03 A6 */	mtlr r0
/* 800C77EC  38 21 00 20 */	addi r1, r1, 0x20
/* 800C77F0  4E 80 00 20 */	blr 

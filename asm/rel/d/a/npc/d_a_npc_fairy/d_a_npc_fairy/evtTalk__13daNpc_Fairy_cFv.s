lbl_809B3524:
/* 809B3524  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809B3528  7C 08 02 A6 */	mflr r0
/* 809B352C  90 01 00 34 */	stw r0, 0x34(r1)
/* 809B3530  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 809B3534  93 C1 00 28 */	stw r30, 0x28(r1)
/* 809B3538  7C 7F 1B 78 */	mr r31, r3
/* 809B353C  3C 60 80 9C */	lis r3, lit_4913@ha
/* 809B3540  38 83 9B 84 */	addi r4, r3, lit_4913@l
/* 809B3544  80 64 00 00 */	lwz r3, 0(r4)
/* 809B3548  80 04 00 04 */	lwz r0, 4(r4)
/* 809B354C  90 61 00 14 */	stw r3, 0x14(r1)
/* 809B3550  90 01 00 18 */	stw r0, 0x18(r1)
/* 809B3554  80 04 00 08 */	lwz r0, 8(r4)
/* 809B3558  90 01 00 1C */	stw r0, 0x1c(r1)
/* 809B355C  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 809B3560  38 81 00 14 */	addi r4, r1, 0x14
/* 809B3564  4B 9A EA E4 */	b __ptmf_cmpr
/* 809B3568  2C 03 00 00 */	cmpwi r3, 0
/* 809B356C  40 82 00 1C */	bne lbl_809B3588
/* 809B3570  7F E3 FB 78 */	mr r3, r31
/* 809B3574  38 80 00 00 */	li r4, 0
/* 809B3578  39 9F 0F 84 */	addi r12, r31, 0xf84
/* 809B357C  4B 9A EB 08 */	b __ptmf_scall
/* 809B3580  60 00 00 00 */	nop 
/* 809B3584  48 00 00 90 */	b lbl_809B3614
lbl_809B3588:
/* 809B3588  38 00 00 00 */	li r0, 0
/* 809B358C  98 1F 0E 2E */	stb r0, 0xe2e(r31)
/* 809B3590  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809B3594  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809B3598  3B C3 4E C8 */	addi r30, r3, 0x4ec8
/* 809B359C  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 809B35A0  28 04 00 01 */	cmplwi r4, 1
/* 809B35A4  41 82 00 0C */	beq lbl_809B35B0
/* 809B35A8  28 04 00 02 */	cmplwi r4, 2
/* 809B35AC  40 82 00 08 */	bne lbl_809B35B4
lbl_809B35B0:
/* 809B35B0  38 00 00 01 */	li r0, 1
lbl_809B35B4:
/* 809B35B4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 809B35B8  41 82 00 2C */	beq lbl_809B35E4
/* 809B35BC  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 809B35C0  4B 69 52 30 */	b ChkPresentEnd__16dEvent_manager_cFv
/* 809B35C4  2C 03 00 00 */	cmpwi r3, 0
/* 809B35C8  40 82 00 0C */	bne lbl_809B35D4
/* 809B35CC  38 60 00 01 */	li r3, 1
/* 809B35D0  48 00 00 48 */	b lbl_809B3618
lbl_809B35D4:
/* 809B35D4  7F C3 F3 78 */	mr r3, r30
/* 809B35D8  4B 68 EE 90 */	b reset__14dEvt_control_cFv
/* 809B35DC  38 60 00 01 */	li r3, 1
/* 809B35E0  48 00 00 38 */	b lbl_809B3618
lbl_809B35E4:
/* 809B35E4  3C 60 80 9C */	lis r3, lit_4923@ha
/* 809B35E8  38 83 9B 90 */	addi r4, r3, lit_4923@l
/* 809B35EC  80 64 00 00 */	lwz r3, 0(r4)
/* 809B35F0  80 04 00 04 */	lwz r0, 4(r4)
/* 809B35F4  90 61 00 08 */	stw r3, 8(r1)
/* 809B35F8  90 01 00 0C */	stw r0, 0xc(r1)
/* 809B35FC  80 04 00 08 */	lwz r0, 8(r4)
/* 809B3600  90 01 00 10 */	stw r0, 0x10(r1)
/* 809B3604  7F E3 FB 78 */	mr r3, r31
/* 809B3608  38 81 00 08 */	addi r4, r1, 8
/* 809B360C  38 A0 00 00 */	li r5, 0
/* 809B3610  48 00 09 D1 */	bl setAction__13daNpc_Fairy_cFM13daNpc_Fairy_cFPCvPvi_ii
lbl_809B3614:
/* 809B3614  38 60 00 01 */	li r3, 1
lbl_809B3618:
/* 809B3618  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 809B361C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 809B3620  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809B3624  7C 08 03 A6 */	mtlr r0
/* 809B3628  38 21 00 30 */	addi r1, r1, 0x30
/* 809B362C  4E 80 00 20 */	blr 

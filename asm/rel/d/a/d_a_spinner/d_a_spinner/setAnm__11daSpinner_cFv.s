lbl_804D34B0:
/* 804D34B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804D34B4  7C 08 02 A6 */	mflr r0
/* 804D34B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D34BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804D34C0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804D34C4  7C 7F 1B 78 */	mr r31, r3
/* 804D34C8  3C 60 80 4D */	lis r3, lit_3768@ha /* 0x804D4D90@ha */
/* 804D34CC  3B C3 4D 90 */	addi r30, r3, lit_3768@l /* 0x804D4D90@l */
/* 804D34D0  38 60 00 01 */	li r3, 1
/* 804D34D4  88 1F 05 71 */	lbz r0, 0x571(r31)
/* 804D34D8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804D34DC  40 82 00 18 */	bne lbl_804D34F4
/* 804D34E0  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 804D34E4  C0 1F 05 78 */	lfs f0, 0x578(r31)
/* 804D34E8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804D34EC  41 82 00 08 */	beq lbl_804D34F4
/* 804D34F0  38 60 00 00 */	li r3, 0
lbl_804D34F4:
/* 804D34F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804D34F8  41 82 01 08 */	beq lbl_804D3600
/* 804D34FC  88 1F 0A 75 */	lbz r0, 0xa75(r31)
/* 804D3500  28 00 00 00 */	cmplwi r0, 0
/* 804D3504  41 82 00 FC */	beq lbl_804D3600
/* 804D3508  38 7F 05 6C */	addi r3, r31, 0x56c
/* 804D350C  80 9F 05 88 */	lwz r4, 0x588(r31)
/* 804D3510  38 A0 00 01 */	li r5, 1
/* 804D3514  38 C0 FF FF */	li r6, -1
/* 804D3518  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 804D351C  38 E0 00 00 */	li r7, 0
/* 804D3520  39 00 FF FF */	li r8, -1
/* 804D3524  39 20 00 01 */	li r9, 1
/* 804D3528  4B B3 A2 B5 */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 804D352C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804D3530  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804D3534  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 804D3538  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002006D@ha */
/* 804D353C  38 84 00 6D */	addi r4, r4, 0x006D /* 0x0002006D@l */
/* 804D3540  81 83 06 28 */	lwz r12, 0x628(r3)
/* 804D3544  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 804D3548  7D 89 03 A6 */	mtctr r12
/* 804D354C  4E 80 04 21 */	bctrl 
/* 804D3550  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 804D3554  D0 21 00 08 */	stfs f1, 8(r1)
/* 804D3558  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 804D355C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804D3560  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 804D3564  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804D3568  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804D356C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 804D3570  38 80 00 02 */	li r4, 2
/* 804D3574  38 A0 00 01 */	li r5, 1
/* 804D3578  38 C1 00 08 */	addi r6, r1, 8
/* 804D357C  4B B9 C4 A9 */	bl StartShock__12dVibration_cFii4cXyz
/* 804D3580  88 1F 0A 6D */	lbz r0, 0xa6d(r31)
/* 804D3584  28 00 00 00 */	cmplwi r0, 0
/* 804D3588  40 82 00 18 */	bne lbl_804D35A0
/* 804D358C  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 804D3590  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 804D3594  38 00 00 01 */	li r0, 1
/* 804D3598  98 1F 0A 6D */	stb r0, 0xa6d(r31)
/* 804D359C  98 1F 0A 70 */	stb r0, 0xa70(r31)
lbl_804D35A0:
/* 804D35A0  80 7F 0A 64 */	lwz r3, 0xa64(r31)
/* 804D35A4  28 03 00 00 */	cmplwi r3, 0
/* 804D35A8  41 82 00 58 */	beq lbl_804D3600
/* 804D35AC  80 83 00 08 */	lwz r4, 8(r3)
/* 804D35B0  88 1F 0A 72 */	lbz r0, 0xa72(r31)
/* 804D35B4  54 03 20 36 */	slwi r3, r0, 4
/* 804D35B8  38 63 00 04 */	addi r3, r3, 4
/* 804D35BC  7C 64 1A 14 */	add r3, r4, r3
/* 804D35C0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 804D35C4  4B D9 D6 41 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 804D35C8  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 804D35CC  7C 04 18 50 */	subf r0, r4, r3
/* 804D35D0  7C 00 07 35 */	extsh. r0, r0
/* 804D35D4  40 81 00 10 */	ble lbl_804D35E4
/* 804D35D8  38 04 30 00 */	addi r0, r4, 0x3000
/* 804D35DC  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 804D35E0  48 00 00 0C */	b lbl_804D35EC
lbl_804D35E4:
/* 804D35E4  38 04 D0 00 */	addi r0, r4, -12288
/* 804D35E8  B0 1F 04 DE */	sth r0, 0x4de(r31)
lbl_804D35EC:
/* 804D35EC  38 00 00 00 */	li r0, 0
/* 804D35F0  90 1F 0A 64 */	stw r0, 0xa64(r31)
/* 804D35F4  80 1F 06 78 */	lwz r0, 0x678(r31)
/* 804D35F8  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 804D35FC  90 1F 06 78 */	stw r0, 0x678(r31)
lbl_804D3600:
/* 804D3600  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804D3604  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804D3608  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D360C  7C 08 03 A6 */	mtlr r0
/* 804D3610  38 21 00 20 */	addi r1, r1, 0x20
/* 804D3614  4E 80 00 20 */	blr 

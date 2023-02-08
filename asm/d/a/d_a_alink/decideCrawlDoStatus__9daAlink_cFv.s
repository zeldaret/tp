lbl_800F88F8:
/* 800F88F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F88FC  7C 08 02 A6 */	mflr r0
/* 800F8900  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F8904  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F8908  93 C1 00 08 */	stw r30, 8(r1)
/* 800F890C  7C 7E 1B 78 */	mr r30, r3
/* 800F8910  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800F8914  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800F8918  3B E4 5D 7C */	addi r31, r4, 0x5d7c
/* 800F891C  80 03 31 7C */	lwz r0, 0x317c(r3)
/* 800F8920  1C 00 00 38 */	mulli r0, r0, 0x38
/* 800F8924  7C 1F 00 2E */	lwzx r0, r31, r0
/* 800F8928  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 800F892C  41 82 00 3C */	beq lbl_800F8968
/* 800F8930  38 80 00 01 */	li r4, 1
/* 800F8934  4B FD 62 A5 */	bl checkSubjectEnd__9daAlink_cFi
/* 800F8938  2C 03 00 00 */	cmpwi r3, 0
/* 800F893C  40 82 00 14 */	bne lbl_800F8950
/* 800F8940  C0 3E 33 B4 */	lfs f1, 0x33b4(r30)
/* 800F8944  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 800F8948  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F894C  40 81 00 7C */	ble lbl_800F89C8
lbl_800F8950:
/* 800F8950  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800F8954  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800F8958  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800F895C  54 00 04 E2 */	rlwinm r0, r0, 0, 0x13, 0x11
/* 800F8960  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 800F8964  48 00 00 64 */	b lbl_800F89C8
lbl_800F8968:
/* 800F8968  48 08 8C D9 */	bl dCam_getBody__Fv
/* 800F896C  38 80 00 04 */	li r4, 4
/* 800F8970  48 06 8B 85 */	bl ChangeModeOK__9dCamera_cFl
/* 800F8974  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800F8978  41 82 00 50 */	beq lbl_800F89C8
/* 800F897C  C0 3E 33 B4 */	lfs f1, 0x33b4(r30)
/* 800F8980  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 800F8984  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F8988  4C 40 13 82 */	cror 2, 0, 2
/* 800F898C  40 82 00 3C */	bne lbl_800F89C8
/* 800F8990  80 1E 05 80 */	lwz r0, 0x580(r30)
/* 800F8994  64 00 04 00 */	oris r0, r0, 0x400
/* 800F8998  90 1E 05 80 */	stw r0, 0x580(r30)
/* 800F899C  80 1E 31 7C */	lwz r0, 0x317c(r30)
/* 800F89A0  1C 00 00 38 */	mulli r0, r0, 0x38
/* 800F89A4  7C 1F 00 2E */	lwzx r0, r31, r0
/* 800F89A8  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 800F89AC  41 82 00 1C */	beq lbl_800F89C8
/* 800F89B0  7F C3 F3 78 */	mr r3, r30
/* 800F89B4  48 01 D2 6D */	bl checkEventRun__9daAlink_cCFv
/* 800F89B8  2C 03 00 00 */	cmpwi r3, 0
/* 800F89BC  40 82 00 0C */	bne lbl_800F89C8
/* 800F89C0  7F C3 F3 78 */	mr r3, r30
/* 800F89C4  4B FD 61 31 */	bl setSubjectMode__9daAlink_cFv
lbl_800F89C8:
/* 800F89C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F89CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 800F89D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F89D4  7C 08 03 A6 */	mtlr r0
/* 800F89D8  38 21 00 10 */	addi r1, r1, 0x10
/* 800F89DC  4E 80 00 20 */	blr 

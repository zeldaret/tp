lbl_80C035B8:
/* 80C035B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C035BC  7C 08 02 A6 */	mflr r0
/* 80C035C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C035C4  39 61 00 20 */	addi r11, r1, 0x20
/* 80C035C8  4B 75 EC 15 */	bl _savegpr_29
/* 80C035CC  7C 7F 1B 78 */	mr r31, r3
/* 80C035D0  7C 9D 23 78 */	mr r29, r4
/* 80C035D4  7C BE 2B 78 */	mr r30, r5
/* 80C035D8  38 00 FF FF */	li r0, -1
/* 80C035DC  90 04 00 00 */	stw r0, 0(r4)
/* 80C035E0  90 05 00 00 */	stw r0, 0(r5)
/* 80C035E4  4B 63 4B B9 */	bl getActor__12dMsgObject_cFv
/* 80C035E8  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80C035EC  28 00 00 02 */	cmplwi r0, 2
/* 80C035F0  41 82 00 0C */	beq lbl_80C035FC
/* 80C035F4  28 00 00 03 */	cmplwi r0, 3
/* 80C035F8  40 82 00 10 */	bne lbl_80C03608
lbl_80C035FC:
/* 80C035FC  38 00 FF FF */	li r0, -1
/* 80C03600  90 1F 0A 9C */	stw r0, 0xa9c(r31)
/* 80C03604  48 00 00 8C */	b lbl_80C03690
lbl_80C03608:
/* 80C03608  28 00 00 06 */	cmplwi r0, 6
/* 80C0360C  40 82 00 68 */	bne lbl_80C03674
/* 80C03610  80 83 00 EC */	lwz r4, 0xec(r3)
/* 80C03614  80 1F 0A 9C */	lwz r0, 0xa9c(r31)
/* 80C03618  7C 04 00 40 */	cmplw r4, r0
/* 80C0361C  41 82 00 24 */	beq lbl_80C03640
/* 80C03620  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C03624  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C03628  88 04 5E 7B */	lbz r0, 0x5e7b(r4)
/* 80C0362C  90 1D 00 00 */	stw r0, 0(r29)
/* 80C03630  88 04 5E 7A */	lbz r0, 0x5e7a(r4)
/* 80C03634  90 1E 00 00 */	stw r0, 0(r30)
/* 80C03638  80 03 00 EC */	lwz r0, 0xec(r3)
/* 80C0363C  90 1F 0A 9C */	stw r0, 0xa9c(r31)
lbl_80C03640:
/* 80C03640  4B 63 4D 65 */	bl isMouthCheck__12dMsgObject_cFv
/* 80C03644  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C03648  41 82 00 14 */	beq lbl_80C0365C
/* 80C0364C  A0 1F 08 40 */	lhz r0, 0x840(r31)
/* 80C03650  54 00 06 2C */	rlwinm r0, r0, 0, 0x18, 0x16
/* 80C03654  B0 1F 08 40 */	sth r0, 0x840(r31)
/* 80C03658  48 00 00 10 */	b lbl_80C03668
lbl_80C0365C:
/* 80C0365C  A0 1F 08 40 */	lhz r0, 0x840(r31)
/* 80C03660  60 00 01 00 */	ori r0, r0, 0x100
/* 80C03664  B0 1F 08 40 */	sth r0, 0x840(r31)
lbl_80C03668:
/* 80C03668  38 00 00 14 */	li r0, 0x14
/* 80C0366C  90 1F 0A A0 */	stw r0, 0xaa0(r31)
/* 80C03670  48 00 00 20 */	b lbl_80C03690
lbl_80C03674:
/* 80C03674  A0 7F 08 40 */	lhz r3, 0x840(r31)
/* 80C03678  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 80C0367C  41 82 00 0C */	beq lbl_80C03688
/* 80C03680  54 60 06 2C */	rlwinm r0, r3, 0, 0x18, 0x16
/* 80C03684  B0 1F 08 40 */	sth r0, 0x840(r31)
lbl_80C03688:
/* 80C03688  38 00 FF FF */	li r0, -1
/* 80C0368C  90 1F 0A 9C */	stw r0, 0xa9c(r31)
lbl_80C03690:
/* 80C03690  38 7F 0A A0 */	addi r3, r31, 0xaa0
/* 80C03694  48 00 18 A9 */	bl func_80C04F3C
/* 80C03698  80 7F 0A A0 */	lwz r3, 0xaa0(r31)
/* 80C0369C  39 61 00 20 */	addi r11, r1, 0x20
/* 80C036A0  4B 75 EB 89 */	bl _restgpr_29
/* 80C036A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C036A8  7C 08 03 A6 */	mtlr r0
/* 80C036AC  38 21 00 20 */	addi r1, r1, 0x20
/* 80C036B0  4E 80 00 20 */	blr 

lbl_8003C37C:
/* 8003C37C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003C380  7C 08 02 A6 */	mflr r0
/* 8003C384  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003C388  39 61 00 20 */	addi r11, r1, 0x20
/* 8003C38C  48 32 5E 51 */	bl _savegpr_29
/* 8003C390  7C 9D 23 78 */	mr r29, r4
/* 8003C394  7C A4 2B 78 */	mr r4, r5
/* 8003C398  7C C5 33 78 */	mr r5, r6
/* 8003C39C  4B FF FE ED */	bl getResInfoLoaded__14dRes_control_cFPCcP11dRes_info_ci
/* 8003C3A0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8003C3A4  40 82 00 08 */	bne lbl_8003C3AC
/* 8003C3A8  48 00 00 40 */	b lbl_8003C3E8
lbl_8003C3AC:
/* 8003C3AC  83 DF 00 14 */	lwz r30, 0x14(r31)
/* 8003C3B0  7F C3 F3 78 */	mr r3, r30
/* 8003C3B4  7F A4 EB 78 */	mr r4, r29
/* 8003C3B8  48 29 A2 F5 */	bl findNameResource__10JKRArchiveCFPCc
/* 8003C3BC  28 03 00 00 */	cmplwi r3, 0
/* 8003C3C0  41 82 00 24 */	beq lbl_8003C3E4
/* 8003C3C4  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 8003C3C8  80 1E 00 4C */	lwz r0, 0x4c(r30)
/* 8003C3CC  7C 60 18 50 */	subf r3, r0, r3
/* 8003C3D0  38 00 00 14 */	li r0, 0x14
/* 8003C3D4  7C 03 03 D6 */	divw r0, r3, r0
/* 8003C3D8  54 00 10 3A */	slwi r0, r0, 2
/* 8003C3DC  7C 64 00 2E */	lwzx r3, r4, r0
/* 8003C3E0  48 00 00 08 */	b lbl_8003C3E8
lbl_8003C3E4:
/* 8003C3E4  38 60 00 00 */	li r3, 0
lbl_8003C3E8:
/* 8003C3E8  39 61 00 20 */	addi r11, r1, 0x20
/* 8003C3EC  48 32 5E 3D */	bl _restgpr_29
/* 8003C3F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003C3F4  7C 08 03 A6 */	mtlr r0
/* 8003C3F8  38 21 00 20 */	addi r1, r1, 0x20
/* 8003C3FC  4E 80 00 20 */	blr 

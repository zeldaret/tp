lbl_800270FC:
/* 800270FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80027100  7C 08 02 A6 */	mflr r0
/* 80027104  90 01 00 24 */	stw r0, 0x24(r1)
/* 80027108  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 8002710C  39 61 00 18 */	addi r11, r1, 0x18
/* 80027110  48 33 B0 CD */	bl _savegpr_29
/* 80027114  7C 60 1B 78 */	mr r0, r3
/* 80027118  FF E0 08 90 */	fmr f31, f1
/* 8002711C  7C 9D 23 78 */	mr r29, r4
/* 80027120  7C BE 2B 78 */	mr r30, r5
/* 80027124  7C DF 33 78 */	mr r31, r6
/* 80027128  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002712C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80027130  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80027134  7C 04 03 78 */	mr r4, r0
/* 80027138  48 04 DA 61 */	bl GetExitId__4dBgSFRC13cBgS_PolyInfo
/* 8002713C  FC 20 F8 90 */	fmr f1, f31
/* 80027140  7F A4 EB 78 */	mr r4, r29
/* 80027144  7F C5 F3 78 */	mr r5, r30
/* 80027148  7F E6 FB 78 */	mr r6, r31
/* 8002714C  38 E0 FF FF */	li r7, -1
/* 80027150  48 00 00 21 */	bl dStage_changeScene__FifUlScsi
/* 80027154  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 80027158  39 61 00 18 */	addi r11, r1, 0x18
/* 8002715C  48 33 B0 CD */	bl _restgpr_29
/* 80027160  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80027164  7C 08 03 A6 */	mtlr r0
/* 80027168  38 21 00 20 */	addi r1, r1, 0x20
/* 8002716C  4E 80 00 20 */	blr 

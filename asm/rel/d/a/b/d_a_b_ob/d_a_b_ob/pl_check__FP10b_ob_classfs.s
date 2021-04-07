lbl_806131A8:
/* 806131A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806131AC  7C 08 02 A6 */	mflr r0
/* 806131B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 806131B4  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 806131B8  39 61 00 18 */	addi r11, r1, 0x18
/* 806131BC  4B D4 F0 21 */	bl _savegpr_29
/* 806131C0  7C 7F 1B 78 */	mr r31, r3
/* 806131C4  FF E0 08 90 */	fmr f31, f1
/* 806131C8  7C 9D 23 78 */	mr r29, r4
/* 806131CC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806131D0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806131D4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806131D8  7C 9E 23 78 */	mr r30, r4
/* 806131DC  4B A0 76 05 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806131E0  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 806131E4  40 80 00 6C */	bge lbl_80613250
/* 806131E8  A8 7F 47 6C */	lha r3, 0x476c(r31)
/* 806131EC  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 806131F0  7C 03 00 50 */	subf r0, r3, r0
/* 806131F4  7C 04 07 34 */	extsh r4, r0
/* 806131F8  A8 7F 47 6E */	lha r3, 0x476e(r31)
/* 806131FC  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80613200  7C 03 00 50 */	subf r0, r3, r0
/* 80613204  7C 05 07 34 */	extsh r5, r0
/* 80613208  7F A3 07 34 */	extsh r3, r29
/* 8061320C  7C 04 18 00 */	cmpw r4, r3
/* 80613210  40 80 00 40 */	bge lbl_80613250
/* 80613214  7C 03 00 D0 */	neg r0, r3
/* 80613218  7C 00 07 34 */	extsh r0, r0
/* 8061321C  7C 04 00 00 */	cmpw r4, r0
/* 80613220  40 81 00 30 */	ble lbl_80613250
/* 80613224  7C 05 18 00 */	cmpw r5, r3
/* 80613228  40 80 00 28 */	bge lbl_80613250
/* 8061322C  7C 05 00 00 */	cmpw r5, r0
/* 80613230  40 81 00 20 */	ble lbl_80613250
/* 80613234  7F E3 FB 78 */	mr r3, r31
/* 80613238  7F C4 F3 78 */	mr r4, r30
/* 8061323C  4B A0 9B C1 */	bl fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80613240  2C 03 00 00 */	cmpwi r3, 0
/* 80613244  40 82 00 0C */	bne lbl_80613250
/* 80613248  38 60 00 01 */	li r3, 1
/* 8061324C  48 00 00 08 */	b lbl_80613254
lbl_80613250:
/* 80613250  38 60 00 00 */	li r3, 0
lbl_80613254:
/* 80613254  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 80613258  39 61 00 18 */	addi r11, r1, 0x18
/* 8061325C  4B D4 EF CD */	bl _restgpr_29
/* 80613260  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80613264  7C 08 03 A6 */	mtlr r0
/* 80613268  38 21 00 20 */	addi r1, r1, 0x20
/* 8061326C  4E 80 00 20 */	blr 

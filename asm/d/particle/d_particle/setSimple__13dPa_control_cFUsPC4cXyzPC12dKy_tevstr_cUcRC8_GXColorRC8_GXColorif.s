lbl_8004D1B8:
/* 8004D1B8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8004D1BC  7C 08 02 A6 */	mflr r0
/* 8004D1C0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8004D1C4  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 8004D1C8  39 61 00 28 */	addi r11, r1, 0x28
/* 8004D1CC  48 31 50 05 */	bl _savegpr_26
/* 8004D1D0  7C BA 2B 78 */	mr r26, r5
/* 8004D1D4  7C DB 33 78 */	mr r27, r6
/* 8004D1D8  7C FC 3B 78 */	mr r28, r7
/* 8004D1DC  7D 1D 43 78 */	mr r29, r8
/* 8004D1E0  7D 3E 4B 78 */	mr r30, r9
/* 8004D1E4  7D 5F 53 78 */	mr r31, r10
/* 8004D1E8  FF E0 08 90 */	fmr f31, f1
/* 8004D1EC  48 00 00 51 */	bl getSimple__13dPa_control_cFUs
/* 8004D1F0  28 03 00 00 */	cmplwi r3, 0
/* 8004D1F4  40 82 00 0C */	bne lbl_8004D200
/* 8004D1F8  38 60 00 00 */	li r3, 0
/* 8004D1FC  48 00 00 24 */	b lbl_8004D220
lbl_8004D200:
/* 8004D200  7F 44 D3 78 */	mr r4, r26
/* 8004D204  7F 65 DB 78 */	mr r5, r27
/* 8004D208  7F 86 E3 78 */	mr r6, r28
/* 8004D20C  7F A7 EB 78 */	mr r7, r29
/* 8004D210  7F C8 F3 78 */	mr r8, r30
/* 8004D214  7F E9 FB 78 */	mr r9, r31
/* 8004D218  FC 20 F8 90 */	fmr f1, f31
/* 8004D21C  4B FF DF 4D */	bl set__19dPa_simpleEcallBackFPC4cXyzPC12dKy_tevstr_cUcRC8_GXColorRC8_GXColorif
lbl_8004D220:
/* 8004D220  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 8004D224  39 61 00 28 */	addi r11, r1, 0x28
/* 8004D228  48 31 4F F5 */	bl _restgpr_26
/* 8004D22C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8004D230  7C 08 03 A6 */	mtlr r0
/* 8004D234  38 21 00 30 */	addi r1, r1, 0x30
/* 8004D238  4E 80 00 20 */	blr 

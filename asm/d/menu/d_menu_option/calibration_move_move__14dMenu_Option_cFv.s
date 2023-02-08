lbl_801E53E0:
/* 801E53E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801E53E4  7C 08 02 A6 */	mflr r0
/* 801E53E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E53EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801E53F0  7C 7F 1B 78 */	mr r31, r3
/* 801E53F4  80 63 00 3C */	lwz r3, 0x3c(r3)
/* 801E53F8  88 03 00 FE */	lbz r0, 0xfe(r3)
/* 801E53FC  28 00 00 00 */	cmplwi r0, 0
/* 801E5400  40 82 00 14 */	bne lbl_801E5414
/* 801E5404  48 01 7A 05 */	bl dMw_fade_out__5dMw_cFv
/* 801E5408  38 00 00 03 */	li r0, 3
/* 801E540C  98 1F 03 F4 */	stb r0, 0x3f4(r31)
/* 801E5410  48 00 00 10 */	b lbl_801E5420
lbl_801E5414:
/* 801E5414  28 00 00 01 */	cmplwi r0, 1
/* 801E5418  40 82 00 08 */	bne lbl_801E5420
/* 801E541C  4B FC 99 91 */	bl _move__19dMenu_Calibration_cFv
lbl_801E5420:
/* 801E5420  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801E5424  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801E5428  7C 08 03 A6 */	mtlr r0
/* 801E542C  38 21 00 10 */	addi r1, r1, 0x10
/* 801E5430  4E 80 00 20 */	blr 

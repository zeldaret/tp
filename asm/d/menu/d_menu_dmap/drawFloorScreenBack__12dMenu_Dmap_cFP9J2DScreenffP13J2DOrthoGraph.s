lbl_801BD3B8:
/* 801BD3B8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801BD3BC  7C 08 02 A6 */	mflr r0
/* 801BD3C0  90 01 00 44 */	stw r0, 0x44(r1)
/* 801BD3C4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 801BD3C8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 801BD3CC  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 801BD3D0  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 801BD3D4  39 61 00 20 */	addi r11, r1, 0x20
/* 801BD3D8  48 1A 4D FD */	bl _savegpr_27
/* 801BD3DC  7C 7D 1B 78 */	mr r29, r3
/* 801BD3E0  7C 9E 23 78 */	mr r30, r4
/* 801BD3E4  FF C0 08 90 */	fmr f30, f1
/* 801BD3E8  FF E0 10 90 */	fmr f31, f2
/* 801BD3EC  7C BF 2B 78 */	mr r31, r5
/* 801BD3F0  3B 60 00 00 */	li r27, 0
/* 801BD3F4  3B 80 00 00 */	li r28, 0
/* 801BD3F8  48 00 00 4C */	b lbl_801BD444
lbl_801BD3FC:
/* 801BD3FC  7F A3 EB 78 */	mr r3, r29
/* 801BD400  4B FF FD D5 */	bl getCurFloorPos__12dMenu_Dmap_cFv
/* 801BD404  7C 60 07 74 */	extsb r0, r3
/* 801BD408  7C 1B 00 00 */	cmpw r27, r0
/* 801BD40C  40 82 00 24 */	bne lbl_801BD430
/* 801BD410  C0 22 A5 E8 */	lfs f1, lit_3962(r2)
/* 801BD414  7C 7D E2 14 */	add r3, r29, r28
/* 801BD418  C0 03 01 14 */	lfs f0, 0x114(r3)
/* 801BD41C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801BD420  40 82 00 10 */	bne lbl_801BD430
/* 801BD424  80 63 00 14 */	lwz r3, 0x14(r3)
/* 801BD428  48 09 81 E1 */	bl hide__13CPaneMgrAlphaFv
/* 801BD42C  48 00 00 10 */	b lbl_801BD43C
lbl_801BD430:
/* 801BD430  38 1C 00 14 */	addi r0, r28, 0x14
/* 801BD434  7C 7D 00 2E */	lwzx r3, r29, r0
/* 801BD438  48 09 81 91 */	bl show__13CPaneMgrAlphaFv
lbl_801BD43C:
/* 801BD43C  3B 7B 00 01 */	addi r27, r27, 1
/* 801BD440  3B 9C 00 04 */	addi r28, r28, 4
lbl_801BD444:
/* 801BD444  88 7D 01 71 */	lbz r3, 0x171(r29)
/* 801BD448  88 1D 01 70 */	lbz r0, 0x170(r29)
/* 801BD44C  7C 63 00 50 */	subf r3, r3, r0
/* 801BD450  38 03 00 01 */	addi r0, r3, 1
/* 801BD454  7C 00 07 74 */	extsb r0, r0
/* 801BD458  7C 1B 00 00 */	cmpw r27, r0
/* 801BD45C  41 80 FF A0 */	blt lbl_801BD3FC
/* 801BD460  7F A3 EB 78 */	mr r3, r29
/* 801BD464  4B FF FD 71 */	bl getCurFloorPos__12dMenu_Dmap_cFv
/* 801BD468  7C 64 07 74 */	extsb r4, r3
/* 801BD46C  88 1D 01 71 */	lbz r0, 0x171(r29)
/* 801BD470  7C 03 07 74 */	extsb r3, r0
/* 801BD474  88 1D 01 72 */	lbz r0, 0x172(r29)
/* 801BD478  7C 00 07 74 */	extsb r0, r0
/* 801BD47C  7C 03 00 50 */	subf r0, r3, r0
/* 801BD480  7C 00 20 00 */	cmpw r0, r4
/* 801BD484  40 82 00 10 */	bne lbl_801BD494
/* 801BD488  80 7D 00 74 */	lwz r3, 0x74(r29)
/* 801BD48C  48 09 81 7D */	bl hide__13CPaneMgrAlphaFv
/* 801BD490  48 00 00 0C */	b lbl_801BD49C
lbl_801BD494:
/* 801BD494  80 7D 00 74 */	lwz r3, 0x74(r29)
/* 801BD498  48 09 81 31 */	bl show__13CPaneMgrAlphaFv
lbl_801BD49C:
/* 801BD49C  88 1D 01 73 */	lbz r0, 0x173(r29)
/* 801BD4A0  7C 00 07 74 */	extsb r0, r0
/* 801BD4A4  2C 00 FF 9D */	cmpwi r0, -99
/* 801BD4A8  41 82 00 40 */	beq lbl_801BD4E8
/* 801BD4AC  7F A3 EB 78 */	mr r3, r29
/* 801BD4B0  4B FF FD 25 */	bl getCurFloorPos__12dMenu_Dmap_cFv
/* 801BD4B4  7C 64 07 74 */	extsb r4, r3
/* 801BD4B8  88 1D 01 71 */	lbz r0, 0x171(r29)
/* 801BD4BC  7C 03 07 74 */	extsb r3, r0
/* 801BD4C0  88 1D 01 73 */	lbz r0, 0x173(r29)
/* 801BD4C4  7C 00 07 74 */	extsb r0, r0
/* 801BD4C8  7C 03 00 50 */	subf r0, r3, r0
/* 801BD4CC  7C 00 20 00 */	cmpw r0, r4
/* 801BD4D0  40 82 00 10 */	bne lbl_801BD4E0
/* 801BD4D4  80 7D 00 78 */	lwz r3, 0x78(r29)
/* 801BD4D8  48 09 81 31 */	bl hide__13CPaneMgrAlphaFv
/* 801BD4DC  48 00 00 0C */	b lbl_801BD4E8
lbl_801BD4E0:
/* 801BD4E0  80 7D 00 78 */	lwz r3, 0x78(r29)
/* 801BD4E4  48 09 80 E5 */	bl show__13CPaneMgrAlphaFv
lbl_801BD4E8:
/* 801BD4E8  7F C3 F3 78 */	mr r3, r30
/* 801BD4EC  FC 20 F0 90 */	fmr f1, f30
/* 801BD4F0  FC 40 F8 90 */	fmr f2, f31
/* 801BD4F4  7F E4 FB 78 */	mr r4, r31
/* 801BD4F8  48 13 B9 DD */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 801BD4FC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 801BD500  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 801BD504  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 801BD508  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 801BD50C  39 61 00 20 */	addi r11, r1, 0x20
/* 801BD510  48 1A 4D 11 */	bl _restgpr_27
/* 801BD514  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801BD518  7C 08 03 A6 */	mtlr r0
/* 801BD51C  38 21 00 40 */	addi r1, r1, 0x40
/* 801BD520  4E 80 00 20 */	blr 

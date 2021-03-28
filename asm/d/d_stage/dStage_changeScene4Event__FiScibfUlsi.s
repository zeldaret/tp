lbl_800272F0:
/* 800272F0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800272F4  7C 08 02 A6 */	mflr r0
/* 800272F8  90 01 00 54 */	stw r0, 0x54(r1)
/* 800272FC  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80027300  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80027304  39 61 00 40 */	addi r11, r1, 0x40
/* 80027308  48 33 AE C1 */	bl _savegpr_24
/* 8002730C  7C 78 1B 78 */	mr r24, r3
/* 80027310  7C BD 2B 78 */	mr r29, r5
/* 80027314  7C D9 33 78 */	mr r25, r6
/* 80027318  FF E0 08 90 */	fmr f31, f1
/* 8002731C  7C FA 3B 78 */	mr r26, r7
/* 80027320  7D 1B 43 78 */	mr r27, r8
/* 80027324  7D 3C 4B 78 */	mr r28, r9
/* 80027328  7C 84 07 74 */	extsb r4, r4
/* 8002732C  2C 04 FF FF */	cmpwi r4, -1
/* 80027330  40 82 00 20 */	bne lbl_80027350
/* 80027334  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80027338  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002733C  85 83 4E 20 */	lwzu r12, 0x4e20(r3)
/* 80027340  81 8C 00 C4 */	lwz r12, 0xc4(r12)
/* 80027344  7D 89 03 A6 */	mtctr r12
/* 80027348  4E 80 04 21 */	bctrl 
/* 8002734C  48 00 00 24 */	b lbl_80027370
lbl_80027350:
/* 80027350  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80027354  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80027358  38 63 4E C4 */	addi r3, r3, 0x4ec4
/* 8002735C  4B FF D0 29 */	bl getStatusRoomDt__20dStage_roomControl_cFi
/* 80027360  81 83 00 00 */	lwz r12, 0(r3)
/* 80027364  81 8C 00 C4 */	lwz r12, 0xc4(r12)
/* 80027368  7D 89 03 A6 */	mtctr r12
/* 8002736C  4E 80 04 21 */	bctrl 
lbl_80027370:
/* 80027370  28 03 00 00 */	cmplwi r3, 0
/* 80027374  40 82 00 28 */	bne lbl_8002739C
/* 80027378  3C 60 80 38 */	lis r3, d_d_stage__stringBase0@ha
/* 8002737C  38 83 8A 50 */	addi r4, r3, d_d_stage__stringBase0@l
/* 80027380  38 64 01 3F */	addi r3, r4, 0x13f
/* 80027384  38 84 01 63 */	addi r4, r4, 0x163
/* 80027388  38 A0 13 01 */	li r5, 0x1301
/* 8002738C  4C C6 31 82 */	crclr 6
/* 80027390  4B FD F8 7D */	bl OSReport_Error
/* 80027394  38 60 00 00 */	li r3, 0
/* 80027398  48 00 00 F8 */	b lbl_80027490
lbl_8002739C:
/* 8002739C  80 63 00 04 */	lwz r3, 4(r3)
/* 800273A0  1C 18 00 0D */	mulli r0, r24, 0xd
/* 800273A4  7F C3 02 14 */	add r30, r3, r0
/* 800273A8  2C 1D FF FF */	cmpwi r29, -1
/* 800273AC  40 82 00 0C */	bne lbl_800273B8
/* 800273B0  8B FE 00 0C */	lbz r31, 0xc(r30)
/* 800273B4  48 00 00 08 */	b lbl_800273BC
lbl_800273B8:
/* 800273B8  7F BF EB 78 */	mr r31, r29
lbl_800273BC:
/* 800273BC  2C 1D FF FF */	cmpwi r29, -1
/* 800273C0  40 82 00 10 */	bne lbl_800273D0
/* 800273C4  88 1E 00 0B */	lbz r0, 0xb(r30)
/* 800273C8  54 18 DF 7E */	rlwinm r24, r0, 0x1b, 0x1d, 0x1f
/* 800273CC  48 00 00 08 */	b lbl_800273D4
lbl_800273D0:
/* 800273D0  3B 00 00 00 */	li r24, 0
lbl_800273D4:
/* 800273D4  88 9E 00 0B */	lbz r4, 0xb(r30)
/* 800273D8  54 83 07 3E */	clrlwi r3, r4, 0x1c
/* 800273DC  7C 7D 1B 78 */	mr r29, r3
/* 800273E0  88 1E 00 0A */	lbz r0, 0xa(r30)
/* 800273E4  54 84 06 F6 */	rlwinm r4, r4, 0, 0x1b, 0x1b
/* 800273E8  50 04 E7 3E */	rlwimi r4, r0, 0x1c, 0x1c, 0x1f
/* 800273EC  2C 03 00 0F */	cmpwi r3, 0xf
/* 800273F0  41 80 00 08 */	blt lbl_800273F8
/* 800273F4  3B A0 FF FF */	li r29, -1
lbl_800273F8:
/* 800273F8  2C 1D FF FF */	cmpwi r29, -1
/* 800273FC  40 82 00 10 */	bne lbl_8002740C
/* 80027400  2C 1C FF FF */	cmpwi r28, -1
/* 80027404  41 82 00 08 */	beq lbl_8002740C
/* 80027408  7F 9D E3 78 */	mr r29, r28
lbl_8002740C:
/* 8002740C  2C 04 00 1F */	cmpwi r4, 0x1f
/* 80027410  40 80 00 2C */	bge lbl_8002743C
/* 80027414  C0 42 82 94 */	lfs f2, lit_5315(r2)
/* 80027418  C8 22 82 98 */	lfd f1, lit_5317(r2)
/* 8002741C  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80027420  90 01 00 14 */	stw r0, 0x14(r1)
/* 80027424  3C 00 43 30 */	lis r0, 0x4330
/* 80027428  90 01 00 10 */	stw r0, 0x10(r1)
/* 8002742C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80027430  EC 00 08 28 */	fsubs f0, f0, f1
/* 80027434  EC 22 00 32 */	fmuls f1, f2, f0
/* 80027438  48 18 17 21 */	bl dKy_set_nexttime__Ff
lbl_8002743C:
/* 8002743C  57 23 06 3E */	clrlwi r3, r25, 0x18
/* 80027440  30 03 FF FF */	addic r0, r3, -1
/* 80027444  7C 00 19 10 */	subfe r0, r0, r3
/* 80027448  90 01 00 08 */	stw r0, 8(r1)
/* 8002744C  93 01 00 0C */	stw r24, 0xc(r1)
/* 80027450  7F C3 F3 78 */	mr r3, r30
/* 80027454  88 9E 00 08 */	lbz r4, 8(r30)
/* 80027458  88 1E 00 09 */	lbz r0, 9(r30)
/* 8002745C  7C 05 07 74 */	extsb r5, r0
/* 80027460  7F A6 07 74 */	extsb r6, r29
/* 80027464  FC 20 F8 90 */	fmr f1, f31
/* 80027468  7F 47 D3 78 */	mr r7, r26
/* 8002746C  39 00 00 01 */	li r8, 1
/* 80027470  38 1F FF F1 */	addi r0, r31, -15
/* 80027474  30 00 FF FF */	addic r0, r0, -1
/* 80027478  7C 00 01 10 */	subfe r0, r0, r0
/* 8002747C  7F E0 00 78 */	andc r0, r31, r0
/* 80027480  7C 09 07 74 */	extsb r9, r0
/* 80027484  7F 6A DB 78 */	mr r10, r27
/* 80027488  48 00 5E 75 */	bl dComIfGp_setNextStage__FPCcsScScfUliScsii
/* 8002748C  38 60 00 01 */	li r3, 1
lbl_80027490:
/* 80027490  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80027494  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80027498  39 61 00 40 */	addi r11, r1, 0x40
/* 8002749C  48 33 AD 79 */	bl _restgpr_24
/* 800274A0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800274A4  7C 08 03 A6 */	mtlr r0
/* 800274A8  38 21 00 50 */	addi r1, r1, 0x50
/* 800274AC  4E 80 00 20 */	blr 

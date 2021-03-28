lbl_809FA88C:
/* 809FA88C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 809FA890  7C 08 02 A6 */	mflr r0
/* 809FA894  90 01 00 54 */	stw r0, 0x54(r1)
/* 809FA898  39 61 00 50 */	addi r11, r1, 0x50
/* 809FA89C  4B 96 79 34 */	b _savegpr_26
/* 809FA8A0  7C 7C 1B 78 */	mr r28, r3
/* 809FA8A4  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 809FA8A8  54 00 01 46 */	rlwinm r0, r0, 0, 5, 3
/* 809FA8AC  90 03 04 9C */	stw r0, 0x49c(r3)
/* 809FA8B0  3B 60 00 00 */	li r27, 0
/* 809FA8B4  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 809FA8B8  28 00 00 00 */	cmplwi r0, 0
/* 809FA8BC  40 82 00 1C */	bne lbl_809FA8D8
/* 809FA8C0  4B 63 51 94 */	b dComIfGs_wolfeye_effect_check__Fv
/* 809FA8C4  2C 03 00 00 */	cmpwi r3, 0
/* 809FA8C8  40 82 00 14 */	bne lbl_809FA8DC
/* 809FA8CC  88 1C 0A 89 */	lbz r0, 0xa89(r28)
/* 809FA8D0  28 00 00 00 */	cmplwi r0, 0
/* 809FA8D4  41 82 00 08 */	beq lbl_809FA8DC
lbl_809FA8D8:
/* 809FA8D8  3B 60 00 01 */	li r27, 1
lbl_809FA8DC:
/* 809FA8DC  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 809FA8E0  41 82 00 10 */	beq lbl_809FA8F0
/* 809FA8E4  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 809FA8E8  64 00 08 00 */	oris r0, r0, 0x800
/* 809FA8EC  90 1C 04 9C */	stw r0, 0x49c(r28)
lbl_809FA8F0:
/* 809FA8F0  3B 60 00 00 */	li r27, 0
/* 809FA8F4  88 1C 0E 25 */	lbz r0, 0xe25(r28)
/* 809FA8F8  28 00 00 00 */	cmplwi r0, 0
/* 809FA8FC  40 82 00 1C */	bne lbl_809FA918
/* 809FA900  4B 63 51 54 */	b dComIfGs_wolfeye_effect_check__Fv
/* 809FA904  2C 03 00 00 */	cmpwi r3, 0
/* 809FA908  40 82 00 14 */	bne lbl_809FA91C
/* 809FA90C  88 1C 0A 89 */	lbz r0, 0xa89(r28)
/* 809FA910  28 00 00 00 */	cmplwi r0, 0
/* 809FA914  41 82 00 08 */	beq lbl_809FA91C
lbl_809FA918:
/* 809FA918  3B 60 00 01 */	li r27, 1
lbl_809FA91C:
/* 809FA91C  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 809FA920  40 82 00 10 */	bne lbl_809FA930
/* 809FA924  88 1C 0E 2B */	lbz r0, 0xe2b(r28)
/* 809FA928  28 00 00 00 */	cmplwi r0, 0
/* 809FA92C  41 82 00 0C */	beq lbl_809FA938
lbl_809FA930:
/* 809FA930  38 00 00 00 */	li r0, 0
/* 809FA934  90 1C 05 5C */	stw r0, 0x55c(r28)
lbl_809FA938:
/* 809FA938  3B A0 00 00 */	li r29, 0
/* 809FA93C  3B 60 00 00 */	li r27, 0
/* 809FA940  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809FA944  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809FA948  3B E3 0F 38 */	addi r31, r3, 0xf38
lbl_809FA94C:
/* 809FA94C  7F DC DA 14 */	add r30, r28, r27
/* 809FA950  80 1E 11 10 */	lwz r0, 0x1110(r30)
/* 809FA954  28 00 00 00 */	cmplwi r0, 0
/* 809FA958  41 82 00 18 */	beq lbl_809FA970
/* 809FA95C  80 7E 12 80 */	lwz r3, 0x1280(r30)
/* 809FA960  30 03 FF FF */	addic r0, r3, -1
/* 809FA964  7C 00 19 10 */	subfe r0, r0, r3
/* 809FA968  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 809FA96C  48 00 00 08 */	b lbl_809FA974
lbl_809FA970:
/* 809FA970  38 00 00 00 */	li r0, 0
lbl_809FA974:
/* 809FA974  2C 00 00 00 */	cmpwi r0, 0
/* 809FA978  41 82 01 08 */	beq lbl_809FAA80
/* 809FA97C  C0 1E 12 78 */	lfs f0, 0x1278(r30)
/* 809FA980  FC 00 02 10 */	fabs f0, f0
/* 809FA984  FC 20 00 18 */	frsp f1, f0
/* 809FA988  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha
/* 809FA98C  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)
/* 809FA990  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809FA994  7C 00 00 26 */	mfcr r0
/* 809FA998  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 809FA99C  40 82 00 E4 */	bne lbl_809FAA80
/* 809FA9A0  38 61 00 14 */	addi r3, r1, 0x14
/* 809FA9A4  3B 5E 11 10 */	addi r26, r30, 0x1110
/* 809FA9A8  7F 44 D3 78 */	mr r4, r26
/* 809FA9AC  48 00 59 AD */	bl getOld__18daNpc_HanjoStone_cFv
/* 809FA9B0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 809FA9B4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 809FA9B8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 809FA9BC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 809FA9C0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 809FA9C4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 809FA9C8  38 61 00 08 */	addi r3, r1, 8
/* 809FA9CC  7F 44 D3 78 */	mr r4, r26
/* 809FA9D0  48 00 59 6D */	bl getPos__18daNpc_HanjoStone_cFv
/* 809FA9D4  C0 01 00 08 */	lfs f0, 8(r1)
/* 809FA9D8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 809FA9DC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 809FA9E0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 809FA9E4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 809FA9E8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 809FA9EC  38 7C 0A E0 */	addi r3, r28, 0xae0
/* 809FA9F0  38 81 00 2C */	addi r4, r1, 0x2c
/* 809FA9F4  38 A1 00 20 */	addi r5, r1, 0x20
/* 809FA9F8  7F 86 E3 78 */	mr r6, r28
/* 809FA9FC  4B 67 D3 68 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 809FAA00  7F E3 FB 78 */	mr r3, r31
/* 809FAA04  38 9C 0A E0 */	addi r4, r28, 0xae0
/* 809FAA08  4B 67 99 AC */	b LineCross__4cBgSFP11cBgS_LinChk
/* 809FAA0C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809FAA10  40 82 00 14 */	bne lbl_809FAA24
/* 809FAA14  38 7A 00 30 */	addi r3, r26, 0x30
/* 809FAA18  4B 68 9C 40 */	b ChkCoHit__12dCcD_GObjInfFv
/* 809FAA1C  28 03 00 00 */	cmplwi r3, 0
/* 809FAA20  41 82 00 60 */	beq lbl_809FAA80
lbl_809FAA24:
/* 809FAA24  3C 60 80 A0 */	lis r3, lit_4141@ha
/* 809FAA28  C0 23 06 FC */	lfs f1, lit_4141@l(r3)
/* 809FAA2C  D0 3E 11 20 */	stfs f1, 0x1120(r30)
/* 809FAA30  D0 3E 11 24 */	stfs f1, 0x1124(r30)
/* 809FAA34  D0 3E 11 28 */	stfs f1, 0x1128(r30)
/* 809FAA38  C0 1E 11 20 */	lfs f0, 0x1120(r30)
/* 809FAA3C  D0 1E 11 14 */	stfs f0, 0x1114(r30)
/* 809FAA40  C0 1E 11 24 */	lfs f0, 0x1124(r30)
/* 809FAA44  D0 1E 11 18 */	stfs f0, 0x1118(r30)
/* 809FAA48  C0 1E 11 28 */	lfs f0, 0x1128(r30)
/* 809FAA4C  D0 1E 11 1C */	stfs f0, 0x111c(r30)
/* 809FAA50  D0 3E 11 2C */	stfs f1, 0x112c(r30)
/* 809FAA54  D0 3E 11 30 */	stfs f1, 0x1130(r30)
/* 809FAA58  D0 3E 11 34 */	stfs f1, 0x1134(r30)
/* 809FAA5C  38 00 00 00 */	li r0, 0
/* 809FAA60  B0 1E 11 38 */	sth r0, 0x1138(r30)
/* 809FAA64  B0 1E 11 3A */	sth r0, 0x113a(r30)
/* 809FAA68  B0 1E 11 3C */	sth r0, 0x113c(r30)
/* 809FAA6C  D0 3E 12 78 */	stfs f1, 0x1278(r30)
/* 809FAA70  3C 60 80 A0 */	lis r3, lit_4212@ha
/* 809FAA74  C0 03 07 04 */	lfs f0, lit_4212@l(r3)
/* 809FAA78  D0 1E 12 7C */	stfs f0, 0x127c(r30)
/* 809FAA7C  90 1E 12 80 */	stw r0, 0x1280(r30)
lbl_809FAA80:
/* 809FAA80  3B BD 00 01 */	addi r29, r29, 1
/* 809FAA84  2C 1D 00 04 */	cmpwi r29, 4
/* 809FAA88  3B 7B 01 74 */	addi r27, r27, 0x174
/* 809FAA8C  41 80 FE C0 */	blt lbl_809FA94C
/* 809FAA90  88 1C 17 21 */	lbz r0, 0x1721(r28)
/* 809FAA94  28 00 00 00 */	cmplwi r0, 0
/* 809FAA98  41 82 00 0C */	beq lbl_809FAAA4
/* 809FAA9C  7F 83 E3 78 */	mr r3, r28
/* 809FAAA0  48 00 11 9D */	bl dive__13daNpc_Hanjo_cFv
lbl_809FAAA4:
/* 809FAAA4  39 61 00 50 */	addi r11, r1, 0x50
/* 809FAAA8  4B 96 77 74 */	b _restgpr_26
/* 809FAAAC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 809FAAB0  7C 08 03 A6 */	mtlr r0
/* 809FAAB4  38 21 00 50 */	addi r1, r1, 0x50
/* 809FAAB8  4E 80 00 20 */	blr 

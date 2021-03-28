lbl_80CCEE30:
/* 80CCEE30  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80CCEE34  7C 08 02 A6 */	mflr r0
/* 80CCEE38  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CCEE3C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80CCEE40  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80CCEE44  39 61 00 30 */	addi r11, r1, 0x30
/* 80CCEE48  4B 69 33 84 */	b _savegpr_25
/* 80CCEE4C  7C 7D 1B 78 */	mr r29, r3
/* 80CCEE50  7C 9E 23 78 */	mr r30, r4
/* 80CCEE54  3B E0 00 00 */	li r31, 0
/* 80CCEE58  3C 60 80 CD */	lis r3, lit_4636@ha
/* 80CCEE5C  C3 E3 5D CC */	lfs f31, lit_4636@l(r3)
/* 80CCEE60  38 00 00 00 */	li r0, 0
/* 80CCEE64  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha
/* 80CCEE68  90 03 0F DC */	stw r0, mFindCount__8daNpcT_c@l(r3)
/* 80CCEE6C  3C 60 80 CD */	lis r3, srchSekizoa__15daObj_Sekizoa_cFPvPv@ha
/* 80CCEE70  38 63 ED 94 */	addi r3, r3, srchSekizoa__15daObj_Sekizoa_cFPvPv@l
/* 80CCEE74  7F A4 EB 78 */	mr r4, r29
/* 80CCEE78  4B 34 A9 80 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80CCEE7C  3B 20 00 00 */	li r25, 0
/* 80CCEE80  3B 80 00 00 */	li r28, 0
/* 80CCEE84  3C 60 80 42 */	lis r3, mFindActorPtrs__8daNpcT_c@ha
/* 80CCEE88  3B 43 57 08 */	addi r26, r3, mFindActorPtrs__8daNpcT_c@l
/* 80CCEE8C  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha
/* 80CCEE90  3B 63 0F DC */	addi r27, r3, mFindCount__8daNpcT_c@l
/* 80CCEE94  48 00 00 E0 */	b lbl_80CCEF74
lbl_80CCEE98:
/* 80CCEE98  7C 9A E0 2E */	lwzx r4, r26, r28
/* 80CCEE9C  80 04 00 B0 */	lwz r0, 0xb0(r4)
/* 80CCEEA0  54 03 27 3E */	srwi r3, r0, 0x1c
/* 80CCEEA4  88 04 04 99 */	lbz r0, 0x499(r4)
/* 80CCEEA8  7C 00 07 74 */	extsb r0, r0
/* 80CCEEAC  2C 00 00 01 */	cmpwi r0, 1
/* 80CCEEB0  41 82 00 58 */	beq lbl_80CCEF08
/* 80CCEEB4  40 80 00 84 */	bge lbl_80CCEF38
/* 80CCEEB8  2C 00 00 00 */	cmpwi r0, 0
/* 80CCEEBC  40 80 00 08 */	bge lbl_80CCEEC4
/* 80CCEEC0  48 00 00 78 */	b lbl_80CCEF38
lbl_80CCEEC4:
/* 80CCEEC4  2C 03 00 02 */	cmpwi r3, 2
/* 80CCEEC8  41 82 00 28 */	beq lbl_80CCEEF0
/* 80CCEECC  40 80 00 10 */	bge lbl_80CCEEDC
/* 80CCEED0  2C 03 00 01 */	cmpwi r3, 1
/* 80CCEED4  40 80 00 14 */	bge lbl_80CCEEE8
/* 80CCEED8  48 00 00 28 */	b lbl_80CCEF00
lbl_80CCEEDC:
/* 80CCEEDC  2C 03 00 04 */	cmpwi r3, 4
/* 80CCEEE0  40 80 00 20 */	bge lbl_80CCEF00
/* 80CCEEE4  48 00 00 14 */	b lbl_80CCEEF8
lbl_80CCEEE8:
/* 80CCEEE8  38 00 00 02 */	li r0, 2
/* 80CCEEEC  48 00 00 50 */	b lbl_80CCEF3C
lbl_80CCEEF0:
/* 80CCEEF0  38 00 00 04 */	li r0, 4
/* 80CCEEF4  48 00 00 48 */	b lbl_80CCEF3C
lbl_80CCEEF8:
/* 80CCEEF8  38 00 00 06 */	li r0, 6
/* 80CCEEFC  48 00 00 40 */	b lbl_80CCEF3C
lbl_80CCEF00:
/* 80CCEF00  38 00 00 00 */	li r0, 0
/* 80CCEF04  48 00 00 38 */	b lbl_80CCEF3C
lbl_80CCEF08:
/* 80CCEF08  2C 03 00 02 */	cmpwi r3, 2
/* 80CCEF0C  41 82 00 1C */	beq lbl_80CCEF28
/* 80CCEF10  40 80 00 20 */	bge lbl_80CCEF30
/* 80CCEF14  2C 03 00 01 */	cmpwi r3, 1
/* 80CCEF18  40 80 00 08 */	bge lbl_80CCEF20
/* 80CCEF1C  48 00 00 14 */	b lbl_80CCEF30
lbl_80CCEF20:
/* 80CCEF20  38 00 00 03 */	li r0, 3
/* 80CCEF24  48 00 00 18 */	b lbl_80CCEF3C
lbl_80CCEF28:
/* 80CCEF28  38 00 00 05 */	li r0, 5
/* 80CCEF2C  48 00 00 10 */	b lbl_80CCEF3C
lbl_80CCEF30:
/* 80CCEF30  38 00 00 01 */	li r0, 1
/* 80CCEF34  48 00 00 08 */	b lbl_80CCEF3C
lbl_80CCEF38:
/* 80CCEF38  38 00 00 00 */	li r0, 0
lbl_80CCEF3C:
/* 80CCEF3C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80CCEF40  7C 1E 00 00 */	cmpw r30, r0
/* 80CCEF44  40 82 00 28 */	bne lbl_80CCEF6C
/* 80CCEF48  7F A3 EB 78 */	mr r3, r29
/* 80CCEF4C  4B 34 B8 94 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80CCEF50  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80CCEF54  40 80 00 18 */	bge lbl_80CCEF6C
/* 80CCEF58  7F A3 EB 78 */	mr r3, r29
/* 80CCEF5C  7C 9A E0 2E */	lwzx r4, r26, r28
/* 80CCEF60  4B 34 B8 80 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80CCEF64  FF E0 08 90 */	fmr f31, f1
/* 80CCEF68  7F FA E0 2E */	lwzx r31, r26, r28
lbl_80CCEF6C:
/* 80CCEF6C  3B 39 00 01 */	addi r25, r25, 1
/* 80CCEF70  3B 9C 00 04 */	addi r28, r28, 4
lbl_80CCEF74:
/* 80CCEF74  80 1B 00 00 */	lwz r0, 0(r27)
/* 80CCEF78  7C 19 00 00 */	cmpw r25, r0
/* 80CCEF7C  41 80 FF 1C */	blt lbl_80CCEE98
/* 80CCEF80  7F E3 FB 78 */	mr r3, r31
/* 80CCEF84  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80CCEF88  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80CCEF8C  39 61 00 30 */	addi r11, r1, 0x30
/* 80CCEF90  4B 69 32 88 */	b _restgpr_25
/* 80CCEF94  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CCEF98  7C 08 03 A6 */	mtlr r0
/* 80CCEF9C  38 21 00 40 */	addi r1, r1, 0x40
/* 80CCEFA0  4E 80 00 20 */	blr 

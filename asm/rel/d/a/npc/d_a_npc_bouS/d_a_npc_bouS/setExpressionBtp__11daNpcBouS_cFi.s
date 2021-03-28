lbl_80974514:
/* 80974514  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80974518  7C 08 02 A6 */	mflr r0
/* 8097451C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80974520  39 61 00 20 */	addi r11, r1, 0x20
/* 80974524  4B 9E DC B8 */	b _savegpr_29
/* 80974528  7C 7E 1B 78 */	mr r30, r3
/* 8097452C  7C 9F 23 78 */	mr r31, r4
/* 80974530  1F BF 00 0C */	mulli r29, r31, 0xc
/* 80974534  3C 80 80 98 */	lis r4, l_btpGetParamList@ha
/* 80974538  38 A4 88 D8 */	addi r5, r4, l_btpGetParamList@l
/* 8097453C  7C 85 EA 14 */	add r4, r5, r29
/* 80974540  80 04 00 08 */	lwz r0, 8(r4)
/* 80974544  54 00 10 3A */	slwi r0, r0, 2
/* 80974548  3C 80 80 98 */	lis r4, l_arcNames@ha
/* 8097454C  38 84 89 20 */	addi r4, r4, l_arcNames@l
/* 80974550  7C 84 00 2E */	lwzx r4, r4, r0
/* 80974554  7C A5 E8 2E */	lwzx r5, r5, r29
/* 80974558  4B 7D E6 10 */	b getTexPtrnAnmP__8daNpcF_cFPci
/* 8097455C  7C 64 1B 79 */	or. r4, r3, r3
/* 80974560  3C 60 80 98 */	lis r3, l_btpGetParamList@ha
/* 80974564  38 03 88 D8 */	addi r0, r3, l_btpGetParamList@l
/* 80974568  7C 60 EA 14 */	add r3, r0, r29
/* 8097456C  80 C3 00 04 */	lwz r6, 4(r3)
/* 80974570  80 7E 09 9C */	lwz r3, 0x99c(r30)
/* 80974574  38 00 F5 7F */	li r0, -2689
/* 80974578  7C 60 00 38 */	and r0, r3, r0
/* 8097457C  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 80974580  40 82 00 0C */	bne lbl_8097458C
/* 80974584  38 60 00 01 */	li r3, 1
/* 80974588  48 00 00 54 */	b lbl_809745DC
lbl_8097458C:
/* 8097458C  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80974590  80 63 00 04 */	lwz r3, 4(r3)
/* 80974594  80 A3 00 04 */	lwz r5, 4(r3)
/* 80974598  7F C3 F3 78 */	mr r3, r30
/* 8097459C  3C E0 80 98 */	lis r7, lit_4446@ha
/* 809745A0  C0 27 84 AC */	lfs f1, lit_4446@l(r7)
/* 809745A4  4B 7D E7 20 */	b setBtpAnm__8daNpcF_cFP16J3DAnmTexPatternP12J3DModelDatafi
/* 809745A8  2C 03 00 00 */	cmpwi r3, 0
/* 809745AC  41 82 00 2C */	beq lbl_809745D8
/* 809745B0  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 809745B4  60 00 02 80 */	ori r0, r0, 0x280
/* 809745B8  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 809745BC  2C 1F 00 00 */	cmpwi r31, 0
/* 809745C0  40 82 00 10 */	bne lbl_809745D0
/* 809745C4  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 809745C8  60 00 08 00 */	ori r0, r0, 0x800
/* 809745CC  90 1E 09 9C */	stw r0, 0x99c(r30)
lbl_809745D0:
/* 809745D0  38 60 00 01 */	li r3, 1
/* 809745D4  48 00 00 08 */	b lbl_809745DC
lbl_809745D8:
/* 809745D8  38 60 00 00 */	li r3, 0
lbl_809745DC:
/* 809745DC  39 61 00 20 */	addi r11, r1, 0x20
/* 809745E0  4B 9E DC 48 */	b _restgpr_29
/* 809745E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809745E8  7C 08 03 A6 */	mtlr r0
/* 809745EC  38 21 00 20 */	addi r1, r1, 0x20
/* 809745F0  4E 80 00 20 */	blr 

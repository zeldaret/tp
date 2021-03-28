lbl_80A0F538:
/* 80A0F538  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A0F53C  7C 08 02 A6 */	mflr r0
/* 80A0F540  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A0F544  39 61 00 20 */	addi r11, r1, 0x20
/* 80A0F548  4B 95 2C 94 */	b _savegpr_29
/* 80A0F54C  7C 7E 1B 78 */	mr r30, r3
/* 80A0F550  7C 9F 23 78 */	mr r31, r4
/* 80A0F554  1F BF 00 0C */	mulli r29, r31, 0xc
/* 80A0F558  3C 80 80 A1 */	lis r4, l_btpGetParamList@ha
/* 80A0F55C  38 A4 42 DC */	addi r5, r4, l_btpGetParamList@l
/* 80A0F560  7C 85 EA 14 */	add r4, r5, r29
/* 80A0F564  80 04 00 08 */	lwz r0, 8(r4)
/* 80A0F568  54 00 10 3A */	slwi r0, r0, 2
/* 80A0F56C  3C 80 80 A1 */	lis r4, l_arcNames@ha
/* 80A0F570  38 84 43 84 */	addi r4, r4, l_arcNames@l
/* 80A0F574  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A0F578  7C A5 E8 2E */	lwzx r5, r5, r29
/* 80A0F57C  4B 74 35 EC */	b getTexPtrnAnmP__8daNpcF_cFPci
/* 80A0F580  7C 64 1B 79 */	or. r4, r3, r3
/* 80A0F584  3C 60 80 A1 */	lis r3, l_btpGetParamList@ha
/* 80A0F588  38 03 42 DC */	addi r0, r3, l_btpGetParamList@l
/* 80A0F58C  7C 60 EA 14 */	add r3, r0, r29
/* 80A0F590  80 C3 00 04 */	lwz r6, 4(r3)
/* 80A0F594  80 7E 09 9C */	lwz r3, 0x99c(r30)
/* 80A0F598  38 00 F5 7F */	li r0, -2689
/* 80A0F59C  7C 60 00 38 */	and r0, r3, r0
/* 80A0F5A0  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 80A0F5A4  40 82 00 0C */	bne lbl_80A0F5B0
/* 80A0F5A8  38 60 00 01 */	li r3, 1
/* 80A0F5AC  48 00 00 54 */	b lbl_80A0F600
lbl_80A0F5B0:
/* 80A0F5B0  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80A0F5B4  80 63 00 04 */	lwz r3, 4(r3)
/* 80A0F5B8  80 A3 00 04 */	lwz r5, 4(r3)
/* 80A0F5BC  7F C3 F3 78 */	mr r3, r30
/* 80A0F5C0  3C E0 80 A1 */	lis r7, lit_4414@ha
/* 80A0F5C4  C0 27 3E EC */	lfs f1, lit_4414@l(r7)
/* 80A0F5C8  4B 74 36 FC */	b setBtpAnm__8daNpcF_cFP16J3DAnmTexPatternP12J3DModelDatafi
/* 80A0F5CC  2C 03 00 00 */	cmpwi r3, 0
/* 80A0F5D0  41 82 00 2C */	beq lbl_80A0F5FC
/* 80A0F5D4  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80A0F5D8  60 00 02 80 */	ori r0, r0, 0x280
/* 80A0F5DC  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 80A0F5E0  2C 1F 00 00 */	cmpwi r31, 0
/* 80A0F5E4  40 82 00 10 */	bne lbl_80A0F5F4
/* 80A0F5E8  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80A0F5EC  60 00 08 00 */	ori r0, r0, 0x800
/* 80A0F5F0  90 1E 09 9C */	stw r0, 0x99c(r30)
lbl_80A0F5F4:
/* 80A0F5F4  38 60 00 01 */	li r3, 1
/* 80A0F5F8  48 00 00 08 */	b lbl_80A0F600
lbl_80A0F5FC:
/* 80A0F5FC  38 60 00 00 */	li r3, 0
lbl_80A0F600:
/* 80A0F600  39 61 00 20 */	addi r11, r1, 0x20
/* 80A0F604  4B 95 2C 24 */	b _restgpr_29
/* 80A0F608  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A0F60C  7C 08 03 A6 */	mtlr r0
/* 80A0F610  38 21 00 20 */	addi r1, r1, 0x20
/* 80A0F614  4E 80 00 20 */	blr 

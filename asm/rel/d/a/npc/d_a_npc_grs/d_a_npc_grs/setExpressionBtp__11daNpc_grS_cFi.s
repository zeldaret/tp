lbl_809E5A08:
/* 809E5A08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809E5A0C  7C 08 02 A6 */	mflr r0
/* 809E5A10  90 01 00 24 */	stw r0, 0x24(r1)
/* 809E5A14  39 61 00 20 */	addi r11, r1, 0x20
/* 809E5A18  4B 97 C7 C5 */	bl _savegpr_29
/* 809E5A1C  7C 7D 1B 78 */	mr r29, r3
/* 809E5A20  7C 9E 23 78 */	mr r30, r4
/* 809E5A24  38 80 00 00 */	li r4, 0
/* 809E5A28  3B E0 00 00 */	li r31, 0
/* 809E5A2C  80 A3 09 9C */	lwz r5, 0x99c(r3)
/* 809E5A30  38 00 F5 7F */	li r0, -2689
/* 809E5A34  7C A0 00 38 */	and r0, r5, r0
/* 809E5A38  90 03 09 9C */	stw r0, 0x99c(r3)
/* 809E5A3C  57 C0 18 38 */	slwi r0, r30, 3
/* 809E5A40  3C A0 80 9F */	lis r5, l_btpGetParamList@ha /* 0x809E8034@ha */
/* 809E5A44  38 C5 80 34 */	addi r6, r5, l_btpGetParamList@l /* 0x809E8034@l */
/* 809E5A48  7C A6 00 2E */	lwzx r5, r6, r0
/* 809E5A4C  2C 05 00 00 */	cmpwi r5, 0
/* 809E5A50  41 80 00 24 */	blt lbl_809E5A74
/* 809E5A54  7C 86 02 14 */	add r4, r6, r0
/* 809E5A58  80 04 00 04 */	lwz r0, 4(r4)
/* 809E5A5C  54 00 10 3A */	slwi r0, r0, 2
/* 809E5A60  3C 80 80 9F */	lis r4, l_resNames@ha /* 0x809E8084@ha */
/* 809E5A64  38 84 80 84 */	addi r4, r4, l_resNames@l /* 0x809E8084@l */
/* 809E5A68  7C 84 00 2E */	lwzx r4, r4, r0
/* 809E5A6C  4B 76 D0 FD */	bl getTexPtrnAnmP__8daNpcF_cFPci
/* 809E5A70  7C 64 1B 78 */	mr r4, r3
lbl_809E5A74:
/* 809E5A74  2C 1E 00 01 */	cmpwi r30, 1
/* 809E5A78  41 82 00 28 */	beq lbl_809E5AA0
/* 809E5A7C  40 80 00 10 */	bge lbl_809E5A8C
/* 809E5A80  2C 1E 00 00 */	cmpwi r30, 0
/* 809E5A84  40 80 00 10 */	bge lbl_809E5A94
/* 809E5A88  48 00 00 14 */	b lbl_809E5A9C
lbl_809E5A8C:
/* 809E5A8C  2C 1E 00 03 */	cmpwi r30, 3
/* 809E5A90  40 80 00 0C */	bge lbl_809E5A9C
lbl_809E5A94:
/* 809E5A94  3B E0 00 02 */	li r31, 2
/* 809E5A98  48 00 00 08 */	b lbl_809E5AA0
lbl_809E5A9C:
/* 809E5A9C  38 80 00 00 */	li r4, 0
lbl_809E5AA0:
/* 809E5AA0  28 04 00 00 */	cmplwi r4, 0
/* 809E5AA4  40 82 00 0C */	bne lbl_809E5AB0
/* 809E5AA8  38 60 00 01 */	li r3, 1
/* 809E5AAC  48 00 00 58 */	b lbl_809E5B04
lbl_809E5AB0:
/* 809E5AB0  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 809E5AB4  80 63 00 04 */	lwz r3, 4(r3)
/* 809E5AB8  80 A3 00 04 */	lwz r5, 4(r3)
/* 809E5ABC  7F A3 EB 78 */	mr r3, r29
/* 809E5AC0  3C C0 80 9E */	lis r6, lit_4490@ha /* 0x809E7E48@ha */
/* 809E5AC4  C0 26 7E 48 */	lfs f1, lit_4490@l(r6)  /* 0x809E7E48@l */
/* 809E5AC8  7F E6 FB 78 */	mr r6, r31
/* 809E5ACC  4B 76 D1 F9 */	bl setBtpAnm__8daNpcF_cFP16J3DAnmTexPatternP12J3DModelDatafi
/* 809E5AD0  2C 03 00 00 */	cmpwi r3, 0
/* 809E5AD4  41 82 00 2C */	beq lbl_809E5B00
/* 809E5AD8  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 809E5ADC  60 00 02 80 */	ori r0, r0, 0x280
/* 809E5AE0  90 1D 09 9C */	stw r0, 0x99c(r29)
/* 809E5AE4  2C 1E 00 00 */	cmpwi r30, 0
/* 809E5AE8  40 82 00 10 */	bne lbl_809E5AF8
/* 809E5AEC  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 809E5AF0  60 00 08 00 */	ori r0, r0, 0x800
/* 809E5AF4  90 1D 09 9C */	stw r0, 0x99c(r29)
lbl_809E5AF8:
/* 809E5AF8  38 60 00 01 */	li r3, 1
/* 809E5AFC  48 00 00 08 */	b lbl_809E5B04
lbl_809E5B00:
/* 809E5B00  38 60 00 00 */	li r3, 0
lbl_809E5B04:
/* 809E5B04  39 61 00 20 */	addi r11, r1, 0x20
/* 809E5B08  4B 97 C7 21 */	bl _restgpr_29
/* 809E5B0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809E5B10  7C 08 03 A6 */	mtlr r0
/* 809E5B14  38 21 00 20 */	addi r1, r1, 0x20
/* 809E5B18  4E 80 00 20 */	blr 

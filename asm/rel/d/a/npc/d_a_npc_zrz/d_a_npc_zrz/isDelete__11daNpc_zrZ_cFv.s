lbl_80B961B4:
/* 80B961B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B961B8  7C 08 02 A6 */	mflr r0
/* 80B961BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B961C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B961C4  7C 7F 1B 78 */	mr r31, r3
/* 80B961C8  88 03 14 4E */	lbz r0, 0x144e(r3)
/* 80B961CC  28 00 00 02 */	cmplwi r0, 2
/* 80B961D0  41 82 00 0C */	beq lbl_80B961DC
/* 80B961D4  28 00 00 01 */	cmplwi r0, 1
/* 80B961D8  40 82 00 24 */	bne lbl_80B961FC
lbl_80B961DC:
/* 80B961DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B961E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B961E4  88 9F 14 54 */	lbz r4, 0x1454(r31)
/* 80B961E8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80B961EC  7C 05 07 74 */	extsb r5, r0
/* 80B961F0  4B 49 F1 70 */	b isSwitch__10dSv_info_cCFii
/* 80B961F4  2C 03 00 00 */	cmpwi r3, 0
/* 80B961F8  40 82 00 50 */	bne lbl_80B96248
lbl_80B961FC:
/* 80B961FC  88 1F 14 4E */	lbz r0, 0x144e(r31)
/* 80B96200  28 00 00 03 */	cmplwi r0, 3
/* 80B96204  40 82 00 4C */	bne lbl_80B96250
/* 80B96208  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B9620C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B96210  88 9F 14 54 */	lbz r4, 0x1454(r31)
/* 80B96214  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80B96218  7C 05 07 74 */	extsb r5, r0
/* 80B9621C  4B 49 F1 44 */	b isSwitch__10dSv_info_cCFii
/* 80B96220  2C 03 00 00 */	cmpwi r3, 0
/* 80B96224  41 82 00 24 */	beq lbl_80B96248
/* 80B96228  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B9622C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B96230  88 9F 14 55 */	lbz r4, 0x1455(r31)
/* 80B96234  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80B96238  7C 05 07 74 */	extsb r5, r0
/* 80B9623C  4B 49 F1 24 */	b isSwitch__10dSv_info_cCFii
/* 80B96240  2C 03 00 00 */	cmpwi r3, 0
/* 80B96244  41 82 00 0C */	beq lbl_80B96250
lbl_80B96248:
/* 80B96248  38 60 00 01 */	li r3, 1
/* 80B9624C  48 00 00 08 */	b lbl_80B96254
lbl_80B96250:
/* 80B96250  38 60 00 00 */	li r3, 0
lbl_80B96254:
/* 80B96254  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B96258  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9625C  7C 08 03 A6 */	mtlr r0
/* 80B96260  38 21 00 10 */	addi r1, r1, 0x10
/* 80B96264  4E 80 00 20 */	blr 

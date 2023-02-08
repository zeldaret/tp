lbl_80AFE0BC:
/* 80AFE0BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AFE0C0  7C 08 02 A6 */	mflr r0
/* 80AFE0C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AFE0C8  39 61 00 20 */	addi r11, r1, 0x20
/* 80AFE0CC  4B 86 41 11 */	bl _savegpr_29
/* 80AFE0D0  7C 7E 1B 78 */	mr r30, r3
/* 80AFE0D4  7C 9F 23 78 */	mr r31, r4
/* 80AFE0D8  38 80 00 00 */	li r4, 0
/* 80AFE0DC  38 C0 00 00 */	li r6, 0
/* 80AFE0E0  80 A3 09 9C */	lwz r5, 0x99c(r3)
/* 80AFE0E4  38 00 F5 7F */	li r0, -2689
/* 80AFE0E8  7C A0 00 38 */	and r0, r5, r0
/* 80AFE0EC  90 03 09 9C */	stw r0, 0x99c(r3)
/* 80AFE0F0  57 FD 18 38 */	slwi r29, r31, 3
/* 80AFE0F4  3C A0 80 B0 */	lis r5, l_btpGetParamList@ha /* 0x80B010BC@ha */
/* 80AFE0F8  38 A5 10 BC */	addi r5, r5, l_btpGetParamList@l /* 0x80B010BC@l */
/* 80AFE0FC  7C A5 E8 2E */	lwzx r5, r5, r29
/* 80AFE100  2C 05 00 00 */	cmpwi r5, 0
/* 80AFE104  41 80 00 28 */	blt lbl_80AFE12C
/* 80AFE108  3C 80 80 B0 */	lis r4, l_arcName@ha /* 0x80B010E4@ha */
/* 80AFE10C  38 84 10 E4 */	addi r4, r4, l_arcName@l /* 0x80B010E4@l */
/* 80AFE110  80 84 00 00 */	lwz r4, 0(r4)
/* 80AFE114  4B 65 4A 55 */	bl getTexPtrnAnmP__8daNpcF_cFPci
/* 80AFE118  7C 64 1B 78 */	mr r4, r3
/* 80AFE11C  3C 60 80 B0 */	lis r3, l_btpGetParamList@ha /* 0x80B010BC@ha */
/* 80AFE120  38 03 10 BC */	addi r0, r3, l_btpGetParamList@l /* 0x80B010BC@l */
/* 80AFE124  7C 60 EA 14 */	add r3, r0, r29
/* 80AFE128  80 C3 00 04 */	lwz r6, 4(r3)
lbl_80AFE12C:
/* 80AFE12C  2C 1F 00 00 */	cmpwi r31, 0
/* 80AFE130  41 82 00 08 */	beq lbl_80AFE138
/* 80AFE134  48 00 00 0C */	b lbl_80AFE140
lbl_80AFE138:
/* 80AFE138  38 C0 00 02 */	li r6, 2
/* 80AFE13C  48 00 00 08 */	b lbl_80AFE144
lbl_80AFE140:
/* 80AFE140  38 80 00 00 */	li r4, 0
lbl_80AFE144:
/* 80AFE144  28 04 00 00 */	cmplwi r4, 0
/* 80AFE148  40 82 00 0C */	bne lbl_80AFE154
/* 80AFE14C  38 60 00 01 */	li r3, 1
/* 80AFE150  48 00 00 54 */	b lbl_80AFE1A4
lbl_80AFE154:
/* 80AFE154  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80AFE158  80 63 00 04 */	lwz r3, 4(r3)
/* 80AFE15C  80 A3 00 04 */	lwz r5, 4(r3)
/* 80AFE160  7F C3 F3 78 */	mr r3, r30
/* 80AFE164  3C E0 80 B0 */	lis r7, lit_4247@ha /* 0x80B00DEC@ha */
/* 80AFE168  C0 27 0D EC */	lfs f1, lit_4247@l(r7)  /* 0x80B00DEC@l */
/* 80AFE16C  4B 65 4B 59 */	bl setBtpAnm__8daNpcF_cFP16J3DAnmTexPatternP12J3DModelDatafi
/* 80AFE170  2C 03 00 00 */	cmpwi r3, 0
/* 80AFE174  41 82 00 2C */	beq lbl_80AFE1A0
/* 80AFE178  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80AFE17C  60 00 02 80 */	ori r0, r0, 0x280
/* 80AFE180  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 80AFE184  2C 1F 00 00 */	cmpwi r31, 0
/* 80AFE188  40 82 00 10 */	bne lbl_80AFE198
/* 80AFE18C  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80AFE190  60 00 08 00 */	ori r0, r0, 0x800
/* 80AFE194  90 1E 09 9C */	stw r0, 0x99c(r30)
lbl_80AFE198:
/* 80AFE198  38 60 00 01 */	li r3, 1
/* 80AFE19C  48 00 00 08 */	b lbl_80AFE1A4
lbl_80AFE1A0:
/* 80AFE1A0  38 60 00 00 */	li r3, 0
lbl_80AFE1A4:
/* 80AFE1A4  39 61 00 20 */	addi r11, r1, 0x20
/* 80AFE1A8  4B 86 40 81 */	bl _restgpr_29
/* 80AFE1AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AFE1B0  7C 08 03 A6 */	mtlr r0
/* 80AFE1B4  38 21 00 20 */	addi r1, r1, 0x20
/* 80AFE1B8  4E 80 00 20 */	blr 

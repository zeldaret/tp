lbl_80AD974C:
/* 80AD974C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AD9750  7C 08 02 A6 */	mflr r0
/* 80AD9754  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AD9758  39 61 00 20 */	addi r11, r1, 0x20
/* 80AD975C  4B 88 8A 80 */	b _savegpr_29
/* 80AD9760  7C 7E 1B 78 */	mr r30, r3
/* 80AD9764  7C 9F 23 78 */	mr r31, r4
/* 80AD9768  1F BF 00 0C */	mulli r29, r31, 0xc
/* 80AD976C  3C 80 80 AE */	lis r4, l_btpGetParamList@ha
/* 80AD9770  38 A4 27 F0 */	addi r5, r4, l_btpGetParamList@l
/* 80AD9774  7C 85 EA 14 */	add r4, r5, r29
/* 80AD9778  80 04 00 08 */	lwz r0, 8(r4)
/* 80AD977C  54 00 10 3A */	slwi r0, r0, 2
/* 80AD9780  3C 80 80 AE */	lis r4, l_arcNames@ha
/* 80AD9784  38 84 28 E0 */	addi r4, r4, l_arcNames@l
/* 80AD9788  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AD978C  7C A5 E8 2E */	lwzx r5, r5, r29
/* 80AD9790  4B 67 93 D8 */	b getTexPtrnAnmP__8daNpcF_cFPci
/* 80AD9794  7C 64 1B 79 */	or. r4, r3, r3
/* 80AD9798  3C 60 80 AE */	lis r3, l_btpGetParamList@ha
/* 80AD979C  38 03 27 F0 */	addi r0, r3, l_btpGetParamList@l
/* 80AD97A0  7C 60 EA 14 */	add r3, r0, r29
/* 80AD97A4  80 C3 00 04 */	lwz r6, 4(r3)
/* 80AD97A8  80 7E 09 9C */	lwz r3, 0x99c(r30)
/* 80AD97AC  38 00 F5 7F */	li r0, -2689
/* 80AD97B0  7C 60 00 38 */	and r0, r3, r0
/* 80AD97B4  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 80AD97B8  40 82 00 0C */	bne lbl_80AD97C4
/* 80AD97BC  38 60 00 01 */	li r3, 1
/* 80AD97C0  48 00 00 54 */	b lbl_80AD9814
lbl_80AD97C4:
/* 80AD97C4  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80AD97C8  80 63 00 04 */	lwz r3, 4(r3)
/* 80AD97CC  80 A3 00 04 */	lwz r5, 4(r3)
/* 80AD97D0  7F C3 F3 78 */	mr r3, r30
/* 80AD97D4  3C E0 80 AE */	lis r7, lit_4497@ha
/* 80AD97D8  C0 27 20 68 */	lfs f1, lit_4497@l(r7)
/* 80AD97DC  4B 67 94 E8 */	b setBtpAnm__8daNpcF_cFP16J3DAnmTexPatternP12J3DModelDatafi
/* 80AD97E0  2C 03 00 00 */	cmpwi r3, 0
/* 80AD97E4  41 82 00 2C */	beq lbl_80AD9810
/* 80AD97E8  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80AD97EC  60 00 02 80 */	ori r0, r0, 0x280
/* 80AD97F0  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 80AD97F4  2C 1F 00 00 */	cmpwi r31, 0
/* 80AD97F8  40 82 00 10 */	bne lbl_80AD9808
/* 80AD97FC  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80AD9800  60 00 08 00 */	ori r0, r0, 0x800
/* 80AD9804  90 1E 09 9C */	stw r0, 0x99c(r30)
lbl_80AD9808:
/* 80AD9808  38 60 00 01 */	li r3, 1
/* 80AD980C  48 00 00 08 */	b lbl_80AD9814
lbl_80AD9810:
/* 80AD9810  38 60 00 00 */	li r3, 0
lbl_80AD9814:
/* 80AD9814  39 61 00 20 */	addi r11, r1, 0x20
/* 80AD9818  4B 88 8A 10 */	b _restgpr_29
/* 80AD981C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AD9820  7C 08 03 A6 */	mtlr r0
/* 80AD9824  38 21 00 20 */	addi r1, r1, 0x20
/* 80AD9828  4E 80 00 20 */	blr 

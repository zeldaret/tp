lbl_804D6960:
/* 804D6960  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D6964  7C 08 02 A6 */	mflr r0
/* 804D6968  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D696C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D6970  93 C1 00 08 */	stw r30, 8(r1)
/* 804D6974  7C 7E 1B 78 */	mr r30, r3
/* 804D6978  3B E0 00 00 */	li r31, 0
/* 804D697C  4B FF F4 A1 */	bl getType__10daAndsw2_cFv
/* 804D6980  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 804D6984  2C 00 00 04 */	cmpwi r0, 4
/* 804D6988  41 82 00 5C */	beq lbl_804D69E4
/* 804D698C  40 80 00 18 */	bge lbl_804D69A4
/* 804D6990  2C 00 00 02 */	cmpwi r0, 2
/* 804D6994  40 80 00 34 */	bge lbl_804D69C8
/* 804D6998  2C 00 00 00 */	cmpwi r0, 0
/* 804D699C  40 80 00 10 */	bge lbl_804D69AC
/* 804D69A0  48 00 00 44 */	b lbl_804D69E4
lbl_804D69A4:
/* 804D69A4  2C 00 00 07 */	cmpwi r0, 7
/* 804D69A8  40 80 00 3C */	bge lbl_804D69E4
lbl_804D69AC:
/* 804D69AC  7F C3 F3 78 */	mr r3, r30
/* 804D69B0  4B FF F5 0D */	bl chkAllSw2__10daAndsw2_cFv
/* 804D69B4  30 03 FF FF */	addic r0, r3, -1
/* 804D69B8  7C 00 19 10 */	subfe r0, r0, r3
/* 804D69BC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 804D69C0  7C 1F 03 78 */	mr r31, r0
/* 804D69C4  48 00 00 20 */	b lbl_804D69E4
lbl_804D69C8:
/* 804D69C8  7F C3 F3 78 */	mr r3, r30
/* 804D69CC  4B FF F5 99 */	bl chkSwStatus__10daAndsw2_cFv
/* 804D69D0  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 804D69D4  30 03 FF FF */	addic r0, r3, -1
/* 804D69D8  7C 00 19 10 */	subfe r0, r0, r3
/* 804D69DC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 804D69E0  7C 1F 03 78 */	mr r31, r0
lbl_804D69E4:
/* 804D69E4  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 804D69E8  40 82 00 30 */	bne lbl_804D6A18
/* 804D69EC  38 00 00 00 */	li r0, 0
/* 804D69F0  98 1E 05 6C */	stb r0, 0x56c(r30)
/* 804D69F4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 804D69F8  7C 1F 07 74 */	extsb r31, r0
/* 804D69FC  7F C3 F3 78 */	mr r3, r30
/* 804D6A00  4B FF F4 05 */	bl getSwbit__10daAndsw2_cFv
/* 804D6A04  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 804D6A08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D6A0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804D6A10  7F E5 FB 78 */	mr r5, r31
/* 804D6A14  4B B5 E8 9C */	b offSwitch__10dSv_info_cFii
lbl_804D6A18:
/* 804D6A18  38 60 00 01 */	li r3, 1
/* 804D6A1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D6A20  83 C1 00 08 */	lwz r30, 8(r1)
/* 804D6A24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D6A28  7C 08 03 A6 */	mtlr r0
/* 804D6A2C  38 21 00 10 */	addi r1, r1, 0x10
/* 804D6A30  4E 80 00 20 */	blr 

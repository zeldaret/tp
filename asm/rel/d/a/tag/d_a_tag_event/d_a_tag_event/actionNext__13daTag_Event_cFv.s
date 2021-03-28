lbl_8048B0E4:
/* 8048B0E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048B0E8  7C 08 02 A6 */	mflr r0
/* 8048B0EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048B0F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048B0F4  7C 7F 1B 78 */	mr r31, r3
/* 8048B0F8  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 8048B0FC  28 00 00 02 */	cmplwi r0, 2
/* 8048B100  40 82 00 78 */	bne lbl_8048B178
/* 8048B104  A8 1F 05 6A */	lha r0, 0x56a(r31)
/* 8048B108  B0 1F 05 68 */	sth r0, 0x568(r31)
/* 8048B10C  38 00 FF FF */	li r0, -1
/* 8048B110  B0 1F 05 6A */	sth r0, 0x56a(r31)
/* 8048B114  A8 1F 05 6C */	lha r0, 0x56c(r31)
/* 8048B118  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8048B11C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8048B120  7C 04 07 74 */	extsb r4, r0
/* 8048B124  4B BB 83 DC */	b searchMapEventData__14dEvt_control_cFUcl
/* 8048B128  28 03 00 00 */	cmplwi r3, 0
/* 8048B12C  41 82 00 30 */	beq lbl_8048B15C
/* 8048B130  88 03 00 05 */	lbz r0, 5(r3)
/* 8048B134  B0 1F 05 6C */	sth r0, 0x56c(r31)
/* 8048B138  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8048B13C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8048B140  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8048B144  7F E4 FB 78 */	mr r4, r31
/* 8048B148  A8 1F 05 6C */	lha r0, 0x56c(r31)
/* 8048B14C  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8048B150  4B BB C5 48 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc
/* 8048B154  B0 7F 05 6A */	sth r3, 0x56a(r31)
/* 8048B158  48 00 00 0C */	b lbl_8048B164
lbl_8048B15C:
/* 8048B15C  38 00 FF FF */	li r0, -1
/* 8048B160  B0 1F 05 6C */	sth r0, 0x56c(r31)
lbl_8048B164:
/* 8048B164  38 00 00 06 */	li r0, 6
/* 8048B168  98 1F 05 72 */	stb r0, 0x572(r31)
/* 8048B16C  7F E3 FB 78 */	mr r3, r31
/* 8048B170  48 00 00 41 */	bl actionEvent__13daTag_Event_cFv
/* 8048B174  48 00 00 24 */	b lbl_8048B198
lbl_8048B178:
/* 8048B178  A8 9F 05 6A */	lha r4, 0x56a(r31)
/* 8048B17C  A8 1F 05 6C */	lha r0, 0x56c(r31)
/* 8048B180  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8048B184  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8048B188  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8048B18C  38 E0 00 00 */	li r7, 0
/* 8048B190  39 00 00 01 */	li r8, 1
/* 8048B194  4B B9 04 E8 */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
lbl_8048B198:
/* 8048B198  38 60 00 01 */	li r3, 1
/* 8048B19C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048B1A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048B1A4  7C 08 03 A6 */	mtlr r0
/* 8048B1A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8048B1AC  4E 80 00 20 */	blr 

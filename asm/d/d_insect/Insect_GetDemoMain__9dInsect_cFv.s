lbl_8015E078:
/* 8015E078  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015E07C  7C 08 02 A6 */	mflr r0
/* 8015E080  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015E084  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015E088  93 C1 00 08 */	stw r30, 8(r1)
/* 8015E08C  7C 7F 1B 78 */	mr r31, r3
/* 8015E090  80 03 05 8C */	lwz r0, 0x58c(r3)
/* 8015E094  2C 00 00 01 */	cmpwi r0, 1
/* 8015E098  41 82 00 B0 */	beq lbl_8015E148
/* 8015E09C  40 80 00 10 */	bge lbl_8015E0AC
/* 8015E0A0  2C 00 00 00 */	cmpwi r0, 0
/* 8015E0A4  40 80 00 14 */	bge lbl_8015E0B8
/* 8015E0A8  48 00 01 AC */	b lbl_8015E254
lbl_8015E0AC:
/* 8015E0AC  2C 00 00 03 */	cmpwi r0, 3
/* 8015E0B0  40 80 01 A4 */	bge lbl_8015E254
/* 8015E0B4  48 00 00 F0 */	b lbl_8015E1A4
lbl_8015E0B8:
/* 8015E0B8  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 8015E0BC  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 8015E0C0  41 82 00 78 */	beq lbl_8015E138
/* 8015E0C4  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 8015E0C8  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 8015E0CC  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 8015E0D0  4B EB EA D1 */	bl fopAcM_cancelCarryNow__FP10fopAc_ac_c
/* 8015E0D4  7F E3 FB 78 */	mr r3, r31
/* 8015E0D8  38 80 00 00 */	li r4, 0
/* 8015E0DC  38 A0 00 00 */	li r5, 0
/* 8015E0E0  4B EB D8 F1 */	bl fopAcM_orderItemEvent__FP10fopAc_ac_cUsUs
/* 8015E0E4  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 8015E0E8  60 00 00 08 */	ori r0, r0, 8
/* 8015E0EC  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 8015E0F0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8015E0F4  88 9F 05 80 */	lbz r4, 0x580(r31)
/* 8015E0F8  38 A0 FF FF */	li r5, -1
/* 8015E0FC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8015E100  7C 06 07 74 */	extsb r6, r0
/* 8015E104  38 E0 00 00 */	li r7, 0
/* 8015E108  39 00 00 00 */	li r8, 0
/* 8015E10C  4B EB DB 69 */	bl fopAcM_createItemForTrBoxDemo__FPC4cXyziiiPC5csXyzPC4cXyz
/* 8015E110  90 7F 05 88 */	stw r3, 0x588(r31)
/* 8015E114  38 00 00 01 */	li r0, 1
/* 8015E118  90 1F 05 8C */	stw r0, 0x58c(r31)
/* 8015E11C  88 7F 05 80 */	lbz r3, 0x580(r31)
/* 8015E120  48 07 BE 1D */	bl isCatchNotGiveInsect__14dMenu_Insect_cFUc
/* 8015E124  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8015E128  41 82 01 2C */	beq lbl_8015E254
/* 8015E12C  38 00 00 01 */	li r0, 1
/* 8015E130  98 1F 05 85 */	stb r0, 0x585(r31)
/* 8015E134  48 00 01 20 */	b lbl_8015E254
lbl_8015E138:
/* 8015E138  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 8015E13C  60 00 00 10 */	ori r0, r0, 0x10
/* 8015E140  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 8015E144  48 00 01 10 */	b lbl_8015E254
lbl_8015E148:
/* 8015E148  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 8015E14C  28 00 00 04 */	cmplwi r0, 4
/* 8015E150  40 82 00 38 */	bne lbl_8015E188
/* 8015E154  80 9F 05 88 */	lwz r4, 0x588(r31)
/* 8015E158  3C 04 00 01 */	addis r0, r4, 1
/* 8015E15C  28 00 FF FF */	cmplwi r0, 0xffff
/* 8015E160  41 82 00 14 */	beq lbl_8015E174
/* 8015E164  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8015E168  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8015E16C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8015E170  4B EE 55 7D */	bl setPtI_Id__14dEvt_control_cFUi
lbl_8015E174:
/* 8015E174  38 00 00 00 */	li r0, 0
/* 8015E178  98 1F 05 6D */	stb r0, 0x56d(r31)
/* 8015E17C  38 00 00 02 */	li r0, 2
/* 8015E180  90 1F 05 8C */	stw r0, 0x58c(r31)
/* 8015E184  48 00 00 D0 */	b lbl_8015E254
lbl_8015E188:
/* 8015E188  38 80 00 00 */	li r4, 0
/* 8015E18C  38 A0 00 00 */	li r5, 0
/* 8015E190  4B EB D8 41 */	bl fopAcM_orderItemEvent__FP10fopAc_ac_cUsUs
/* 8015E194  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 8015E198  60 00 00 08 */	ori r0, r0, 8
/* 8015E19C  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 8015E1A0  48 00 00 B4 */	b lbl_8015E254
lbl_8015E1A4:
/* 8015E1A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8015E1A8  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 8015E1AC  38 7E 4F F8 */	addi r3, r30, 0x4ff8
/* 8015E1B0  3C 80 80 39 */	lis r4, d_d_insect__stringBase0@ha
/* 8015E1B4  38 84 3D 98 */	addi r4, r4, d_d_insect__stringBase0@l
/* 8015E1B8  4B EE 99 25 */	bl endCheckOld__16dEvent_manager_cFPCc
/* 8015E1BC  2C 03 00 00 */	cmpwi r3, 0
/* 8015E1C0  41 82 00 94 */	beq lbl_8015E254
/* 8015E1C4  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 8015E1C8  4B EE 42 A1 */	bl reset__14dEvt_control_cFv
/* 8015E1CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8015E1D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8015E1D4  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8015E1D8  A8 1F 05 82 */	lha r0, 0x582(r31)
/* 8015E1DC  54 00 08 3C */	slwi r0, r0, 1
/* 8015E1E0  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 8015E1E4  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 8015E1E8  7C 84 02 2E */	lhzx r4, r4, r0
/* 8015E1EC  4B ED 67 D1 */	bl isEventBit__11dSv_event_cCFUs
/* 8015E1F0  2C 03 00 00 */	cmpwi r3, 0
/* 8015E1F4  40 82 00 10 */	bne lbl_8015E204
/* 8015E1F8  88 1F 05 85 */	lbz r0, 0x585(r31)
/* 8015E1FC  28 00 00 00 */	cmplwi r0, 0
/* 8015E200  41 82 00 4C */	beq lbl_8015E24C
lbl_8015E204:
/* 8015E204  38 00 00 01 */	li r0, 1
/* 8015E208  98 1F 05 6D */	stb r0, 0x56d(r31)
/* 8015E20C  38 00 00 00 */	li r0, 0
/* 8015E210  90 1F 05 8C */	stw r0, 0x58c(r31)
/* 8015E214  88 1F 05 84 */	lbz r0, 0x584(r31)
/* 8015E218  28 00 00 00 */	cmplwi r0, 0
/* 8015E21C  40 82 00 38 */	bne lbl_8015E254
/* 8015E220  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8015E224  38 80 00 00 */	li r4, 0
/* 8015E228  38 A0 FF FF */	li r5, -1
/* 8015E22C  38 C0 FF FF */	li r6, -1
/* 8015E230  38 E0 00 00 */	li r7, 0
/* 8015E234  39 00 00 00 */	li r8, 0
/* 8015E238  39 20 00 00 */	li r9, 0
/* 8015E23C  4B EB E0 05 */	bl fopAcM_createItem__FPC4cXyziiiPC5csXyzPC4cXyzi
/* 8015E240  38 00 00 01 */	li r0, 1
/* 8015E244  98 1F 05 84 */	stb r0, 0x584(r31)
/* 8015E248  48 00 00 0C */	b lbl_8015E254
lbl_8015E24C:
/* 8015E24C  7F E3 FB 78 */	mr r3, r31
/* 8015E250  4B EB BA 2D */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_8015E254:
/* 8015E254  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015E258  83 C1 00 08 */	lwz r30, 8(r1)
/* 8015E25C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015E260  7C 08 03 A6 */	mtlr r0
/* 8015E264  38 21 00 10 */	addi r1, r1, 0x10
/* 8015E268  4E 80 00 20 */	blr 

lbl_8046012C:
/* 8046012C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80460130  7C 08 02 A6 */	mflr r0
/* 80460134  90 01 00 14 */	stw r0, 0x14(r1)
/* 80460138  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046013C  7C 7F 1B 78 */	mr r31, r3
/* 80460140  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80460144  28 00 00 03 */	cmplwi r0, 3
/* 80460148  40 82 00 1C */	bne lbl_80460164
/* 8046014C  4B FF FC AD */	bl initOpenDemo__10daKnob20_cFv
/* 80460150  38 00 00 03 */	li r0, 3
/* 80460154  98 1F 06 0E */	stb r0, 0x60e(r31)
/* 80460158  7F E3 FB 78 */	mr r3, r31
/* 8046015C  4B FF F4 0D */	bl demoProc__10daKnob20_cFv
/* 80460160  48 00 00 5C */	b lbl_804601BC
lbl_80460164:
/* 80460164  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80460168  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8046016C  88 04 4F AD */	lbz r0, 0x4fad(r4)
/* 80460170  28 00 00 00 */	cmplwi r0, 0
/* 80460174  41 82 00 44 */	beq lbl_804601B8
/* 80460178  38 64 4F F8 */	addi r3, r4, 0x4ff8
/* 8046017C  3C 80 80 46 */	lis r4, struct_804606C4+0x0@ha
/* 80460180  38 84 06 C4 */	addi r4, r4, struct_804606C4+0x0@l
/* 80460184  38 84 01 AA */	addi r4, r4, 0x1aa
/* 80460188  38 A0 00 00 */	li r5, 0
/* 8046018C  38 C0 00 00 */	li r6, 0
/* 80460190  4B BE 79 8C */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80460194  90 7F 05 BC */	stw r3, 0x5bc(r31)
/* 80460198  80 1F 05 BC */	lwz r0, 0x5bc(r31)
/* 8046019C  2C 00 FF FF */	cmpwi r0, -1
/* 804601A0  41 82 00 1C */	beq lbl_804601BC
/* 804601A4  38 00 00 07 */	li r0, 7
/* 804601A8  98 1F 06 0E */	stb r0, 0x60e(r31)
/* 804601AC  7F E3 FB 78 */	mr r3, r31
/* 804601B0  4B FF F3 B9 */	bl demoProc__10daKnob20_cFv
/* 804601B4  48 00 00 08 */	b lbl_804601BC
lbl_804601B8:
/* 804601B8  4B FF F0 E5 */	bl setEventPrm__10daKnob20_cFv
lbl_804601BC:
/* 804601BC  38 60 00 01 */	li r3, 1
/* 804601C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804601C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804601C8  7C 08 03 A6 */	mtlr r0
/* 804601CC  38 21 00 10 */	addi r1, r1, 0x10
/* 804601D0  4E 80 00 20 */	blr 

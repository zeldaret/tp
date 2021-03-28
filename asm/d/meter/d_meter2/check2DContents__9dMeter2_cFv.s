lbl_80223BC4:
/* 80223BC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80223BC8  7C 08 02 A6 */	mflr r0
/* 80223BCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80223BD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80223BD4  7C 7F 1B 78 */	mr r31, r3
/* 80223BD8  80 03 01 18 */	lwz r0, 0x118(r3)
/* 80223BDC  28 00 00 00 */	cmplwi r0, 0
/* 80223BE0  40 82 00 FC */	bne lbl_80223CDC
/* 80223BE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80223BE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80223BEC  88 03 5E 8F */	lbz r0, 0x5e8f(r3)
/* 80223BF0  28 00 00 00 */	cmplwi r0, 0
/* 80223BF4  41 82 00 0C */	beq lbl_80223C00
/* 80223BF8  28 00 00 05 */	cmplwi r0, 5
/* 80223BFC  40 82 01 F0 */	bne lbl_80223DEC
lbl_80223C00:
/* 80223C00  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80223C04  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80223C08  4B FF 85 D5 */	bl isFloatingMessageVisible__13dMeter2Info_cFv
/* 80223C0C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80223C10  40 82 00 88 */	bne lbl_80223C98
/* 80223C14  80 7F 01 0C */	lwz r3, 0x10c(r31)
/* 80223C18  88 03 07 61 */	lbz r0, 0x761(r3)
/* 80223C1C  20 00 00 07 */	subfic r0, r0, 7
/* 80223C20  7C 00 00 34 */	cntlzw r0, r0
/* 80223C24  54 00 DE 3F */	rlwinm. r0, r0, 0x1b, 0x18, 0x1f
/* 80223C28  40 82 00 70 */	bne lbl_80223C98
/* 80223C2C  88 03 07 62 */	lbz r0, 0x762(r3)
/* 80223C30  28 00 00 07 */	cmplwi r0, 7
/* 80223C34  41 82 00 64 */	beq lbl_80223C98
/* 80223C38  88 03 07 6A */	lbz r0, 0x76a(r3)
/* 80223C3C  28 00 00 07 */	cmplwi r0, 7
/* 80223C40  41 82 00 58 */	beq lbl_80223C98
/* 80223C44  88 03 07 64 */	lbz r0, 0x764(r3)
/* 80223C48  28 00 00 07 */	cmplwi r0, 7
/* 80223C4C  41 82 00 4C */	beq lbl_80223C98
/* 80223C50  88 03 07 65 */	lbz r0, 0x765(r3)
/* 80223C54  28 00 00 07 */	cmplwi r0, 7
/* 80223C58  41 82 00 40 */	beq lbl_80223C98
/* 80223C5C  88 03 07 66 */	lbz r0, 0x766(r3)
/* 80223C60  28 00 00 07 */	cmplwi r0, 7
/* 80223C64  41 82 00 34 */	beq lbl_80223C98
/* 80223C68  88 03 07 67 */	lbz r0, 0x767(r3)
/* 80223C6C  28 00 00 07 */	cmplwi r0, 7
/* 80223C70  41 82 00 28 */	beq lbl_80223C98
/* 80223C74  88 03 07 68 */	lbz r0, 0x768(r3)
/* 80223C78  28 00 00 07 */	cmplwi r0, 7
/* 80223C7C  41 82 00 1C */	beq lbl_80223C98
/* 80223C80  88 03 07 69 */	lbz r0, 0x769(r3)
/* 80223C84  28 00 00 07 */	cmplwi r0, 7
/* 80223C88  41 82 00 10 */	beq lbl_80223C98
/* 80223C8C  88 03 07 63 */	lbz r0, 0x763(r3)
/* 80223C90  28 00 00 07 */	cmplwi r0, 7
/* 80223C94  40 82 01 58 */	bne lbl_80223DEC
lbl_80223C98:
/* 80223C98  38 60 00 08 */	li r3, 8
/* 80223C9C  4B E0 A4 45 */	bl dComIfGp_setHeapLockFlag__FUc
/* 80223CA0  80 1F 01 08 */	lwz r0, 0x108(r31)
/* 80223CA4  28 00 00 00 */	cmplwi r0, 0
/* 80223CA8  40 82 00 14 */	bne lbl_80223CBC
/* 80223CAC  38 60 00 08 */	li r3, 8
/* 80223CB0  4B E0 A7 21 */	bl dComIfGp_getSubHeap2D__Fi
/* 80223CB4  4B DE B5 19 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 80223CB8  90 7F 01 08 */	stw r3, 0x108(r31)
lbl_80223CBC:
/* 80223CBC  38 60 06 30 */	li r3, 0x630
/* 80223CC0  48 0A AF 8D */	bl __nw__FUl
/* 80223CC4  7C 60 1B 79 */	or. r0, r3, r3
/* 80223CC8  41 82 00 0C */	beq lbl_80223CD4
/* 80223CCC  4B FD D6 5D */	bl __ct__14dMeterButton_cFv
/* 80223CD0  7C 60 1B 78 */	mr r0, r3
lbl_80223CD4:
/* 80223CD4  90 1F 01 18 */	stw r0, 0x118(r31)
/* 80223CD8  48 00 01 14 */	b lbl_80223DEC
lbl_80223CDC:
/* 80223CDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80223CE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80223CE4  88 03 5E 8F */	lbz r0, 0x5e8f(r3)
/* 80223CE8  28 00 00 05 */	cmplwi r0, 5
/* 80223CEC  40 82 01 00 */	bne lbl_80223DEC
/* 80223CF0  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80223CF4  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80223CF8  4B FF 84 E5 */	bl isFloatingMessageVisible__13dMeter2Info_cFv
/* 80223CFC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80223D00  40 82 00 EC */	bne lbl_80223DEC
/* 80223D04  80 7F 01 0C */	lwz r3, 0x10c(r31)
/* 80223D08  88 03 07 61 */	lbz r0, 0x761(r3)
/* 80223D0C  20 00 00 07 */	subfic r0, r0, 7
/* 80223D10  7C 00 00 34 */	cntlzw r0, r0
/* 80223D14  54 00 DE 3F */	rlwinm. r0, r0, 0x1b, 0x18, 0x1f
/* 80223D18  40 82 00 D4 */	bne lbl_80223DEC
/* 80223D1C  88 03 07 62 */	lbz r0, 0x762(r3)
/* 80223D20  28 00 00 07 */	cmplwi r0, 7
/* 80223D24  41 82 00 C8 */	beq lbl_80223DEC
/* 80223D28  88 03 07 6A */	lbz r0, 0x76a(r3)
/* 80223D2C  28 00 00 07 */	cmplwi r0, 7
/* 80223D30  41 82 00 BC */	beq lbl_80223DEC
/* 80223D34  88 03 07 64 */	lbz r0, 0x764(r3)
/* 80223D38  28 00 00 07 */	cmplwi r0, 7
/* 80223D3C  41 82 00 B0 */	beq lbl_80223DEC
/* 80223D40  88 03 07 65 */	lbz r0, 0x765(r3)
/* 80223D44  28 00 00 07 */	cmplwi r0, 7
/* 80223D48  41 82 00 A4 */	beq lbl_80223DEC
/* 80223D4C  88 03 07 66 */	lbz r0, 0x766(r3)
/* 80223D50  28 00 00 07 */	cmplwi r0, 7
/* 80223D54  41 82 00 98 */	beq lbl_80223DEC
/* 80223D58  88 03 07 67 */	lbz r0, 0x767(r3)
/* 80223D5C  28 00 00 07 */	cmplwi r0, 7
/* 80223D60  41 82 00 8C */	beq lbl_80223DEC
/* 80223D64  88 03 07 68 */	lbz r0, 0x768(r3)
/* 80223D68  28 00 00 07 */	cmplwi r0, 7
/* 80223D6C  41 82 00 80 */	beq lbl_80223DEC
/* 80223D70  88 03 07 69 */	lbz r0, 0x769(r3)
/* 80223D74  28 00 00 07 */	cmplwi r0, 7
/* 80223D78  41 82 00 74 */	beq lbl_80223DEC
/* 80223D7C  88 03 07 63 */	lbz r0, 0x763(r3)
/* 80223D80  28 00 00 07 */	cmplwi r0, 7
/* 80223D84  41 82 00 68 */	beq lbl_80223DEC
/* 80223D88  80 7F 01 18 */	lwz r3, 0x118(r31)
/* 80223D8C  4B FE 56 E9 */	bl isClose__14dMeterButton_cFv
/* 80223D90  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80223D94  41 82 00 58 */	beq lbl_80223DEC
/* 80223D98  80 7F 01 18 */	lwz r3, 0x118(r31)
/* 80223D9C  28 03 00 00 */	cmplwi r3, 0
/* 80223DA0  41 82 00 18 */	beq lbl_80223DB8
/* 80223DA4  38 80 00 01 */	li r4, 1
/* 80223DA8  81 83 00 00 */	lwz r12, 0(r3)
/* 80223DAC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80223DB0  7D 89 03 A6 */	mtctr r12
/* 80223DB4  4E 80 04 21 */	bctrl 
lbl_80223DB8:
/* 80223DB8  38 00 00 00 */	li r0, 0
/* 80223DBC  90 1F 01 18 */	stw r0, 0x118(r31)
/* 80223DC0  38 60 00 08 */	li r3, 8
/* 80223DC4  4B E0 A6 0D */	bl dComIfGp_getSubHeap2D__Fi
/* 80223DC8  48 0A A8 05 */	bl freeAll__7JKRHeapFv
/* 80223DCC  80 7F 01 08 */	lwz r3, 0x108(r31)
/* 80223DD0  28 03 00 00 */	cmplwi r3, 0
/* 80223DD4  41 82 00 10 */	beq lbl_80223DE4
/* 80223DD8  4B DE B3 F5 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 80223DDC  38 00 00 00 */	li r0, 0
/* 80223DE0  90 1F 01 08 */	stw r0, 0x108(r31)
lbl_80223DE4:
/* 80223DE4  38 60 00 08 */	li r3, 8
/* 80223DE8  4B E0 A3 A1 */	bl dComIfGp_offHeapLockFlag__Fi
lbl_80223DEC:
/* 80223DEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80223DF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80223DF4  7C 08 03 A6 */	mtlr r0
/* 80223DF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80223DFC  4E 80 00 20 */	blr 

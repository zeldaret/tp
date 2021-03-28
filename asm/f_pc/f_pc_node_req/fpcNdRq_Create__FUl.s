lbl_80022C9C:
/* 80022C9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80022CA0  7C 08 02 A6 */	mflr r0
/* 80022CA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80022CA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80022CAC  93 C1 00 08 */	stw r30, 8(r1)
/* 80022CB0  7C 7E 1B 78 */	mr r30, r3
/* 80022CB4  38 60 FF FC */	li r3, -4
/* 80022CB8  7F C4 F3 78 */	mr r4, r30
/* 80022CBC  48 24 05 6D */	bl memalignB__3cMlFiUl
/* 80022CC0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80022CC4  41 82 01 34 */	beq lbl_80022DF8
/* 80022CC8  88 0D 87 CC */	lbz r0, data_80450D4C(r13)
/* 80022CCC  7C 00 07 75 */	extsb. r0, r0
/* 80022CD0  40 82 00 14 */	bne lbl_80022CE4
/* 80022CD4  38 00 00 00 */	li r0, 0
/* 80022CD8  90 0D 87 C8 */	stw r0, request_id(r13)
/* 80022CDC  38 00 00 01 */	li r0, 1
/* 80022CE0  98 0D 87 CC */	stb r0, data_80450D4C(r13)
lbl_80022CE4:
/* 80022CE4  7F E3 FB 78 */	mr r3, r31
/* 80022CE8  7F C4 F3 78 */	mr r4, r30
/* 80022CEC  48 24 EF C1 */	bl sBs_ClearArea__FPvUl
/* 80022CF0  38 BF FF FC */	addi r5, r31, -4
/* 80022CF4  3C 60 80 3A */	lis r3, clear@ha
/* 80022CF8  38 63 3A 44 */	addi r3, r3, clear@l
/* 80022CFC  38 83 FF FC */	addi r4, r3, -4
/* 80022D00  38 00 00 02 */	li r0, 2
/* 80022D04  7C 09 03 A6 */	mtctr r0
lbl_80022D08:
/* 80022D08  80 64 00 04 */	lwz r3, 4(r4)
/* 80022D0C  84 04 00 08 */	lwzu r0, 8(r4)
/* 80022D10  90 65 00 04 */	stw r3, 4(r5)
/* 80022D14  94 05 00 08 */	stwu r0, 8(r5)
/* 80022D18  42 00 FF F0 */	bdnz lbl_80022D08
/* 80022D1C  80 04 00 04 */	lwz r0, 4(r4)
/* 80022D20  90 05 00 04 */	stw r0, 4(r5)
/* 80022D24  3C 60 80 3A */	lis r3, clear@ha
/* 80022D28  38 63 3A 44 */	addi r3, r3, clear@l
/* 80022D2C  38 BF 00 10 */	addi r5, r31, 0x10
/* 80022D30  38 83 00 10 */	addi r4, r3, 0x10
/* 80022D34  38 00 00 03 */	li r0, 3
/* 80022D38  7C 09 03 A6 */	mtctr r0
lbl_80022D3C:
/* 80022D3C  80 64 00 04 */	lwz r3, 4(r4)
/* 80022D40  84 04 00 08 */	lwzu r0, 8(r4)
/* 80022D44  90 65 00 04 */	stw r3, 4(r5)
/* 80022D48  94 05 00 08 */	stwu r0, 8(r5)
/* 80022D4C  42 00 FF F0 */	bdnz lbl_80022D3C
/* 80022D50  80 04 00 04 */	lwz r0, 4(r4)
/* 80022D54  90 05 00 04 */	stw r0, 4(r5)
/* 80022D58  3C 60 80 3A */	lis r3, clear@ha
/* 80022D5C  38 83 3A 44 */	addi r4, r3, clear@l
/* 80022D60  80 64 00 30 */	lwz r3, 0x30(r4)
/* 80022D64  80 04 00 34 */	lwz r0, 0x34(r4)
/* 80022D68  90 7F 00 30 */	stw r3, 0x30(r31)
/* 80022D6C  90 1F 00 34 */	stw r0, 0x34(r31)
/* 80022D70  80 04 00 38 */	lwz r0, 0x38(r4)
/* 80022D74  90 1F 00 38 */	stw r0, 0x38(r31)
/* 80022D78  80 04 00 3C */	lwz r0, 0x3c(r4)
/* 80022D7C  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 80022D80  80 04 00 40 */	lwz r0, 0x40(r4)
/* 80022D84  90 1F 00 40 */	stw r0, 0x40(r31)
/* 80022D88  80 04 00 44 */	lwz r0, 0x44(r4)
/* 80022D8C  90 1F 00 44 */	stw r0, 0x44(r31)
/* 80022D90  80 64 00 48 */	lwz r3, 0x48(r4)
/* 80022D94  80 04 00 4C */	lwz r0, 0x4c(r4)
/* 80022D98  90 7F 00 48 */	stw r3, 0x48(r31)
/* 80022D9C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80022DA0  80 04 00 50 */	lwz r0, 0x50(r4)
/* 80022DA4  90 1F 00 50 */	stw r0, 0x50(r31)
/* 80022DA8  80 04 00 54 */	lwz r0, 0x54(r4)
/* 80022DAC  90 1F 00 54 */	stw r0, 0x54(r31)
/* 80022DB0  A8 04 00 58 */	lha r0, 0x58(r4)
/* 80022DB4  B0 1F 00 58 */	sth r0, 0x58(r31)
/* 80022DB8  80 04 00 5C */	lwz r0, 0x5c(r4)
/* 80022DBC  90 1F 00 5C */	stw r0, 0x5c(r31)
/* 80022DC0  A8 04 00 60 */	lha r0, 0x60(r4)
/* 80022DC4  B0 1F 00 60 */	sth r0, 0x60(r31)
/* 80022DC8  7F E3 FB 78 */	mr r3, r31
/* 80022DCC  7F E4 FB 78 */	mr r4, r31
/* 80022DD0  48 24 3C 65 */	bl cTg_Create__FP16create_tag_classPv
/* 80022DD4  38 7F 00 14 */	addi r3, r31, 0x14
/* 80022DD8  3C 80 80 02 */	lis r4, fpcNdRq_Cancel__FP19node_create_request@ha
/* 80022DDC  38 84 2A A4 */	addi r4, r4, fpcNdRq_Cancel__FP19node_create_request@l
/* 80022DE0  7F E5 FB 78 */	mr r5, r31
/* 80022DE4  48 00 0A 15 */	bl fpcMtdTg_Init__FP24process_method_tag_classPFPv_iPv
/* 80022DE8  80 6D 87 C8 */	lwz r3, request_id(r13)
/* 80022DEC  38 03 00 01 */	addi r0, r3, 1
/* 80022DF0  90 0D 87 C8 */	stw r0, request_id(r13)
/* 80022DF4  90 7F 00 44 */	stw r3, 0x44(r31)
lbl_80022DF8:
/* 80022DF8  7F E3 FB 78 */	mr r3, r31
/* 80022DFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80022E00  83 C1 00 08 */	lwz r30, 8(r1)
/* 80022E04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80022E08  7C 08 03 A6 */	mtlr r0
/* 80022E0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80022E10  4E 80 00 20 */	blr 

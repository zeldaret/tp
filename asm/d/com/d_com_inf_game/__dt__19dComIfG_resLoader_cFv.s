lbl_8002F328:
/* 8002F328  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8002F32C  7C 08 02 A6 */	mflr r0
/* 8002F330  90 01 00 24 */	stw r0, 0x24(r1)
/* 8002F334  39 61 00 20 */	addi r11, r1, 0x20
/* 8002F338  48 33 2E 9D */	bl _savegpr_27
/* 8002F33C  7C 7B 1B 79 */	or. r27, r3, r3
/* 8002F340  7C 9C 23 78 */	mr r28, r4
/* 8002F344  41 82 00 54 */	beq lbl_8002F398
/* 8002F348  80 1B 00 00 */	lwz r0, 0(r27)
/* 8002F34C  28 00 00 00 */	cmplwi r0, 0
/* 8002F350  41 82 00 38 */	beq lbl_8002F388
/* 8002F354  8B BB 00 0C */	lbz r29, 0xc(r27)
/* 8002F358  3B C0 00 02 */	li r30, 2
/* 8002F35C  57 BF 10 3A */	slwi r31, r29, 2
/* 8002F360  48 00 00 20 */	b lbl_8002F380
lbl_8002F364:
/* 8002F364  38 7B 00 04 */	addi r3, r27, 4
/* 8002F368  80 9B 00 00 */	lwz r4, 0(r27)
/* 8002F36C  7C 84 F8 2E */	lwzx r4, r4, r31
/* 8002F370  4B FF DC 99 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8002F374  93 DB 00 08 */	stw r30, 8(r27)
/* 8002F378  3B BD FF FF */	addi r29, r29, -1
/* 8002F37C  3B FF FF FC */	addi r31, r31, -4
lbl_8002F380:
/* 8002F380  2C 1D 00 00 */	cmpwi r29, 0
/* 8002F384  40 80 FF E0 */	bge lbl_8002F364
lbl_8002F388:
/* 8002F388  7F 80 07 35 */	extsh. r0, r28
/* 8002F38C  40 81 00 0C */	ble lbl_8002F398
/* 8002F390  7F 63 DB 78 */	mr r3, r27
/* 8002F394  48 29 F9 A9 */	bl __dl__FPv
lbl_8002F398:
/* 8002F398  7F 63 DB 78 */	mr r3, r27
/* 8002F39C  39 61 00 20 */	addi r11, r1, 0x20
/* 8002F3A0  48 33 2E 81 */	bl _restgpr_27
/* 8002F3A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8002F3A8  7C 08 03 A6 */	mtlr r0
/* 8002F3AC  38 21 00 20 */	addi r1, r1, 0x20
/* 8002F3B0  4E 80 00 20 */	blr 

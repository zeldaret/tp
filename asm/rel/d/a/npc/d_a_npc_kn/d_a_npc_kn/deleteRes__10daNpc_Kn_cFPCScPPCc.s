lbl_80A388B0:
/* 80A388B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A388B4  7C 08 02 A6 */	mflr r0
/* 80A388B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A388BC  39 61 00 20 */	addi r11, r1, 0x20
/* 80A388C0  4B 92 99 14 */	b _savegpr_27
/* 80A388C4  7C 7B 1B 78 */	mr r27, r3
/* 80A388C8  7C BC 2B 78 */	mr r28, r5
/* 80A388CC  3B A0 00 00 */	li r29, 0
/* 80A388D0  3B C0 00 00 */	li r30, 0
/* 80A388D4  7C 9F 23 78 */	mr r31, r4
/* 80A388D8  48 00 00 28 */	b lbl_80A38900
lbl_80A388DC:
/* 80A388DC  38 7E 09 24 */	addi r3, r30, 0x924
/* 80A388E0  7C 7B 1A 14 */	add r3, r27, r3
/* 80A388E4  7C 80 07 74 */	extsb r0, r4
/* 80A388E8  54 00 10 3A */	slwi r0, r0, 2
/* 80A388EC  7C 9C 00 2E */	lwzx r4, r28, r0
/* 80A388F0  4B 5F 47 18 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80A388F4  3B BD 00 01 */	addi r29, r29, 1
/* 80A388F8  3B FF 00 01 */	addi r31, r31, 1
/* 80A388FC  3B DE 00 08 */	addi r30, r30, 8
lbl_80A38900:
/* 80A38900  2C 1D 00 08 */	cmpwi r29, 8
/* 80A38904  40 80 00 14 */	bge lbl_80A38918
/* 80A38908  88 9F 00 00 */	lbz r4, 0(r31)
/* 80A3890C  7C 80 07 74 */	extsb r0, r4
/* 80A38910  2C 00 FF FF */	cmpwi r0, -1
/* 80A38914  40 82 FF C8 */	bne lbl_80A388DC
lbl_80A38918:
/* 80A38918  39 61 00 20 */	addi r11, r1, 0x20
/* 80A3891C  4B 92 99 04 */	b _restgpr_27
/* 80A38920  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A38924  7C 08 03 A6 */	mtlr r0
/* 80A38928  38 21 00 20 */	addi r1, r1, 0x20
/* 80A3892C  4E 80 00 20 */	blr 

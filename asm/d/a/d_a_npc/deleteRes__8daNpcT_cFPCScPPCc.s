lbl_801484AC:
/* 801484AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801484B0  7C 08 02 A6 */	mflr r0
/* 801484B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801484B8  39 61 00 20 */	addi r11, r1, 0x20
/* 801484BC  48 21 9D 19 */	bl _savegpr_27
/* 801484C0  7C 7B 1B 78 */	mr r27, r3
/* 801484C4  7C BC 2B 78 */	mr r28, r5
/* 801484C8  3B A0 00 00 */	li r29, 0
/* 801484CC  3B C0 00 00 */	li r30, 0
/* 801484D0  7C 9F 23 78 */	mr r31, r4
/* 801484D4  48 00 00 28 */	b lbl_801484FC
lbl_801484D8:
/* 801484D8  38 7E 08 E0 */	addi r3, r30, 0x8e0
/* 801484DC  7C 7B 1A 14 */	add r3, r27, r3
/* 801484E0  7C 80 07 74 */	extsb r0, r4
/* 801484E4  54 00 10 3A */	slwi r0, r0, 2
/* 801484E8  7C 9C 00 2E */	lwzx r4, r28, r0
/* 801484EC  4B EE 4B 1D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 801484F0  3B BD 00 01 */	addi r29, r29, 1
/* 801484F4  3B FF 00 01 */	addi r31, r31, 1
/* 801484F8  3B DE 00 08 */	addi r30, r30, 8
lbl_801484FC:
/* 801484FC  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80148500  40 80 00 14 */	bge lbl_80148514
/* 80148504  88 9F 00 00 */	lbz r4, 0(r31)
/* 80148508  7C 80 07 74 */	extsb r0, r4
/* 8014850C  2C 00 FF FF */	cmpwi r0, -1
/* 80148510  40 82 FF C8 */	bne lbl_801484D8
lbl_80148514:
/* 80148514  39 61 00 20 */	addi r11, r1, 0x20
/* 80148518  48 21 9D 09 */	bl _restgpr_27
/* 8014851C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80148520  7C 08 03 A6 */	mtlr r0
/* 80148524  38 21 00 20 */	addi r1, r1, 0x20
/* 80148528  4E 80 00 20 */	blr 

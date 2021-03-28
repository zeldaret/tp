lbl_801AC7E0:
/* 801AC7E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801AC7E4  7C 08 02 A6 */	mflr r0
/* 801AC7E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801AC7EC  39 61 00 20 */	addi r11, r1, 0x20
/* 801AC7F0  48 1B 59 E5 */	bl _savegpr_27
/* 801AC7F4  7C 7B 1B 78 */	mr r27, r3
/* 801AC7F8  7C 9C 23 78 */	mr r28, r4
/* 801AC7FC  4B EA A2 75 */	bl dKyd_darkworld_tbl_getp__Fv
/* 801AC800  7C 7F 1B 78 */	mr r31, r3
/* 801AC804  3B C0 00 00 */	li r30, 0
/* 801AC808  3B A0 00 00 */	li r29, 0
lbl_801AC80C:
/* 801AC80C  7F 63 DB 78 */	mr r3, r27
/* 801AC810  80 9F 00 00 */	lwz r4, 0(r31)
/* 801AC814  48 1B C1 81 */	bl strcmp
/* 801AC818  2C 03 00 00 */	cmpwi r3, 0
/* 801AC81C  40 82 00 28 */	bne lbl_801AC844
/* 801AC820  7F 63 DB 78 */	mr r3, r27
/* 801AC824  7F 84 E3 78 */	mr r4, r28
/* 801AC828  38 A0 00 00 */	li r5, 0
/* 801AC82C  7F A6 EB 78 */	mr r6, r29
/* 801AC830  4B FF FD 8D */	bl dKy_F_SP121Check__FPCciPUci
/* 801AC834  2C 03 00 00 */	cmpwi r3, 0
/* 801AC838  41 80 00 0C */	blt lbl_801AC844
/* 801AC83C  3B C0 00 01 */	li r30, 1
/* 801AC840  48 00 00 14 */	b lbl_801AC854
lbl_801AC844:
/* 801AC844  3B BD 00 01 */	addi r29, r29, 1
/* 801AC848  2C 1D 00 22 */	cmpwi r29, 0x22
/* 801AC84C  3B FF 00 08 */	addi r31, r31, 8
/* 801AC850  41 80 FF BC */	blt lbl_801AC80C
lbl_801AC854:
/* 801AC854  7F C3 F3 78 */	mr r3, r30
/* 801AC858  39 61 00 20 */	addi r11, r1, 0x20
/* 801AC85C  48 1B 59 C5 */	bl _restgpr_27
/* 801AC860  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801AC864  7C 08 03 A6 */	mtlr r0
/* 801AC868  38 21 00 20 */	addi r1, r1, 0x20
/* 801AC86C  4E 80 00 20 */	blr 

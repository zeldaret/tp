lbl_80023D94:
/* 80023D94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80023D98  7C 08 02 A6 */	mflr r0
/* 80023D9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80023DA0  39 61 00 20 */	addi r11, r1, 0x20
/* 80023DA4  48 33 E4 31 */	bl _savegpr_27
/* 80023DA8  7C 9B 23 78 */	mr r27, r4
/* 80023DAC  7C BC 2B 78 */	mr r28, r5
/* 80023DB0  7C DD 33 78 */	mr r29, r6
/* 80023DB4  7C FE 3B 78 */	mr r30, r7
/* 80023DB8  7F 60 07 34 */	extsh r0, r27
/* 80023DBC  2C 00 7F FF */	cmpwi r0, 0x7fff
/* 80023DC0  41 80 00 0C */	blt lbl_80023DCC
/* 80023DC4  38 60 FF FF */	li r3, -1
/* 80023DC8  48 00 00 48 */	b lbl_80023E10
lbl_80023DCC:
/* 80023DCC  38 80 00 60 */	li r4, 0x60
/* 80023DD0  3C A0 80 3A */	lis r5, submethod@ha
/* 80023DD4  38 A5 3A F0 */	addi r5, r5, submethod@l
/* 80023DD8  4B FF CF D9 */	bl fpcCtRq_Create__FP11layer_classUlP27create_request_method_class
/* 80023DDC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80023DE0  40 82 00 0C */	bne lbl_80023DEC
/* 80023DE4  38 60 FF FF */	li r3, -1
/* 80023DE8  48 00 00 28 */	b lbl_80023E10
lbl_80023DEC:
/* 80023DEC  38 7F 00 48 */	addi r3, r31, 0x48
/* 80023DF0  3C 80 80 3A */	lis r4, method@ha
/* 80023DF4  38 84 3A FC */	addi r4, r4, method@l
/* 80023DF8  48 24 28 39 */	bl cPhs_Set__FP30request_of_phase_process_classPPFPv_i
/* 80023DFC  B3 7F 00 50 */	sth r27, 0x50(r31)
/* 80023E00  93 9F 00 58 */	stw r28, 0x58(r31)
/* 80023E04  93 BF 00 5C */	stw r29, 0x5c(r31)
/* 80023E08  93 DF 00 54 */	stw r30, 0x54(r31)
/* 80023E0C  80 7F 00 3C */	lwz r3, 0x3c(r31)
lbl_80023E10:
/* 80023E10  39 61 00 20 */	addi r11, r1, 0x20
/* 80023E14  48 33 E4 0D */	bl _restgpr_27
/* 80023E18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80023E1C  7C 08 03 A6 */	mtlr r0
/* 80023E20  38 21 00 20 */	addi r1, r1, 0x20
/* 80023E24  4E 80 00 20 */	blr 

lbl_800D28F4:
/* 800D28F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800D28F8  7C 08 02 A6 */	mflr r0
/* 800D28FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800D2900  39 61 00 20 */	addi r11, r1, 0x20
/* 800D2904  48 28 F8 CD */	bl _savegpr_26
/* 800D2908  7C 7A 1B 78 */	mr r26, r3
/* 800D290C  83 63 27 EC */	lwz r27, 0x27ec(r3)
/* 800D2910  3B C0 00 00 */	li r30, 0
/* 800D2914  7F DD F3 78 */	mr r29, r30
/* 800D2918  7F DC F3 78 */	mr r28, r30
/* 800D291C  7F DF F3 78 */	mr r31, r30
/* 800D2920  81 83 06 28 */	lwz r12, 0x628(r3)
/* 800D2924  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 800D2928  7D 89 03 A6 */	mtctr r12
/* 800D292C  4E 80 04 21 */	bctrl 
/* 800D2930  2C 03 00 00 */	cmpwi r3, 0
/* 800D2934  40 82 00 10 */	bne lbl_800D2944
/* 800D2938  28 1B 00 00 */	cmplwi r27, 0
/* 800D293C  41 82 00 08 */	beq lbl_800D2944
/* 800D2940  3B E0 00 01 */	li r31, 1
lbl_800D2944:
/* 800D2944  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 800D2948  41 82 00 40 */	beq lbl_800D2988
/* 800D294C  3B E0 00 01 */	li r31, 1
/* 800D2950  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800D2954  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800D2958  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 800D295C  38 80 29 01 */	li r4, 0x2901
/* 800D2960  4B F6 20 5D */	bl isEventBit__11dSv_event_cCFUs
/* 800D2964  2C 03 00 00 */	cmpwi r3, 0
/* 800D2968  40 82 00 14 */	bne lbl_800D297C
/* 800D296C  80 1A 05 7C */	lwz r0, 0x57c(r26)
/* 800D2970  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800D2974  40 82 00 08 */	bne lbl_800D297C
/* 800D2978  3B E0 00 00 */	li r31, 0
lbl_800D297C:
/* 800D297C  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 800D2980  41 82 00 08 */	beq lbl_800D2988
/* 800D2984  3B 80 00 01 */	li r28, 1
lbl_800D2988:
/* 800D2988  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 800D298C  41 82 00 14 */	beq lbl_800D29A0
/* 800D2990  88 1B 04 96 */	lbz r0, 0x496(r27)
/* 800D2994  28 00 00 02 */	cmplwi r0, 2
/* 800D2998  40 82 00 08 */	bne lbl_800D29A0
/* 800D299C  3B A0 00 01 */	li r29, 1
lbl_800D29A0:
/* 800D29A0  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 800D29A4  41 82 00 14 */	beq lbl_800D29B8
/* 800D29A8  A0 1B 05 8E */	lhz r0, 0x58e(r27)
/* 800D29AC  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 800D29B0  41 82 00 08 */	beq lbl_800D29B8
/* 800D29B4  3B C0 00 01 */	li r30, 1
lbl_800D29B8:
/* 800D29B8  57 C3 06 3E */	clrlwi r3, r30, 0x18
/* 800D29BC  39 61 00 20 */	addi r11, r1, 0x20
/* 800D29C0  48 28 F8 5D */	bl _restgpr_26
/* 800D29C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800D29C8  7C 08 03 A6 */	mtlr r0
/* 800D29CC  38 21 00 20 */	addi r1, r1, 0x20
/* 800D29D0  4E 80 00 20 */	blr 

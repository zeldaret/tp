lbl_801F30B8:
/* 801F30B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F30BC  7C 08 02 A6 */	mflr r0
/* 801F30C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F30C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F30C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801F30CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801F30D0  3B E3 07 F0 */	addi r31, r3, 0x7f0
/* 801F30D4  7F E3 FB 78 */	mr r3, r31
/* 801F30D8  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 801F30DC  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 801F30E0  A0 84 01 C4 */	lhz r4, 0x1c4(r4)
/* 801F30E4  4B E4 18 D9 */	bl isEventBit__11dSv_event_cCFUs
/* 801F30E8  2C 03 00 00 */	cmpwi r3, 0
/* 801F30EC  40 82 00 2C */	bne lbl_801F3118
/* 801F30F0  7F E3 FB 78 */	mr r3, r31
/* 801F30F4  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 801F30F8  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 801F30FC  A0 84 01 C0 */	lhz r4, 0x1c0(r4)
/* 801F3100  4B E4 18 A5 */	bl offEventBit__11dSv_event_cFUs
/* 801F3104  7F E3 FB 78 */	mr r3, r31
/* 801F3108  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 801F310C  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 801F3110  A0 84 01 C2 */	lhz r4, 0x1c2(r4)
/* 801F3114  4B E4 18 91 */	bl offEventBit__11dSv_event_cFUs
lbl_801F3118:
/* 801F3118  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801F311C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801F3120  38 63 00 CC */	addi r3, r3, 0xcc
/* 801F3124  38 80 00 48 */	li r4, 0x48
/* 801F3128  4B E4 0D A1 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 801F312C  2C 03 00 00 */	cmpwi r3, 0
/* 801F3130  41 82 00 54 */	beq lbl_801F3184
/* 801F3134  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801F3138  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801F313C  3B E3 00 9C */	addi r31, r3, 0x9c
/* 801F3140  7F E3 FB 78 */	mr r3, r31
/* 801F3144  38 80 00 01 */	li r4, 1
/* 801F3148  38 A0 00 01 */	li r5, 1
/* 801F314C  4B E3 FE E5 */	bl getItem__17dSv_player_item_cCFib
/* 801F3150  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801F3154  28 00 00 FF */	cmplwi r0, 0xff
/* 801F3158  40 82 00 2C */	bne lbl_801F3184
/* 801F315C  7F E3 FB 78 */	mr r3, r31
/* 801F3160  38 80 00 01 */	li r4, 1
/* 801F3164  38 A0 00 48 */	li r5, 0x48
/* 801F3168  4B E3 FE 51 */	bl setItem__17dSv_player_item_cFiUc
/* 801F316C  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801F3170  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801F3174  A0 03 00 B6 */	lhz r0, 0xb6(r3)
/* 801F3178  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801F317C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801F3180  B0 03 00 08 */	sth r0, 8(r3)
lbl_801F3184:
/* 801F3184  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801F3188  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801F318C  88 83 00 DD */	lbz r4, 0xdd(r3)
/* 801F3190  28 04 00 00 */	cmplwi r4, 0
/* 801F3194  41 82 00 08 */	beq lbl_801F319C
/* 801F3198  48 02 AC 81 */	bl setMiniGameItem__13dMeter2Info_cFUc
lbl_801F319C:
/* 801F319C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F31A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F31A4  7C 08 03 A6 */	mtlr r0
/* 801F31A8  38 21 00 10 */	addi r1, r1, 0x10
/* 801F31AC  4E 80 00 20 */	blr 

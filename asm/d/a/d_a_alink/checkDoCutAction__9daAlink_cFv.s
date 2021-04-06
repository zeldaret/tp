lbl_800D27E4:
/* 800D27E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D27E8  7C 08 02 A6 */	mflr r0
/* 800D27EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D27F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D27F4  7C 7F 1B 78 */	mr r31, r3
/* 800D27F8  88 03 2F 8E */	lbz r0, 0x2f8e(r3)
/* 800D27FC  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800D2800  41 82 00 38 */	beq lbl_800D2838
/* 800D2804  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800D2808  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800D280C  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 800D2810  38 80 2A 40 */	li r4, 0x2a40
/* 800D2814  4B F6 21 A9 */	bl isEventBit__11dSv_event_cCFUs
/* 800D2818  2C 03 00 00 */	cmpwi r3, 0
/* 800D281C  40 82 00 10 */	bne lbl_800D282C
/* 800D2820  80 1F 05 7C */	lwz r0, 0x57c(r31)
/* 800D2824  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 800D2828  41 82 00 10 */	beq lbl_800D2838
lbl_800D282C:
/* 800D282C  7F E3 FB 78 */	mr r3, r31
/* 800D2830  48 00 3A 09 */	bl procCutLargeJumpChargeInit__9daAlink_cFv
/* 800D2834  48 00 00 48 */	b lbl_800D287C
lbl_800D2838:
/* 800D2838  7F E3 FB 78 */	mr r3, r31
/* 800D283C  48 00 01 99 */	bl checkDownAttackState__9daAlink_cFv
/* 800D2840  2C 03 00 00 */	cmpwi r3, 0
/* 800D2844  41 82 00 10 */	beq lbl_800D2854
/* 800D2848  7F E3 FB 78 */	mr r3, r31
/* 800D284C  48 00 2B 7D */	bl procCutDownInit__9daAlink_cFv
/* 800D2850  48 00 00 2C */	b lbl_800D287C
lbl_800D2854:
/* 800D2854  7F E3 FB 78 */	mr r3, r31
/* 800D2858  48 00 00 9D */	bl checkCutHeadState__9daAlink_cFv
/* 800D285C  2C 03 00 00 */	cmpwi r3, 0
/* 800D2860  41 82 00 10 */	beq lbl_800D2870
/* 800D2864  7F E3 FB 78 */	mr r3, r31
/* 800D2868  48 00 34 21 */	bl procCutHeadInit__9daAlink_cFv
/* 800D286C  48 00 00 10 */	b lbl_800D287C
lbl_800D2870:
/* 800D2870  7F E3 FB 78 */	mr r3, r31
/* 800D2874  38 80 00 00 */	li r4, 0
/* 800D2878  48 00 1A 85 */	bl procCutJumpInit__9daAlink_cFi
lbl_800D287C:
/* 800D287C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D2880  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D2884  7C 08 03 A6 */	mtlr r0
/* 800D2888  38 21 00 10 */	addi r1, r1, 0x10
/* 800D288C  4E 80 00 20 */	blr 

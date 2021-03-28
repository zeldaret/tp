lbl_80CDFE14:
/* 80CDFE14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDFE18  7C 08 02 A6 */	mflr r0
/* 80CDFE1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDFE20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDFE24  93 C1 00 08 */	stw r30, 8(r1)
/* 80CDFE28  7C 7E 1B 78 */	mr r30, r3
/* 80CDFE2C  38 00 00 00 */	li r0, 0
/* 80CDFE30  98 03 05 C0 */	stb r0, 0x5c0(r3)
/* 80CDFE34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CDFE38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CDFE3C  3B E3 07 F0 */	addi r31, r3, 0x7f0
/* 80CDFE40  7F E3 FB 78 */	mr r3, r31
/* 80CDFE44  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80CDFE48  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80CDFE4C  A0 84 00 10 */	lhz r4, 0x10(r4)
/* 80CDFE50  4B 35 4B 6C */	b isEventBit__11dSv_event_cCFUs
/* 80CDFE54  2C 03 00 00 */	cmpwi r3, 0
/* 80CDFE58  41 82 00 10 */	beq lbl_80CDFE68
/* 80CDFE5C  38 00 00 02 */	li r0, 2
/* 80CDFE60  98 1E 05 C0 */	stb r0, 0x5c0(r30)
/* 80CDFE64  48 00 00 28 */	b lbl_80CDFE8C
lbl_80CDFE68:
/* 80CDFE68  7F E3 FB 78 */	mr r3, r31
/* 80CDFE6C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80CDFE70  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80CDFE74  A0 84 00 0E */	lhz r4, 0xe(r4)
/* 80CDFE78  4B 35 4B 44 */	b isEventBit__11dSv_event_cCFUs
/* 80CDFE7C  2C 03 00 00 */	cmpwi r3, 0
/* 80CDFE80  41 82 00 0C */	beq lbl_80CDFE8C
/* 80CDFE84  38 00 00 01 */	li r0, 1
/* 80CDFE88  98 1E 05 C0 */	stb r0, 0x5c0(r30)
lbl_80CDFE8C:
/* 80CDFE8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDFE90  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CDFE94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDFE98  7C 08 03 A6 */	mtlr r0
/* 80CDFE9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDFEA0  4E 80 00 20 */	blr 

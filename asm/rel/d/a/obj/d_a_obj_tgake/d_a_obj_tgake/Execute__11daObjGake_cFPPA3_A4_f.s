lbl_80D0BE24:
/* 80D0BE24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0BE28  7C 08 02 A6 */	mflr r0
/* 80D0BE2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0BE30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0BE34  93 C1 00 08 */	stw r30, 8(r1)
/* 80D0BE38  7C 7E 1B 78 */	mr r30, r3
/* 80D0BE3C  7C 9F 23 78 */	mr r31, r4
/* 80D0BE40  A0 03 05 AE */	lhz r0, 0x5ae(r3)
/* 80D0BE44  28 00 03 FF */	cmplwi r0, 0x3ff
/* 80D0BE48  41 82 00 2C */	beq lbl_80D0BE74
/* 80D0BE4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D0BE50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D0BE54  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80D0BE58  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 80D0BE5C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80D0BE60  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80D0BE64  7C 84 02 2E */	lhzx r4, r4, r0
/* 80D0BE68  4B 32 8B 54 */	b isEventBit__11dSv_event_cCFUs
/* 80D0BE6C  2C 03 00 00 */	cmpwi r3, 0
/* 80D0BE70  40 82 00 38 */	bne lbl_80D0BEA8
lbl_80D0BE74:
/* 80D0BE74  A0 1E 05 AC */	lhz r0, 0x5ac(r30)
/* 80D0BE78  28 00 03 FF */	cmplwi r0, 0x3ff
/* 80D0BE7C  41 82 00 68 */	beq lbl_80D0BEE4
/* 80D0BE80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D0BE84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D0BE88  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80D0BE8C  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 80D0BE90  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80D0BE94  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80D0BE98  7C 84 02 2E */	lhzx r4, r4, r0
/* 80D0BE9C  4B 32 8B 20 */	b isEventBit__11dSv_event_cCFUs
/* 80D0BEA0  2C 03 00 00 */	cmpwi r3, 0
/* 80D0BEA4  40 82 00 40 */	bne lbl_80D0BEE4
lbl_80D0BEA8:
/* 80D0BEA8  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80D0BEAC  28 03 00 00 */	cmplwi r3, 0
/* 80D0BEB0  41 82 00 24 */	beq lbl_80D0BED4
/* 80D0BEB4  4B 55 C3 20 */	b ChkUsed__9cBgW_BgIdCFv
/* 80D0BEB8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D0BEBC  41 82 00 18 */	beq lbl_80D0BED4
/* 80D0BEC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D0BEC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D0BEC8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D0BECC  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 80D0BED0  4B 36 83 80 */	b Release__4cBgSFP9dBgW_Base
lbl_80D0BED4:
/* 80D0BED4  38 00 00 01 */	li r0, 1
/* 80D0BED8  98 1E 05 B0 */	stb r0, 0x5b0(r30)
/* 80D0BEDC  38 60 00 01 */	li r3, 1
/* 80D0BEE0  48 00 00 84 */	b lbl_80D0BF64
lbl_80D0BEE4:
/* 80D0BEE4  A0 1E 05 AC */	lhz r0, 0x5ac(r30)
/* 80D0BEE8  28 00 03 FF */	cmplwi r0, 0x3ff
/* 80D0BEEC  41 82 00 6C */	beq lbl_80D0BF58
/* 80D0BEF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D0BEF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D0BEF8  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80D0BEFC  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 80D0BF00  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80D0BF04  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80D0BF08  7C 84 02 2E */	lhzx r4, r4, r0
/* 80D0BF0C  4B 32 8A B0 */	b isEventBit__11dSv_event_cCFUs
/* 80D0BF10  2C 03 00 00 */	cmpwi r3, 0
/* 80D0BF14  41 82 00 44 */	beq lbl_80D0BF58
/* 80D0BF18  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80D0BF1C  28 03 00 00 */	cmplwi r3, 0
/* 80D0BF20  41 82 00 28 */	beq lbl_80D0BF48
/* 80D0BF24  4B 55 C2 B0 */	b ChkUsed__9cBgW_BgIdCFv
/* 80D0BF28  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D0BF2C  40 82 00 1C */	bne lbl_80D0BF48
/* 80D0BF30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D0BF34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D0BF38  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D0BF3C  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 80D0BF40  7F C5 F3 78 */	mr r5, r30
/* 80D0BF44  4B 36 8A C4 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
lbl_80D0BF48:
/* 80D0BF48  38 00 00 00 */	li r0, 0
/* 80D0BF4C  98 1E 05 B0 */	stb r0, 0x5b0(r30)
/* 80D0BF50  38 60 00 01 */	li r3, 1
/* 80D0BF54  48 00 00 10 */	b lbl_80D0BF64
lbl_80D0BF58:
/* 80D0BF58  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80D0BF5C  90 1F 00 00 */	stw r0, 0(r31)
/* 80D0BF60  38 60 00 01 */	li r3, 1
lbl_80D0BF64:
/* 80D0BF64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0BF68  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D0BF6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0BF70  7C 08 03 A6 */	mtlr r0
/* 80D0BF74  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0BF78  4E 80 00 20 */	blr 

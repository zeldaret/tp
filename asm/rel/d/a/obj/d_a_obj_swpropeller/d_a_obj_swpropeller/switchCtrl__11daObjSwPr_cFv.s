lbl_8059AB14:
/* 8059AB14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059AB18  7C 08 02 A6 */	mflr r0
/* 8059AB1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059AB20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059AB24  93 C1 00 08 */	stw r30, 8(r1)
/* 8059AB28  7C 7E 1B 78 */	mr r30, r3
/* 8059AB2C  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8059AB30  54 1F 06 3E */	clrlwi r31, r0, 0x18
/* 8059AB34  A8 03 08 28 */	lha r0, 0x828(r3)
/* 8059AB38  2C 00 00 00 */	cmpwi r0, 0
/* 8059AB3C  40 82 00 20 */	bne lbl_8059AB5C
/* 8059AB40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8059AB44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8059AB48  7F E4 FB 78 */	mr r4, r31
/* 8059AB4C  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 8059AB50  7C 05 07 74 */	extsb r5, r0
/* 8059AB54  4B A9 A7 5C */	b offSwitch__10dSv_info_cFii
/* 8059AB58  48 00 00 2C */	b lbl_8059AB84
lbl_8059AB5C:
/* 8059AB5C  38 7E 08 32 */	addi r3, r30, 0x832
/* 8059AB60  48 00 07 45 */	bl func_8059B2A4
/* 8059AB64  7C 60 07 35 */	extsh. r0, r3
/* 8059AB68  40 82 00 1C */	bne lbl_8059AB84
/* 8059AB6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8059AB70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8059AB74  7F E4 FB 78 */	mr r4, r31
/* 8059AB78  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 8059AB7C  7C 05 07 74 */	extsb r5, r0
/* 8059AB80  4B A9 A6 80 */	b onSwitch__10dSv_info_cFii
lbl_8059AB84:
/* 8059AB84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059AB88  83 C1 00 08 */	lwz r30, 8(r1)
/* 8059AB8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059AB90  7C 08 03 A6 */	mtlr r0
/* 8059AB94  38 21 00 10 */	addi r1, r1, 0x10
/* 8059AB98  4E 80 00 20 */	blr 

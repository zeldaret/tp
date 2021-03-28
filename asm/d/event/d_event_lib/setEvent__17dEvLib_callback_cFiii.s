lbl_800488A4:
/* 800488A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800488A8  7C 08 02 A6 */	mflr r0
/* 800488AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800488B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800488B4  93 C1 00 08 */	stw r30, 8(r1)
/* 800488B8  7C 7E 1B 78 */	mr r30, r3
/* 800488BC  7C DF 33 78 */	mr r31, r6
/* 800488C0  80 03 00 08 */	lwz r0, 8(r3)
/* 800488C4  28 00 00 00 */	cmplwi r0, 0
/* 800488C8  41 82 00 0C */	beq lbl_800488D4
/* 800488CC  38 60 00 00 */	li r3, 0
/* 800488D0  48 00 00 58 */	b lbl_80048928
lbl_800488D4:
/* 800488D4  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 800488D8  80 7E 00 04 */	lwz r3, 4(r30)
/* 800488DC  98 83 00 FE */	stb r4, 0xfe(r3)
/* 800488E0  2C 04 00 FF */	cmpwi r4, 0xff
/* 800488E4  41 82 00 28 */	beq lbl_8004890C
/* 800488E8  2C 05 00 FF */	cmpwi r5, 0xff
/* 800488EC  40 82 00 20 */	bne lbl_8004890C
/* 800488F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800488F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800488F8  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 800488FC  80 9E 00 04 */	lwz r4, 4(r30)
/* 80048900  7C 05 03 78 */	mr r5, r0
/* 80048904  4B FF ED 95 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc
/* 80048908  7C 65 07 34 */	extsh r5, r3
lbl_8004890C:
/* 8004890C  80 7E 00 04 */	lwz r3, 4(r30)
/* 80048910  B0 A3 00 FC */	sth r5, 0xfc(r3)
/* 80048914  B3 FE 00 0C */	sth r31, 0xc(r30)
/* 80048918  7F C3 F3 78 */	mr r3, r30
/* 8004891C  3C 80 80 42 */	lis r4, l_startAction@ha
/* 80048920  38 84 46 E0 */	addi r4, r4, l_startAction@l
/* 80048924  48 00 00 4D */	bl func_80048970
lbl_80048928:
/* 80048928  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8004892C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80048930  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80048934  7C 08 03 A6 */	mtlr r0
/* 80048938  38 21 00 10 */	addi r1, r1, 0x10
/* 8004893C  4E 80 00 20 */	blr 

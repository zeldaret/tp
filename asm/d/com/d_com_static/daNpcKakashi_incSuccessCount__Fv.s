lbl_800317DC:
/* 800317DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800317E0  7C 08 02 A6 */	mflr r0
/* 800317E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800317E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800317EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800317F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800317F4  3B E3 0D D8 */	addi r31, r3, 0xdd8
/* 800317F8  7F E3 FB 78 */	mr r3, r31
/* 800317FC  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FEFF@ha */
/* 80031800  38 84 FE FF */	addi r4, r4, 0xFEFF /* 0x0000FEFF@l */
/* 80031804  48 00 32 01 */	bl getEventReg__11dSv_event_cCFUs
/* 80031808  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 8003180C  7F E3 FB 78 */	mr r3, r31
/* 80031810  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FEFF@ha */
/* 80031814  38 84 FE FF */	addi r4, r4, 0xFEFF /* 0x0000FEFF@l */
/* 80031818  38 05 00 01 */	addi r0, r5, 1
/* 8003181C  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 80031820  48 00 31 C1 */	bl setEventReg__11dSv_event_cFUsUc
/* 80031824  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80031828  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003182C  7C 08 03 A6 */	mtlr r0
/* 80031830  38 21 00 10 */	addi r1, r1, 0x10
/* 80031834  4E 80 00 20 */	blr 

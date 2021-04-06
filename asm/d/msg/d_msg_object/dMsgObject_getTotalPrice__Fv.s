lbl_80238660:
/* 80238660  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80238664  7C 08 02 A6 */	mflr r0
/* 80238668  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023866C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80238670  93 C1 00 08 */	stw r30, 8(r1)
/* 80238674  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80238678  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8023867C  3B C3 07 F0 */	addi r30, r3, 0x7f0
/* 80238680  7F C3 F3 78 */	mr r3, r30
/* 80238684  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FEFF@ha */
/* 80238688  38 84 FE FF */	addi r4, r4, 0xFEFF /* 0x0000FEFF@l */
/* 8023868C  4B DF C3 79 */	bl getEventReg__11dSv_event_cCFUs
/* 80238690  7C 7F 1B 78 */	mr r31, r3
/* 80238694  7F C3 F3 78 */	mr r3, r30
/* 80238698  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FDFF@ha */
/* 8023869C  38 84 FD FF */	addi r4, r4, 0xFDFF /* 0x0000FDFF@l */
/* 802386A0  4B DF C3 65 */	bl getEventReg__11dSv_event_cCFUs
/* 802386A4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 802386A8  53 E0 44 2E */	rlwimi r0, r31, 8, 0x10, 0x17
/* 802386AC  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 802386B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802386B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 802386B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802386BC  7C 08 03 A6 */	mtlr r0
/* 802386C0  38 21 00 10 */	addi r1, r1, 0x10
/* 802386C4  4E 80 00 20 */	blr 

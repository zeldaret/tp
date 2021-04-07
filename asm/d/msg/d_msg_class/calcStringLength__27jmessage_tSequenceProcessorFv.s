lbl_8022CBE8:
/* 8022CBE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8022CBEC  7C 08 02 A6 */	mflr r0
/* 8022CBF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8022CBF4  39 61 00 20 */	addi r11, r1, 0x20
/* 8022CBF8  48 13 55 E1 */	bl _savegpr_28
/* 8022CBFC  7C 7C 1B 78 */	mr r28, r3
/* 8022CC00  83 A3 00 04 */	lwz r29, 4(r3)
/* 8022CC04  38 00 00 01 */	li r0, 1
/* 8022CC08  98 1D 12 74 */	stb r0, 0x1274(r29)
/* 8022CC0C  83 C3 00 A0 */	lwz r30, 0xa0(r3)
/* 8022CC10  83 E3 00 9C */	lwz r31, 0x9c(r3)
/* 8022CC14  80 03 00 08 */	lwz r0, 8(r3)
/* 8022CC18  90 03 00 54 */	stw r0, 0x54(r3)
/* 8022CC1C  93 C3 00 58 */	stw r30, 0x58(r3)
/* 8022CC20  38 00 00 00 */	li r0, 0
/* 8022CC24  90 03 00 5C */	stw r0, 0x5c(r3)
/* 8022CC28  3C 60 80 2B */	lis r3, process_onCharacterEnd_normal___Q28JMessage10TProcessorFPQ28JMessage10TProcessor@ha /* 0x802A828C@ha */
/* 8022CC2C  38 03 82 8C */	addi r0, r3, process_onCharacterEnd_normal___Q28JMessage10TProcessorFPQ28JMessage10TProcessor@l /* 0x802A828C@l */
/* 8022CC30  90 1C 00 70 */	stw r0, 0x70(r28)
/* 8022CC34  38 7C 00 4C */	addi r3, r28, 0x4c
/* 8022CC38  7F C4 F3 78 */	mr r4, r30
/* 8022CC3C  81 9C 00 4C */	lwz r12, 0x4c(r28)
/* 8022CC40  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8022CC44  7D 89 03 A6 */	mtctr r12
/* 8022CC48  4E 80 04 21 */	bctrl 
/* 8022CC4C  38 7C 00 4C */	addi r3, r28, 0x4c
/* 8022CC50  7F E4 FB 78 */	mr r4, r31
/* 8022CC54  7F C5 F3 78 */	mr r5, r30
/* 8022CC58  81 9C 00 4C */	lwz r12, 0x4c(r28)
/* 8022CC5C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8022CC60  7D 89 03 A6 */	mtctr r12
/* 8022CC64  4E 80 04 21 */	bctrl 
/* 8022CC68  38 7C 00 4C */	addi r3, r28, 0x4c
/* 8022CC6C  7F E4 FB 78 */	mr r4, r31
/* 8022CC70  7F C5 F3 78 */	mr r5, r30
/* 8022CC74  81 9C 00 4C */	lwz r12, 0x4c(r28)
/* 8022CC78  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8022CC7C  7D 89 03 A6 */	mtctr r12
/* 8022CC80  4E 80 04 21 */	bctrl 
/* 8022CC84  38 7C 00 4C */	addi r3, r28, 0x4c
/* 8022CC88  38 80 00 00 */	li r4, 0
/* 8022CC8C  48 07 BE 95 */	bl process__Q28JMessage19TRenderingProcessorFPCc
/* 8022CC90  38 00 00 00 */	li r0, 0
/* 8022CC94  98 1D 12 74 */	stb r0, 0x1274(r29)
/* 8022CC98  39 61 00 20 */	addi r11, r1, 0x20
/* 8022CC9C  48 13 55 89 */	bl _restgpr_28
/* 8022CCA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8022CCA4  7C 08 03 A6 */	mtlr r0
/* 8022CCA8  38 21 00 20 */	addi r1, r1, 0x20
/* 8022CCAC  4E 80 00 20 */	blr 

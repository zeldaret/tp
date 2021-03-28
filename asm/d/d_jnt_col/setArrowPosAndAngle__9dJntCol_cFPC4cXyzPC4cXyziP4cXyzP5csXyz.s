lbl_80036FA8:
/* 80036FA8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80036FAC  7C 08 02 A6 */	mflr r0
/* 80036FB0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80036FB4  39 61 00 30 */	addi r11, r1, 0x30
/* 80036FB8  48 32 B2 1D */	bl _savegpr_27
/* 80036FBC  7C 7B 1B 78 */	mr r27, r3
/* 80036FC0  7C 9C 23 78 */	mr r28, r4
/* 80036FC4  7C FD 3B 78 */	mr r29, r7
/* 80036FC8  7D 1E 43 78 */	mr r30, r8
/* 80036FCC  80 63 00 04 */	lwz r3, 4(r3)
/* 80036FD0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80036FD4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80036FD8  1F E6 00 30 */	mulli r31, r6, 0x30
/* 80036FDC  7C 60 FA 14 */	add r3, r0, r31
/* 80036FE0  7C A4 2B 78 */	mr r4, r5
/* 80036FE4  38 A1 00 08 */	addi r5, r1, 8
/* 80036FE8  48 30 FE 65 */	bl PSMTXMultVecSR
/* 80036FEC  38 61 00 08 */	addi r3, r1, 8
/* 80036FF0  48 23 01 61 */	bl atan2sY_XZ__4cXyzCFv
/* 80036FF4  B0 7E 00 00 */	sth r3, 0(r30)
/* 80036FF8  38 61 00 08 */	addi r3, r1, 8
/* 80036FFC  48 23 01 2D */	bl atan2sX_Z__4cXyzCFv
/* 80037000  B0 7E 00 02 */	sth r3, 2(r30)
/* 80037004  80 7B 00 04 */	lwz r3, 4(r27)
/* 80037008  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8003700C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80037010  7C 60 FA 14 */	add r3, r0, r31
/* 80037014  7F 84 E3 78 */	mr r4, r28
/* 80037018  7F A5 EB 78 */	mr r5, r29
/* 8003701C  48 30 FD 51 */	bl PSMTXMultVec
/* 80037020  39 61 00 30 */	addi r11, r1, 0x30
/* 80037024  48 32 B1 FD */	bl _restgpr_27
/* 80037028  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8003702C  7C 08 03 A6 */	mtlr r0
/* 80037030  38 21 00 30 */	addi r1, r1, 0x30
/* 80037034  4E 80 00 20 */	blr 

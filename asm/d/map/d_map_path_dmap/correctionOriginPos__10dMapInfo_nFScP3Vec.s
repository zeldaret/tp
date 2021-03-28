lbl_8003ED60:
/* 8003ED60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003ED64  7C 08 02 A6 */	mflr r0
/* 8003ED68  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003ED6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003ED70  93 C1 00 08 */	stw r30, 8(r1)
/* 8003ED74  7C 9E 23 79 */	or. r30, r4, r4
/* 8003ED78  3C A0 80 3F */	lis r5, mStatus__20dStage_roomControl_c@ha
/* 8003ED7C  38 A5 60 94 */	addi r5, r5, mStatus__20dStage_roomControl_c@l
/* 8003ED80  7C 60 07 74 */	extsb r0, r3
/* 8003ED84  1C 00 04 04 */	mulli r0, r0, 0x404
/* 8003ED88  7C 65 02 14 */	add r3, r5, r0
/* 8003ED8C  83 E3 00 20 */	lwz r31, 0x20(r3)
/* 8003ED90  41 82 00 18 */	beq lbl_8003EDA8
/* 8003ED94  7F E3 FB 78 */	mr r3, r31
/* 8003ED98  48 00 00 55 */	bl rotAngle__10dMapInfo_nFPC21dStage_FileList2_dt_cP3Vec
/* 8003ED9C  7F E3 FB 78 */	mr r3, r31
/* 8003EDA0  7F C4 F3 78 */	mr r4, r30
/* 8003EDA4  48 00 00 1D */	bl offsetPlus__10dMapInfo_nFPC21dStage_FileList2_dt_cP3Vec
lbl_8003EDA8:
/* 8003EDA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003EDAC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8003EDB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003EDB4  7C 08 03 A6 */	mtlr r0
/* 8003EDB8  38 21 00 10 */	addi r1, r1, 0x10
/* 8003EDBC  4E 80 00 20 */	blr 

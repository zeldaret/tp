lbl_8002839C:
/* 8002839C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800283A0  7C 08 02 A6 */	mflr r0
/* 800283A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800283A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800283AC  93 C1 00 08 */	stw r30, 8(r1)
/* 800283B0  7C 7E 1B 78 */	mr r30, r3
/* 800283B4  3C 60 80 3A */	lis r3, __vt__11dStage_dt_c@ha
/* 800283B8  38 03 6D 94 */	addi r0, r3, __vt__11dStage_dt_c@l
/* 800283BC  90 1E 00 00 */	stw r0, 0(r30)
/* 800283C0  3C 60 80 3A */	lis r3, __vt__15dStage_roomDt_c@ha
/* 800283C4  38 03 6A AC */	addi r0, r3, __vt__15dStage_roomDt_c@l
/* 800283C8  90 1E 00 00 */	stw r0, 0(r30)
/* 800283CC  3B FE 00 6C */	addi r31, r30, 0x6c
/* 800283D0  7F E3 FB 78 */	mr r3, r31
/* 800283D4  3C 80 80 3A */	lis r4, j3dDefaultLightInfo@ha
/* 800283D8  38 84 1E C8 */	addi r4, r4, j3dDefaultLightInfo@l
/* 800283DC  48 2F D2 E9 */	bl __as__12J3DLightInfoFRC12J3DLightInfo
/* 800283E0  38 7F 00 74 */	addi r3, r31, 0x74
/* 800283E4  3C 80 80 02 */	lis r4, __ct__11J3DLightObjFv@ha
/* 800283E8  38 84 8C 0C */	addi r4, r4, __ct__11J3DLightObjFv@l
/* 800283EC  38 A0 00 00 */	li r5, 0
/* 800283F0  38 C0 00 74 */	li r6, 0x74
/* 800283F4  38 E0 00 06 */	li r7, 6
/* 800283F8  48 33 99 69 */	bl __construct_array
/* 800283FC  7F C3 F3 78 */	mr r3, r30
/* 80028400  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80028404  83 C1 00 08 */	lwz r30, 8(r1)
/* 80028408  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002840C  7C 08 03 A6 */	mtlr r0
/* 80028410  38 21 00 10 */	addi r1, r1, 0x10
/* 80028414  4E 80 00 20 */	blr 

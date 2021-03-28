lbl_80657EA0:
/* 80657EA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80657EA4  7C 08 02 A6 */	mflr r0
/* 80657EA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80657EAC  39 61 00 20 */	addi r11, r1, 0x20
/* 80657EB0  4B D0 A3 2C */	b _savegpr_29
/* 80657EB4  7C 7F 1B 78 */	mr r31, r3
/* 80657EB8  80 63 04 A4 */	lwz r3, 0x4a4(r3)
/* 80657EBC  4B 9C 94 9C */	b fpcEx_SearchByID__FUi
/* 80657EC0  7C 7E 1B 78 */	mr r30, r3
/* 80657EC4  80 7F 07 10 */	lwz r3, 0x710(r31)
/* 80657EC8  2C 03 00 00 */	cmpwi r3, 0
/* 80657ECC  40 81 00 0C */	ble lbl_80657ED8
/* 80657ED0  38 03 FF FF */	addi r0, r3, -1
/* 80657ED4  90 1F 07 10 */	stw r0, 0x710(r31)
lbl_80657ED8:
/* 80657ED8  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 80657EDC  4B A2 C5 84 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80657EE0  28 03 00 00 */	cmplwi r3, 0
/* 80657EE4  41 82 00 3C */	beq lbl_80657F20
/* 80657EE8  80 1F 07 10 */	lwz r0, 0x710(r31)
/* 80657EEC  2C 00 00 00 */	cmpwi r0, 0
/* 80657EF0  40 82 00 30 */	bne lbl_80657F20
/* 80657EF4  28 1E 00 00 */	cmplwi r30, 0
/* 80657EF8  41 82 00 20 */	beq lbl_80657F18
/* 80657EFC  7F C3 F3 78 */	mr r3, r30
/* 80657F00  28 1F 00 00 */	cmplwi r31, 0
/* 80657F04  41 82 00 0C */	beq lbl_80657F10
/* 80657F08  80 9F 00 04 */	lwz r4, 4(r31)
/* 80657F0C  48 00 00 08 */	b lbl_80657F14
lbl_80657F10:
/* 80657F10  38 80 FF FF */	li r4, -1
lbl_80657F14:
/* 80657F14  48 34 5C 90 */	b deleteFireArrow__12daNpcCoach_cFUi
lbl_80657F18:
/* 80657F18  38 00 00 14 */	li r0, 0x14
/* 80657F1C  90 1F 07 10 */	stw r0, 0x710(r31)
lbl_80657F20:
/* 80657F20  28 1E 00 00 */	cmplwi r30, 0
/* 80657F24  41 82 00 9C */	beq lbl_80657FC0
/* 80657F28  88 1E 1D C4 */	lbz r0, 0x1dc4(r30)
/* 80657F2C  28 00 00 00 */	cmplwi r0, 0
/* 80657F30  41 82 00 90 */	beq lbl_80657FC0
/* 80657F34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80657F38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80657F3C  3B A3 56 B8 */	addi r29, r3, 0x56b8
/* 80657F40  7F A3 EB 78 */	mr r3, r29
/* 80657F44  4B A1 B8 A0 */	b LockonTruth__12dAttention_cFv
/* 80657F48  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80657F4C  41 82 00 48 */	beq lbl_80657F94
/* 80657F50  7F A3 EB 78 */	mr r3, r29
/* 80657F54  38 80 00 00 */	li r4, 0
/* 80657F58  4B A1 B5 E4 */	b LockonTarget__12dAttention_cFl
/* 80657F5C  7C 03 F8 40 */	cmplw r3, r31
/* 80657F60  41 82 00 60 */	beq lbl_80657FC0
/* 80657F64  7F C3 F3 78 */	mr r3, r30
/* 80657F68  28 1F 00 00 */	cmplwi r31, 0
/* 80657F6C  41 82 00 0C */	beq lbl_80657F78
/* 80657F70  80 9F 00 04 */	lwz r4, 4(r31)
/* 80657F74  48 00 00 08 */	b lbl_80657F7C
lbl_80657F78:
/* 80657F78  38 80 FF FF */	li r4, -1
lbl_80657F7C:
/* 80657F7C  48 34 5D 6C */	b deleteFireArrowFromList__12daNpcCoach_cFUi
/* 80657F80  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80657F84  41 82 00 3C */	beq lbl_80657FC0
/* 80657F88  7F E3 FB 78 */	mr r3, r31
/* 80657F8C  4B 9C 1C F0 */	b fopAcM_delete__FP10fopAc_ac_c
/* 80657F90  48 00 00 30 */	b lbl_80657FC0
lbl_80657F94:
/* 80657F94  7F C3 F3 78 */	mr r3, r30
/* 80657F98  28 1F 00 00 */	cmplwi r31, 0
/* 80657F9C  41 82 00 0C */	beq lbl_80657FA8
/* 80657FA0  80 9F 00 04 */	lwz r4, 4(r31)
/* 80657FA4  48 00 00 08 */	b lbl_80657FAC
lbl_80657FA8:
/* 80657FA8  38 80 FF FF */	li r4, -1
lbl_80657FAC:
/* 80657FAC  48 34 5D 3C */	b deleteFireArrowFromList__12daNpcCoach_cFUi
/* 80657FB0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80657FB4  41 82 00 0C */	beq lbl_80657FC0
/* 80657FB8  7F E3 FB 78 */	mr r3, r31
/* 80657FBC  4B 9C 1C C0 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80657FC0:
/* 80657FC0  80 7F 06 FC */	lwz r3, 0x6fc(r31)
/* 80657FC4  28 03 00 00 */	cmplwi r3, 0
/* 80657FC8  41 82 00 54 */	beq lbl_8065801C
/* 80657FCC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80657FD0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80657FD4  4B CE E4 DC */	b PSMTXCopy
/* 80657FD8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80657FDC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80657FE0  38 9F 07 00 */	addi r4, r31, 0x700
/* 80657FE4  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80657FE8  4B CE ED 84 */	b PSMTXMultVec
/* 80657FEC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80657FF0  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80657FF4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80657FF8  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80657FFC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80658000  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80658004  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80658008  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 8065800C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80658010  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80658014  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80658018  D0 1F 05 40 */	stfs f0, 0x540(r31)
lbl_8065801C:
/* 8065801C  80 1F 07 10 */	lwz r0, 0x710(r31)
/* 80658020  2C 00 00 00 */	cmpwi r0, 0
/* 80658024  41 82 00 1C */	beq lbl_80658040
/* 80658028  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 8065802C  81 9F 06 00 */	lwz r12, 0x600(r31)
/* 80658030  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80658034  7D 89 03 A6 */	mtctr r12
/* 80658038  4E 80 04 21 */	bctrl 
/* 8065803C  48 00 00 24 */	b lbl_80658060
lbl_80658040:
/* 80658040  38 7F 06 E8 */	addi r3, r31, 0x6e8
/* 80658044  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80658048  4B C1 76 00 */	b SetC__8cM3dGSphFRC4cXyz
/* 8065804C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80658050  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80658054  38 63 23 3C */	addi r3, r3, 0x233c
/* 80658058  38 9F 05 C4 */	addi r4, r31, 0x5c4
/* 8065805C  4B C0 CB 4C */	b Set__4cCcSFP8cCcD_Obj
lbl_80658060:
/* 80658060  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80658064  D0 1F 05 68 */	stfs f0, 0x568(r31)
/* 80658068  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8065806C  D0 1F 05 6C */	stfs f0, 0x56c(r31)
/* 80658070  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80658074  D0 1F 05 70 */	stfs f0, 0x570(r31)
/* 80658078  38 60 00 01 */	li r3, 1
/* 8065807C  39 61 00 20 */	addi r11, r1, 0x20
/* 80658080  4B D0 A1 A8 */	b _restgpr_29
/* 80658084  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80658088  7C 08 03 A6 */	mtlr r0
/* 8065808C  38 21 00 20 */	addi r1, r1, 0x20
/* 80658090  4E 80 00 20 */	blr 

lbl_80158BB8:
/* 80158BB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80158BBC  7C 08 02 A6 */	mflr r0
/* 80158BC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80158BC4  39 61 00 20 */	addi r11, r1, 0x20
/* 80158BC8  48 20 96 11 */	bl _savegpr_28
/* 80158BCC  7C 7C 1B 78 */	mr r28, r3
/* 80158BD0  7C 9D 23 78 */	mr r29, r4
/* 80158BD4  88 03 0A C6 */	lbz r0, 0xac6(r3)
/* 80158BD8  28 00 00 00 */	cmplwi r0, 0
/* 80158BDC  41 82 00 48 */	beq lbl_80158C24
/* 80158BE0  38 7C 05 6C */	addi r3, r28, 0x56c
/* 80158BE4  57 BF 10 3A */	slwi r31, r29, 2
/* 80158BE8  3C 80 80 3B */	lis r4, l_resNameTbl@ha /* 0x803B61CC@ha */
/* 80158BEC  3B C4 61 CC */	addi r30, r4, l_resNameTbl@l /* 0x803B61CC@l */
/* 80158BF0  7C 9E F8 2E */	lwzx r4, r30, r31
/* 80158BF4  80 84 00 04 */	lwz r4, 4(r4)
/* 80158BF8  4B ED 42 C5 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80158BFC  2C 03 00 04 */	cmpwi r3, 4
/* 80158C00  41 82 00 08 */	beq lbl_80158C08
/* 80158C04  48 00 00 A0 */	b lbl_80158CA4
lbl_80158C08:
/* 80158C08  38 7C 05 84 */	addi r3, r28, 0x584
/* 80158C0C  7C 9E F8 2E */	lwzx r4, r30, r31
/* 80158C10  80 84 00 14 */	lwz r4, 0x14(r4)
/* 80158C14  4B ED 42 A9 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80158C18  2C 03 00 04 */	cmpwi r3, 4
/* 80158C1C  41 82 00 4C */	beq lbl_80158C68
/* 80158C20  48 00 00 84 */	b lbl_80158CA4
lbl_80158C24:
/* 80158C24  38 7C 05 6C */	addi r3, r28, 0x56c
/* 80158C28  57 BF 10 3A */	slwi r31, r29, 2
/* 80158C2C  3C 80 80 3B */	lis r4, l_resNameTbl@ha /* 0x803B61CC@ha */
/* 80158C30  3B C4 61 CC */	addi r30, r4, l_resNameTbl@l /* 0x803B61CC@l */
/* 80158C34  7C 9E F8 2E */	lwzx r4, r30, r31
/* 80158C38  80 84 00 00 */	lwz r4, 0(r4)
/* 80158C3C  4B ED 42 81 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80158C40  2C 03 00 04 */	cmpwi r3, 4
/* 80158C44  41 82 00 08 */	beq lbl_80158C4C
/* 80158C48  48 00 00 5C */	b lbl_80158CA4
lbl_80158C4C:
/* 80158C4C  38 7C 05 84 */	addi r3, r28, 0x584
/* 80158C50  7C 9E F8 2E */	lwzx r4, r30, r31
/* 80158C54  80 84 00 10 */	lwz r4, 0x10(r4)
/* 80158C58  4B ED 42 65 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80158C5C  2C 03 00 04 */	cmpwi r3, 4
/* 80158C60  41 82 00 08 */	beq lbl_80158C68
/* 80158C64  48 00 00 40 */	b lbl_80158CA4
lbl_80158C68:
/* 80158C68  38 7C 05 74 */	addi r3, r28, 0x574
/* 80158C6C  57 BE 10 3A */	slwi r30, r29, 2
/* 80158C70  3C 80 80 3B */	lis r4, l_resNameTbl@ha /* 0x803B61CC@ha */
/* 80158C74  3B E4 61 CC */	addi r31, r4, l_resNameTbl@l /* 0x803B61CC@l */
/* 80158C78  7C 9F F0 2E */	lwzx r4, r31, r30
/* 80158C7C  80 84 00 08 */	lwz r4, 8(r4)
/* 80158C80  4B ED 42 3D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80158C84  2C 03 00 04 */	cmpwi r3, 4
/* 80158C88  41 82 00 08 */	beq lbl_80158C90
/* 80158C8C  48 00 00 18 */	b lbl_80158CA4
lbl_80158C90:
/* 80158C90  38 7C 05 7C */	addi r3, r28, 0x57c
/* 80158C94  7C 9F F0 2E */	lwzx r4, r31, r30
/* 80158C98  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80158C9C  4B ED 42 21 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80158CA0  2C 03 00 04 */	cmpwi r3, 4
lbl_80158CA4:
/* 80158CA4  39 61 00 20 */	addi r11, r1, 0x20
/* 80158CA8  48 20 95 7D */	bl _restgpr_28
/* 80158CAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80158CB0  7C 08 03 A6 */	mtlr r0
/* 80158CB4  38 21 00 20 */	addi r1, r1, 0x20
/* 80158CB8  4E 80 00 20 */	blr 

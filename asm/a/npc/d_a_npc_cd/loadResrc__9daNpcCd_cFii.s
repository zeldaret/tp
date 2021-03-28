lbl_80156B4C:
/* 80156B4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80156B50  7C 08 02 A6 */	mflr r0
/* 80156B54  90 01 00 24 */	stw r0, 0x24(r1)
/* 80156B58  39 61 00 20 */	addi r11, r1, 0x20
/* 80156B5C  48 20 B6 7D */	bl _savegpr_28
/* 80156B60  7C 7C 1B 78 */	mr r28, r3
/* 80156B64  7C 9D 23 78 */	mr r29, r4
/* 80156B68  88 03 09 E8 */	lbz r0, 0x9e8(r3)
/* 80156B6C  28 00 00 00 */	cmplwi r0, 0
/* 80156B70  41 82 00 48 */	beq lbl_80156BB8
/* 80156B74  38 7C 05 6C */	addi r3, r28, 0x56c
/* 80156B78  57 BF 10 3A */	slwi r31, r29, 2
/* 80156B7C  3C 80 80 3B */	lis r4, l_resNameTbl@ha
/* 80156B80  3B C4 3B 8C */	addi r30, r4, l_resNameTbl@l
/* 80156B84  7C 9E F8 2E */	lwzx r4, r30, r31
/* 80156B88  80 84 00 04 */	lwz r4, 4(r4)
/* 80156B8C  4B ED 63 31 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80156B90  2C 03 00 04 */	cmpwi r3, 4
/* 80156B94  41 82 00 08 */	beq lbl_80156B9C
/* 80156B98  48 00 00 A0 */	b lbl_80156C38
lbl_80156B9C:
/* 80156B9C  38 7C 05 84 */	addi r3, r28, 0x584
/* 80156BA0  7C 9E F8 2E */	lwzx r4, r30, r31
/* 80156BA4  80 84 00 14 */	lwz r4, 0x14(r4)
/* 80156BA8  4B ED 63 15 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80156BAC  2C 03 00 04 */	cmpwi r3, 4
/* 80156BB0  41 82 00 4C */	beq lbl_80156BFC
/* 80156BB4  48 00 00 84 */	b lbl_80156C38
lbl_80156BB8:
/* 80156BB8  38 7C 05 6C */	addi r3, r28, 0x56c
/* 80156BBC  57 BF 10 3A */	slwi r31, r29, 2
/* 80156BC0  3C 80 80 3B */	lis r4, l_resNameTbl@ha
/* 80156BC4  3B C4 3B 8C */	addi r30, r4, l_resNameTbl@l
/* 80156BC8  7C 9E F8 2E */	lwzx r4, r30, r31
/* 80156BCC  80 84 00 00 */	lwz r4, 0(r4)
/* 80156BD0  4B ED 62 ED */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80156BD4  2C 03 00 04 */	cmpwi r3, 4
/* 80156BD8  41 82 00 08 */	beq lbl_80156BE0
/* 80156BDC  48 00 00 5C */	b lbl_80156C38
lbl_80156BE0:
/* 80156BE0  38 7C 05 84 */	addi r3, r28, 0x584
/* 80156BE4  7C 9E F8 2E */	lwzx r4, r30, r31
/* 80156BE8  80 84 00 10 */	lwz r4, 0x10(r4)
/* 80156BEC  4B ED 62 D1 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80156BF0  2C 03 00 04 */	cmpwi r3, 4
/* 80156BF4  41 82 00 08 */	beq lbl_80156BFC
/* 80156BF8  48 00 00 40 */	b lbl_80156C38
lbl_80156BFC:
/* 80156BFC  38 7C 05 74 */	addi r3, r28, 0x574
/* 80156C00  57 BE 10 3A */	slwi r30, r29, 2
/* 80156C04  3C 80 80 3B */	lis r4, l_resNameTbl@ha
/* 80156C08  3B E4 3B 8C */	addi r31, r4, l_resNameTbl@l
/* 80156C0C  7C 9F F0 2E */	lwzx r4, r31, r30
/* 80156C10  80 84 00 08 */	lwz r4, 8(r4)
/* 80156C14  4B ED 62 A9 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80156C18  2C 03 00 04 */	cmpwi r3, 4
/* 80156C1C  41 82 00 08 */	beq lbl_80156C24
/* 80156C20  48 00 00 18 */	b lbl_80156C38
lbl_80156C24:
/* 80156C24  38 7C 05 7C */	addi r3, r28, 0x57c
/* 80156C28  7C 9F F0 2E */	lwzx r4, r31, r30
/* 80156C2C  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80156C30  4B ED 62 8D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80156C34  2C 03 00 04 */	cmpwi r3, 4
lbl_80156C38:
/* 80156C38  39 61 00 20 */	addi r11, r1, 0x20
/* 80156C3C  48 20 B5 E9 */	bl _restgpr_28
/* 80156C40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80156C44  7C 08 03 A6 */	mtlr r0
/* 80156C48  38 21 00 20 */	addi r1, r1, 0x20
/* 80156C4C  4E 80 00 20 */	blr 

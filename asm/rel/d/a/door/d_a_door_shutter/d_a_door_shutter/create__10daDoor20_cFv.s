lbl_80462F2C:
/* 80462F2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80462F30  7C 08 02 A6 */	mflr r0
/* 80462F34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80462F38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80462F3C  7C 7F 1B 78 */	mr r31, r3
/* 80462F40  4B FF DC 55 */	bl getAlwaysArcName__10daDoor20_cFv
/* 80462F44  7C 64 1B 78 */	mr r4, r3
/* 80462F48  38 7F 05 6C */	addi r3, r31, 0x56c
/* 80462F4C  4B BC 9F 71 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80462F50  2C 03 00 04 */	cmpwi r3, 4
/* 80462F54  41 82 00 08 */	beq lbl_80462F5C
/* 80462F58  48 00 00 74 */	b lbl_80462FCC
lbl_80462F5C:
/* 80462F5C  7F E3 FB 78 */	mr r3, r31
/* 80462F60  4B FF DC 45 */	bl getArcName__10daDoor20_cFv
/* 80462F64  28 03 00 00 */	cmplwi r3, 0
/* 80462F68  41 82 00 24 */	beq lbl_80462F8C
/* 80462F6C  7F E3 FB 78 */	mr r3, r31
/* 80462F70  4B FF DC 35 */	bl getArcName__10daDoor20_cFv
/* 80462F74  7C 64 1B 78 */	mr r4, r3
/* 80462F78  38 7F 05 74 */	addi r3, r31, 0x574
/* 80462F7C  4B BC 9F 41 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80462F80  2C 03 00 04 */	cmpwi r3, 4
/* 80462F84  41 82 00 08 */	beq lbl_80462F8C
/* 80462F88  48 00 00 44 */	b lbl_80462FCC
lbl_80462F8C:
/* 80462F8C  7F E3 FB 78 */	mr r3, r31
/* 80462F90  4B BD 72 29 */	bl getFRoomNo__13door_param2_cFP10fopAc_ac_c
/* 80462F94  98 7F 04 E2 */	stb r3, 0x4e2(r31)
/* 80462F98  7F E3 FB 78 */	mr r3, r31
/* 80462F9C  3C 80 80 46 */	lis r4, CheckCreateHeap__FP10fopAc_ac_c@ha /* 0x80460D8C@ha */
/* 80462FA0  38 84 0D 8C */	addi r4, r4, CheckCreateHeap__FP10fopAc_ac_c@l /* 0x80460D8C@l */
/* 80462FA4  3C A0 80 00 */	lis r5, 0x8000 /* 0x80003800@ha */
/* 80462FA8  38 A5 38 00 */	addi r5, r5, 0x3800 /* 0x80003800@l */
/* 80462FAC  4B BB 75 05 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80462FB0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80462FB4  40 82 00 0C */	bne lbl_80462FC0
/* 80462FB8  38 60 00 05 */	li r3, 5
/* 80462FBC  48 00 00 10 */	b lbl_80462FCC
lbl_80462FC0:
/* 80462FC0  7F E3 FB 78 */	mr r3, r31
/* 80462FC4  4B FF FC 69 */	bl CreateInit__10daDoor20_cFv
/* 80462FC8  38 60 00 04 */	li r3, 4
lbl_80462FCC:
/* 80462FCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80462FD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80462FD4  7C 08 03 A6 */	mtlr r0
/* 80462FD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80462FDC  4E 80 00 20 */	blr 

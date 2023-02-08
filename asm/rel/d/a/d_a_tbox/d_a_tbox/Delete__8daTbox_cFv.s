lbl_80495C9C:
/* 80495C9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80495CA0  7C 08 02 A6 */	mflr r0
/* 80495CA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80495CA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80495CAC  7C 7F 1B 78 */	mr r31, r3
/* 80495CB0  80 83 07 3C */	lwz r4, 0x73c(r3)
/* 80495CB4  28 04 00 00 */	cmplwi r4, 0
/* 80495CB8  41 82 00 14 */	beq lbl_80495CCC
/* 80495CBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80495CC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80495CC4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80495CC8  4B BD E5 89 */	bl Release__4cBgSFP9dBgW_Base
lbl_80495CCC:
/* 80495CCC  7F E3 FB 78 */	mr r3, r31
/* 80495CD0  4B FF B1 81 */	bl getModelInfo__8daTbox_cFv
/* 80495CD4  7C 64 1B 78 */	mr r4, r3
/* 80495CD8  38 7F 07 1C */	addi r3, r31, 0x71c
/* 80495CDC  80 84 00 00 */	lwz r4, 0(r4)
/* 80495CE0  4B B9 73 29 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80495CE4  38 60 00 01 */	li r3, 1
/* 80495CE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80495CEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80495CF0  7C 08 03 A6 */	mtlr r0
/* 80495CF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80495CF8  4E 80 00 20 */	blr 

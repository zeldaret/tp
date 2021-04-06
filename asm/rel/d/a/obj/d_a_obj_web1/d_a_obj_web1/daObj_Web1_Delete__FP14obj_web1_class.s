lbl_80D35A44:
/* 80D35A44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D35A48  7C 08 02 A6 */	mflr r0
/* 80D35A4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D35A50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D35A54  7C 7F 1B 78 */	mr r31, r3
/* 80D35A58  38 7F 05 68 */	addi r3, r31, 0x568
/* 80D35A5C  3C 80 80 D3 */	lis r4, d_a_obj_web1__stringBase0@ha /* 0x80D36120@ha */
/* 80D35A60  38 84 61 20 */	addi r4, r4, d_a_obj_web1__stringBase0@l /* 0x80D36120@l */
/* 80D35A64  4B 2F 75 A5 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D35A68  88 1F 07 6C */	lbz r0, 0x76c(r31)
/* 80D35A6C  28 00 00 00 */	cmplwi r0, 0
/* 80D35A70  41 82 00 10 */	beq lbl_80D35A80
/* 80D35A74  38 00 00 00 */	li r0, 0
/* 80D35A78  3C 60 80 D3 */	lis r3, data_80D361F8@ha /* 0x80D361F8@ha */
/* 80D35A7C  98 03 61 F8 */	stb r0, data_80D361F8@l(r3)  /* 0x80D361F8@l */
lbl_80D35A80:
/* 80D35A80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D35A84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D35A88  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D35A8C  80 9F 05 F0 */	lwz r4, 0x5f0(r31)
/* 80D35A90  4B 33 E7 C1 */	bl Release__4cBgSFP9dBgW_Base
/* 80D35A94  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80D35A98  28 00 00 00 */	cmplwi r0, 0
/* 80D35A9C  41 82 00 0C */	beq lbl_80D35AA8
/* 80D35AA0  38 7F 05 7C */	addi r3, r31, 0x57c
/* 80D35AA4  4B 58 85 55 */	bl deleteObject__14Z2SoundObjBaseFv
lbl_80D35AA8:
/* 80D35AA8  38 60 00 01 */	li r3, 1
/* 80D35AAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D35AB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D35AB4  7C 08 03 A6 */	mtlr r0
/* 80D35AB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D35ABC  4E 80 00 20 */	blr 

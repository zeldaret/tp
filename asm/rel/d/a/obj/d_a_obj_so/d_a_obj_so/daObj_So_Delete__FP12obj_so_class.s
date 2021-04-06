lbl_80CE2F68:
/* 80CE2F68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CE2F6C  7C 08 02 A6 */	mflr r0
/* 80CE2F70  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CE2F74  39 61 00 20 */	addi r11, r1, 0x20
/* 80CE2F78  4B 67 F2 61 */	bl _savegpr_28
/* 80CE2F7C  7C 7C 1B 78 */	mr r28, r3
/* 80CE2F80  38 7C 05 68 */	addi r3, r28, 0x568
/* 80CE2F84  3C 80 80 CE */	lis r4, d_a_obj_so__stringBase0@ha /* 0x80CE3B60@ha */
/* 80CE2F88  38 84 3B 60 */	addi r4, r4, d_a_obj_so__stringBase0@l /* 0x80CE3B60@l */
/* 80CE2F8C  38 84 00 08 */	addi r4, r4, 8
/* 80CE2F90  4B 34 A0 79 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CE2F94  88 1C 1B CC */	lbz r0, 0x1bcc(r28)
/* 80CE2F98  28 00 00 00 */	cmplwi r0, 0
/* 80CE2F9C  41 82 00 10 */	beq lbl_80CE2FAC
/* 80CE2FA0  38 00 00 00 */	li r0, 0
/* 80CE2FA4  3C 60 80 CE */	lis r3, data_80CE3C90@ha /* 0x80CE3C90@ha */
/* 80CE2FA8  98 03 3C 90 */	stb r0, data_80CE3C90@l(r3)  /* 0x80CE3C90@l */
lbl_80CE2FAC:
/* 80CE2FAC  3B A0 00 00 */	li r29, 0
/* 80CE2FB0  3B E0 00 00 */	li r31, 0
/* 80CE2FB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CE2FB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CE2FBC  3B C3 0F 38 */	addi r30, r3, 0xf38
lbl_80CE2FC0:
/* 80CE2FC0  38 1F 10 4C */	addi r0, r31, 0x104c
/* 80CE2FC4  7C 9C 00 2E */	lwzx r4, r28, r0
/* 80CE2FC8  28 04 00 00 */	cmplwi r4, 0
/* 80CE2FCC  41 82 00 0C */	beq lbl_80CE2FD8
/* 80CE2FD0  7F C3 F3 78 */	mr r3, r30
/* 80CE2FD4  4B 39 12 7D */	bl Release__4cBgSFP9dBgW_Base
lbl_80CE2FD8:
/* 80CE2FD8  3B BD 00 01 */	addi r29, r29, 1
/* 80CE2FDC  2C 1D 00 02 */	cmpwi r29, 2
/* 80CE2FE0  3B FF 00 04 */	addi r31, r31, 4
/* 80CE2FE4  41 80 FF DC */	blt lbl_80CE2FC0
/* 80CE2FE8  80 1C 00 F0 */	lwz r0, 0xf0(r28)
/* 80CE2FEC  28 00 00 00 */	cmplwi r0, 0
/* 80CE2FF0  41 82 00 0C */	beq lbl_80CE2FFC
/* 80CE2FF4  38 7C 0D 1C */	addi r3, r28, 0xd1c
/* 80CE2FF8  4B 5D D6 FD */	bl stopAnime__10Z2CreatureFv
lbl_80CE2FFC:
/* 80CE2FFC  38 60 00 01 */	li r3, 1
/* 80CE3000  39 61 00 20 */	addi r11, r1, 0x20
/* 80CE3004  4B 67 F2 21 */	bl _restgpr_28
/* 80CE3008  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CE300C  7C 08 03 A6 */	mtlr r0
/* 80CE3010  38 21 00 20 */	addi r1, r1, 0x20
/* 80CE3014  4E 80 00 20 */	blr 

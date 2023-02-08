lbl_80B13B40:
/* 80B13B40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B13B44  7C 08 02 A6 */	mflr r0
/* 80B13B48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B13B4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B13B50  7C 7F 1B 78 */	mr r31, r3
/* 80B13B54  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80B13B58  3C 80 80 B1 */	lis r4, d_a_npc_tkj2__stringBase0@ha /* 0x80B143AC@ha */
/* 80B13B5C  38 84 43 AC */	addi r4, r4, d_a_npc_tkj2__stringBase0@l /* 0x80B143AC@l */
/* 80B13B60  4B 51 94 A9 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80B13B64  88 1F 0A 9C */	lbz r0, 0xa9c(r31)
/* 80B13B68  28 00 00 00 */	cmplwi r0, 0
/* 80B13B6C  41 82 00 10 */	beq lbl_80B13B7C
/* 80B13B70  38 00 00 00 */	li r0, 0
/* 80B13B74  3C 60 80 B1 */	lis r3, data_80B14500@ha /* 0x80B14500@ha */
/* 80B13B78  98 03 45 00 */	stb r0, data_80B14500@l(r3)  /* 0x80B14500@l */
lbl_80B13B7C:
/* 80B13B7C  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80B13B80  28 00 00 00 */	cmplwi r0, 0
/* 80B13B84  41 82 00 0C */	beq lbl_80B13B90
/* 80B13B88  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 80B13B8C  4B 4F D7 85 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80B13B90:
/* 80B13B90  38 60 00 01 */	li r3, 1
/* 80B13B94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B13B98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B13B9C  7C 08 03 A6 */	mtlr r0
/* 80B13BA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B13BA4  4E 80 00 20 */	blr 

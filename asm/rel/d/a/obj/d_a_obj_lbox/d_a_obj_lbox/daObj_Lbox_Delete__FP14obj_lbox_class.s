lbl_80C539D0:
/* 80C539D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C539D4  7C 08 02 A6 */	mflr r0
/* 80C539D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C539DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C539E0  7C 7F 1B 78 */	mr r31, r3
/* 80C539E4  38 7F 05 68 */	addi r3, r31, 0x568
/* 80C539E8  3C 80 80 C5 */	lis r4, d_a_obj_lbox__stringBase0@ha /* 0x80C53FFC@ha */
/* 80C539EC  38 84 3F FC */	addi r4, r4, d_a_obj_lbox__stringBase0@l /* 0x80C53FFC@l */
/* 80C539F0  4B 3D 96 19 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C539F4  88 1F 0A 8C */	lbz r0, 0xa8c(r31)
/* 80C539F8  28 00 00 00 */	cmplwi r0, 0
/* 80C539FC  41 82 00 10 */	beq lbl_80C53A0C
/* 80C53A00  38 00 00 00 */	li r0, 0
/* 80C53A04  3C 60 80 C5 */	lis r3, data_80C540E8@ha /* 0x80C540E8@ha */
/* 80C53A08  98 03 40 E8 */	stb r0, data_80C540E8@l(r3)  /* 0x80C540E8@l */
lbl_80C53A0C:
/* 80C53A0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C53A10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C53A14  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C53A18  80 9F 0A 80 */	lwz r4, 0xa80(r31)
/* 80C53A1C  4B 42 08 35 */	bl Release__4cBgSFP9dBgW_Base
/* 80C53A20  38 60 00 01 */	li r3, 1
/* 80C53A24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C53A28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C53A2C  7C 08 03 A6 */	mtlr r0
/* 80C53A30  38 21 00 10 */	addi r1, r1, 0x10
/* 80C53A34  4E 80 00 20 */	blr 

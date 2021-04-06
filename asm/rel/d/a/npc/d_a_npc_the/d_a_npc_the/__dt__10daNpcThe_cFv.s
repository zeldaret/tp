lbl_80AF78E0:
/* 80AF78E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AF78E4  7C 08 02 A6 */	mflr r0
/* 80AF78E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AF78EC  39 61 00 20 */	addi r11, r1, 0x20
/* 80AF78F0  4B 86 A8 E1 */	bl _savegpr_26
/* 80AF78F4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AF78F8  7C 9F 23 78 */	mr r31, r4
/* 80AF78FC  41 82 01 C8 */	beq lbl_80AF7AC4
/* 80AF7900  3C 60 80 B0 */	lis r3, __vt__10daNpcThe_c@ha /* 0x80AFC590@ha */
/* 80AF7904  38 03 C5 90 */	addi r0, r3, __vt__10daNpcThe_c@l /* 0x80AFC590@l */
/* 80AF7908  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80AF790C  3B A0 00 00 */	li r29, 0
/* 80AF7910  3B 80 00 00 */	li r28, 0
/* 80AF7914  3C 60 80 B0 */	lis r3, l_resNames@ha /* 0x80AFC380@ha */
/* 80AF7918  3B 43 C3 80 */	addi r26, r3, l_resNames@l /* 0x80AFC380@l */
/* 80AF791C  3C 60 80 B0 */	lis r3, l_loadRes_list@ha /* 0x80AFC374@ha */
/* 80AF7920  3B 63 C3 74 */	addi r27, r3, l_loadRes_list@l /* 0x80AFC374@l */
/* 80AF7924  48 00 00 20 */	b lbl_80AF7944
lbl_80AF7928:
/* 80AF7928  38 7C 0D E8 */	addi r3, r28, 0xde8
/* 80AF792C  7C 7E 1A 14 */	add r3, r30, r3
/* 80AF7930  54 00 10 3A */	slwi r0, r0, 2
/* 80AF7934  7C 9A 00 2E */	lwzx r4, r26, r0
/* 80AF7938  4B 53 56 D1 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80AF793C  3B BD 00 04 */	addi r29, r29, 4
/* 80AF7940  3B 9C 00 08 */	addi r28, r28, 8
lbl_80AF7944:
/* 80AF7944  88 1E 0E 1E */	lbz r0, 0xe1e(r30)
/* 80AF7948  54 00 10 3A */	slwi r0, r0, 2
/* 80AF794C  7C 7B 00 2E */	lwzx r3, r27, r0
/* 80AF7950  7C 03 E8 2E */	lwzx r0, r3, r29
/* 80AF7954  2C 00 00 00 */	cmpwi r0, 0
/* 80AF7958  40 80 FF D0 */	bge lbl_80AF7928
/* 80AF795C  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 80AF7960  28 00 00 00 */	cmplwi r0, 0
/* 80AF7964  41 82 00 0C */	beq lbl_80AF7970
/* 80AF7968  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80AF796C  4B 51 99 A5 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80AF7970:
/* 80AF7970  34 1E 0C 94 */	addic. r0, r30, 0xc94
/* 80AF7974  41 82 00 84 */	beq lbl_80AF79F8
/* 80AF7978  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80AF797C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80AF7980  90 7E 0C D0 */	stw r3, 0xcd0(r30)
/* 80AF7984  38 03 00 2C */	addi r0, r3, 0x2c
/* 80AF7988  90 1E 0D B4 */	stw r0, 0xdb4(r30)
/* 80AF798C  38 03 00 84 */	addi r0, r3, 0x84
/* 80AF7990  90 1E 0D CC */	stw r0, 0xdcc(r30)
/* 80AF7994  34 1E 0D 98 */	addic. r0, r30, 0xd98
/* 80AF7998  41 82 00 54 */	beq lbl_80AF79EC
/* 80AF799C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80AF79A0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80AF79A4  90 7E 0D B4 */	stw r3, 0xdb4(r30)
/* 80AF79A8  38 03 00 58 */	addi r0, r3, 0x58
/* 80AF79AC  90 1E 0D CC */	stw r0, 0xdcc(r30)
/* 80AF79B0  34 1E 0D B8 */	addic. r0, r30, 0xdb8
/* 80AF79B4  41 82 00 10 */	beq lbl_80AF79C4
/* 80AF79B8  3C 60 80 B0 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80AFC638@ha */
/* 80AF79BC  38 03 C6 38 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80AFC638@l */
/* 80AF79C0  90 1E 0D CC */	stw r0, 0xdcc(r30)
lbl_80AF79C4:
/* 80AF79C4  34 1E 0D 98 */	addic. r0, r30, 0xd98
/* 80AF79C8  41 82 00 24 */	beq lbl_80AF79EC
/* 80AF79CC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80AF79D0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80AF79D4  90 1E 0D B4 */	stw r0, 0xdb4(r30)
/* 80AF79D8  34 1E 0D 98 */	addic. r0, r30, 0xd98
/* 80AF79DC  41 82 00 10 */	beq lbl_80AF79EC
/* 80AF79E0  3C 60 80 B0 */	lis r3, __vt__8cM3dGAab@ha /* 0x80AFC644@ha */
/* 80AF79E4  38 03 C6 44 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80AFC644@l */
/* 80AF79E8  90 1E 0D B0 */	stw r0, 0xdb0(r30)
lbl_80AF79EC:
/* 80AF79EC  38 7E 0C 94 */	addi r3, r30, 0xc94
/* 80AF79F0  38 80 00 00 */	li r4, 0
/* 80AF79F4  4B 58 C6 F1 */	bl __dt__12dCcD_GObjInfFv
lbl_80AF79F8:
/* 80AF79F8  38 7E 0C 78 */	addi r3, r30, 0xc78
/* 80AF79FC  3C 80 80 B0 */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x80AFB558@ha */
/* 80AF7A00  38 84 B5 58 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l /* 0x80AFB558@l */
/* 80AF7A04  38 A0 00 08 */	li r5, 8
/* 80AF7A08  38 C0 00 03 */	li r6, 3
/* 80AF7A0C  4B 86 A2 DD */	bl __destroy_arr
/* 80AF7A10  34 1E 0B DC */	addic. r0, r30, 0xbdc
/* 80AF7A14  41 82 00 88 */	beq lbl_80AF7A9C
/* 80AF7A18  3C 60 80 B0 */	lis r3, __vt__15daNpcF_Lookat_c@ha /* 0x80AFC650@ha */
/* 80AF7A1C  38 03 C6 50 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l /* 0x80AFC650@l */
/* 80AF7A20  90 1E 0C 74 */	stw r0, 0xc74(r30)
/* 80AF7A24  38 7E 0C 58 */	addi r3, r30, 0xc58
/* 80AF7A28  3C 80 80 B0 */	lis r4, __dt__5csXyzFv@ha /* 0x80AFB6AC@ha */
/* 80AF7A2C  38 84 B6 AC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80AFB6AC@l */
/* 80AF7A30  38 A0 00 06 */	li r5, 6
/* 80AF7A34  38 C0 00 04 */	li r6, 4
/* 80AF7A38  4B 86 A2 B1 */	bl __destroy_arr
/* 80AF7A3C  38 7E 0C 40 */	addi r3, r30, 0xc40
/* 80AF7A40  3C 80 80 B0 */	lis r4, __dt__5csXyzFv@ha /* 0x80AFB6AC@ha */
/* 80AF7A44  38 84 B6 AC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80AFB6AC@l */
/* 80AF7A48  38 A0 00 06 */	li r5, 6
/* 80AF7A4C  38 C0 00 04 */	li r6, 4
/* 80AF7A50  4B 86 A2 99 */	bl __destroy_arr
/* 80AF7A54  38 7E 0C 28 */	addi r3, r30, 0xc28
/* 80AF7A58  3C 80 80 B0 */	lis r4, __dt__5csXyzFv@ha /* 0x80AFB6AC@ha */
/* 80AF7A5C  38 84 B6 AC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80AFB6AC@l */
/* 80AF7A60  38 A0 00 06 */	li r5, 6
/* 80AF7A64  38 C0 00 04 */	li r6, 4
/* 80AF7A68  4B 86 A2 81 */	bl __destroy_arr
/* 80AF7A6C  38 7E 0C 10 */	addi r3, r30, 0xc10
/* 80AF7A70  3C 80 80 B0 */	lis r4, __dt__5csXyzFv@ha /* 0x80AFB6AC@ha */
/* 80AF7A74  38 84 B6 AC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80AFB6AC@l */
/* 80AF7A78  38 A0 00 06 */	li r5, 6
/* 80AF7A7C  38 C0 00 04 */	li r6, 4
/* 80AF7A80  4B 86 A2 69 */	bl __destroy_arr
/* 80AF7A84  38 7E 0B DC */	addi r3, r30, 0xbdc
/* 80AF7A88  3C 80 80 B0 */	lis r4, __dt__4cXyzFv@ha /* 0x80AFB6EC@ha */
/* 80AF7A8C  38 84 B6 EC */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AFB6EC@l */
/* 80AF7A90  38 A0 00 0C */	li r5, 0xc
/* 80AF7A94  38 C0 00 04 */	li r6, 4
/* 80AF7A98  4B 86 A2 51 */	bl __destroy_arr
lbl_80AF7A9C:
/* 80AF7A9C  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 80AF7AA0  38 80 FF FF */	li r4, -1
/* 80AF7AA4  4B 7C 89 7D */	bl __dt__10Z2CreatureFv
/* 80AF7AA8  7F C3 F3 78 */	mr r3, r30
/* 80AF7AAC  38 80 00 00 */	li r4, 0
/* 80AF7AB0  48 00 3C 7D */	bl __dt__8daNpcF_cFv
/* 80AF7AB4  7F E0 07 35 */	extsh. r0, r31
/* 80AF7AB8  40 81 00 0C */	ble lbl_80AF7AC4
/* 80AF7ABC  7F C3 F3 78 */	mr r3, r30
/* 80AF7AC0  4B 7D 72 7D */	bl __dl__FPv
lbl_80AF7AC4:
/* 80AF7AC4  7F C3 F3 78 */	mr r3, r30
/* 80AF7AC8  39 61 00 20 */	addi r11, r1, 0x20
/* 80AF7ACC  4B 86 A7 51 */	bl _restgpr_26
/* 80AF7AD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AF7AD4  7C 08 03 A6 */	mtlr r0
/* 80AF7AD8  38 21 00 20 */	addi r1, r1, 0x20
/* 80AF7ADC  4E 80 00 20 */	blr 

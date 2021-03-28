lbl_80AF2EC0:
/* 80AF2EC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AF2EC4  7C 08 02 A6 */	mflr r0
/* 80AF2EC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AF2ECC  39 61 00 20 */	addi r11, r1, 0x20
/* 80AF2ED0  4B 86 F3 00 */	b _savegpr_26
/* 80AF2ED4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AF2ED8  7C 9F 23 78 */	mr r31, r4
/* 80AF2EDC  41 82 01 C8 */	beq lbl_80AF30A4
/* 80AF2EE0  3C 60 80 AF */	lis r3, __vt__16daNpc_SoldierB_c@ha
/* 80AF2EE4  38 03 5D 4C */	addi r0, r3, __vt__16daNpc_SoldierB_c@l
/* 80AF2EE8  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80AF2EEC  3B A0 00 00 */	li r29, 0
/* 80AF2EF0  3B 80 00 00 */	li r28, 0
/* 80AF2EF4  3C 60 80 AF */	lis r3, l_resNames@ha
/* 80AF2EF8  3B 43 5C 8C */	addi r26, r3, l_resNames@l
/* 80AF2EFC  3C 60 80 AF */	lis r3, l_loadRes_list@ha
/* 80AF2F00  3B 63 5C 84 */	addi r27, r3, l_loadRes_list@l
/* 80AF2F04  48 00 00 20 */	b lbl_80AF2F24
lbl_80AF2F08:
/* 80AF2F08  38 7C 0D E8 */	addi r3, r28, 0xde8
/* 80AF2F0C  7C 7E 1A 14 */	add r3, r30, r3
/* 80AF2F10  54 00 10 3A */	slwi r0, r0, 2
/* 80AF2F14  7C 9A 00 2E */	lwzx r4, r26, r0
/* 80AF2F18  4B 53 A0 F0 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80AF2F1C  3B BD 00 04 */	addi r29, r29, 4
/* 80AF2F20  3B 9C 00 08 */	addi r28, r28, 8
lbl_80AF2F24:
/* 80AF2F24  88 1E 0E 18 */	lbz r0, 0xe18(r30)
/* 80AF2F28  54 00 10 3A */	slwi r0, r0, 2
/* 80AF2F2C  7C 7B 00 2E */	lwzx r3, r27, r0
/* 80AF2F30  7C 03 E8 2E */	lwzx r0, r3, r29
/* 80AF2F34  2C 00 00 00 */	cmpwi r0, 0
/* 80AF2F38  40 80 FF D0 */	bge lbl_80AF2F08
/* 80AF2F3C  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 80AF2F40  28 00 00 00 */	cmplwi r0, 0
/* 80AF2F44  41 82 00 0C */	beq lbl_80AF2F50
/* 80AF2F48  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80AF2F4C  4B 51 E3 C4 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80AF2F50:
/* 80AF2F50  34 1E 0C 94 */	addic. r0, r30, 0xc94
/* 80AF2F54  41 82 00 84 */	beq lbl_80AF2FD8
/* 80AF2F58  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80AF2F5C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80AF2F60  90 7E 0C D0 */	stw r3, 0xcd0(r30)
/* 80AF2F64  38 03 00 2C */	addi r0, r3, 0x2c
/* 80AF2F68  90 1E 0D B4 */	stw r0, 0xdb4(r30)
/* 80AF2F6C  38 03 00 84 */	addi r0, r3, 0x84
/* 80AF2F70  90 1E 0D CC */	stw r0, 0xdcc(r30)
/* 80AF2F74  34 1E 0D 98 */	addic. r0, r30, 0xd98
/* 80AF2F78  41 82 00 54 */	beq lbl_80AF2FCC
/* 80AF2F7C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80AF2F80  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80AF2F84  90 7E 0D B4 */	stw r3, 0xdb4(r30)
/* 80AF2F88  38 03 00 58 */	addi r0, r3, 0x58
/* 80AF2F8C  90 1E 0D CC */	stw r0, 0xdcc(r30)
/* 80AF2F90  34 1E 0D B8 */	addic. r0, r30, 0xdb8
/* 80AF2F94  41 82 00 10 */	beq lbl_80AF2FA4
/* 80AF2F98  3C 60 80 AF */	lis r3, __vt__8cM3dGCyl@ha
/* 80AF2F9C  38 03 5D F4 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80AF2FA0  90 1E 0D CC */	stw r0, 0xdcc(r30)
lbl_80AF2FA4:
/* 80AF2FA4  34 1E 0D 98 */	addic. r0, r30, 0xd98
/* 80AF2FA8  41 82 00 24 */	beq lbl_80AF2FCC
/* 80AF2FAC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80AF2FB0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80AF2FB4  90 1E 0D B4 */	stw r0, 0xdb4(r30)
/* 80AF2FB8  34 1E 0D 98 */	addic. r0, r30, 0xd98
/* 80AF2FBC  41 82 00 10 */	beq lbl_80AF2FCC
/* 80AF2FC0  3C 60 80 AF */	lis r3, __vt__8cM3dGAab@ha
/* 80AF2FC4  38 03 5E 00 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80AF2FC8  90 1E 0D B0 */	stw r0, 0xdb0(r30)
lbl_80AF2FCC:
/* 80AF2FCC  38 7E 0C 94 */	addi r3, r30, 0xc94
/* 80AF2FD0  38 80 00 00 */	li r4, 0
/* 80AF2FD4  4B 59 11 10 */	b __dt__12dCcD_GObjInfFv
lbl_80AF2FD8:
/* 80AF2FD8  38 7E 0C 78 */	addi r3, r30, 0xc78
/* 80AF2FDC  3C 80 80 AF */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha
/* 80AF2FE0  38 84 51 E8 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l
/* 80AF2FE4  38 A0 00 08 */	li r5, 8
/* 80AF2FE8  38 C0 00 03 */	li r6, 3
/* 80AF2FEC  4B 86 EC FC */	b __destroy_arr
/* 80AF2FF0  34 1E 0B DC */	addic. r0, r30, 0xbdc
/* 80AF2FF4  41 82 00 88 */	beq lbl_80AF307C
/* 80AF2FF8  3C 60 80 AF */	lis r3, __vt__15daNpcF_Lookat_c@ha
/* 80AF2FFC  38 03 5E 0C */	addi r0, r3, __vt__15daNpcF_Lookat_c@l
/* 80AF3000  90 1E 0C 74 */	stw r0, 0xc74(r30)
/* 80AF3004  38 7E 0C 58 */	addi r3, r30, 0xc58
/* 80AF3008  3C 80 80 AF */	lis r4, __dt__5csXyzFv@ha
/* 80AF300C  38 84 53 3C */	addi r4, r4, __dt__5csXyzFv@l
/* 80AF3010  38 A0 00 06 */	li r5, 6
/* 80AF3014  38 C0 00 04 */	li r6, 4
/* 80AF3018  4B 86 EC D0 */	b __destroy_arr
/* 80AF301C  38 7E 0C 40 */	addi r3, r30, 0xc40
/* 80AF3020  3C 80 80 AF */	lis r4, __dt__5csXyzFv@ha
/* 80AF3024  38 84 53 3C */	addi r4, r4, __dt__5csXyzFv@l
/* 80AF3028  38 A0 00 06 */	li r5, 6
/* 80AF302C  38 C0 00 04 */	li r6, 4
/* 80AF3030  4B 86 EC B8 */	b __destroy_arr
/* 80AF3034  38 7E 0C 28 */	addi r3, r30, 0xc28
/* 80AF3038  3C 80 80 AF */	lis r4, __dt__5csXyzFv@ha
/* 80AF303C  38 84 53 3C */	addi r4, r4, __dt__5csXyzFv@l
/* 80AF3040  38 A0 00 06 */	li r5, 6
/* 80AF3044  38 C0 00 04 */	li r6, 4
/* 80AF3048  4B 86 EC A0 */	b __destroy_arr
/* 80AF304C  38 7E 0C 10 */	addi r3, r30, 0xc10
/* 80AF3050  3C 80 80 AF */	lis r4, __dt__5csXyzFv@ha
/* 80AF3054  38 84 53 3C */	addi r4, r4, __dt__5csXyzFv@l
/* 80AF3058  38 A0 00 06 */	li r5, 6
/* 80AF305C  38 C0 00 04 */	li r6, 4
/* 80AF3060  4B 86 EC 88 */	b __destroy_arr
/* 80AF3064  38 7E 0B DC */	addi r3, r30, 0xbdc
/* 80AF3068  3C 80 80 AF */	lis r4, __dt__4cXyzFv@ha
/* 80AF306C  38 84 53 7C */	addi r4, r4, __dt__4cXyzFv@l
/* 80AF3070  38 A0 00 0C */	li r5, 0xc
/* 80AF3074  38 C0 00 04 */	li r6, 4
/* 80AF3078  4B 86 EC 70 */	b __destroy_arr
lbl_80AF307C:
/* 80AF307C  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 80AF3080  38 80 FF FF */	li r4, -1
/* 80AF3084  4B 7C D3 9C */	b __dt__10Z2CreatureFv
/* 80AF3088  7F C3 F3 78 */	mr r3, r30
/* 80AF308C  38 80 00 00 */	li r4, 0
/* 80AF3090  48 00 23 2D */	bl __dt__8daNpcF_cFv
/* 80AF3094  7F E0 07 35 */	extsh. r0, r31
/* 80AF3098  40 81 00 0C */	ble lbl_80AF30A4
/* 80AF309C  7F C3 F3 78 */	mr r3, r30
/* 80AF30A0  4B 7D BC 9C */	b __dl__FPv
lbl_80AF30A4:
/* 80AF30A4  7F C3 F3 78 */	mr r3, r30
/* 80AF30A8  39 61 00 20 */	addi r11, r1, 0x20
/* 80AF30AC  4B 86 F1 70 */	b _restgpr_26
/* 80AF30B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AF30B4  7C 08 03 A6 */	mtlr r0
/* 80AF30B8  38 21 00 20 */	addi r1, r1, 0x20
/* 80AF30BC  4E 80 00 20 */	blr 

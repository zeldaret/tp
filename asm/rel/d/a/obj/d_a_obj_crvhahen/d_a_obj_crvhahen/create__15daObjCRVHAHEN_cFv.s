lbl_80BD3DBC:
/* 80BD3DBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BD3DC0  7C 08 02 A6 */	mflr r0
/* 80BD3DC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BD3DC8  39 61 00 20 */	addi r11, r1, 0x20
/* 80BD3DCC  4B 78 E4 11 */	bl _savegpr_29
/* 80BD3DD0  7C 7D 1B 78 */	mr r29, r3
/* 80BD3DD4  3C 80 80 BD */	lis r4, lit_3703@ha /* 0x80BD3FF0@ha */
/* 80BD3DD8  3B E4 3F F0 */	addi r31, r4, lit_3703@l /* 0x80BD3FF0@l */
/* 80BD3DDC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BD3DE0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BD3DE4  40 82 00 C0 */	bne lbl_80BD3EA4
/* 80BD3DE8  7F A0 EB 79 */	or. r0, r29, r29
/* 80BD3DEC  41 82 00 AC */	beq lbl_80BD3E98
/* 80BD3DF0  7C 1E 03 78 */	mr r30, r0
/* 80BD3DF4  4B 44 4D 71 */	bl __ct__10fopAc_ac_cFv
/* 80BD3DF8  38 7E 05 68 */	addi r3, r30, 0x568
/* 80BD3DFC  3C 80 80 BD */	lis r4, __ct__4cXyzFv@ha /* 0x80BD3FDC@ha */
/* 80BD3E00  38 84 3F DC */	addi r4, r4, __ct__4cXyzFv@l /* 0x80BD3FDC@l */
/* 80BD3E04  3C A0 80 BD */	lis r5, __dt__4cXyzFv@ha /* 0x80BD36E4@ha */
/* 80BD3E08  38 A5 36 E4 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80BD36E4@l */
/* 80BD3E0C  38 C0 00 0C */	li r6, 0xc
/* 80BD3E10  38 E0 00 0A */	li r7, 0xa
/* 80BD3E14  4B 78 DF 4D */	bl __construct_array
/* 80BD3E18  38 7E 05 E0 */	addi r3, r30, 0x5e0
/* 80BD3E1C  3C 80 80 BD */	lis r4, __ct__4cXyzFv@ha /* 0x80BD3FDC@ha */
/* 80BD3E20  38 84 3F DC */	addi r4, r4, __ct__4cXyzFv@l /* 0x80BD3FDC@l */
/* 80BD3E24  3C A0 80 BD */	lis r5, __dt__4cXyzFv@ha /* 0x80BD36E4@ha */
/* 80BD3E28  38 A5 36 E4 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80BD36E4@l */
/* 80BD3E2C  38 C0 00 0C */	li r6, 0xc
/* 80BD3E30  38 E0 00 0A */	li r7, 0xa
/* 80BD3E34  4B 78 DF 2D */	bl __construct_array
/* 80BD3E38  38 7E 06 58 */	addi r3, r30, 0x658
/* 80BD3E3C  3C 80 80 BD */	lis r4, __ct__4cXyzFv@ha /* 0x80BD3FDC@ha */
/* 80BD3E40  38 84 3F DC */	addi r4, r4, __ct__4cXyzFv@l /* 0x80BD3FDC@l */
/* 80BD3E44  3C A0 80 BD */	lis r5, __dt__4cXyzFv@ha /* 0x80BD36E4@ha */
/* 80BD3E48  38 A5 36 E4 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80BD36E4@l */
/* 80BD3E4C  38 C0 00 0C */	li r6, 0xc
/* 80BD3E50  38 E0 00 0A */	li r7, 0xa
/* 80BD3E54  4B 78 DF 0D */	bl __construct_array
/* 80BD3E58  38 7E 06 D0 */	addi r3, r30, 0x6d0
/* 80BD3E5C  3C 80 80 BD */	lis r4, __ct__5csXyzFv@ha /* 0x80BD3FD8@ha */
/* 80BD3E60  38 84 3F D8 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80BD3FD8@l */
/* 80BD3E64  3C A0 80 BD */	lis r5, __dt__5csXyzFv@ha /* 0x80BD3F9C@ha */
/* 80BD3E68  38 A5 3F 9C */	addi r5, r5, __dt__5csXyzFv@l /* 0x80BD3F9C@l */
/* 80BD3E6C  38 C0 00 06 */	li r6, 6
/* 80BD3E70  38 E0 00 0A */	li r7, 0xa
/* 80BD3E74  4B 78 DE ED */	bl __construct_array
/* 80BD3E78  38 7E 07 0C */	addi r3, r30, 0x70c
/* 80BD3E7C  3C 80 80 BD */	lis r4, __ct__5csXyzFv@ha /* 0x80BD3FD8@ha */
/* 80BD3E80  38 84 3F D8 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80BD3FD8@l */
/* 80BD3E84  3C A0 80 BD */	lis r5, __dt__5csXyzFv@ha /* 0x80BD3F9C@ha */
/* 80BD3E88  38 A5 3F 9C */	addi r5, r5, __dt__5csXyzFv@l /* 0x80BD3F9C@l */
/* 80BD3E8C  38 C0 00 06 */	li r6, 6
/* 80BD3E90  38 E0 00 0A */	li r7, 0xa
/* 80BD3E94  4B 78 DE CD */	bl __construct_array
lbl_80BD3E98:
/* 80BD3E98  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80BD3E9C  60 00 00 08 */	ori r0, r0, 8
/* 80BD3EA0  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80BD3EA4:
/* 80BD3EA4  38 7D 07 88 */	addi r3, r29, 0x788
/* 80BD3EA8  3C 80 80 BD */	lis r4, l_arcName@ha /* 0x80BD4064@ha */
/* 80BD3EAC  38 84 40 64 */	addi r4, r4, l_arcName@l /* 0x80BD4064@l */
/* 80BD3EB0  80 84 00 00 */	lwz r4, 0(r4)
/* 80BD3EB4  4B 45 90 09 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BD3EB8  7C 7E 1B 78 */	mr r30, r3
/* 80BD3EBC  2C 1E 00 04 */	cmpwi r30, 4
/* 80BD3EC0  40 82 00 C0 */	bne lbl_80BD3F80
/* 80BD3EC4  7F A3 EB 78 */	mr r3, r29
/* 80BD3EC8  3C 80 80 BD */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x80BD3338@ha */
/* 80BD3ECC  38 84 33 38 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x80BD3338@l */
/* 80BD3ED0  38 A0 13 20 */	li r5, 0x1320
/* 80BD3ED4  4B 44 65 DD */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80BD3ED8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BD3EDC  40 82 00 0C */	bne lbl_80BD3EE8
/* 80BD3EE0  38 60 00 05 */	li r3, 5
/* 80BD3EE4  48 00 00 A0 */	b lbl_80BD3F84
lbl_80BD3EE8:
/* 80BD3EE8  38 00 00 00 */	li r0, 0
/* 80BD3EEC  98 1D 07 50 */	stb r0, 0x750(r29)
/* 80BD3EF0  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80BD3EF4  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80BD3EF8  3C 60 80 BD */	lis r3, l_arcName@ha /* 0x80BD4064@ha */
/* 80BD3EFC  38 63 40 64 */	addi r3, r3, l_arcName@l /* 0x80BD4064@l */
/* 80BD3F00  80 63 00 00 */	lwz r3, 0(r3)
/* 80BD3F04  3C 80 80 BD */	lis r4, d_a_obj_crvhahen__stringBase0@ha /* 0x80BD4048@ha */
/* 80BD3F08  38 84 40 48 */	addi r4, r4, d_a_obj_crvhahen__stringBase0@l /* 0x80BD4048@l */
/* 80BD3F0C  38 84 00 09 */	addi r4, r4, 9
/* 80BD3F10  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BD3F14  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BD3F18  3C A5 00 02 */	addis r5, r5, 2
/* 80BD3F1C  38 C0 00 80 */	li r6, 0x80
/* 80BD3F20  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BD3F24  4B 46 84 59 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80BD3F28  7C 64 1B 78 */	mr r4, r3
/* 80BD3F2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BD3F30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BD3F34  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80BD3F38  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80BD3F3C  7C 05 07 74 */	extsb r5, r0
/* 80BD3F40  38 C0 00 00 */	li r6, 0
/* 80BD3F44  4B 45 8B AD */	bl addSimpleModel__14dComIfG_play_cFP12J3DModelDataiUc
/* 80BD3F48  38 00 00 01 */	li r0, 1
/* 80BD3F4C  98 1D 07 91 */	stb r0, 0x791(r29)
/* 80BD3F50  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80BD3F54  D0 1D 07 4C */	stfs f0, 0x74c(r29)
/* 80BD3F58  7F A3 EB 78 */	mr r3, r29
/* 80BD3F5C  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80BD3F60  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 80BD3F64  FC 60 08 90 */	fmr f3, f1
/* 80BD3F68  C0 9F 00 50 */	lfs f4, 0x50(r31)
/* 80BD3F6C  C0 BF 00 54 */	lfs f5, 0x54(r31)
/* 80BD3F70  FC C0 20 90 */	fmr f6, f4
/* 80BD3F74  4B 44 65 D5 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80BD3F78  7F A3 EB 78 */	mr r3, r29
/* 80BD3F7C  4B FF FE 21 */	bl daObjCRVHAHEN_Execute__FP15daObjCRVHAHEN_c
lbl_80BD3F80:
/* 80BD3F80  7F C3 F3 78 */	mr r3, r30
lbl_80BD3F84:
/* 80BD3F84  39 61 00 20 */	addi r11, r1, 0x20
/* 80BD3F88  4B 78 E2 A1 */	bl _restgpr_29
/* 80BD3F8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BD3F90  7C 08 03 A6 */	mtlr r0
/* 80BD3F94  38 21 00 20 */	addi r1, r1, 0x20
/* 80BD3F98  4E 80 00 20 */	blr 

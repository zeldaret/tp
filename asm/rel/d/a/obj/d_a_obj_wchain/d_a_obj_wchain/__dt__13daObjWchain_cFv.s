lbl_80D30434:
/* 80D30434  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D30438  7C 08 02 A6 */	mflr r0
/* 80D3043C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D30440  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D30444  93 C1 00 08 */	stw r30, 8(r1)
/* 80D30448  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D3044C  7C 9F 23 78 */	mr r31, r4
/* 80D30450  41 82 00 A0 */	beq lbl_80D304F0
/* 80D30454  38 7E 05 68 */	addi r3, r30, 0x568
/* 80D30458  3C 80 80 D3 */	lis r4, l_arcName@ha /* 0x80D31924@ha */
/* 80D3045C  38 84 19 24 */	addi r4, r4, l_arcName@l /* 0x80D31924@l */
/* 80D30460  4B 2F CB A9 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D30464  38 7E 07 14 */	addi r3, r30, 0x714
/* 80D30468  3C 80 80 D3 */	lis r4, __dt__5csXyzFv@ha /* 0x80D30394@ha */
/* 80D3046C  38 84 03 94 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80D30394@l */
/* 80D30470  38 A0 00 06 */	li r5, 6
/* 80D30474  38 C0 00 10 */	li r6, 0x10
/* 80D30478  4B 63 18 71 */	bl __destroy_arr
/* 80D3047C  38 7E 06 54 */	addi r3, r30, 0x654
/* 80D30480  3C 80 80 D3 */	lis r4, __dt__4cXyzFv@ha /* 0x80D303D8@ha */
/* 80D30484  38 84 03 D8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80D303D8@l */
/* 80D30488  38 A0 00 0C */	li r5, 0xc
/* 80D3048C  38 C0 00 10 */	li r6, 0x10
/* 80D30490  4B 63 18 59 */	bl __destroy_arr
/* 80D30494  38 7E 05 94 */	addi r3, r30, 0x594
/* 80D30498  3C 80 80 D3 */	lis r4, __dt__4cXyzFv@ha /* 0x80D303D8@ha */
/* 80D3049C  38 84 03 D8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80D303D8@l */
/* 80D304A0  38 A0 00 0C */	li r5, 0xc
/* 80D304A4  38 C0 00 10 */	li r6, 0x10
/* 80D304A8  4B 63 18 41 */	bl __destroy_arr
/* 80D304AC  34 1E 05 78 */	addic. r0, r30, 0x578
/* 80D304B0  41 82 00 24 */	beq lbl_80D304D4
/* 80D304B4  3C 60 80 D3 */	lis r3, __vt__19daObjWchain_shape_c@ha /* 0x80D31A34@ha */
/* 80D304B8  38 03 1A 34 */	addi r0, r3, __vt__19daObjWchain_shape_c@l /* 0x80D31A34@l */
/* 80D304BC  90 1E 05 78 */	stw r0, 0x578(r30)
/* 80D304C0  34 1E 05 78 */	addic. r0, r30, 0x578
/* 80D304C4  41 82 00 10 */	beq lbl_80D304D4
/* 80D304C8  3C 60 80 3D */	lis r3, __vt__9J3DPacket@ha /* 0x803CD97C@ha */
/* 80D304CC  38 03 D9 7C */	addi r0, r3, __vt__9J3DPacket@l /* 0x803CD97C@l */
/* 80D304D0  90 1E 05 78 */	stw r0, 0x578(r30)
lbl_80D304D4:
/* 80D304D4  7F C3 F3 78 */	mr r3, r30
/* 80D304D8  38 80 00 00 */	li r4, 0
/* 80D304DC  4B 2E 87 B1 */	bl __dt__10fopAc_ac_cFv
/* 80D304E0  7F E0 07 35 */	extsh. r0, r31
/* 80D304E4  40 81 00 0C */	ble lbl_80D304F0
/* 80D304E8  7F C3 F3 78 */	mr r3, r30
/* 80D304EC  4B 59 E8 51 */	bl __dl__FPv
lbl_80D304F0:
/* 80D304F0  7F C3 F3 78 */	mr r3, r30
/* 80D304F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D304F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D304FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D30500  7C 08 03 A6 */	mtlr r0
/* 80D30504  38 21 00 10 */	addi r1, r1, 0x10
/* 80D30508  4E 80 00 20 */	blr 

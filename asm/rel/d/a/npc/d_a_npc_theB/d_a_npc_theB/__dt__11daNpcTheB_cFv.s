lbl_80AFC980:
/* 80AFC980  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AFC984  7C 08 02 A6 */	mflr r0
/* 80AFC988  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AFC98C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AFC990  93 C1 00 08 */	stw r30, 8(r1)
/* 80AFC994  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AFC998  7C 9F 23 78 */	mr r31, r4
/* 80AFC99C  41 82 01 8C */	beq lbl_80AFCB28
/* 80AFC9A0  3C 60 80 B0 */	lis r3, __vt__11daNpcTheB_c@ha
/* 80AFC9A4  38 03 12 30 */	addi r0, r3, __vt__11daNpcTheB_c@l
/* 80AFC9A8  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80AFC9AC  38 7E 0D D8 */	addi r3, r30, 0xdd8
/* 80AFC9B0  3C 80 80 B0 */	lis r4, l_arcName@ha
/* 80AFC9B4  38 84 10 E4 */	addi r4, r4, l_arcName@l
/* 80AFC9B8  80 84 00 00 */	lwz r4, 0(r4)
/* 80AFC9BC  4B 53 06 4C */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80AFC9C0  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 80AFC9C4  28 00 00 00 */	cmplwi r0, 0
/* 80AFC9C8  41 82 00 0C */	beq lbl_80AFC9D4
/* 80AFC9CC  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80AFC9D0  4B 51 49 40 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80AFC9D4:
/* 80AFC9D4  34 1E 0C 84 */	addic. r0, r30, 0xc84
/* 80AFC9D8  41 82 00 84 */	beq lbl_80AFCA5C
/* 80AFC9DC  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80AFC9E0  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80AFC9E4  90 7E 0C C0 */	stw r3, 0xcc0(r30)
/* 80AFC9E8  38 03 00 2C */	addi r0, r3, 0x2c
/* 80AFC9EC  90 1E 0D A4 */	stw r0, 0xda4(r30)
/* 80AFC9F0  38 03 00 84 */	addi r0, r3, 0x84
/* 80AFC9F4  90 1E 0D BC */	stw r0, 0xdbc(r30)
/* 80AFC9F8  34 1E 0D 88 */	addic. r0, r30, 0xd88
/* 80AFC9FC  41 82 00 54 */	beq lbl_80AFCA50
/* 80AFCA00  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80AFCA04  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80AFCA08  90 7E 0D A4 */	stw r3, 0xda4(r30)
/* 80AFCA0C  38 03 00 58 */	addi r0, r3, 0x58
/* 80AFCA10  90 1E 0D BC */	stw r0, 0xdbc(r30)
/* 80AFCA14  34 1E 0D A8 */	addic. r0, r30, 0xda8
/* 80AFCA18  41 82 00 10 */	beq lbl_80AFCA28
/* 80AFCA1C  3C 60 80 B0 */	lis r3, __vt__8cM3dGCyl@ha
/* 80AFCA20  38 03 12 D8 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80AFCA24  90 1E 0D BC */	stw r0, 0xdbc(r30)
lbl_80AFCA28:
/* 80AFCA28  34 1E 0D 88 */	addic. r0, r30, 0xd88
/* 80AFCA2C  41 82 00 24 */	beq lbl_80AFCA50
/* 80AFCA30  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80AFCA34  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80AFCA38  90 1E 0D A4 */	stw r0, 0xda4(r30)
/* 80AFCA3C  34 1E 0D 88 */	addic. r0, r30, 0xd88
/* 80AFCA40  41 82 00 10 */	beq lbl_80AFCA50
/* 80AFCA44  3C 60 80 B0 */	lis r3, __vt__8cM3dGAab@ha
/* 80AFCA48  38 03 12 E4 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80AFCA4C  90 1E 0D A0 */	stw r0, 0xda0(r30)
lbl_80AFCA50:
/* 80AFCA50  38 7E 0C 84 */	addi r3, r30, 0xc84
/* 80AFCA54  38 80 00 00 */	li r4, 0
/* 80AFCA58  4B 58 76 8C */	b __dt__12dCcD_GObjInfFv
lbl_80AFCA5C:
/* 80AFCA5C  38 7E 0C 78 */	addi r3, r30, 0xc78
/* 80AFCA60  3C 80 80 B0 */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha
/* 80AFCA64  38 84 04 2C */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l
/* 80AFCA68  38 A0 00 08 */	li r5, 8
/* 80AFCA6C  38 C0 00 01 */	li r6, 1
/* 80AFCA70  4B 86 52 78 */	b __destroy_arr
/* 80AFCA74  34 1E 0B DC */	addic. r0, r30, 0xbdc
/* 80AFCA78  41 82 00 88 */	beq lbl_80AFCB00
/* 80AFCA7C  3C 60 80 B0 */	lis r3, __vt__15daNpcF_Lookat_c@ha
/* 80AFCA80  38 03 12 F0 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l
/* 80AFCA84  90 1E 0C 74 */	stw r0, 0xc74(r30)
/* 80AFCA88  38 7E 0C 58 */	addi r3, r30, 0xc58
/* 80AFCA8C  3C 80 80 B0 */	lis r4, __dt__5csXyzFv@ha
/* 80AFCA90  38 84 05 80 */	addi r4, r4, __dt__5csXyzFv@l
/* 80AFCA94  38 A0 00 06 */	li r5, 6
/* 80AFCA98  38 C0 00 04 */	li r6, 4
/* 80AFCA9C  4B 86 52 4C */	b __destroy_arr
/* 80AFCAA0  38 7E 0C 40 */	addi r3, r30, 0xc40
/* 80AFCAA4  3C 80 80 B0 */	lis r4, __dt__5csXyzFv@ha
/* 80AFCAA8  38 84 05 80 */	addi r4, r4, __dt__5csXyzFv@l
/* 80AFCAAC  38 A0 00 06 */	li r5, 6
/* 80AFCAB0  38 C0 00 04 */	li r6, 4
/* 80AFCAB4  4B 86 52 34 */	b __destroy_arr
/* 80AFCAB8  38 7E 0C 28 */	addi r3, r30, 0xc28
/* 80AFCABC  3C 80 80 B0 */	lis r4, __dt__5csXyzFv@ha
/* 80AFCAC0  38 84 05 80 */	addi r4, r4, __dt__5csXyzFv@l
/* 80AFCAC4  38 A0 00 06 */	li r5, 6
/* 80AFCAC8  38 C0 00 04 */	li r6, 4
/* 80AFCACC  4B 86 52 1C */	b __destroy_arr
/* 80AFCAD0  38 7E 0C 10 */	addi r3, r30, 0xc10
/* 80AFCAD4  3C 80 80 B0 */	lis r4, __dt__5csXyzFv@ha
/* 80AFCAD8  38 84 05 80 */	addi r4, r4, __dt__5csXyzFv@l
/* 80AFCADC  38 A0 00 06 */	li r5, 6
/* 80AFCAE0  38 C0 00 04 */	li r6, 4
/* 80AFCAE4  4B 86 52 04 */	b __destroy_arr
/* 80AFCAE8  38 7E 0B DC */	addi r3, r30, 0xbdc
/* 80AFCAEC  3C 80 80 B0 */	lis r4, __dt__4cXyzFv@ha
/* 80AFCAF0  38 84 05 C0 */	addi r4, r4, __dt__4cXyzFv@l
/* 80AFCAF4  38 A0 00 0C */	li r5, 0xc
/* 80AFCAF8  38 C0 00 04 */	li r6, 4
/* 80AFCAFC  4B 86 51 EC */	b __destroy_arr
lbl_80AFCB00:
/* 80AFCB00  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 80AFCB04  38 80 FF FF */	li r4, -1
/* 80AFCB08  4B 7C 39 18 */	b __dt__10Z2CreatureFv
/* 80AFCB0C  7F C3 F3 78 */	mr r3, r30
/* 80AFCB10  38 80 00 00 */	li r4, 0
/* 80AFCB14  48 00 3A ED */	bl __dt__8daNpcF_cFv
/* 80AFCB18  7F E0 07 35 */	extsh. r0, r31
/* 80AFCB1C  40 81 00 0C */	ble lbl_80AFCB28
/* 80AFCB20  7F C3 F3 78 */	mr r3, r30
/* 80AFCB24  4B 7D 22 18 */	b __dl__FPv
lbl_80AFCB28:
/* 80AFCB28  7F C3 F3 78 */	mr r3, r30
/* 80AFCB2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AFCB30  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AFCB34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AFCB38  7C 08 03 A6 */	mtlr r0
/* 80AFCB3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AFCB40  4E 80 00 20 */	blr 

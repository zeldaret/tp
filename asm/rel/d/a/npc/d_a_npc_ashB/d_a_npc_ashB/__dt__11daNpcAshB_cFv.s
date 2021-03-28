lbl_8095E060:
/* 8095E060  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8095E064  7C 08 02 A6 */	mflr r0
/* 8095E068  90 01 00 14 */	stw r0, 0x14(r1)
/* 8095E06C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8095E070  93 C1 00 08 */	stw r30, 8(r1)
/* 8095E074  7C 7E 1B 79 */	or. r30, r3, r3
/* 8095E078  7C 9F 23 78 */	mr r31, r4
/* 8095E07C  41 82 01 8C */	beq lbl_8095E208
/* 8095E080  3C 60 80 96 */	lis r3, __vt__11daNpcAshB_c@ha
/* 8095E084  38 03 26 DC */	addi r0, r3, __vt__11daNpcAshB_c@l
/* 8095E088  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 8095E08C  3C 60 80 96 */	lis r3, l_arcNames@ha
/* 8095E090  38 83 25 94 */	addi r4, r3, l_arcNames@l
/* 8095E094  38 7E 0D D0 */	addi r3, r30, 0xdd0
/* 8095E098  80 84 00 00 */	lwz r4, 0(r4)
/* 8095E09C  4B 6C EF 6C */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8095E0A0  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 8095E0A4  28 00 00 00 */	cmplwi r0, 0
/* 8095E0A8  41 82 00 0C */	beq lbl_8095E0B4
/* 8095E0AC  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 8095E0B0  4B 6B 32 60 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_8095E0B4:
/* 8095E0B4  34 1E 0C 88 */	addic. r0, r30, 0xc88
/* 8095E0B8  41 82 00 84 */	beq lbl_8095E13C
/* 8095E0BC  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 8095E0C0  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 8095E0C4  90 7E 0C C4 */	stw r3, 0xcc4(r30)
/* 8095E0C8  38 03 00 2C */	addi r0, r3, 0x2c
/* 8095E0CC  90 1E 0D A8 */	stw r0, 0xda8(r30)
/* 8095E0D0  38 03 00 84 */	addi r0, r3, 0x84
/* 8095E0D4  90 1E 0D C0 */	stw r0, 0xdc0(r30)
/* 8095E0D8  34 1E 0D 8C */	addic. r0, r30, 0xd8c
/* 8095E0DC  41 82 00 54 */	beq lbl_8095E130
/* 8095E0E0  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 8095E0E4  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 8095E0E8  90 7E 0D A8 */	stw r3, 0xda8(r30)
/* 8095E0EC  38 03 00 58 */	addi r0, r3, 0x58
/* 8095E0F0  90 1E 0D C0 */	stw r0, 0xdc0(r30)
/* 8095E0F4  34 1E 0D AC */	addic. r0, r30, 0xdac
/* 8095E0F8  41 82 00 10 */	beq lbl_8095E108
/* 8095E0FC  3C 60 80 96 */	lis r3, __vt__8cM3dGCyl@ha
/* 8095E100  38 03 27 84 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 8095E104  90 1E 0D C0 */	stw r0, 0xdc0(r30)
lbl_8095E108:
/* 8095E108  34 1E 0D 8C */	addic. r0, r30, 0xd8c
/* 8095E10C  41 82 00 24 */	beq lbl_8095E130
/* 8095E110  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8095E114  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8095E118  90 1E 0D A8 */	stw r0, 0xda8(r30)
/* 8095E11C  34 1E 0D 8C */	addic. r0, r30, 0xd8c
/* 8095E120  41 82 00 10 */	beq lbl_8095E130
/* 8095E124  3C 60 80 96 */	lis r3, __vt__8cM3dGAab@ha
/* 8095E128  38 03 27 90 */	addi r0, r3, __vt__8cM3dGAab@l
/* 8095E12C  90 1E 0D A4 */	stw r0, 0xda4(r30)
lbl_8095E130:
/* 8095E130  38 7E 0C 88 */	addi r3, r30, 0xc88
/* 8095E134  38 80 00 00 */	li r4, 0
/* 8095E138  4B 72 5F AC */	b __dt__12dCcD_GObjInfFv
lbl_8095E13C:
/* 8095E13C  38 7E 0C 7C */	addi r3, r30, 0xc7c
/* 8095E140  3C 80 80 96 */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha
/* 8095E144  38 84 18 94 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l
/* 8095E148  38 A0 00 08 */	li r5, 8
/* 8095E14C  38 C0 00 01 */	li r6, 1
/* 8095E150  4B A0 3B 98 */	b __destroy_arr
/* 8095E154  34 1E 0B E0 */	addic. r0, r30, 0xbe0
/* 8095E158  41 82 00 88 */	beq lbl_8095E1E0
/* 8095E15C  3C 60 80 96 */	lis r3, __vt__15daNpcF_Lookat_c@ha
/* 8095E160  38 03 27 9C */	addi r0, r3, __vt__15daNpcF_Lookat_c@l
/* 8095E164  90 1E 0C 78 */	stw r0, 0xc78(r30)
/* 8095E168  38 7E 0C 5C */	addi r3, r30, 0xc5c
/* 8095E16C  3C 80 80 96 */	lis r4, __dt__5csXyzFv@ha
/* 8095E170  38 84 19 E8 */	addi r4, r4, __dt__5csXyzFv@l
/* 8095E174  38 A0 00 06 */	li r5, 6
/* 8095E178  38 C0 00 04 */	li r6, 4
/* 8095E17C  4B A0 3B 6C */	b __destroy_arr
/* 8095E180  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 8095E184  3C 80 80 96 */	lis r4, __dt__5csXyzFv@ha
/* 8095E188  38 84 19 E8 */	addi r4, r4, __dt__5csXyzFv@l
/* 8095E18C  38 A0 00 06 */	li r5, 6
/* 8095E190  38 C0 00 04 */	li r6, 4
/* 8095E194  4B A0 3B 54 */	b __destroy_arr
/* 8095E198  38 7E 0C 2C */	addi r3, r30, 0xc2c
/* 8095E19C  3C 80 80 96 */	lis r4, __dt__5csXyzFv@ha
/* 8095E1A0  38 84 19 E8 */	addi r4, r4, __dt__5csXyzFv@l
/* 8095E1A4  38 A0 00 06 */	li r5, 6
/* 8095E1A8  38 C0 00 04 */	li r6, 4
/* 8095E1AC  4B A0 3B 3C */	b __destroy_arr
/* 8095E1B0  38 7E 0C 14 */	addi r3, r30, 0xc14
/* 8095E1B4  3C 80 80 96 */	lis r4, __dt__5csXyzFv@ha
/* 8095E1B8  38 84 19 E8 */	addi r4, r4, __dt__5csXyzFv@l
/* 8095E1BC  38 A0 00 06 */	li r5, 6
/* 8095E1C0  38 C0 00 04 */	li r6, 4
/* 8095E1C4  4B A0 3B 24 */	b __destroy_arr
/* 8095E1C8  38 7E 0B E0 */	addi r3, r30, 0xbe0
/* 8095E1CC  3C 80 80 96 */	lis r4, __dt__4cXyzFv@ha
/* 8095E1D0  38 84 1A 28 */	addi r4, r4, __dt__4cXyzFv@l
/* 8095E1D4  38 A0 00 0C */	li r5, 0xc
/* 8095E1D8  38 C0 00 04 */	li r6, 4
/* 8095E1DC  4B A0 3B 0C */	b __destroy_arr
lbl_8095E1E0:
/* 8095E1E0  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 8095E1E4  38 80 FF FF */	li r4, -1
/* 8095E1E8  4B 96 22 38 */	b __dt__10Z2CreatureFv
/* 8095E1EC  7F C3 F3 78 */	mr r3, r30
/* 8095E1F0  38 80 00 00 */	li r4, 0
/* 8095E1F4  48 00 38 75 */	bl __dt__8daNpcF_cFv
/* 8095E1F8  7F E0 07 35 */	extsh. r0, r31
/* 8095E1FC  40 81 00 0C */	ble lbl_8095E208
/* 8095E200  7F C3 F3 78 */	mr r3, r30
/* 8095E204  4B 97 0B 38 */	b __dl__FPv
lbl_8095E208:
/* 8095E208  7F C3 F3 78 */	mr r3, r30
/* 8095E20C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8095E210  83 C1 00 08 */	lwz r30, 8(r1)
/* 8095E214  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8095E218  7C 08 03 A6 */	mtlr r0
/* 8095E21C  38 21 00 10 */	addi r1, r1, 0x10
/* 8095E220  4E 80 00 20 */	blr 

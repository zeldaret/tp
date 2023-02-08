lbl_809BEB64:
/* 809BEB64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809BEB68  7C 08 02 A6 */	mflr r0
/* 809BEB6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 809BEB70  39 61 00 20 */	addi r11, r1, 0x20
/* 809BEB74  4B 9A 36 5D */	bl _savegpr_26
/* 809BEB78  7C 7E 1B 79 */	or. r30, r3, r3
/* 809BEB7C  7C 9F 23 78 */	mr r31, r4
/* 809BEB80  41 82 02 08 */	beq lbl_809BED88
/* 809BEB84  3C 60 80 9D */	lis r3, __vt__11daNpc_grA_c@ha /* 0x809CB200@ha */
/* 809BEB88  38 03 B2 00 */	addi r0, r3, __vt__11daNpc_grA_c@l /* 0x809CB200@l */
/* 809BEB8C  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 809BEB90  3B A0 00 00 */	li r29, 0
/* 809BEB94  3B 80 00 00 */	li r28, 0
/* 809BEB98  3C 60 80 9D */	lis r3, l_resNames@ha /* 0x809CAAD4@ha */
/* 809BEB9C  3B 43 AA D4 */	addi r26, r3, l_resNames@l /* 0x809CAAD4@l */
/* 809BEBA0  3C 60 80 9D */	lis r3, l_loadRes_list@ha /* 0x809CAAA0@ha */
/* 809BEBA4  3B 63 AA A0 */	addi r27, r3, l_loadRes_list@l /* 0x809CAAA0@l */
/* 809BEBA8  48 00 00 20 */	b lbl_809BEBC8
lbl_809BEBAC:
/* 809BEBAC  38 7C 14 1C */	addi r3, r28, 0x141c
/* 809BEBB0  7C 7E 1A 14 */	add r3, r30, r3
/* 809BEBB4  54 00 10 3A */	slwi r0, r0, 2
/* 809BEBB8  7C 9A 00 2E */	lwzx r4, r26, r0
/* 809BEBBC  4B 66 E4 4D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 809BEBC0  3B BD 00 04 */	addi r29, r29, 4
/* 809BEBC4  3B 9C 00 08 */	addi r28, r28, 8
lbl_809BEBC8:
/* 809BEBC8  88 1E 14 74 */	lbz r0, 0x1474(r30)
/* 809BEBCC  54 00 10 3A */	slwi r0, r0, 2
/* 809BEBD0  7C 7B 00 2E */	lwzx r3, r27, r0
/* 809BEBD4  7C 03 E8 2E */	lwzx r0, r3, r29
/* 809BEBD8  2C 00 00 00 */	cmpwi r0, 0
/* 809BEBDC  40 80 FF D0 */	bge lbl_809BEBAC
/* 809BEBE0  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 809BEBE4  28 00 00 00 */	cmplwi r0, 0
/* 809BEBE8  41 82 00 0C */	beq lbl_809BEBF4
/* 809BEBEC  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 809BEBF0  4B 65 27 21 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_809BEBF4:
/* 809BEBF4  38 7E 15 20 */	addi r3, r30, 0x1520
/* 809BEBF8  3C 80 80 9C */	lis r4, __dt__Q211daNpc_grA_c21daNpc_GrA_prtclMngr_cFv@ha /* 0x809BEB24@ha */
/* 809BEBFC  38 84 EB 24 */	addi r4, r4, __dt__Q211daNpc_grA_c21daNpc_GrA_prtclMngr_cFv@l /* 0x809BEB24@l */
/* 809BEC00  38 A0 00 5C */	li r5, 0x5c
/* 809BEC04  38 C0 00 04 */	li r6, 4
/* 809BEC08  4B 9A 30 E1 */	bl __destroy_arr
/* 809BEC0C  34 1E 0D D4 */	addic. r0, r30, 0xdd4
/* 809BEC10  41 82 00 24 */	beq lbl_809BEC34
/* 809BEC14  3C 60 80 9D */	lis r3, __vt__13daNpcF_Path_c@ha /* 0x809CB2B4@ha */
/* 809BEC18  38 03 B2 B4 */	addi r0, r3, __vt__13daNpcF_Path_c@l /* 0x809CB2B4@l */
/* 809BEC1C  90 1E 14 00 */	stw r0, 0x1400(r30)
/* 809BEC20  34 1E 0D F4 */	addic. r0, r30, 0xdf4
/* 809BEC24  41 82 00 10 */	beq lbl_809BEC34
/* 809BEC28  3C 60 80 9D */	lis r3, __vt__16daNpcF_SPCurve_c@ha /* 0x809CB2A8@ha */
/* 809BEC2C  38 03 B2 A8 */	addi r0, r3, __vt__16daNpcF_SPCurve_c@l /* 0x809CB2A8@l */
/* 809BEC30  90 1E 13 FC */	stw r0, 0x13fc(r30)
lbl_809BEC34:
/* 809BEC34  34 1E 0C 98 */	addic. r0, r30, 0xc98
/* 809BEC38  41 82 00 84 */	beq lbl_809BECBC
/* 809BEC3C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 809BEC40  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 809BEC44  90 7E 0C D4 */	stw r3, 0xcd4(r30)
/* 809BEC48  38 03 00 2C */	addi r0, r3, 0x2c
/* 809BEC4C  90 1E 0D B8 */	stw r0, 0xdb8(r30)
/* 809BEC50  38 03 00 84 */	addi r0, r3, 0x84
/* 809BEC54  90 1E 0D D0 */	stw r0, 0xdd0(r30)
/* 809BEC58  34 1E 0D 9C */	addic. r0, r30, 0xd9c
/* 809BEC5C  41 82 00 54 */	beq lbl_809BECB0
/* 809BEC60  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 809BEC64  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 809BEC68  90 7E 0D B8 */	stw r3, 0xdb8(r30)
/* 809BEC6C  38 03 00 58 */	addi r0, r3, 0x58
/* 809BEC70  90 1E 0D D0 */	stw r0, 0xdd0(r30)
/* 809BEC74  34 1E 0D BC */	addic. r0, r30, 0xdbc
/* 809BEC78  41 82 00 10 */	beq lbl_809BEC88
/* 809BEC7C  3C 60 80 9D */	lis r3, __vt__8cM3dGCyl@ha /* 0x809CB2C0@ha */
/* 809BEC80  38 03 B2 C0 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x809CB2C0@l */
/* 809BEC84  90 1E 0D D0 */	stw r0, 0xdd0(r30)
lbl_809BEC88:
/* 809BEC88  34 1E 0D 9C */	addic. r0, r30, 0xd9c
/* 809BEC8C  41 82 00 24 */	beq lbl_809BECB0
/* 809BEC90  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 809BEC94  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 809BEC98  90 1E 0D B8 */	stw r0, 0xdb8(r30)
/* 809BEC9C  34 1E 0D 9C */	addic. r0, r30, 0xd9c
/* 809BECA0  41 82 00 10 */	beq lbl_809BECB0
/* 809BECA4  3C 60 80 9D */	lis r3, __vt__8cM3dGAab@ha /* 0x809CB2CC@ha */
/* 809BECA8  38 03 B2 CC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x809CB2CC@l */
/* 809BECAC  90 1E 0D B4 */	stw r0, 0xdb4(r30)
lbl_809BECB0:
/* 809BECB0  38 7E 0C 98 */	addi r3, r30, 0xc98
/* 809BECB4  38 80 00 00 */	li r4, 0
/* 809BECB8  4B 6C 54 2D */	bl __dt__12dCcD_GObjInfFv
lbl_809BECBC:
/* 809BECBC  38 7E 0C 7C */	addi r3, r30, 0xc7c
/* 809BECC0  3C 80 80 9D */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x809C92E8@ha */
/* 809BECC4  38 84 92 E8 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l /* 0x809C92E8@l */
/* 809BECC8  38 A0 00 08 */	li r5, 8
/* 809BECCC  38 C0 00 03 */	li r6, 3
/* 809BECD0  4B 9A 30 19 */	bl __destroy_arr
/* 809BECD4  34 1E 0B E0 */	addic. r0, r30, 0xbe0
/* 809BECD8  41 82 00 88 */	beq lbl_809BED60
/* 809BECDC  3C 60 80 9D */	lis r3, __vt__15daNpcF_Lookat_c@ha /* 0x809CB2D8@ha */
/* 809BECE0  38 03 B2 D8 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l /* 0x809CB2D8@l */
/* 809BECE4  90 1E 0C 78 */	stw r0, 0xc78(r30)
/* 809BECE8  38 7E 0C 5C */	addi r3, r30, 0xc5c
/* 809BECEC  3C 80 80 9D */	lis r4, __dt__5csXyzFv@ha /* 0x809C943C@ha */
/* 809BECF0  38 84 94 3C */	addi r4, r4, __dt__5csXyzFv@l /* 0x809C943C@l */
/* 809BECF4  38 A0 00 06 */	li r5, 6
/* 809BECF8  38 C0 00 04 */	li r6, 4
/* 809BECFC  4B 9A 2F ED */	bl __destroy_arr
/* 809BED00  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 809BED04  3C 80 80 9D */	lis r4, __dt__5csXyzFv@ha /* 0x809C943C@ha */
/* 809BED08  38 84 94 3C */	addi r4, r4, __dt__5csXyzFv@l /* 0x809C943C@l */
/* 809BED0C  38 A0 00 06 */	li r5, 6
/* 809BED10  38 C0 00 04 */	li r6, 4
/* 809BED14  4B 9A 2F D5 */	bl __destroy_arr
/* 809BED18  38 7E 0C 2C */	addi r3, r30, 0xc2c
/* 809BED1C  3C 80 80 9D */	lis r4, __dt__5csXyzFv@ha /* 0x809C943C@ha */
/* 809BED20  38 84 94 3C */	addi r4, r4, __dt__5csXyzFv@l /* 0x809C943C@l */
/* 809BED24  38 A0 00 06 */	li r5, 6
/* 809BED28  38 C0 00 04 */	li r6, 4
/* 809BED2C  4B 9A 2F BD */	bl __destroy_arr
/* 809BED30  38 7E 0C 14 */	addi r3, r30, 0xc14
/* 809BED34  3C 80 80 9D */	lis r4, __dt__5csXyzFv@ha /* 0x809C943C@ha */
/* 809BED38  38 84 94 3C */	addi r4, r4, __dt__5csXyzFv@l /* 0x809C943C@l */
/* 809BED3C  38 A0 00 06 */	li r5, 6
/* 809BED40  38 C0 00 04 */	li r6, 4
/* 809BED44  4B 9A 2F A5 */	bl __destroy_arr
/* 809BED48  38 7E 0B E0 */	addi r3, r30, 0xbe0
/* 809BED4C  3C 80 80 9D */	lis r4, __dt__4cXyzFv@ha /* 0x809C947C@ha */
/* 809BED50  38 84 94 7C */	addi r4, r4, __dt__4cXyzFv@l /* 0x809C947C@l */
/* 809BED54  38 A0 00 0C */	li r5, 0xc
/* 809BED58  38 C0 00 04 */	li r6, 4
/* 809BED5C  4B 9A 2F 8D */	bl __destroy_arr
lbl_809BED60:
/* 809BED60  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 809BED64  38 80 FF FF */	li r4, -1
/* 809BED68  4B 90 16 B9 */	bl __dt__10Z2CreatureFv
/* 809BED6C  7F C3 F3 78 */	mr r3, r30
/* 809BED70  38 80 00 00 */	li r4, 0
/* 809BED74  48 00 A7 49 */	bl __dt__8daNpcF_cFv
/* 809BED78  7F E0 07 35 */	extsh. r0, r31
/* 809BED7C  40 81 00 0C */	ble lbl_809BED88
/* 809BED80  7F C3 F3 78 */	mr r3, r30
/* 809BED84  4B 90 FF B9 */	bl __dl__FPv
lbl_809BED88:
/* 809BED88  7F C3 F3 78 */	mr r3, r30
/* 809BED8C  39 61 00 20 */	addi r11, r1, 0x20
/* 809BED90  4B 9A 34 8D */	bl _restgpr_26
/* 809BED94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809BED98  7C 08 03 A6 */	mtlr r0
/* 809BED9C  38 21 00 20 */	addi r1, r1, 0x20
/* 809BEDA0  4E 80 00 20 */	blr 

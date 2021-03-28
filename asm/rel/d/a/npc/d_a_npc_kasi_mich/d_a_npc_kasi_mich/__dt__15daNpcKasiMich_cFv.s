lbl_80A26414:
/* 80A26414  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A26418  7C 08 02 A6 */	mflr r0
/* 80A2641C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A26420  39 61 00 20 */	addi r11, r1, 0x20
/* 80A26424  4B 93 BD AC */	b _savegpr_26
/* 80A26428  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A2642C  7C 9F 23 78 */	mr r31, r4
/* 80A26430  41 82 01 D8 */	beq lbl_80A26608
/* 80A26434  3C 60 80 A3 */	lis r3, __vt__15daNpcKasiMich_c@ha
/* 80A26438  38 03 A6 A4 */	addi r0, r3, __vt__15daNpcKasiMich_c@l
/* 80A2643C  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80A26440  3B 40 00 00 */	li r26, 0
/* 80A26444  3B A0 00 00 */	li r29, 0
/* 80A26448  3B 80 00 00 */	li r28, 0
/* 80A2644C  3C 60 80 A3 */	lis r3, l_arcNames@ha
/* 80A26450  3B 63 A3 A0 */	addi r27, r3, l_arcNames@l
lbl_80A26454:
/* 80A26454  38 7C 14 14 */	addi r3, r28, 0x1414
/* 80A26458  7C 7E 1A 14 */	add r3, r30, r3
/* 80A2645C  7C 9B E8 2E */	lwzx r4, r27, r29
/* 80A26460  4B 60 6B A8 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80A26464  3B 5A 00 01 */	addi r26, r26, 1
/* 80A26468  2C 1A 00 03 */	cmpwi r26, 3
/* 80A2646C  3B BD 00 04 */	addi r29, r29, 4
/* 80A26470  3B 9C 00 08 */	addi r28, r28, 8
/* 80A26474  41 80 FF E0 */	blt lbl_80A26454
/* 80A26478  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 80A2647C  28 00 00 00 */	cmplwi r0, 0
/* 80A26480  41 82 00 0C */	beq lbl_80A2648C
/* 80A26484  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80A26488  4B 5E AE 88 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80A2648C:
/* 80A2648C  34 1E 12 C8 */	addic. r0, r30, 0x12c8
/* 80A26490  41 82 00 84 */	beq lbl_80A26514
/* 80A26494  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80A26498  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80A2649C  90 7E 13 04 */	stw r3, 0x1304(r30)
/* 80A264A0  38 03 00 2C */	addi r0, r3, 0x2c
/* 80A264A4  90 1E 13 E8 */	stw r0, 0x13e8(r30)
/* 80A264A8  38 03 00 84 */	addi r0, r3, 0x84
/* 80A264AC  90 1E 14 00 */	stw r0, 0x1400(r30)
/* 80A264B0  34 1E 13 CC */	addic. r0, r30, 0x13cc
/* 80A264B4  41 82 00 54 */	beq lbl_80A26508
/* 80A264B8  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80A264BC  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80A264C0  90 7E 13 E8 */	stw r3, 0x13e8(r30)
/* 80A264C4  38 03 00 58 */	addi r0, r3, 0x58
/* 80A264C8  90 1E 14 00 */	stw r0, 0x1400(r30)
/* 80A264CC  34 1E 13 EC */	addic. r0, r30, 0x13ec
/* 80A264D0  41 82 00 10 */	beq lbl_80A264E0
/* 80A264D4  3C 60 80 A3 */	lis r3, __vt__8cM3dGCyl@ha
/* 80A264D8  38 03 A7 4C */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80A264DC  90 1E 14 00 */	stw r0, 0x1400(r30)
lbl_80A264E0:
/* 80A264E0  34 1E 13 CC */	addic. r0, r30, 0x13cc
/* 80A264E4  41 82 00 24 */	beq lbl_80A26508
/* 80A264E8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80A264EC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80A264F0  90 1E 13 E8 */	stw r0, 0x13e8(r30)
/* 80A264F4  34 1E 13 CC */	addic. r0, r30, 0x13cc
/* 80A264F8  41 82 00 10 */	beq lbl_80A26508
/* 80A264FC  3C 60 80 A3 */	lis r3, __vt__8cM3dGAab@ha
/* 80A26500  38 03 A7 58 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80A26504  90 1E 13 E4 */	stw r0, 0x13e4(r30)
lbl_80A26508:
/* 80A26508  38 7E 12 C8 */	addi r3, r30, 0x12c8
/* 80A2650C  38 80 00 00 */	li r4, 0
/* 80A26510  4B 65 DB D4 */	b __dt__12dCcD_GObjInfFv
lbl_80A26514:
/* 80A26514  34 1E 0C 94 */	addic. r0, r30, 0xc94
/* 80A26518  41 82 00 24 */	beq lbl_80A2653C
/* 80A2651C  3C 60 80 A3 */	lis r3, __vt__13daNpcF_Path_c@ha
/* 80A26520  38 03 A7 70 */	addi r0, r3, __vt__13daNpcF_Path_c@l
/* 80A26524  90 1E 12 C0 */	stw r0, 0x12c0(r30)
/* 80A26528  34 1E 0C B4 */	addic. r0, r30, 0xcb4
/* 80A2652C  41 82 00 10 */	beq lbl_80A2653C
/* 80A26530  3C 60 80 A3 */	lis r3, __vt__16daNpcF_SPCurve_c@ha
/* 80A26534  38 03 A7 64 */	addi r0, r3, __vt__16daNpcF_SPCurve_c@l
/* 80A26538  90 1E 12 BC */	stw r0, 0x12bc(r30)
lbl_80A2653C:
/* 80A2653C  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80A26540  3C 80 80 A3 */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha
/* 80A26544  38 84 97 74 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l
/* 80A26548  38 A0 00 08 */	li r5, 8
/* 80A2654C  38 C0 00 01 */	li r6, 1
/* 80A26550  4B 93 B7 98 */	b __destroy_arr
/* 80A26554  34 1E 0B F0 */	addic. r0, r30, 0xbf0
/* 80A26558  41 82 00 88 */	beq lbl_80A265E0
/* 80A2655C  3C 60 80 A3 */	lis r3, __vt__15daNpcF_Lookat_c@ha
/* 80A26560  38 03 A7 7C */	addi r0, r3, __vt__15daNpcF_Lookat_c@l
/* 80A26564  90 1E 0C 88 */	stw r0, 0xc88(r30)
/* 80A26568  38 7E 0C 6C */	addi r3, r30, 0xc6c
/* 80A2656C  3C 80 80 A3 */	lis r4, __dt__5csXyzFv@ha
/* 80A26570  38 84 98 C8 */	addi r4, r4, __dt__5csXyzFv@l
/* 80A26574  38 A0 00 06 */	li r5, 6
/* 80A26578  38 C0 00 04 */	li r6, 4
/* 80A2657C  4B 93 B7 6C */	b __destroy_arr
/* 80A26580  38 7E 0C 54 */	addi r3, r30, 0xc54
/* 80A26584  3C 80 80 A3 */	lis r4, __dt__5csXyzFv@ha
/* 80A26588  38 84 98 C8 */	addi r4, r4, __dt__5csXyzFv@l
/* 80A2658C  38 A0 00 06 */	li r5, 6
/* 80A26590  38 C0 00 04 */	li r6, 4
/* 80A26594  4B 93 B7 54 */	b __destroy_arr
/* 80A26598  38 7E 0C 3C */	addi r3, r30, 0xc3c
/* 80A2659C  3C 80 80 A3 */	lis r4, __dt__5csXyzFv@ha
/* 80A265A0  38 84 98 C8 */	addi r4, r4, __dt__5csXyzFv@l
/* 80A265A4  38 A0 00 06 */	li r5, 6
/* 80A265A8  38 C0 00 04 */	li r6, 4
/* 80A265AC  4B 93 B7 3C */	b __destroy_arr
/* 80A265B0  38 7E 0C 24 */	addi r3, r30, 0xc24
/* 80A265B4  3C 80 80 A3 */	lis r4, __dt__5csXyzFv@ha
/* 80A265B8  38 84 98 C8 */	addi r4, r4, __dt__5csXyzFv@l
/* 80A265BC  38 A0 00 06 */	li r5, 6
/* 80A265C0  38 C0 00 04 */	li r6, 4
/* 80A265C4  4B 93 B7 24 */	b __destroy_arr
/* 80A265C8  38 7E 0B F0 */	addi r3, r30, 0xbf0
/* 80A265CC  3C 80 80 A3 */	lis r4, __dt__4cXyzFv@ha
/* 80A265D0  38 84 99 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A265D4  38 A0 00 0C */	li r5, 0xc
/* 80A265D8  38 C0 00 04 */	li r6, 4
/* 80A265DC  4B 93 B7 0C */	b __destroy_arr
lbl_80A265E0:
/* 80A265E0  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 80A265E4  38 80 FF FF */	li r4, -1
/* 80A265E8  4B 89 A6 84 */	b __dt__17Z2CreatureCitizenFv
/* 80A265EC  7F C3 F3 78 */	mr r3, r30
/* 80A265F0  38 80 00 00 */	li r4, 0
/* 80A265F4  48 00 33 55 */	bl __dt__8daNpcF_cFv
/* 80A265F8  7F E0 07 35 */	extsh. r0, r31
/* 80A265FC  40 81 00 0C */	ble lbl_80A26608
/* 80A26600  7F C3 F3 78 */	mr r3, r30
/* 80A26604  4B 8A 87 38 */	b __dl__FPv
lbl_80A26608:
/* 80A26608  7F C3 F3 78 */	mr r3, r30
/* 80A2660C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A26610  4B 93 BC 0C */	b _restgpr_26
/* 80A26614  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A26618  7C 08 03 A6 */	mtlr r0
/* 80A2661C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A26620  4E 80 00 20 */	blr 

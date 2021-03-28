lbl_80A7C380:
/* 80A7C380  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A7C384  7C 08 02 A6 */	mflr r0
/* 80A7C388  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A7C38C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A7C390  4B 8E 5E 40 */	b _savegpr_26
/* 80A7C394  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A7C398  7C 9F 23 78 */	mr r31, r4
/* 80A7C39C  41 82 01 C8 */	beq lbl_80A7C564
/* 80A7C3A0  3C 60 80 A8 */	lis r3, __vt__11daNpcMoiR_c@ha
/* 80A7C3A4  38 03 3C 94 */	addi r0, r3, __vt__11daNpcMoiR_c@l
/* 80A7C3A8  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80A7C3AC  3B A0 00 00 */	li r29, 0
/* 80A7C3B0  3B 80 00 00 */	li r28, 0
/* 80A7C3B4  3C 60 80 A8 */	lis r3, l_arcNames@ha
/* 80A7C3B8  3B 43 3A F8 */	addi r26, r3, l_arcNames@l
/* 80A7C3BC  3C 60 80 A8 */	lis r3, l_loadRes_list@ha
/* 80A7C3C0  3B 63 3A EC */	addi r27, r3, l_loadRes_list@l
/* 80A7C3C4  48 00 00 20 */	b lbl_80A7C3E4
lbl_80A7C3C8:
/* 80A7C3C8  38 7C 0D E8 */	addi r3, r28, 0xde8
/* 80A7C3CC  7C 7E 1A 14 */	add r3, r30, r3
/* 80A7C3D0  54 00 10 3A */	slwi r0, r0, 2
/* 80A7C3D4  7C 9A 00 2E */	lwzx r4, r26, r0
/* 80A7C3D8  4B 5B 0C 30 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80A7C3DC  3B BD 00 04 */	addi r29, r29, 4
/* 80A7C3E0  3B 9C 00 08 */	addi r28, r28, 8
lbl_80A7C3E4:
/* 80A7C3E4  88 1E 0E 0B */	lbz r0, 0xe0b(r30)
/* 80A7C3E8  54 00 10 3A */	slwi r0, r0, 2
/* 80A7C3EC  7C 7B 00 2E */	lwzx r3, r27, r0
/* 80A7C3F0  7C 03 E8 2E */	lwzx r0, r3, r29
/* 80A7C3F4  2C 00 00 00 */	cmpwi r0, 0
/* 80A7C3F8  40 80 FF D0 */	bge lbl_80A7C3C8
/* 80A7C3FC  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 80A7C400  28 00 00 00 */	cmplwi r0, 0
/* 80A7C404  41 82 00 0C */	beq lbl_80A7C410
/* 80A7C408  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80A7C40C  4B 59 4F 04 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80A7C410:
/* 80A7C410  34 1E 0C A0 */	addic. r0, r30, 0xca0
/* 80A7C414  41 82 00 84 */	beq lbl_80A7C498
/* 80A7C418  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80A7C41C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80A7C420  90 7E 0C DC */	stw r3, 0xcdc(r30)
/* 80A7C424  38 03 00 2C */	addi r0, r3, 0x2c
/* 80A7C428  90 1E 0D C0 */	stw r0, 0xdc0(r30)
/* 80A7C42C  38 03 00 84 */	addi r0, r3, 0x84
/* 80A7C430  90 1E 0D D8 */	stw r0, 0xdd8(r30)
/* 80A7C434  34 1E 0D A4 */	addic. r0, r30, 0xda4
/* 80A7C438  41 82 00 54 */	beq lbl_80A7C48C
/* 80A7C43C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80A7C440  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80A7C444  90 7E 0D C0 */	stw r3, 0xdc0(r30)
/* 80A7C448  38 03 00 58 */	addi r0, r3, 0x58
/* 80A7C44C  90 1E 0D D8 */	stw r0, 0xdd8(r30)
/* 80A7C450  34 1E 0D C4 */	addic. r0, r30, 0xdc4
/* 80A7C454  41 82 00 10 */	beq lbl_80A7C464
/* 80A7C458  3C 60 80 A8 */	lis r3, __vt__8cM3dGCyl@ha
/* 80A7C45C  38 03 3D 3C */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80A7C460  90 1E 0D D8 */	stw r0, 0xdd8(r30)
lbl_80A7C464:
/* 80A7C464  34 1E 0D A4 */	addic. r0, r30, 0xda4
/* 80A7C468  41 82 00 24 */	beq lbl_80A7C48C
/* 80A7C46C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80A7C470  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80A7C474  90 1E 0D C0 */	stw r0, 0xdc0(r30)
/* 80A7C478  34 1E 0D A4 */	addic. r0, r30, 0xda4
/* 80A7C47C  41 82 00 10 */	beq lbl_80A7C48C
/* 80A7C480  3C 60 80 A8 */	lis r3, __vt__8cM3dGAab@ha
/* 80A7C484  38 03 3D 48 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80A7C488  90 1E 0D BC */	stw r0, 0xdbc(r30)
lbl_80A7C48C:
/* 80A7C48C  38 7E 0C A0 */	addi r3, r30, 0xca0
/* 80A7C490  38 80 00 00 */	li r4, 0
/* 80A7C494  4B 60 7C 50 */	b __dt__12dCcD_GObjInfFv
lbl_80A7C498:
/* 80A7C498  38 7E 0C 7C */	addi r3, r30, 0xc7c
/* 80A7C49C  3C 80 80 A8 */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha
/* 80A7C4A0  38 84 29 08 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l
/* 80A7C4A4  38 A0 00 08 */	li r5, 8
/* 80A7C4A8  38 C0 00 04 */	li r6, 4
/* 80A7C4AC  4B 8E 58 3C */	b __destroy_arr
/* 80A7C4B0  34 1E 0B E0 */	addic. r0, r30, 0xbe0
/* 80A7C4B4  41 82 00 88 */	beq lbl_80A7C53C
/* 80A7C4B8  3C 60 80 A8 */	lis r3, __vt__15daNpcF_Lookat_c@ha
/* 80A7C4BC  38 03 3D 54 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l
/* 80A7C4C0  90 1E 0C 78 */	stw r0, 0xc78(r30)
/* 80A7C4C4  38 7E 0C 5C */	addi r3, r30, 0xc5c
/* 80A7C4C8  3C 80 80 A8 */	lis r4, __dt__5csXyzFv@ha
/* 80A7C4CC  38 84 2A 5C */	addi r4, r4, __dt__5csXyzFv@l
/* 80A7C4D0  38 A0 00 06 */	li r5, 6
/* 80A7C4D4  38 C0 00 04 */	li r6, 4
/* 80A7C4D8  4B 8E 58 10 */	b __destroy_arr
/* 80A7C4DC  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 80A7C4E0  3C 80 80 A8 */	lis r4, __dt__5csXyzFv@ha
/* 80A7C4E4  38 84 2A 5C */	addi r4, r4, __dt__5csXyzFv@l
/* 80A7C4E8  38 A0 00 06 */	li r5, 6
/* 80A7C4EC  38 C0 00 04 */	li r6, 4
/* 80A7C4F0  4B 8E 57 F8 */	b __destroy_arr
/* 80A7C4F4  38 7E 0C 2C */	addi r3, r30, 0xc2c
/* 80A7C4F8  3C 80 80 A8 */	lis r4, __dt__5csXyzFv@ha
/* 80A7C4FC  38 84 2A 5C */	addi r4, r4, __dt__5csXyzFv@l
/* 80A7C500  38 A0 00 06 */	li r5, 6
/* 80A7C504  38 C0 00 04 */	li r6, 4
/* 80A7C508  4B 8E 57 E0 */	b __destroy_arr
/* 80A7C50C  38 7E 0C 14 */	addi r3, r30, 0xc14
/* 80A7C510  3C 80 80 A8 */	lis r4, __dt__5csXyzFv@ha
/* 80A7C514  38 84 2A 5C */	addi r4, r4, __dt__5csXyzFv@l
/* 80A7C518  38 A0 00 06 */	li r5, 6
/* 80A7C51C  38 C0 00 04 */	li r6, 4
/* 80A7C520  4B 8E 57 C8 */	b __destroy_arr
/* 80A7C524  38 7E 0B E0 */	addi r3, r30, 0xbe0
/* 80A7C528  3C 80 80 A8 */	lis r4, __dt__4cXyzFv@ha
/* 80A7C52C  38 84 2A 9C */	addi r4, r4, __dt__4cXyzFv@l
/* 80A7C530  38 A0 00 0C */	li r5, 0xc
/* 80A7C534  38 C0 00 04 */	li r6, 4
/* 80A7C538  4B 8E 57 B0 */	b __destroy_arr
lbl_80A7C53C:
/* 80A7C53C  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 80A7C540  38 80 FF FF */	li r4, -1
/* 80A7C544  4B 84 3E DC */	b __dt__10Z2CreatureFv
/* 80A7C548  7F C3 F3 78 */	mr r3, r30
/* 80A7C54C  38 80 00 00 */	li r4, 0
/* 80A7C550  48 00 65 8D */	bl __dt__8daNpcF_cFv
/* 80A7C554  7F E0 07 35 */	extsh. r0, r31
/* 80A7C558  40 81 00 0C */	ble lbl_80A7C564
/* 80A7C55C  7F C3 F3 78 */	mr r3, r30
/* 80A7C560  4B 85 27 DC */	b __dl__FPv
lbl_80A7C564:
/* 80A7C564  7F C3 F3 78 */	mr r3, r30
/* 80A7C568  39 61 00 20 */	addi r11, r1, 0x20
/* 80A7C56C  4B 8E 5C B0 */	b _restgpr_26
/* 80A7C570  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A7C574  7C 08 03 A6 */	mtlr r0
/* 80A7C578  38 21 00 20 */	addi r1, r1, 0x20
/* 80A7C57C  4E 80 00 20 */	blr 

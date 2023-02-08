lbl_8098C2D8:
/* 8098C2D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8098C2DC  7C 08 02 A6 */	mflr r0
/* 8098C2E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8098C2E4  39 61 00 20 */	addi r11, r1, 0x20
/* 8098C2E8  4B 9D 5E ED */	bl _savegpr_27
/* 8098C2EC  7C 7E 1B 79 */	or. r30, r3, r3
/* 8098C2F0  7C 9F 23 78 */	mr r31, r4
/* 8098C2F4  41 82 02 00 */	beq lbl_8098C4F4
/* 8098C2F8  3C 60 80 99 */	lis r3, __vt__11daNpcChin_c@ha /* 0x80992338@ha */
/* 8098C2FC  38 03 23 38 */	addi r0, r3, __vt__11daNpcChin_c@l /* 0x80992338@l */
/* 8098C300  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 8098C304  88 1E 09 F4 */	lbz r0, 0x9f4(r30)
/* 8098C308  28 00 00 00 */	cmplwi r0, 0
/* 8098C30C  40 82 00 0C */	bne lbl_8098C318
/* 8098C310  38 60 00 06 */	li r3, 6
/* 8098C314  4B 6A 34 89 */	bl dComIfG_TimerDeleteRequest__Fi
lbl_8098C318:
/* 8098C318  88 1E 09 F4 */	lbz r0, 0x9f4(r30)
/* 8098C31C  54 00 10 3A */	slwi r0, r0, 2
/* 8098C320  3C 60 80 99 */	lis r3, sLoadResInfo@ha /* 0x809920C0@ha */
/* 8098C324  38 63 20 C0 */	addi r3, r3, sLoadResInfo@l /* 0x809920C0@l */
/* 8098C328  7F 63 00 2E */	lwzx r27, r3, r0
/* 8098C32C  3B A0 00 00 */	li r29, 0
/* 8098C330  3C 60 80 99 */	lis r3, l_arcNames@ha /* 0x809920A8@ha */
/* 8098C334  3B 83 20 A8 */	addi r28, r3, l_arcNames@l /* 0x809920A8@l */
/* 8098C338  48 00 00 20 */	b lbl_8098C358
lbl_8098C33C:
/* 8098C33C  38 7D 0D C4 */	addi r3, r29, 0xdc4
/* 8098C340  7C 7E 1A 14 */	add r3, r30, r3
/* 8098C344  54 80 10 3A */	slwi r0, r4, 2
/* 8098C348  7C 9C 00 2E */	lwzx r4, r28, r0
/* 8098C34C  4B 6A 0C BD */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8098C350  3B 7B 00 02 */	addi r27, r27, 2
/* 8098C354  3B BD 00 08 */	addi r29, r29, 8
lbl_8098C358:
/* 8098C358  A8 9B 00 00 */	lha r4, 0(r27)
/* 8098C35C  7C 80 07 35 */	extsh. r0, r4
/* 8098C360  40 80 FF DC */	bge lbl_8098C33C
/* 8098C364  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 8098C368  28 00 00 00 */	cmplwi r0, 0
/* 8098C36C  41 82 00 0C */	beq lbl_8098C378
/* 8098C370  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 8098C374  4B 68 4F 9D */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_8098C378:
/* 8098C378  38 7E 0E 70 */	addi r3, r30, 0xe70
/* 8098C37C  3C 80 80 99 */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x80990ECC@ha */
/* 8098C380  38 84 0E CC */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l /* 0x80990ECC@l */
/* 8098C384  38 A0 00 08 */	li r5, 8
/* 8098C388  38 C0 00 01 */	li r6, 1
/* 8098C38C  4B 9D 59 5D */	bl __destroy_arr
/* 8098C390  34 1E 0E 30 */	addic. r0, r30, 0xe30
/* 8098C394  41 82 00 24 */	beq lbl_8098C3B8
/* 8098C398  34 1E 0E 34 */	addic. r0, r30, 0xe34
/* 8098C39C  41 82 00 1C */	beq lbl_8098C3B8
/* 8098C3A0  28 00 00 00 */	cmplwi r0, 0
/* 8098C3A4  41 82 00 14 */	beq lbl_8098C3B8
/* 8098C3A8  41 82 00 10 */	beq lbl_8098C3B8
/* 8098C3AC  3C 60 80 99 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809923D4@ha */
/* 8098C3B0  38 03 23 D4 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809923D4@l */
/* 8098C3B4  90 1E 0E 34 */	stw r0, 0xe34(r30)
lbl_8098C3B8:
/* 8098C3B8  34 1E 0C 7C */	addic. r0, r30, 0xc7c
/* 8098C3BC  41 82 00 84 */	beq lbl_8098C440
/* 8098C3C0  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 8098C3C4  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 8098C3C8  90 7E 0C B8 */	stw r3, 0xcb8(r30)
/* 8098C3CC  38 03 00 2C */	addi r0, r3, 0x2c
/* 8098C3D0  90 1E 0D 9C */	stw r0, 0xd9c(r30)
/* 8098C3D4  38 03 00 84 */	addi r0, r3, 0x84
/* 8098C3D8  90 1E 0D B4 */	stw r0, 0xdb4(r30)
/* 8098C3DC  34 1E 0D 80 */	addic. r0, r30, 0xd80
/* 8098C3E0  41 82 00 54 */	beq lbl_8098C434
/* 8098C3E4  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 8098C3E8  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 8098C3EC  90 7E 0D 9C */	stw r3, 0xd9c(r30)
/* 8098C3F0  38 03 00 58 */	addi r0, r3, 0x58
/* 8098C3F4  90 1E 0D B4 */	stw r0, 0xdb4(r30)
/* 8098C3F8  34 1E 0D A0 */	addic. r0, r30, 0xda0
/* 8098C3FC  41 82 00 10 */	beq lbl_8098C40C
/* 8098C400  3C 60 80 99 */	lis r3, __vt__8cM3dGCyl@ha /* 0x809923E0@ha */
/* 8098C404  38 03 23 E0 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x809923E0@l */
/* 8098C408  90 1E 0D B4 */	stw r0, 0xdb4(r30)
lbl_8098C40C:
/* 8098C40C  34 1E 0D 80 */	addic. r0, r30, 0xd80
/* 8098C410  41 82 00 24 */	beq lbl_8098C434
/* 8098C414  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8098C418  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8098C41C  90 1E 0D 9C */	stw r0, 0xd9c(r30)
/* 8098C420  34 1E 0D 80 */	addic. r0, r30, 0xd80
/* 8098C424  41 82 00 10 */	beq lbl_8098C434
/* 8098C428  3C 60 80 99 */	lis r3, __vt__8cM3dGAab@ha /* 0x809923EC@ha */
/* 8098C42C  38 03 23 EC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x809923EC@l */
/* 8098C430  90 1E 0D 98 */	stw r0, 0xd98(r30)
lbl_8098C434:
/* 8098C434  38 7E 0C 7C */	addi r3, r30, 0xc7c
/* 8098C438  38 80 00 00 */	li r4, 0
/* 8098C43C  4B 6F 7C A9 */	bl __dt__12dCcD_GObjInfFv
lbl_8098C440:
/* 8098C440  34 1E 0B DC */	addic. r0, r30, 0xbdc
/* 8098C444  41 82 00 88 */	beq lbl_8098C4CC
/* 8098C448  3C 60 80 99 */	lis r3, __vt__15daNpcF_Lookat_c@ha /* 0x809923F8@ha */
/* 8098C44C  38 03 23 F8 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l /* 0x809923F8@l */
/* 8098C450  90 1E 0C 74 */	stw r0, 0xc74(r30)
/* 8098C454  38 7E 0C 58 */	addi r3, r30, 0xc58
/* 8098C458  3C 80 80 99 */	lis r4, __dt__5csXyzFv@ha /* 0x80991020@ha */
/* 8098C45C  38 84 10 20 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80991020@l */
/* 8098C460  38 A0 00 06 */	li r5, 6
/* 8098C464  38 C0 00 04 */	li r6, 4
/* 8098C468  4B 9D 58 81 */	bl __destroy_arr
/* 8098C46C  38 7E 0C 40 */	addi r3, r30, 0xc40
/* 8098C470  3C 80 80 99 */	lis r4, __dt__5csXyzFv@ha /* 0x80991020@ha */
/* 8098C474  38 84 10 20 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80991020@l */
/* 8098C478  38 A0 00 06 */	li r5, 6
/* 8098C47C  38 C0 00 04 */	li r6, 4
/* 8098C480  4B 9D 58 69 */	bl __destroy_arr
/* 8098C484  38 7E 0C 28 */	addi r3, r30, 0xc28
/* 8098C488  3C 80 80 99 */	lis r4, __dt__5csXyzFv@ha /* 0x80991020@ha */
/* 8098C48C  38 84 10 20 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80991020@l */
/* 8098C490  38 A0 00 06 */	li r5, 6
/* 8098C494  38 C0 00 04 */	li r6, 4
/* 8098C498  4B 9D 58 51 */	bl __destroy_arr
/* 8098C49C  38 7E 0C 10 */	addi r3, r30, 0xc10
/* 8098C4A0  3C 80 80 99 */	lis r4, __dt__5csXyzFv@ha /* 0x80991020@ha */
/* 8098C4A4  38 84 10 20 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80991020@l */
/* 8098C4A8  38 A0 00 06 */	li r5, 6
/* 8098C4AC  38 C0 00 04 */	li r6, 4
/* 8098C4B0  4B 9D 58 39 */	bl __destroy_arr
/* 8098C4B4  38 7E 0B DC */	addi r3, r30, 0xbdc
/* 8098C4B8  3C 80 80 99 */	lis r4, __dt__4cXyzFv@ha /* 0x80991060@ha */
/* 8098C4BC  38 84 10 60 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80991060@l */
/* 8098C4C0  38 A0 00 0C */	li r5, 0xc
/* 8098C4C4  38 C0 00 04 */	li r6, 4
/* 8098C4C8  4B 9D 58 21 */	bl __destroy_arr
lbl_8098C4CC:
/* 8098C4CC  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 8098C4D0  38 80 FF FF */	li r4, -1
/* 8098C4D4  4B 93 3F 4D */	bl __dt__10Z2CreatureFv
/* 8098C4D8  7F C3 F3 78 */	mr r3, r30
/* 8098C4DC  38 80 00 00 */	li r4, 0
/* 8098C4E0  48 00 4B C1 */	bl __dt__8daNpcF_cFv
/* 8098C4E4  7F E0 07 35 */	extsh. r0, r31
/* 8098C4E8  40 81 00 0C */	ble lbl_8098C4F4
/* 8098C4EC  7F C3 F3 78 */	mr r3, r30
/* 8098C4F0  4B 94 28 4D */	bl __dl__FPv
lbl_8098C4F4:
/* 8098C4F4  7F C3 F3 78 */	mr r3, r30
/* 8098C4F8  39 61 00 20 */	addi r11, r1, 0x20
/* 8098C4FC  4B 9D 5D 25 */	bl _restgpr_27
/* 8098C500  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8098C504  7C 08 03 A6 */	mtlr r0
/* 8098C508  38 21 00 20 */	addi r1, r1, 0x20
/* 8098C50C  4E 80 00 20 */	blr 

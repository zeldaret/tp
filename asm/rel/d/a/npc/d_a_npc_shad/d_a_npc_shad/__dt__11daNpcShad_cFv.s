lbl_80AD8420:
/* 80AD8420  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AD8424  7C 08 02 A6 */	mflr r0
/* 80AD8428  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AD842C  39 61 00 20 */	addi r11, r1, 0x20
/* 80AD8430  4B 88 9D A1 */	bl _savegpr_26
/* 80AD8434  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AD8438  7C 9F 23 78 */	mr r31, r4
/* 80AD843C  41 82 01 C8 */	beq lbl_80AD8604
/* 80AD8440  3C 60 80 AE */	lis r3, __vt__11daNpcShad_c@ha /* 0x80AE2BD8@ha */
/* 80AD8444  38 03 2B D8 */	addi r0, r3, __vt__11daNpcShad_c@l /* 0x80AE2BD8@l */
/* 80AD8448  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80AD844C  3B A0 00 00 */	li r29, 0
/* 80AD8450  3B 80 00 00 */	li r28, 0
/* 80AD8454  3C 60 80 AE */	lis r3, l_arcNames@ha /* 0x80AE28E0@ha */
/* 80AD8458  3B 43 28 E0 */	addi r26, r3, l_arcNames@l /* 0x80AE28E0@l */
/* 80AD845C  3C 60 80 AE */	lis r3, l_loadRes_list@ha /* 0x80AE28D4@ha */
/* 80AD8460  3B 63 28 D4 */	addi r27, r3, l_loadRes_list@l /* 0x80AE28D4@l */
/* 80AD8464  48 00 00 20 */	b lbl_80AD8484
lbl_80AD8468:
/* 80AD8468  38 7C 0D F8 */	addi r3, r28, 0xdf8
/* 80AD846C  7C 7E 1A 14 */	add r3, r30, r3
/* 80AD8470  54 00 10 3A */	slwi r0, r0, 2
/* 80AD8474  7C 9A 00 2E */	lwzx r4, r26, r0
/* 80AD8478  4B 55 4B 91 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80AD847C  3B BD 00 04 */	addi r29, r29, 4
/* 80AD8480  3B 9C 00 08 */	addi r28, r28, 8
lbl_80AD8484:
/* 80AD8484  88 1E 0E 20 */	lbz r0, 0xe20(r30)
/* 80AD8488  54 00 10 3A */	slwi r0, r0, 2
/* 80AD848C  7C 7B 00 2E */	lwzx r3, r27, r0
/* 80AD8490  7C 03 E8 2E */	lwzx r0, r3, r29
/* 80AD8494  2C 00 00 00 */	cmpwi r0, 0
/* 80AD8498  40 80 FF D0 */	bge lbl_80AD8468
/* 80AD849C  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 80AD84A0  28 00 00 00 */	cmplwi r0, 0
/* 80AD84A4  41 82 00 0C */	beq lbl_80AD84B0
/* 80AD84A8  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80AD84AC  4B 53 8E 65 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80AD84B0:
/* 80AD84B0  34 1E 0C B0 */	addic. r0, r30, 0xcb0
/* 80AD84B4  41 82 00 84 */	beq lbl_80AD8538
/* 80AD84B8  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80AD84BC  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80AD84C0  90 7E 0C EC */	stw r3, 0xcec(r30)
/* 80AD84C4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80AD84C8  90 1E 0D D0 */	stw r0, 0xdd0(r30)
/* 80AD84CC  38 03 00 84 */	addi r0, r3, 0x84
/* 80AD84D0  90 1E 0D E8 */	stw r0, 0xde8(r30)
/* 80AD84D4  34 1E 0D B4 */	addic. r0, r30, 0xdb4
/* 80AD84D8  41 82 00 54 */	beq lbl_80AD852C
/* 80AD84DC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80AD84E0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80AD84E4  90 7E 0D D0 */	stw r3, 0xdd0(r30)
/* 80AD84E8  38 03 00 58 */	addi r0, r3, 0x58
/* 80AD84EC  90 1E 0D E8 */	stw r0, 0xde8(r30)
/* 80AD84F0  34 1E 0D D4 */	addic. r0, r30, 0xdd4
/* 80AD84F4  41 82 00 10 */	beq lbl_80AD8504
/* 80AD84F8  3C 60 80 AE */	lis r3, __vt__8cM3dGCyl@ha /* 0x80AE2C80@ha */
/* 80AD84FC  38 03 2C 80 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80AE2C80@l */
/* 80AD8500  90 1E 0D E8 */	stw r0, 0xde8(r30)
lbl_80AD8504:
/* 80AD8504  34 1E 0D B4 */	addic. r0, r30, 0xdb4
/* 80AD8508  41 82 00 24 */	beq lbl_80AD852C
/* 80AD850C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80AD8510  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80AD8514  90 1E 0D D0 */	stw r0, 0xdd0(r30)
/* 80AD8518  34 1E 0D B4 */	addic. r0, r30, 0xdb4
/* 80AD851C  41 82 00 10 */	beq lbl_80AD852C
/* 80AD8520  3C 60 80 AE */	lis r3, __vt__8cM3dGAab@ha /* 0x80AE2C8C@ha */
/* 80AD8524  38 03 2C 8C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80AE2C8C@l */
/* 80AD8528  90 1E 0D CC */	stw r0, 0xdcc(r30)
lbl_80AD852C:
/* 80AD852C  38 7E 0C B0 */	addi r3, r30, 0xcb0
/* 80AD8530  38 80 00 00 */	li r4, 0
/* 80AD8534  4B 5A BB B1 */	bl __dt__12dCcD_GObjInfFv
lbl_80AD8538:
/* 80AD8538  38 7E 0C 80 */	addi r3, r30, 0xc80
/* 80AD853C  3C 80 80 AE */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x80AE1728@ha */
/* 80AD8540  38 84 17 28 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l /* 0x80AE1728@l */
/* 80AD8544  38 A0 00 08 */	li r5, 8
/* 80AD8548  38 C0 00 05 */	li r6, 5
/* 80AD854C  4B 88 97 9D */	bl __destroy_arr
/* 80AD8550  34 1E 0B E4 */	addic. r0, r30, 0xbe4
/* 80AD8554  41 82 00 88 */	beq lbl_80AD85DC
/* 80AD8558  3C 60 80 AE */	lis r3, __vt__15daNpcF_Lookat_c@ha /* 0x80AE2C98@ha */
/* 80AD855C  38 03 2C 98 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l /* 0x80AE2C98@l */
/* 80AD8560  90 1E 0C 7C */	stw r0, 0xc7c(r30)
/* 80AD8564  38 7E 0C 60 */	addi r3, r30, 0xc60
/* 80AD8568  3C 80 80 AE */	lis r4, __dt__5csXyzFv@ha /* 0x80AE187C@ha */
/* 80AD856C  38 84 18 7C */	addi r4, r4, __dt__5csXyzFv@l /* 0x80AE187C@l */
/* 80AD8570  38 A0 00 06 */	li r5, 6
/* 80AD8574  38 C0 00 04 */	li r6, 4
/* 80AD8578  4B 88 97 71 */	bl __destroy_arr
/* 80AD857C  38 7E 0C 48 */	addi r3, r30, 0xc48
/* 80AD8580  3C 80 80 AE */	lis r4, __dt__5csXyzFv@ha /* 0x80AE187C@ha */
/* 80AD8584  38 84 18 7C */	addi r4, r4, __dt__5csXyzFv@l /* 0x80AE187C@l */
/* 80AD8588  38 A0 00 06 */	li r5, 6
/* 80AD858C  38 C0 00 04 */	li r6, 4
/* 80AD8590  4B 88 97 59 */	bl __destroy_arr
/* 80AD8594  38 7E 0C 30 */	addi r3, r30, 0xc30
/* 80AD8598  3C 80 80 AE */	lis r4, __dt__5csXyzFv@ha /* 0x80AE187C@ha */
/* 80AD859C  38 84 18 7C */	addi r4, r4, __dt__5csXyzFv@l /* 0x80AE187C@l */
/* 80AD85A0  38 A0 00 06 */	li r5, 6
/* 80AD85A4  38 C0 00 04 */	li r6, 4
/* 80AD85A8  4B 88 97 41 */	bl __destroy_arr
/* 80AD85AC  38 7E 0C 18 */	addi r3, r30, 0xc18
/* 80AD85B0  3C 80 80 AE */	lis r4, __dt__5csXyzFv@ha /* 0x80AE187C@ha */
/* 80AD85B4  38 84 18 7C */	addi r4, r4, __dt__5csXyzFv@l /* 0x80AE187C@l */
/* 80AD85B8  38 A0 00 06 */	li r5, 6
/* 80AD85BC  38 C0 00 04 */	li r6, 4
/* 80AD85C0  4B 88 97 29 */	bl __destroy_arr
/* 80AD85C4  38 7E 0B E4 */	addi r3, r30, 0xbe4
/* 80AD85C8  3C 80 80 AE */	lis r4, __dt__4cXyzFv@ha /* 0x80AE18BC@ha */
/* 80AD85CC  38 84 18 BC */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AE18BC@l */
/* 80AD85D0  38 A0 00 0C */	li r5, 0xc
/* 80AD85D4  38 C0 00 04 */	li r6, 4
/* 80AD85D8  4B 88 97 11 */	bl __destroy_arr
lbl_80AD85DC:
/* 80AD85DC  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80AD85E0  38 80 FF FF */	li r4, -1
/* 80AD85E4  4B 7E 7E 3D */	bl __dt__10Z2CreatureFv
/* 80AD85E8  7F C3 F3 78 */	mr r3, r30
/* 80AD85EC  38 80 00 00 */	li r4, 0
/* 80AD85F0  48 00 93 0D */	bl __dt__8daNpcF_cFv
/* 80AD85F4  7F E0 07 35 */	extsh. r0, r31
/* 80AD85F8  40 81 00 0C */	ble lbl_80AD8604
/* 80AD85FC  7F C3 F3 78 */	mr r3, r30
/* 80AD8600  4B 7F 67 3D */	bl __dl__FPv
lbl_80AD8604:
/* 80AD8604  7F C3 F3 78 */	mr r3, r30
/* 80AD8608  39 61 00 20 */	addi r11, r1, 0x20
/* 80AD860C  4B 88 9C 11 */	bl _restgpr_26
/* 80AD8610  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AD8614  7C 08 03 A6 */	mtlr r0
/* 80AD8618  38 21 00 20 */	addi r1, r1, 0x20
/* 80AD861C  4E 80 00 20 */	blr 

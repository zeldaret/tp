lbl_80D3C408:
/* 80D3C408  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D3C40C  7C 08 02 A6 */	mflr r0
/* 80D3C410  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D3C414  39 61 00 20 */	addi r11, r1, 0x20
/* 80D3C418  4B 62 5D B9 */	bl _savegpr_26
/* 80D3C41C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D3C420  7C 9F 23 78 */	mr r31, r4
/* 80D3C424  41 82 01 D0 */	beq lbl_80D3C5F4
/* 80D3C428  3C 60 80 D4 */	lis r3, __vt__12daObj_YBag_c@ha /* 0x80D3DE50@ha */
/* 80D3C42C  38 03 DE 50 */	addi r0, r3, __vt__12daObj_YBag_c@l /* 0x80D3DE50@l */
/* 80D3C430  90 1E 0A 38 */	stw r0, 0xa38(r30)
/* 80D3C434  3B A0 00 00 */	li r29, 0
/* 80D3C438  3B 80 00 00 */	li r28, 0
/* 80D3C43C  3C 60 80 D4 */	lis r3, l_resNames@ha /* 0x80D3DDB0@ha */
/* 80D3C440  3B 43 DD B0 */	addi r26, r3, l_resNames@l /* 0x80D3DDB0@l */
/* 80D3C444  3C 60 80 D4 */	lis r3, l_loadRes_list@ha /* 0x80D3DDA8@ha */
/* 80D3C448  3B 63 DD A8 */	addi r27, r3, l_loadRes_list@l /* 0x80D3DDA8@l */
/* 80D3C44C  48 00 00 20 */	b lbl_80D3C46C
lbl_80D3C450:
/* 80D3C450  38 7C 05 68 */	addi r3, r28, 0x568
/* 80D3C454  7C 7E 1A 14 */	add r3, r30, r3
/* 80D3C458  54 00 10 3A */	slwi r0, r0, 2
/* 80D3C45C  7C 9A 00 2E */	lwzx r4, r26, r0
/* 80D3C460  4B 2F 0B A9 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D3C464  3B BD 00 04 */	addi r29, r29, 4
/* 80D3C468  3B 9C 00 08 */	addi r28, r28, 8
lbl_80D3C46C:
/* 80D3C46C  88 1E 0A 30 */	lbz r0, 0xa30(r30)
/* 80D3C470  54 00 10 3A */	slwi r0, r0, 2
/* 80D3C474  7C 7B 00 2E */	lwzx r3, r27, r0
/* 80D3C478  7C 03 E8 2E */	lwzx r0, r3, r29
/* 80D3C47C  2C 00 00 00 */	cmpwi r0, 0
/* 80D3C480  40 80 FF D0 */	bge lbl_80D3C450
/* 80D3C484  38 7E 09 54 */	addi r3, r30, 0x954
/* 80D3C488  38 80 FF FF */	li r4, -1
/* 80D3C48C  4B 33 B8 51 */	bl __dt__11dBgS_LinChkFv
/* 80D3C490  38 7E 09 18 */	addi r3, r30, 0x918
/* 80D3C494  38 80 FF FF */	li r4, -1
/* 80D3C498  4B 52 B7 FD */	bl __dt__11cBgS_GndChkFv
/* 80D3C49C  34 1E 07 DC */	addic. r0, r30, 0x7dc
/* 80D3C4A0  41 82 00 84 */	beq lbl_80D3C524
/* 80D3C4A4  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80D3C4A8  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80D3C4AC  90 7E 08 18 */	stw r3, 0x818(r30)
/* 80D3C4B0  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D3C4B4  90 1E 08 FC */	stw r0, 0x8fc(r30)
/* 80D3C4B8  38 03 00 84 */	addi r0, r3, 0x84
/* 80D3C4BC  90 1E 09 14 */	stw r0, 0x914(r30)
/* 80D3C4C0  34 1E 08 E0 */	addic. r0, r30, 0x8e0
/* 80D3C4C4  41 82 00 54 */	beq lbl_80D3C518
/* 80D3C4C8  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80D3C4CC  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80D3C4D0  90 7E 08 FC */	stw r3, 0x8fc(r30)
/* 80D3C4D4  38 03 00 58 */	addi r0, r3, 0x58
/* 80D3C4D8  90 1E 09 14 */	stw r0, 0x914(r30)
/* 80D3C4DC  34 1E 09 00 */	addic. r0, r30, 0x900
/* 80D3C4E0  41 82 00 10 */	beq lbl_80D3C4F0
/* 80D3C4E4  3C 60 80 D4 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80D3DE80@ha */
/* 80D3C4E8  38 03 DE 80 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80D3DE80@l */
/* 80D3C4EC  90 1E 09 14 */	stw r0, 0x914(r30)
lbl_80D3C4F0:
/* 80D3C4F0  34 1E 08 E0 */	addic. r0, r30, 0x8e0
/* 80D3C4F4  41 82 00 24 */	beq lbl_80D3C518
/* 80D3C4F8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80D3C4FC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80D3C500  90 1E 08 FC */	stw r0, 0x8fc(r30)
/* 80D3C504  34 1E 08 E0 */	addic. r0, r30, 0x8e0
/* 80D3C508  41 82 00 10 */	beq lbl_80D3C518
/* 80D3C50C  3C 60 80 D4 */	lis r3, __vt__8cM3dGAab@ha /* 0x80D3DE8C@ha */
/* 80D3C510  38 03 DE 8C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80D3DE8C@l */
/* 80D3C514  90 1E 08 F8 */	stw r0, 0x8f8(r30)
lbl_80D3C518:
/* 80D3C518  38 7E 07 DC */	addi r3, r30, 0x7dc
/* 80D3C51C  38 80 00 00 */	li r4, 0
/* 80D3C520  4B 34 7B C5 */	bl __dt__12dCcD_GObjInfFv
lbl_80D3C524:
/* 80D3C524  34 1E 07 9C */	addic. r0, r30, 0x79c
/* 80D3C528  41 82 00 28 */	beq lbl_80D3C550
/* 80D3C52C  3C 60 80 D4 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80D3DE74@ha */
/* 80D3C530  38 03 DE 74 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80D3DE74@l */
/* 80D3C534  90 1E 07 A8 */	stw r0, 0x7a8(r30)
/* 80D3C538  38 7E 07 B0 */	addi r3, r30, 0x7b0
/* 80D3C53C  38 80 FF FF */	li r4, -1
/* 80D3C540  4B 53 29 D9 */	bl __dt__8cM3dGCirFv
/* 80D3C544  38 7E 07 9C */	addi r3, r30, 0x79c
/* 80D3C548  38 80 00 00 */	li r4, 0
/* 80D3C54C  4B 52 BB 65 */	bl __dt__13cBgS_PolyInfoFv
lbl_80D3C550:
/* 80D3C550  34 1E 07 60 */	addic. r0, r30, 0x760
/* 80D3C554  41 82 00 54 */	beq lbl_80D3C5A8
/* 80D3C558  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80D3C55C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80D3C560  90 7E 07 78 */	stw r3, 0x778(r30)
/* 80D3C564  38 03 00 20 */	addi r0, r3, 0x20
/* 80D3C568  90 1E 07 7C */	stw r0, 0x77c(r30)
/* 80D3C56C  34 1E 07 7C */	addic. r0, r30, 0x77c
/* 80D3C570  41 82 00 24 */	beq lbl_80D3C594
/* 80D3C574  3C 60 80 D4 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80D3DE68@ha */
/* 80D3C578  38 03 DE 68 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80D3DE68@l */
/* 80D3C57C  90 1E 07 7C */	stw r0, 0x77c(r30)
/* 80D3C580  34 1E 07 7C */	addic. r0, r30, 0x77c
/* 80D3C584  41 82 00 10 */	beq lbl_80D3C594
/* 80D3C588  3C 60 80 D4 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80D3DE5C@ha */
/* 80D3C58C  38 03 DE 5C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80D3DE5C@l */
/* 80D3C590  90 1E 07 7C */	stw r0, 0x77c(r30)
lbl_80D3C594:
/* 80D3C594  34 1E 07 60 */	addic. r0, r30, 0x760
/* 80D3C598  41 82 00 10 */	beq lbl_80D3C5A8
/* 80D3C59C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80D3C5A0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80D3C5A4  90 1E 07 78 */	stw r0, 0x778(r30)
lbl_80D3C5A8:
/* 80D3C5A8  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80D3C5AC  41 82 00 2C */	beq lbl_80D3C5D8
/* 80D3C5B0  3C 60 80 D4 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80D3DE98@ha */
/* 80D3C5B4  38 63 DE 98 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80D3DE98@l */
/* 80D3C5B8  90 7E 05 98 */	stw r3, 0x598(r30)
/* 80D3C5BC  38 03 00 0C */	addi r0, r3, 0xc
/* 80D3C5C0  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80D3C5C4  38 03 00 18 */	addi r0, r3, 0x18
/* 80D3C5C8  90 1E 05 AC */	stw r0, 0x5ac(r30)
/* 80D3C5CC  38 7E 05 88 */	addi r3, r30, 0x588
/* 80D3C5D0  38 80 00 00 */	li r4, 0
/* 80D3C5D4  4B 33 99 C1 */	bl __dt__9dBgS_AcchFv
lbl_80D3C5D8:
/* 80D3C5D8  7F C3 F3 78 */	mr r3, r30
/* 80D3C5DC  38 80 00 00 */	li r4, 0
/* 80D3C5E0  4B 2D C6 AD */	bl __dt__10fopAc_ac_cFv
/* 80D3C5E4  7F E0 07 35 */	extsh. r0, r31
/* 80D3C5E8  40 81 00 0C */	ble lbl_80D3C5F4
/* 80D3C5EC  7F C3 F3 78 */	mr r3, r30
/* 80D3C5F0  4B 59 27 4D */	bl __dl__FPv
lbl_80D3C5F4:
/* 80D3C5F4  7F C3 F3 78 */	mr r3, r30
/* 80D3C5F8  39 61 00 20 */	addi r11, r1, 0x20
/* 80D3C5FC  4B 62 5C 21 */	bl _restgpr_26
/* 80D3C600  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D3C604  7C 08 03 A6 */	mtlr r0
/* 80D3C608  38 21 00 20 */	addi r1, r1, 0x20
/* 80D3C60C  4E 80 00 20 */	blr 

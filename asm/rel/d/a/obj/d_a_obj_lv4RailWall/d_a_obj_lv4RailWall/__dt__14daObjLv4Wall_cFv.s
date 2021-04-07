lbl_80C61940:
/* 80C61940  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C61944  7C 08 02 A6 */	mflr r0
/* 80C61948  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6194C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C61950  93 C1 00 08 */	stw r30, 8(r1)
/* 80C61954  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C61958  7C 9F 23 78 */	mr r31, r4
/* 80C6195C  41 82 01 98 */	beq lbl_80C61AF4
/* 80C61960  3C 60 80 C6 */	lis r3, __vt__14daObjLv4Wall_c@ha /* 0x80C61CF0@ha */
/* 80C61964  38 63 1C F0 */	addi r3, r3, __vt__14daObjLv4Wall_c@l /* 0x80C61CF0@l */
/* 80C61968  90 7E 05 9C */	stw r3, 0x59c(r30)
/* 80C6196C  38 03 00 28 */	addi r0, r3, 0x28
/* 80C61970  90 1E 05 A0 */	stw r0, 0x5a0(r30)
/* 80C61974  34 1E 08 10 */	addic. r0, r30, 0x810
/* 80C61978  41 82 00 84 */	beq lbl_80C619FC
/* 80C6197C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80C61980  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80C61984  90 7E 08 4C */	stw r3, 0x84c(r30)
/* 80C61988  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C6198C  90 1E 09 30 */	stw r0, 0x930(r30)
/* 80C61990  38 03 00 84 */	addi r0, r3, 0x84
/* 80C61994  90 1E 09 48 */	stw r0, 0x948(r30)
/* 80C61998  34 1E 09 14 */	addic. r0, r30, 0x914
/* 80C6199C  41 82 00 54 */	beq lbl_80C619F0
/* 80C619A0  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80C619A4  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80C619A8  90 7E 09 30 */	stw r3, 0x930(r30)
/* 80C619AC  38 03 00 58 */	addi r0, r3, 0x58
/* 80C619B0  90 1E 09 48 */	stw r0, 0x948(r30)
/* 80C619B4  34 1E 09 34 */	addic. r0, r30, 0x934
/* 80C619B8  41 82 00 10 */	beq lbl_80C619C8
/* 80C619BC  3C 60 80 C6 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80C61C9C@ha */
/* 80C619C0  38 03 1C 9C */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80C61C9C@l */
/* 80C619C4  90 1E 09 48 */	stw r0, 0x948(r30)
lbl_80C619C8:
/* 80C619C8  34 1E 09 14 */	addic. r0, r30, 0x914
/* 80C619CC  41 82 00 24 */	beq lbl_80C619F0
/* 80C619D0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80C619D4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80C619D8  90 1E 09 30 */	stw r0, 0x930(r30)
/* 80C619DC  34 1E 09 14 */	addic. r0, r30, 0x914
/* 80C619E0  41 82 00 10 */	beq lbl_80C619F0
/* 80C619E4  3C 60 80 C6 */	lis r3, __vt__8cM3dGAab@ha /* 0x80C61CA8@ha */
/* 80C619E8  38 03 1C A8 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80C61CA8@l */
/* 80C619EC  90 1E 09 2C */	stw r0, 0x92c(r30)
lbl_80C619F0:
/* 80C619F0  38 7E 08 10 */	addi r3, r30, 0x810
/* 80C619F4  38 80 00 00 */	li r4, 0
/* 80C619F8  4B 42 26 ED */	bl __dt__12dCcD_GObjInfFv
lbl_80C619FC:
/* 80C619FC  34 1E 07 D4 */	addic. r0, r30, 0x7d4
/* 80C61A00  41 82 00 54 */	beq lbl_80C61A54
/* 80C61A04  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80C61A08  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80C61A0C  90 7E 07 EC */	stw r3, 0x7ec(r30)
/* 80C61A10  38 03 00 20 */	addi r0, r3, 0x20
/* 80C61A14  90 1E 07 F0 */	stw r0, 0x7f0(r30)
/* 80C61A18  34 1E 07 F0 */	addic. r0, r30, 0x7f0
/* 80C61A1C  41 82 00 24 */	beq lbl_80C61A40
/* 80C61A20  3C 60 80 C6 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80C61C90@ha */
/* 80C61A24  38 03 1C 90 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80C61C90@l */
/* 80C61A28  90 1E 07 F0 */	stw r0, 0x7f0(r30)
/* 80C61A2C  34 1E 07 F0 */	addic. r0, r30, 0x7f0
/* 80C61A30  41 82 00 10 */	beq lbl_80C61A40
/* 80C61A34  3C 60 80 C6 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80C61C84@ha */
/* 80C61A38  38 03 1C 84 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80C61C84@l */
/* 80C61A3C  90 1E 07 F0 */	stw r0, 0x7f0(r30)
lbl_80C61A40:
/* 80C61A40  34 1E 07 D4 */	addic. r0, r30, 0x7d4
/* 80C61A44  41 82 00 10 */	beq lbl_80C61A54
/* 80C61A48  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80C61A4C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80C61A50  90 1E 07 EC */	stw r0, 0x7ec(r30)
lbl_80C61A54:
/* 80C61A54  34 1E 07 94 */	addic. r0, r30, 0x794
/* 80C61A58  41 82 00 28 */	beq lbl_80C61A80
/* 80C61A5C  3C 60 80 C6 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80C61C78@ha */
/* 80C61A60  38 03 1C 78 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80C61C78@l */
/* 80C61A64  90 1E 07 A0 */	stw r0, 0x7a0(r30)
/* 80C61A68  38 7E 07 A8 */	addi r3, r30, 0x7a8
/* 80C61A6C  38 80 FF FF */	li r4, -1
/* 80C61A70  4B 60 D4 A9 */	bl __dt__8cM3dGCirFv
/* 80C61A74  38 7E 07 94 */	addi r3, r30, 0x794
/* 80C61A78  38 80 00 00 */	li r4, 0
/* 80C61A7C  4B 60 66 35 */	bl __dt__13cBgS_PolyInfoFv
lbl_80C61A80:
/* 80C61A80  34 1E 05 BC */	addic. r0, r30, 0x5bc
/* 80C61A84  41 82 00 2C */	beq lbl_80C61AB0
/* 80C61A88  3C 60 80 C6 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80C61CB4@ha */
/* 80C61A8C  38 63 1C B4 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80C61CB4@l */
/* 80C61A90  90 7E 05 CC */	stw r3, 0x5cc(r30)
/* 80C61A94  38 03 00 0C */	addi r0, r3, 0xc
/* 80C61A98  90 1E 05 D0 */	stw r0, 0x5d0(r30)
/* 80C61A9C  38 03 00 18 */	addi r0, r3, 0x18
/* 80C61AA0  90 1E 05 E0 */	stw r0, 0x5e0(r30)
/* 80C61AA4  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80C61AA8  38 80 00 00 */	li r4, 0
/* 80C61AAC  4B 41 44 E9 */	bl __dt__9dBgS_AcchFv
lbl_80C61AB0:
/* 80C61AB0  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80C61AB4  41 82 00 10 */	beq lbl_80C61AC4
/* 80C61AB8  3C 60 80 C6 */	lis r3, __vt__17dEvLib_callback_c@ha /* 0x80C61CD8@ha */
/* 80C61ABC  38 03 1C D8 */	addi r0, r3, __vt__17dEvLib_callback_c@l /* 0x80C61CD8@l */
/* 80C61AC0  90 1E 05 A0 */	stw r0, 0x5a0(r30)
lbl_80C61AC4:
/* 80C61AC4  28 1E 00 00 */	cmplwi r30, 0
/* 80C61AC8  41 82 00 1C */	beq lbl_80C61AE4
/* 80C61ACC  3C 60 80 3B */	lis r3, __vt__16dBgS_MoveBgActor@ha /* 0x803AB9A0@ha */
/* 80C61AD0  38 03 B9 A0 */	addi r0, r3, __vt__16dBgS_MoveBgActor@l /* 0x803AB9A0@l */
/* 80C61AD4  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80C61AD8  7F C3 F3 78 */	mr r3, r30
/* 80C61ADC  38 80 00 00 */	li r4, 0
/* 80C61AE0  4B 3B 71 AD */	bl __dt__10fopAc_ac_cFv
lbl_80C61AE4:
/* 80C61AE4  7F E0 07 35 */	extsh. r0, r31
/* 80C61AE8  40 81 00 0C */	ble lbl_80C61AF4
/* 80C61AEC  7F C3 F3 78 */	mr r3, r30
/* 80C61AF0  4B 66 D2 4D */	bl __dl__FPv
lbl_80C61AF4:
/* 80C61AF4  7F C3 F3 78 */	mr r3, r30
/* 80C61AF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C61AFC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C61B00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C61B04  7C 08 03 A6 */	mtlr r0
/* 80C61B08  38 21 00 10 */	addi r1, r1, 0x10
/* 80C61B0C  4E 80 00 20 */	blr 

lbl_80995F2C:
/* 80995F2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80995F30  7C 08 02 A6 */	mflr r0
/* 80995F34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80995F38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80995F3C  93 C1 00 08 */	stw r30, 8(r1)
/* 80995F40  7C 7E 1B 79 */	or. r30, r3, r3
/* 80995F44  7C 9F 23 78 */	mr r31, r4
/* 80995F48  41 82 01 2C */	beq lbl_80996074
/* 80995F4C  3C 80 80 9A */	lis r4, __vt__14daNpc_clerkB_c@ha /* 0x80999F60@ha */
/* 80995F50  38 04 9F 60 */	addi r0, r4, __vt__14daNpc_clerkB_c@l /* 0x80999F60@l */
/* 80995F54  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80995F58  4B 80 46 0D */	bl deleteObject__13dShopSystem_cFv
/* 80995F5C  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 80995F60  28 00 00 00 */	cmplwi r0, 0
/* 80995F64  41 82 00 0C */	beq lbl_80995F70
/* 80995F68  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80995F6C  4B 67 B3 A5 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80995F70:
/* 80995F70  7F C3 F3 78 */	mr r3, r30
/* 80995F74  88 1E 10 D4 */	lbz r0, 0x10d4(r30)
/* 80995F78  54 00 10 3A */	slwi r0, r0, 2
/* 80995F7C  3C 80 80 9A */	lis r4, l_loadResPtrnList@ha /* 0x80999AFC@ha */
/* 80995F80  38 84 9A FC */	addi r4, r4, l_loadResPtrnList@l /* 0x80999AFC@l */
/* 80995F84  7C 84 00 2E */	lwzx r4, r4, r0
/* 80995F88  3C A0 80 9A */	lis r5, l_resNameList@ha /* 0x80999AF0@ha */
/* 80995F8C  38 A5 9A F0 */	addi r5, r5, l_resNameList@l /* 0x80999AF0@l */
/* 80995F90  4B 7B 25 1D */	bl deleteRes__8daNpcT_cFPCScPPCc
/* 80995F94  38 7E 10 D8 */	addi r3, r30, 0x10d8
/* 80995F98  3C 80 80 9A */	lis r4, __dt__18daNpcT_ActorMngr_cFv@ha /* 0x809989DC@ha */
/* 80995F9C  38 84 89 DC */	addi r4, r4, __dt__18daNpcT_ActorMngr_cFv@l /* 0x809989DC@l */
/* 80995FA0  38 A0 00 08 */	li r5, 8
/* 80995FA4  38 C0 00 01 */	li r6, 1
/* 80995FA8  4B 9C BD 41 */	bl __destroy_arr
/* 80995FAC  34 1E 0F 98 */	addic. r0, r30, 0xf98
/* 80995FB0  41 82 00 84 */	beq lbl_80996034
/* 80995FB4  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80995FB8  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80995FBC  90 7E 0F D4 */	stw r3, 0xfd4(r30)
/* 80995FC0  38 03 00 2C */	addi r0, r3, 0x2c
/* 80995FC4  90 1E 10 B8 */	stw r0, 0x10b8(r30)
/* 80995FC8  38 03 00 84 */	addi r0, r3, 0x84
/* 80995FCC  90 1E 10 D0 */	stw r0, 0x10d0(r30)
/* 80995FD0  34 1E 10 9C */	addic. r0, r30, 0x109c
/* 80995FD4  41 82 00 54 */	beq lbl_80996028
/* 80995FD8  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80995FDC  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80995FE0  90 7E 10 B8 */	stw r3, 0x10b8(r30)
/* 80995FE4  38 03 00 58 */	addi r0, r3, 0x58
/* 80995FE8  90 1E 10 D0 */	stw r0, 0x10d0(r30)
/* 80995FEC  34 1E 10 BC */	addic. r0, r30, 0x10bc
/* 80995FF0  41 82 00 10 */	beq lbl_80996000
/* 80995FF4  3C 60 80 9A */	lis r3, __vt__8cM3dGCyl@ha /* 0x80999F54@ha */
/* 80995FF8  38 03 9F 54 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80999F54@l */
/* 80995FFC  90 1E 10 D0 */	stw r0, 0x10d0(r30)
lbl_80996000:
/* 80996000  34 1E 10 9C */	addic. r0, r30, 0x109c
/* 80996004  41 82 00 24 */	beq lbl_80996028
/* 80996008  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8099600C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80996010  90 1E 10 B8 */	stw r0, 0x10b8(r30)
/* 80996014  34 1E 10 9C */	addic. r0, r30, 0x109c
/* 80996018  41 82 00 10 */	beq lbl_80996028
/* 8099601C  3C 60 80 9A */	lis r3, __vt__8cM3dGAab@ha /* 0x80999F48@ha */
/* 80996020  38 03 9F 48 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80999F48@l */
/* 80996024  90 1E 10 B4 */	stw r0, 0x10b4(r30)
lbl_80996028:
/* 80996028  38 7E 0F 98 */	addi r3, r30, 0xf98
/* 8099602C  38 80 00 00 */	li r4, 0
/* 80996030  4B 6E E0 B5 */	bl __dt__12dCcD_GObjInfFv
lbl_80996034:
/* 80996034  34 1E 0F 7C */	addic. r0, r30, 0xf7c
/* 80996038  41 82 00 20 */	beq lbl_80996058
/* 8099603C  34 1E 0F 7C */	addic. r0, r30, 0xf7c
/* 80996040  41 82 00 18 */	beq lbl_80996058
/* 80996044  34 1E 0F 7C */	addic. r0, r30, 0xf7c
/* 80996048  41 82 00 10 */	beq lbl_80996058
/* 8099604C  3C 60 80 9A */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80999F3C@ha */
/* 80996050  38 03 9F 3C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80999F3C@l */
/* 80996054  90 1E 0F 7C */	stw r0, 0xf7c(r30)
lbl_80996058:
/* 80996058  7F C3 F3 78 */	mr r3, r30
/* 8099605C  38 80 00 00 */	li r4, 0
/* 80996060  4B 80 14 85 */	bl __dt__13dShopSystem_cFv
/* 80996064  7F E0 07 35 */	extsh. r0, r31
/* 80996068  40 81 00 0C */	ble lbl_80996074
/* 8099606C  7F C3 F3 78 */	mr r3, r30
/* 80996070  4B 93 8C CD */	bl __dl__FPv
lbl_80996074:
/* 80996074  7F C3 F3 78 */	mr r3, r30
/* 80996078  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8099607C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80996080  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80996084  7C 08 03 A6 */	mtlr r0
/* 80996088  38 21 00 10 */	addi r1, r1, 0x10
/* 8099608C  4E 80 00 20 */	blr 

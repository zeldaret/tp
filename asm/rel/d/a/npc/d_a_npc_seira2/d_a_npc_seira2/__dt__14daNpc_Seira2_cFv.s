lbl_80AD0C0C:
/* 80AD0C0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD0C10  7C 08 02 A6 */	mflr r0
/* 80AD0C14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD0C18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD0C1C  93 C1 00 08 */	stw r30, 8(r1)
/* 80AD0C20  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AD0C24  7C 9F 23 78 */	mr r31, r4
/* 80AD0C28  41 82 01 14 */	beq lbl_80AD0D3C
/* 80AD0C2C  3C 80 80 AD */	lis r4, __vt__14daNpc_Seira2_c@ha /* 0x80AD5530@ha */
/* 80AD0C30  38 04 55 30 */	addi r0, r4, __vt__14daNpc_Seira2_c@l /* 0x80AD5530@l */
/* 80AD0C34  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80AD0C38  4B 6C 99 2D */	bl deleteObject__13dShopSystem_cFv
/* 80AD0C3C  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80AD0C40  28 03 00 00 */	cmplwi r3, 0
/* 80AD0C44  41 82 00 08 */	beq lbl_80AD0C4C
/* 80AD0C48  4B 54 06 C9 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80AD0C4C:
/* 80AD0C4C  80 7E 0F 7C */	lwz r3, 0xf7c(r30)
/* 80AD0C50  28 03 00 00 */	cmplwi r3, 0
/* 80AD0C54  41 82 00 08 */	beq lbl_80AD0C5C
/* 80AD0C58  4B 54 06 B9 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80AD0C5C:
/* 80AD0C5C  7F C3 F3 78 */	mr r3, r30
/* 80AD0C60  88 1E 10 C1 */	lbz r0, 0x10c1(r30)
/* 80AD0C64  54 00 10 3A */	slwi r0, r0, 2
/* 80AD0C68  3C 80 80 AD */	lis r4, l_loadResPtrnList@ha /* 0x80AD4BE4@ha */
/* 80AD0C6C  38 84 4B E4 */	addi r4, r4, l_loadResPtrnList@l /* 0x80AD4BE4@l */
/* 80AD0C70  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AD0C74  3C A0 80 AD */	lis r5, l_resNameList@ha /* 0x80AD4BD0@ha */
/* 80AD0C78  38 A5 4B D0 */	addi r5, r5, l_resNameList@l /* 0x80AD4BD0@l */
/* 80AD0C7C  4B 67 78 31 */	bl deleteRes__8daNpcT_cFPCScPPCc
/* 80AD0C80  38 7E 10 C4 */	addi r3, r30, 0x10c4
/* 80AD0C84  3C 80 80 AD */	lis r4, __dt__18daNpcT_ActorMngr_cFv@ha /* 0x80AD3A60@ha */
/* 80AD0C88  38 84 3A 60 */	addi r4, r4, __dt__18daNpcT_ActorMngr_cFv@l /* 0x80AD3A60@l */
/* 80AD0C8C  38 A0 00 08 */	li r5, 8
/* 80AD0C90  38 C0 00 01 */	li r6, 1
/* 80AD0C94  4B 89 10 55 */	bl __destroy_arr
/* 80AD0C98  34 1E 0F 84 */	addic. r0, r30, 0xf84
/* 80AD0C9C  41 82 00 84 */	beq lbl_80AD0D20
/* 80AD0CA0  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80AD0CA4  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80AD0CA8  90 7E 0F C0 */	stw r3, 0xfc0(r30)
/* 80AD0CAC  38 03 00 2C */	addi r0, r3, 0x2c
/* 80AD0CB0  90 1E 10 A4 */	stw r0, 0x10a4(r30)
/* 80AD0CB4  38 03 00 84 */	addi r0, r3, 0x84
/* 80AD0CB8  90 1E 10 BC */	stw r0, 0x10bc(r30)
/* 80AD0CBC  34 1E 10 88 */	addic. r0, r30, 0x1088
/* 80AD0CC0  41 82 00 54 */	beq lbl_80AD0D14
/* 80AD0CC4  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80AD0CC8  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80AD0CCC  90 7E 10 A4 */	stw r3, 0x10a4(r30)
/* 80AD0CD0  38 03 00 58 */	addi r0, r3, 0x58
/* 80AD0CD4  90 1E 10 BC */	stw r0, 0x10bc(r30)
/* 80AD0CD8  34 1E 10 A8 */	addic. r0, r30, 0x10a8
/* 80AD0CDC  41 82 00 10 */	beq lbl_80AD0CEC
/* 80AD0CE0  3C 60 80 AD */	lis r3, __vt__8cM3dGCyl@ha /* 0x80AD5524@ha */
/* 80AD0CE4  38 03 55 24 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80AD5524@l */
/* 80AD0CE8  90 1E 10 BC */	stw r0, 0x10bc(r30)
lbl_80AD0CEC:
/* 80AD0CEC  34 1E 10 88 */	addic. r0, r30, 0x1088
/* 80AD0CF0  41 82 00 24 */	beq lbl_80AD0D14
/* 80AD0CF4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80AD0CF8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80AD0CFC  90 1E 10 A4 */	stw r0, 0x10a4(r30)
/* 80AD0D00  34 1E 10 88 */	addic. r0, r30, 0x1088
/* 80AD0D04  41 82 00 10 */	beq lbl_80AD0D14
/* 80AD0D08  3C 60 80 AD */	lis r3, __vt__8cM3dGAab@ha /* 0x80AD5518@ha */
/* 80AD0D0C  38 03 55 18 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80AD5518@l */
/* 80AD0D10  90 1E 10 A0 */	stw r0, 0x10a0(r30)
lbl_80AD0D14:
/* 80AD0D14  38 7E 0F 84 */	addi r3, r30, 0xf84
/* 80AD0D18  38 80 00 00 */	li r4, 0
/* 80AD0D1C  4B 5B 33 C9 */	bl __dt__12dCcD_GObjInfFv
lbl_80AD0D20:
/* 80AD0D20  7F C3 F3 78 */	mr r3, r30
/* 80AD0D24  38 80 00 00 */	li r4, 0
/* 80AD0D28  4B 6C 67 BD */	bl __dt__13dShopSystem_cFv
/* 80AD0D2C  7F E0 07 35 */	extsh. r0, r31
/* 80AD0D30  40 81 00 0C */	ble lbl_80AD0D3C
/* 80AD0D34  7F C3 F3 78 */	mr r3, r30
/* 80AD0D38  4B 7F E0 05 */	bl __dl__FPv
lbl_80AD0D3C:
/* 80AD0D3C  7F C3 F3 78 */	mr r3, r30
/* 80AD0D40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD0D44  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AD0D48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD0D4C  7C 08 03 A6 */	mtlr r0
/* 80AD0D50  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD0D54  4E 80 00 20 */	blr 

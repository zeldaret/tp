lbl_80ACB7CC:
/* 80ACB7CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACB7D0  7C 08 02 A6 */	mflr r0
/* 80ACB7D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACB7D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACB7DC  93 C1 00 08 */	stw r30, 8(r1)
/* 80ACB7E0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80ACB7E4  7C 9F 23 78 */	mr r31, r4
/* 80ACB7E8  41 82 01 14 */	beq lbl_80ACB8FC
/* 80ACB7EC  3C 80 80 AD */	lis r4, __vt__13daNpc_Seira_c@ha
/* 80ACB7F0  38 04 0A 14 */	addi r0, r4, __vt__13daNpc_Seira_c@l
/* 80ACB7F4  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80ACB7F8  4B 6C ED 6C */	b deleteObject__13dShopSystem_cFv
/* 80ACB7FC  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80ACB800  28 03 00 00 */	cmplwi r3, 0
/* 80ACB804  41 82 00 08 */	beq lbl_80ACB80C
/* 80ACB808  4B 54 5B 08 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80ACB80C:
/* 80ACB80C  80 7E 0F 7C */	lwz r3, 0xf7c(r30)
/* 80ACB810  28 03 00 00 */	cmplwi r3, 0
/* 80ACB814  41 82 00 08 */	beq lbl_80ACB81C
/* 80ACB818  4B 54 5A F8 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80ACB81C:
/* 80ACB81C  7F C3 F3 78 */	mr r3, r30
/* 80ACB820  88 1E 10 C1 */	lbz r0, 0x10c1(r30)
/* 80ACB824  54 00 10 3A */	slwi r0, r0, 2
/* 80ACB828  3C 80 80 AD */	lis r4, l_loadResPtrnList@ha
/* 80ACB82C  38 84 FF FC */	addi r4, r4, l_loadResPtrnList@l
/* 80ACB830  7C 84 00 2E */	lwzx r4, r4, r0
/* 80ACB834  3C A0 80 AD */	lis r5, l_resNameList@ha
/* 80ACB838  38 A5 FF E0 */	addi r5, r5, l_resNameList@l
/* 80ACB83C  4B 67 CC 70 */	b deleteRes__8daNpcT_cFPCScPPCc
/* 80ACB840  38 7E 10 C4 */	addi r3, r30, 0x10c4
/* 80ACB844  3C 80 80 AD */	lis r4, __dt__18daNpcT_ActorMngr_cFv@ha
/* 80ACB848  38 84 ED E8 */	addi r4, r4, __dt__18daNpcT_ActorMngr_cFv@l
/* 80ACB84C  38 A0 00 08 */	li r5, 8
/* 80ACB850  38 C0 00 03 */	li r6, 3
/* 80ACB854  4B 89 64 94 */	b __destroy_arr
/* 80ACB858  34 1E 0F 84 */	addic. r0, r30, 0xf84
/* 80ACB85C  41 82 00 84 */	beq lbl_80ACB8E0
/* 80ACB860  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80ACB864  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80ACB868  90 7E 0F C0 */	stw r3, 0xfc0(r30)
/* 80ACB86C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80ACB870  90 1E 10 A4 */	stw r0, 0x10a4(r30)
/* 80ACB874  38 03 00 84 */	addi r0, r3, 0x84
/* 80ACB878  90 1E 10 BC */	stw r0, 0x10bc(r30)
/* 80ACB87C  34 1E 10 88 */	addic. r0, r30, 0x1088
/* 80ACB880  41 82 00 54 */	beq lbl_80ACB8D4
/* 80ACB884  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80ACB888  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80ACB88C  90 7E 10 A4 */	stw r3, 0x10a4(r30)
/* 80ACB890  38 03 00 58 */	addi r0, r3, 0x58
/* 80ACB894  90 1E 10 BC */	stw r0, 0x10bc(r30)
/* 80ACB898  34 1E 10 A8 */	addic. r0, r30, 0x10a8
/* 80ACB89C  41 82 00 10 */	beq lbl_80ACB8AC
/* 80ACB8A0  3C 60 80 AD */	lis r3, __vt__8cM3dGCyl@ha
/* 80ACB8A4  38 03 0A 08 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80ACB8A8  90 1E 10 BC */	stw r0, 0x10bc(r30)
lbl_80ACB8AC:
/* 80ACB8AC  34 1E 10 88 */	addic. r0, r30, 0x1088
/* 80ACB8B0  41 82 00 24 */	beq lbl_80ACB8D4
/* 80ACB8B4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80ACB8B8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80ACB8BC  90 1E 10 A4 */	stw r0, 0x10a4(r30)
/* 80ACB8C0  34 1E 10 88 */	addic. r0, r30, 0x1088
/* 80ACB8C4  41 82 00 10 */	beq lbl_80ACB8D4
/* 80ACB8C8  3C 60 80 AD */	lis r3, __vt__8cM3dGAab@ha
/* 80ACB8CC  38 03 09 FC */	addi r0, r3, __vt__8cM3dGAab@l
/* 80ACB8D0  90 1E 10 A0 */	stw r0, 0x10a0(r30)
lbl_80ACB8D4:
/* 80ACB8D4  38 7E 0F 84 */	addi r3, r30, 0xf84
/* 80ACB8D8  38 80 00 00 */	li r4, 0
/* 80ACB8DC  4B 5B 88 08 */	b __dt__12dCcD_GObjInfFv
lbl_80ACB8E0:
/* 80ACB8E0  7F C3 F3 78 */	mr r3, r30
/* 80ACB8E4  38 80 00 00 */	li r4, 0
/* 80ACB8E8  4B 6C BB FC */	b __dt__13dShopSystem_cFv
/* 80ACB8EC  7F E0 07 35 */	extsh. r0, r31
/* 80ACB8F0  40 81 00 0C */	ble lbl_80ACB8FC
/* 80ACB8F4  7F C3 F3 78 */	mr r3, r30
/* 80ACB8F8  4B 80 34 44 */	b __dl__FPv
lbl_80ACB8FC:
/* 80ACB8FC  7F C3 F3 78 */	mr r3, r30
/* 80ACB900  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACB904  83 C1 00 08 */	lwz r30, 8(r1)
/* 80ACB908  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACB90C  7C 08 03 A6 */	mtlr r0
/* 80ACB910  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACB914  4E 80 00 20 */	blr 

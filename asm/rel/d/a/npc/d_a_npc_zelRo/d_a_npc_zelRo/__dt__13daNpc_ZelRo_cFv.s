lbl_80B71FAC:
/* 80B71FAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B71FB0  7C 08 02 A6 */	mflr r0
/* 80B71FB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B71FB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B71FBC  93 C1 00 08 */	stw r30, 8(r1)
/* 80B71FC0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B71FC4  7C 9F 23 78 */	mr r31, r4
/* 80B71FC8  41 82 01 00 */	beq lbl_80B720C8
/* 80B71FCC  3C 60 80 B7 */	lis r3, __vt__13daNpc_ZelRo_c@ha
/* 80B71FD0  38 03 4F 54 */	addi r0, r3, __vt__13daNpc_ZelRo_c@l
/* 80B71FD4  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80B71FD8  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 80B71FDC  28 00 00 00 */	cmplwi r0, 0
/* 80B71FE0  41 82 00 0C */	beq lbl_80B71FEC
/* 80B71FE4  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80B71FE8  4B 49 F3 28 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80B71FEC:
/* 80B71FEC  7F C3 F3 78 */	mr r3, r30
/* 80B71FF0  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80B71FF4  54 00 10 3A */	slwi r0, r0, 2
/* 80B71FF8  3C 80 80 B7 */	lis r4, l_loadResPtrnList@ha
/* 80B71FFC  38 84 4D 9C */	addi r4, r4, l_loadResPtrnList@l
/* 80B72000  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B72004  3C A0 80 B7 */	lis r5, l_resNameList@ha
/* 80B72008  38 A5 4D 90 */	addi r5, r5, l_resNameList@l
/* 80B7200C  4B 5D 64 A0 */	b deleteRes__8daNpcT_cFPCScPPCc
/* 80B72010  34 1E 0F 9C */	addic. r0, r30, 0xf9c
/* 80B72014  41 82 00 10 */	beq lbl_80B72024
/* 80B72018  3C 60 80 B7 */	lis r3, __vt__13daNpcT_Path_c@ha
/* 80B7201C  38 03 4F 48 */	addi r0, r3, __vt__13daNpcT_Path_c@l
/* 80B72020  90 1E 0F C0 */	stw r0, 0xfc0(r30)
lbl_80B72024:
/* 80B72024  34 1E 0E 44 */	addic. r0, r30, 0xe44
/* 80B72028  41 82 00 84 */	beq lbl_80B720AC
/* 80B7202C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80B72030  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80B72034  90 7E 0E 80 */	stw r3, 0xe80(r30)
/* 80B72038  38 03 00 2C */	addi r0, r3, 0x2c
/* 80B7203C  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 80B72040  38 03 00 84 */	addi r0, r3, 0x84
/* 80B72044  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 80B72048  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80B7204C  41 82 00 54 */	beq lbl_80B720A0
/* 80B72050  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80B72054  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80B72058  90 7E 0F 64 */	stw r3, 0xf64(r30)
/* 80B7205C  38 03 00 58 */	addi r0, r3, 0x58
/* 80B72060  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 80B72064  34 1E 0F 68 */	addic. r0, r30, 0xf68
/* 80B72068  41 82 00 10 */	beq lbl_80B72078
/* 80B7206C  3C 60 80 B7 */	lis r3, __vt__8cM3dGCyl@ha
/* 80B72070  38 03 4F 3C */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80B72074  90 1E 0F 7C */	stw r0, 0xf7c(r30)
lbl_80B72078:
/* 80B72078  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80B7207C  41 82 00 24 */	beq lbl_80B720A0
/* 80B72080  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80B72084  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80B72088  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 80B7208C  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80B72090  41 82 00 10 */	beq lbl_80B720A0
/* 80B72094  3C 60 80 B7 */	lis r3, __vt__8cM3dGAab@ha
/* 80B72098  38 03 4F 30 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80B7209C  90 1E 0F 60 */	stw r0, 0xf60(r30)
lbl_80B720A0:
/* 80B720A0  38 7E 0E 44 */	addi r3, r30, 0xe44
/* 80B720A4  38 80 00 00 */	li r4, 0
/* 80B720A8  4B 51 20 3C */	b __dt__12dCcD_GObjInfFv
lbl_80B720AC:
/* 80B720AC  7F C3 F3 78 */	mr r3, r30
/* 80B720B0  38 80 00 00 */	li r4, 0
/* 80B720B4  48 00 19 DD */	bl __dt__8daNpcT_cFv
/* 80B720B8  7F E0 07 35 */	extsh. r0, r31
/* 80B720BC  40 81 00 0C */	ble lbl_80B720C8
/* 80B720C0  7F C3 F3 78 */	mr r3, r30
/* 80B720C4  4B 75 CC 78 */	b __dl__FPv
lbl_80B720C8:
/* 80B720C8  7F C3 F3 78 */	mr r3, r30
/* 80B720CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B720D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B720D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B720D8  7C 08 03 A6 */	mtlr r0
/* 80B720DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B720E0  4E 80 00 20 */	blr 

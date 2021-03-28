lbl_80B42F4C:
/* 80B42F4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B42F50  7C 08 02 A6 */	mflr r0
/* 80B42F54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B42F58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B42F5C  93 C1 00 08 */	stw r30, 8(r1)
/* 80B42F60  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B42F64  7C 9F 23 78 */	mr r31, r4
/* 80B42F68  41 82 01 00 */	beq lbl_80B43068
/* 80B42F6C  3C 60 80 B4 */	lis r3, __vt__13daNpc_yamiD_c@ha
/* 80B42F70  38 03 63 98 */	addi r0, r3, __vt__13daNpc_yamiD_c@l
/* 80B42F74  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80B42F78  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 80B42F7C  28 00 00 00 */	cmplwi r0, 0
/* 80B42F80  41 82 00 0C */	beq lbl_80B42F8C
/* 80B42F84  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80B42F88  4B 4C E3 88 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80B42F8C:
/* 80B42F8C  7F C3 F3 78 */	mr r3, r30
/* 80B42F90  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80B42F94  54 00 10 3A */	slwi r0, r0, 2
/* 80B42F98  3C 80 80 B4 */	lis r4, l_loadResPtrnList@ha
/* 80B42F9C  38 84 61 88 */	addi r4, r4, l_loadResPtrnList@l
/* 80B42FA0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B42FA4  3C A0 80 B4 */	lis r5, l_resNameList@ha
/* 80B42FA8  38 A5 61 7C */	addi r5, r5, l_resNameList@l
/* 80B42FAC  4B 60 55 00 */	b deleteRes__8daNpcT_cFPCScPPCc
/* 80B42FB0  34 1E 0F 9C */	addic. r0, r30, 0xf9c
/* 80B42FB4  41 82 00 10 */	beq lbl_80B42FC4
/* 80B42FB8  3C 60 80 B4 */	lis r3, __vt__13daNpcT_Path_c@ha
/* 80B42FBC  38 03 63 8C */	addi r0, r3, __vt__13daNpcT_Path_c@l
/* 80B42FC0  90 1E 0F C0 */	stw r0, 0xfc0(r30)
lbl_80B42FC4:
/* 80B42FC4  34 1E 0E 44 */	addic. r0, r30, 0xe44
/* 80B42FC8  41 82 00 84 */	beq lbl_80B4304C
/* 80B42FCC  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80B42FD0  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80B42FD4  90 7E 0E 80 */	stw r3, 0xe80(r30)
/* 80B42FD8  38 03 00 2C */	addi r0, r3, 0x2c
/* 80B42FDC  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 80B42FE0  38 03 00 84 */	addi r0, r3, 0x84
/* 80B42FE4  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 80B42FE8  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80B42FEC  41 82 00 54 */	beq lbl_80B43040
/* 80B42FF0  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80B42FF4  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80B42FF8  90 7E 0F 64 */	stw r3, 0xf64(r30)
/* 80B42FFC  38 03 00 58 */	addi r0, r3, 0x58
/* 80B43000  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 80B43004  34 1E 0F 68 */	addic. r0, r30, 0xf68
/* 80B43008  41 82 00 10 */	beq lbl_80B43018
/* 80B4300C  3C 60 80 B4 */	lis r3, __vt__8cM3dGCyl@ha
/* 80B43010  38 03 63 80 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80B43014  90 1E 0F 7C */	stw r0, 0xf7c(r30)
lbl_80B43018:
/* 80B43018  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80B4301C  41 82 00 24 */	beq lbl_80B43040
/* 80B43020  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80B43024  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80B43028  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 80B4302C  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80B43030  41 82 00 10 */	beq lbl_80B43040
/* 80B43034  3C 60 80 B4 */	lis r3, __vt__8cM3dGAab@ha
/* 80B43038  38 03 63 74 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80B4303C  90 1E 0F 60 */	stw r0, 0xf60(r30)
lbl_80B43040:
/* 80B43040  38 7E 0E 44 */	addi r3, r30, 0xe44
/* 80B43044  38 80 00 00 */	li r4, 0
/* 80B43048  4B 54 10 9C */	b __dt__12dCcD_GObjInfFv
lbl_80B4304C:
/* 80B4304C  7F C3 F3 78 */	mr r3, r30
/* 80B43050  38 80 00 00 */	li r4, 0
/* 80B43054  48 00 1D AD */	bl __dt__8daNpcT_cFv
/* 80B43058  7F E0 07 35 */	extsh. r0, r31
/* 80B4305C  40 81 00 0C */	ble lbl_80B43068
/* 80B43060  7F C3 F3 78 */	mr r3, r30
/* 80B43064  4B 78 BC D8 */	b __dl__FPv
lbl_80B43068:
/* 80B43068  7F C3 F3 78 */	mr r3, r30
/* 80B4306C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B43070  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B43074  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B43078  7C 08 03 A6 */	mtlr r0
/* 80B4307C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B43080  4E 80 00 20 */	blr 

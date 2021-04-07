lbl_80B68F2C:
/* 80B68F2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B68F30  7C 08 02 A6 */	mflr r0
/* 80B68F34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B68F38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B68F3C  93 C1 00 08 */	stw r30, 8(r1)
/* 80B68F40  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B68F44  7C 9F 23 78 */	mr r31, r4
/* 80B68F48  41 82 00 E8 */	beq lbl_80B69030
/* 80B68F4C  3C 60 80 B7 */	lis r3, __vt__12daNpc_zanB_c@ha /* 0x80B6BFCC@ha */
/* 80B68F50  38 03 BF CC */	addi r0, r3, __vt__12daNpc_zanB_c@l /* 0x80B6BFCC@l */
/* 80B68F54  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80B68F58  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80B68F5C  28 03 00 00 */	cmplwi r3, 0
/* 80B68F60  41 82 00 08 */	beq lbl_80B68F68
/* 80B68F64  4B 4A 83 AD */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80B68F68:
/* 80B68F68  7F C3 F3 78 */	mr r3, r30
/* 80B68F6C  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80B68F70  54 00 10 3A */	slwi r0, r0, 2
/* 80B68F74  3C 80 80 B7 */	lis r4, l_loadResPtrnList@ha /* 0x80B6BE14@ha */
/* 80B68F78  38 84 BE 14 */	addi r4, r4, l_loadResPtrnList@l /* 0x80B6BE14@l */
/* 80B68F7C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B68F80  3C A0 80 B7 */	lis r5, l_resNameList@ha /* 0x80B6BE08@ha */
/* 80B68F84  38 A5 BE 08 */	addi r5, r5, l_resNameList@l /* 0x80B6BE08@l */
/* 80B68F88  4B 5D F5 25 */	bl deleteRes__8daNpcT_cFPCScPPCc
/* 80B68F8C  34 1E 0E 44 */	addic. r0, r30, 0xe44
/* 80B68F90  41 82 00 84 */	beq lbl_80B69014
/* 80B68F94  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80B68F98  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80B68F9C  90 7E 0E 80 */	stw r3, 0xe80(r30)
/* 80B68FA0  38 03 00 2C */	addi r0, r3, 0x2c
/* 80B68FA4  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 80B68FA8  38 03 00 84 */	addi r0, r3, 0x84
/* 80B68FAC  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 80B68FB0  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80B68FB4  41 82 00 54 */	beq lbl_80B69008
/* 80B68FB8  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80B68FBC  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80B68FC0  90 7E 0F 64 */	stw r3, 0xf64(r30)
/* 80B68FC4  38 03 00 58 */	addi r0, r3, 0x58
/* 80B68FC8  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 80B68FCC  34 1E 0F 68 */	addic. r0, r30, 0xf68
/* 80B68FD0  41 82 00 10 */	beq lbl_80B68FE0
/* 80B68FD4  3C 60 80 B7 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80B6BFC0@ha */
/* 80B68FD8  38 03 BF C0 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80B6BFC0@l */
/* 80B68FDC  90 1E 0F 7C */	stw r0, 0xf7c(r30)
lbl_80B68FE0:
/* 80B68FE0  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80B68FE4  41 82 00 24 */	beq lbl_80B69008
/* 80B68FE8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80B68FEC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80B68FF0  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 80B68FF4  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80B68FF8  41 82 00 10 */	beq lbl_80B69008
/* 80B68FFC  3C 60 80 B7 */	lis r3, __vt__8cM3dGAab@ha /* 0x80B6BFB4@ha */
/* 80B69000  38 03 BF B4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80B6BFB4@l */
/* 80B69004  90 1E 0F 60 */	stw r0, 0xf60(r30)
lbl_80B69008:
/* 80B69008  38 7E 0E 44 */	addi r3, r30, 0xe44
/* 80B6900C  38 80 00 00 */	li r4, 0
/* 80B69010  4B 51 B0 D5 */	bl __dt__12dCcD_GObjInfFv
lbl_80B69014:
/* 80B69014  7F C3 F3 78 */	mr r3, r30
/* 80B69018  38 80 00 00 */	li r4, 0
/* 80B6901C  48 00 1B 45 */	bl __dt__8daNpcT_cFv
/* 80B69020  7F E0 07 35 */	extsh. r0, r31
/* 80B69024  40 81 00 0C */	ble lbl_80B69030
/* 80B69028  7F C3 F3 78 */	mr r3, r30
/* 80B6902C  4B 76 5D 11 */	bl __dl__FPv
lbl_80B69030:
/* 80B69030  7F C3 F3 78 */	mr r3, r30
/* 80B69034  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B69038  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B6903C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B69040  7C 08 03 A6 */	mtlr r0
/* 80B69044  38 21 00 10 */	addi r1, r1, 0x10
/* 80B69048  4E 80 00 20 */	blr 

lbl_80536E4C:
/* 80536E4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80536E50  7C 08 02 A6 */	mflr r0
/* 80536E54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80536E58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80536E5C  93 C1 00 08 */	stw r30, 8(r1)
/* 80536E60  7C 7E 1B 79 */	or. r30, r3, r3
/* 80536E64  7C 9F 23 78 */	mr r31, r4
/* 80536E68  41 82 01 98 */	beq lbl_80537000
/* 80536E6C  3C 60 80 54 */	lis r3, __vt__12daNpc_Besu_c@ha
/* 80536E70  38 03 FD 98 */	addi r0, r3, __vt__12daNpc_Besu_c@l
/* 80536E74  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80536E78  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80536E7C  28 03 00 00 */	cmplwi r3, 0
/* 80536E80  41 82 00 08 */	beq lbl_80536E88
/* 80536E84  4B AD A4 8C */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80536E88:
/* 80536E88  80 7E 0E 40 */	lwz r3, 0xe40(r30)
/* 80536E8C  28 03 00 00 */	cmplwi r3, 0
/* 80536E90  41 82 00 08 */	beq lbl_80536E98
/* 80536E94  4B AD A4 7C */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80536E98:
/* 80536E98  7F C3 F3 78 */	mr r3, r30
/* 80536E9C  88 1E 10 C4 */	lbz r0, 0x10c4(r30)
/* 80536EA0  54 00 10 3A */	slwi r0, r0, 2
/* 80536EA4  3C 80 80 54 */	lis r4, l_loadResPtrnList@ha
/* 80536EA8  38 84 EC 64 */	addi r4, r4, l_loadResPtrnList@l
/* 80536EAC  7C 84 00 2E */	lwzx r4, r4, r0
/* 80536EB0  3C A0 80 54 */	lis r5, l_resNameList@ha
/* 80536EB4  38 A5 EC 14 */	addi r5, r5, l_resNameList@l
/* 80536EB8  4B C1 15 F4 */	b deleteRes__8daNpcT_cFPCScPPCc
/* 80536EBC  38 7E 10 C8 */	addi r3, r30, 0x10c8
/* 80536EC0  3C 80 80 54 */	lis r4, __dt__18daNpcT_ActorMngr_cFv@ha
/* 80536EC4  38 84 D7 9C */	addi r4, r4, __dt__18daNpcT_ActorMngr_cFv@l
/* 80536EC8  38 A0 00 08 */	li r5, 8
/* 80536ECC  38 C0 00 07 */	li r6, 7
/* 80536ED0  4B E2 AE 18 */	b __destroy_arr
/* 80536ED4  34 1E 0F 88 */	addic. r0, r30, 0xf88
/* 80536ED8  41 82 00 84 */	beq lbl_80536F5C
/* 80536EDC  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80536EE0  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80536EE4  90 7E 0F C4 */	stw r3, 0xfc4(r30)
/* 80536EE8  38 03 00 2C */	addi r0, r3, 0x2c
/* 80536EEC  90 1E 10 A8 */	stw r0, 0x10a8(r30)
/* 80536EF0  38 03 00 84 */	addi r0, r3, 0x84
/* 80536EF4  90 1E 10 C0 */	stw r0, 0x10c0(r30)
/* 80536EF8  34 1E 10 8C */	addic. r0, r30, 0x108c
/* 80536EFC  41 82 00 54 */	beq lbl_80536F50
/* 80536F00  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80536F04  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80536F08  90 7E 10 A8 */	stw r3, 0x10a8(r30)
/* 80536F0C  38 03 00 58 */	addi r0, r3, 0x58
/* 80536F10  90 1E 10 C0 */	stw r0, 0x10c0(r30)
/* 80536F14  34 1E 10 AC */	addic. r0, r30, 0x10ac
/* 80536F18  41 82 00 10 */	beq lbl_80536F28
/* 80536F1C  3C 60 80 54 */	lis r3, __vt__8cM3dGCyl@ha
/* 80536F20  38 03 FD 8C */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80536F24  90 1E 10 C0 */	stw r0, 0x10c0(r30)
lbl_80536F28:
/* 80536F28  34 1E 10 8C */	addic. r0, r30, 0x108c
/* 80536F2C  41 82 00 24 */	beq lbl_80536F50
/* 80536F30  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80536F34  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80536F38  90 1E 10 A8 */	stw r0, 0x10a8(r30)
/* 80536F3C  34 1E 10 8C */	addic. r0, r30, 0x108c
/* 80536F40  41 82 00 10 */	beq lbl_80536F50
/* 80536F44  3C 60 80 54 */	lis r3, __vt__8cM3dGAab@ha
/* 80536F48  38 03 FD 80 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80536F4C  90 1E 10 A4 */	stw r0, 0x10a4(r30)
lbl_80536F50:
/* 80536F50  38 7E 0F 88 */	addi r3, r30, 0xf88
/* 80536F54  38 80 00 00 */	li r4, 0
/* 80536F58  4B B4 D1 8C */	b __dt__12dCcD_GObjInfFv
lbl_80536F5C:
/* 80536F5C  34 1E 0E 4C */	addic. r0, r30, 0xe4c
/* 80536F60  41 82 00 84 */	beq lbl_80536FE4
/* 80536F64  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80536F68  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80536F6C  90 7E 0E 88 */	stw r3, 0xe88(r30)
/* 80536F70  38 03 00 2C */	addi r0, r3, 0x2c
/* 80536F74  90 1E 0F 6C */	stw r0, 0xf6c(r30)
/* 80536F78  38 03 00 84 */	addi r0, r3, 0x84
/* 80536F7C  90 1E 0F 84 */	stw r0, 0xf84(r30)
/* 80536F80  34 1E 0F 50 */	addic. r0, r30, 0xf50
/* 80536F84  41 82 00 54 */	beq lbl_80536FD8
/* 80536F88  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80536F8C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80536F90  90 7E 0F 6C */	stw r3, 0xf6c(r30)
/* 80536F94  38 03 00 58 */	addi r0, r3, 0x58
/* 80536F98  90 1E 0F 84 */	stw r0, 0xf84(r30)
/* 80536F9C  34 1E 0F 70 */	addic. r0, r30, 0xf70
/* 80536FA0  41 82 00 10 */	beq lbl_80536FB0
/* 80536FA4  3C 60 80 54 */	lis r3, __vt__8cM3dGCyl@ha
/* 80536FA8  38 03 FD 8C */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80536FAC  90 1E 0F 84 */	stw r0, 0xf84(r30)
lbl_80536FB0:
/* 80536FB0  34 1E 0F 50 */	addic. r0, r30, 0xf50
/* 80536FB4  41 82 00 24 */	beq lbl_80536FD8
/* 80536FB8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80536FBC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80536FC0  90 1E 0F 6C */	stw r0, 0xf6c(r30)
/* 80536FC4  34 1E 0F 50 */	addic. r0, r30, 0xf50
/* 80536FC8  41 82 00 10 */	beq lbl_80536FD8
/* 80536FCC  3C 60 80 54 */	lis r3, __vt__8cM3dGAab@ha
/* 80536FD0  38 03 FD 80 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80536FD4  90 1E 0F 68 */	stw r0, 0xf68(r30)
lbl_80536FD8:
/* 80536FD8  38 7E 0E 4C */	addi r3, r30, 0xe4c
/* 80536FDC  38 80 00 00 */	li r4, 0
/* 80536FE0  4B B4 D1 04 */	b __dt__12dCcD_GObjInfFv
lbl_80536FE4:
/* 80536FE4  7F C3 F3 78 */	mr r3, r30
/* 80536FE8  38 80 00 00 */	li r4, 0
/* 80536FEC  48 00 63 B1 */	bl __dt__8daNpcT_cFv
/* 80536FF0  7F E0 07 35 */	extsh. r0, r31
/* 80536FF4  40 81 00 0C */	ble lbl_80537000
/* 80536FF8  7F C3 F3 78 */	mr r3, r30
/* 80536FFC  4B D9 7D 40 */	b __dl__FPv
lbl_80537000:
/* 80537000  7F C3 F3 78 */	mr r3, r30
/* 80537004  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80537008  83 C1 00 08 */	lwz r30, 8(r1)
/* 8053700C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80537010  7C 08 03 A6 */	mtlr r0
/* 80537014  38 21 00 10 */	addi r1, r1, 0x10
/* 80537018  4E 80 00 20 */	blr 

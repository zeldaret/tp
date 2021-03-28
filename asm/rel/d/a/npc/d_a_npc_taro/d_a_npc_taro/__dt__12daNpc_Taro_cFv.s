lbl_80565E8C:
/* 80565E8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80565E90  7C 08 02 A6 */	mflr r0
/* 80565E94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80565E98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80565E9C  93 C1 00 08 */	stw r30, 8(r1)
/* 80565EA0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80565EA4  7C 9F 23 78 */	mr r31, r4
/* 80565EA8  41 82 01 88 */	beq lbl_80566030
/* 80565EAC  3C 60 80 57 */	lis r3, __vt__12daNpc_Taro_c@ha
/* 80565EB0  38 03 34 88 */	addi r0, r3, __vt__12daNpc_Taro_c@l
/* 80565EB4  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80565EB8  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80565EBC  28 03 00 00 */	cmplwi r3, 0
/* 80565EC0  41 82 00 08 */	beq lbl_80565EC8
/* 80565EC4  4B AA B4 4C */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80565EC8:
/* 80565EC8  7F C3 F3 78 */	mr r3, r30
/* 80565ECC  88 1E 10 C4 */	lbz r0, 0x10c4(r30)
/* 80565ED0  54 00 10 3A */	slwi r0, r0, 2
/* 80565ED4  3C 80 80 57 */	lis r4, l_loadResPtrnList@ha
/* 80565ED8  38 84 1D 5C */	addi r4, r4, l_loadResPtrnList@l
/* 80565EDC  7C 84 00 2E */	lwzx r4, r4, r0
/* 80565EE0  3C A0 80 57 */	lis r5, l_resNameList@ha
/* 80565EE4  38 A5 1C F4 */	addi r5, r5, l_resNameList@l
/* 80565EE8  4B BE 25 C4 */	b deleteRes__8daNpcT_cFPCScPPCc
/* 80565EEC  38 7E 10 C8 */	addi r3, r30, 0x10c8
/* 80565EF0  3C 80 80 57 */	lis r4, __dt__18daNpcT_ActorMngr_cFv@ha
/* 80565EF4  38 84 06 70 */	addi r4, r4, __dt__18daNpcT_ActorMngr_cFv@l
/* 80565EF8  38 A0 00 08 */	li r5, 8
/* 80565EFC  38 C0 00 17 */	li r6, 0x17
/* 80565F00  4B DF BD E8 */	b __destroy_arr
/* 80565F04  34 1E 0F 88 */	addic. r0, r30, 0xf88
/* 80565F08  41 82 00 84 */	beq lbl_80565F8C
/* 80565F0C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80565F10  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80565F14  90 7E 0F C4 */	stw r3, 0xfc4(r30)
/* 80565F18  38 03 00 2C */	addi r0, r3, 0x2c
/* 80565F1C  90 1E 10 A8 */	stw r0, 0x10a8(r30)
/* 80565F20  38 03 00 84 */	addi r0, r3, 0x84
/* 80565F24  90 1E 10 C0 */	stw r0, 0x10c0(r30)
/* 80565F28  34 1E 10 8C */	addic. r0, r30, 0x108c
/* 80565F2C  41 82 00 54 */	beq lbl_80565F80
/* 80565F30  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80565F34  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80565F38  90 7E 10 A8 */	stw r3, 0x10a8(r30)
/* 80565F3C  38 03 00 58 */	addi r0, r3, 0x58
/* 80565F40  90 1E 10 C0 */	stw r0, 0x10c0(r30)
/* 80565F44  34 1E 10 AC */	addic. r0, r30, 0x10ac
/* 80565F48  41 82 00 10 */	beq lbl_80565F58
/* 80565F4C  3C 60 80 57 */	lis r3, __vt__8cM3dGCyl@ha
/* 80565F50  38 03 34 7C */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80565F54  90 1E 10 C0 */	stw r0, 0x10c0(r30)
lbl_80565F58:
/* 80565F58  34 1E 10 8C */	addic. r0, r30, 0x108c
/* 80565F5C  41 82 00 24 */	beq lbl_80565F80
/* 80565F60  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80565F64  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80565F68  90 1E 10 A8 */	stw r0, 0x10a8(r30)
/* 80565F6C  34 1E 10 8C */	addic. r0, r30, 0x108c
/* 80565F70  41 82 00 10 */	beq lbl_80565F80
/* 80565F74  3C 60 80 57 */	lis r3, __vt__8cM3dGAab@ha
/* 80565F78  38 03 34 70 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80565F7C  90 1E 10 A4 */	stw r0, 0x10a4(r30)
lbl_80565F80:
/* 80565F80  38 7E 0F 88 */	addi r3, r30, 0xf88
/* 80565F84  38 80 00 00 */	li r4, 0
/* 80565F88  4B B1 E1 5C */	b __dt__12dCcD_GObjInfFv
lbl_80565F8C:
/* 80565F8C  34 1E 0E 4C */	addic. r0, r30, 0xe4c
/* 80565F90  41 82 00 84 */	beq lbl_80566014
/* 80565F94  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80565F98  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80565F9C  90 7E 0E 88 */	stw r3, 0xe88(r30)
/* 80565FA0  38 03 00 2C */	addi r0, r3, 0x2c
/* 80565FA4  90 1E 0F 6C */	stw r0, 0xf6c(r30)
/* 80565FA8  38 03 00 84 */	addi r0, r3, 0x84
/* 80565FAC  90 1E 0F 84 */	stw r0, 0xf84(r30)
/* 80565FB0  34 1E 0F 50 */	addic. r0, r30, 0xf50
/* 80565FB4  41 82 00 54 */	beq lbl_80566008
/* 80565FB8  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80565FBC  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80565FC0  90 7E 0F 6C */	stw r3, 0xf6c(r30)
/* 80565FC4  38 03 00 58 */	addi r0, r3, 0x58
/* 80565FC8  90 1E 0F 84 */	stw r0, 0xf84(r30)
/* 80565FCC  34 1E 0F 70 */	addic. r0, r30, 0xf70
/* 80565FD0  41 82 00 10 */	beq lbl_80565FE0
/* 80565FD4  3C 60 80 57 */	lis r3, __vt__8cM3dGCyl@ha
/* 80565FD8  38 03 34 7C */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80565FDC  90 1E 0F 84 */	stw r0, 0xf84(r30)
lbl_80565FE0:
/* 80565FE0  34 1E 0F 50 */	addic. r0, r30, 0xf50
/* 80565FE4  41 82 00 24 */	beq lbl_80566008
/* 80565FE8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80565FEC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80565FF0  90 1E 0F 6C */	stw r0, 0xf6c(r30)
/* 80565FF4  34 1E 0F 50 */	addic. r0, r30, 0xf50
/* 80565FF8  41 82 00 10 */	beq lbl_80566008
/* 80565FFC  3C 60 80 57 */	lis r3, __vt__8cM3dGAab@ha
/* 80566000  38 03 34 70 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80566004  90 1E 0F 68 */	stw r0, 0xf68(r30)
lbl_80566008:
/* 80566008  38 7E 0E 4C */	addi r3, r30, 0xe4c
/* 8056600C  38 80 00 00 */	li r4, 0
/* 80566010  4B B1 E0 D4 */	b __dt__12dCcD_GObjInfFv
lbl_80566014:
/* 80566014  7F C3 F3 78 */	mr r3, r30
/* 80566018  38 80 00 00 */	li r4, 0
/* 8056601C  48 00 A2 55 */	bl __dt__8daNpcT_cFv
/* 80566020  7F E0 07 35 */	extsh. r0, r31
/* 80566024  40 81 00 0C */	ble lbl_80566030
/* 80566028  7F C3 F3 78 */	mr r3, r30
/* 8056602C  4B D6 8D 10 */	b __dl__FPv
lbl_80566030:
/* 80566030  7F C3 F3 78 */	mr r3, r30
/* 80566034  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80566038  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056603C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80566040  7C 08 03 A6 */	mtlr r0
/* 80566044  38 21 00 10 */	addi r1, r1, 0x10
/* 80566048  4E 80 00 20 */	blr 

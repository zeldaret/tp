lbl_80BBAFEC:
/* 80BBAFEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBAFF0  7C 08 02 A6 */	mflr r0
/* 80BBAFF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBAFF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BBAFFC  93 C1 00 08 */	stw r30, 8(r1)
/* 80BBB000  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BBB004  7C 9F 23 78 */	mr r31, r4
/* 80BBB008  41 82 01 D0 */	beq lbl_80BBB1D8
/* 80BBB00C  3C 80 80 BC */	lis r4, __vt__15daObj_BouMato_c@ha /* 0x80BBC654@ha */
/* 80BBB010  38 04 C6 54 */	addi r0, r4, __vt__15daObj_BouMato_c@l /* 0x80BBC654@l */
/* 80BBB014  90 1E 0A 3C */	stw r0, 0xa3c(r30)
/* 80BBB018  48 00 0F E1 */	bl getResName__15daObj_BouMato_cFv
/* 80BBB01C  7C 64 1B 78 */	mr r4, r3
/* 80BBB020  38 7E 05 6C */	addi r3, r30, 0x56c
/* 80BBB024  4B 47 1F E5 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BBB028  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 80BBB02C  3C 80 80 BC */	lis r4, __dt__5csXyzFv@ha /* 0x80BBB1F4@ha */
/* 80BBB030  38 84 B1 F4 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80BBB1F4@l */
/* 80BBB034  38 A0 00 06 */	li r5, 6
/* 80BBB038  38 C0 00 03 */	li r6, 3
/* 80BBB03C  4B 7A 6C AD */	bl __destroy_arr
/* 80BBB040  38 7E 09 78 */	addi r3, r30, 0x978
/* 80BBB044  38 80 FF FF */	li r4, -1
/* 80BBB048  4B 4B CC 95 */	bl __dt__11dBgS_LinChkFv
/* 80BBB04C  34 1E 09 5C */	addic. r0, r30, 0x95c
/* 80BBB050  41 82 00 10 */	beq lbl_80BBB060
/* 80BBB054  3C 60 80 BC */	lis r3, __vt__8cM3dGLin@ha /* 0x80BBC648@ha */
/* 80BBB058  38 03 C6 48 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x80BBC648@l */
/* 80BBB05C  90 1E 09 74 */	stw r0, 0x974(r30)
lbl_80BBB060:
/* 80BBB060  34 1E 09 44 */	addic. r0, r30, 0x944
/* 80BBB064  41 82 00 10 */	beq lbl_80BBB074
/* 80BBB068  3C 60 80 BC */	lis r3, __vt__8cM3dGCyl@ha /* 0x80BBC63C@ha */
/* 80BBB06C  38 03 C6 3C */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80BBC63C@l */
/* 80BBB070  90 1E 09 58 */	stw r0, 0x958(r30)
lbl_80BBB074:
/* 80BBB074  34 1E 08 08 */	addic. r0, r30, 0x808
/* 80BBB078  41 82 00 84 */	beq lbl_80BBB0FC
/* 80BBB07C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80BBB080  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80BBB084  90 7E 08 44 */	stw r3, 0x844(r30)
/* 80BBB088  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BBB08C  90 1E 09 28 */	stw r0, 0x928(r30)
/* 80BBB090  38 03 00 84 */	addi r0, r3, 0x84
/* 80BBB094  90 1E 09 40 */	stw r0, 0x940(r30)
/* 80BBB098  34 1E 09 0C */	addic. r0, r30, 0x90c
/* 80BBB09C  41 82 00 54 */	beq lbl_80BBB0F0
/* 80BBB0A0  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80BBB0A4  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80BBB0A8  90 7E 09 28 */	stw r3, 0x928(r30)
/* 80BBB0AC  38 03 00 58 */	addi r0, r3, 0x58
/* 80BBB0B0  90 1E 09 40 */	stw r0, 0x940(r30)
/* 80BBB0B4  34 1E 09 2C */	addic. r0, r30, 0x92c
/* 80BBB0B8  41 82 00 10 */	beq lbl_80BBB0C8
/* 80BBB0BC  3C 60 80 BC */	lis r3, __vt__8cM3dGCyl@ha /* 0x80BBC63C@ha */
/* 80BBB0C0  38 03 C6 3C */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80BBC63C@l */
/* 80BBB0C4  90 1E 09 40 */	stw r0, 0x940(r30)
lbl_80BBB0C8:
/* 80BBB0C8  34 1E 09 0C */	addic. r0, r30, 0x90c
/* 80BBB0CC  41 82 00 24 */	beq lbl_80BBB0F0
/* 80BBB0D0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80BBB0D4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80BBB0D8  90 1E 09 28 */	stw r0, 0x928(r30)
/* 80BBB0DC  34 1E 09 0C */	addic. r0, r30, 0x90c
/* 80BBB0E0  41 82 00 10 */	beq lbl_80BBB0F0
/* 80BBB0E4  3C 60 80 BC */	lis r3, __vt__8cM3dGAab@ha /* 0x80BBC630@ha */
/* 80BBB0E8  38 03 C6 30 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80BBC630@l */
/* 80BBB0EC  90 1E 09 24 */	stw r0, 0x924(r30)
lbl_80BBB0F0:
/* 80BBB0F0  38 7E 08 08 */	addi r3, r30, 0x808
/* 80BBB0F4  38 80 00 00 */	li r4, 0
/* 80BBB0F8  4B 4C 8F ED */	bl __dt__12dCcD_GObjInfFv
lbl_80BBB0FC:
/* 80BBB0FC  38 7E 07 CC */	addi r3, r30, 0x7cc
/* 80BBB100  38 80 FF FF */	li r4, -1
/* 80BBB104  4B 6A CB 91 */	bl __dt__11cBgS_GndChkFv
/* 80BBB108  34 1E 07 8C */	addic. r0, r30, 0x78c
/* 80BBB10C  41 82 00 28 */	beq lbl_80BBB134
/* 80BBB110  3C 60 80 BC */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80BBC624@ha */
/* 80BBB114  38 03 C6 24 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80BBC624@l */
/* 80BBB118  90 1E 07 98 */	stw r0, 0x798(r30)
/* 80BBB11C  38 7E 07 A0 */	addi r3, r30, 0x7a0
/* 80BBB120  38 80 FF FF */	li r4, -1
/* 80BBB124  4B 6B 3D F5 */	bl __dt__8cM3dGCirFv
/* 80BBB128  38 7E 07 8C */	addi r3, r30, 0x78c
/* 80BBB12C  38 80 00 00 */	li r4, 0
/* 80BBB130  4B 6A CF 81 */	bl __dt__13cBgS_PolyInfoFv
lbl_80BBB134:
/* 80BBB134  34 1E 07 50 */	addic. r0, r30, 0x750
/* 80BBB138  41 82 00 54 */	beq lbl_80BBB18C
/* 80BBB13C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80BBB140  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80BBB144  90 7E 07 68 */	stw r3, 0x768(r30)
/* 80BBB148  38 03 00 20 */	addi r0, r3, 0x20
/* 80BBB14C  90 1E 07 6C */	stw r0, 0x76c(r30)
/* 80BBB150  34 1E 07 6C */	addic. r0, r30, 0x76c
/* 80BBB154  41 82 00 24 */	beq lbl_80BBB178
/* 80BBB158  3C 60 80 BC */	lis r3, __vt__10dCcD_GStts@ha /* 0x80BBC618@ha */
/* 80BBB15C  38 03 C6 18 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80BBC618@l */
/* 80BBB160  90 1E 07 6C */	stw r0, 0x76c(r30)
/* 80BBB164  34 1E 07 6C */	addic. r0, r30, 0x76c
/* 80BBB168  41 82 00 10 */	beq lbl_80BBB178
/* 80BBB16C  3C 60 80 BC */	lis r3, __vt__10cCcD_GStts@ha /* 0x80BBC60C@ha */
/* 80BBB170  38 03 C6 0C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80BBC60C@l */
/* 80BBB174  90 1E 07 6C */	stw r0, 0x76c(r30)
lbl_80BBB178:
/* 80BBB178  34 1E 07 50 */	addic. r0, r30, 0x750
/* 80BBB17C  41 82 00 10 */	beq lbl_80BBB18C
/* 80BBB180  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80BBB184  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80BBB188  90 1E 07 68 */	stw r0, 0x768(r30)
lbl_80BBB18C:
/* 80BBB18C  34 1E 05 78 */	addic. r0, r30, 0x578
/* 80BBB190  41 82 00 2C */	beq lbl_80BBB1BC
/* 80BBB194  3C 60 80 BC */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80BBC5E8@ha */
/* 80BBB198  38 63 C5 E8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80BBC5E8@l */
/* 80BBB19C  90 7E 05 88 */	stw r3, 0x588(r30)
/* 80BBB1A0  38 03 00 0C */	addi r0, r3, 0xc
/* 80BBB1A4  90 1E 05 8C */	stw r0, 0x58c(r30)
/* 80BBB1A8  38 03 00 18 */	addi r0, r3, 0x18
/* 80BBB1AC  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80BBB1B0  38 7E 05 78 */	addi r3, r30, 0x578
/* 80BBB1B4  38 80 00 00 */	li r4, 0
/* 80BBB1B8  4B 4B AD DD */	bl __dt__9dBgS_AcchFv
lbl_80BBB1BC:
/* 80BBB1BC  7F C3 F3 78 */	mr r3, r30
/* 80BBB1C0  38 80 00 00 */	li r4, 0
/* 80BBB1C4  4B 45 DA C9 */	bl __dt__10fopAc_ac_cFv
/* 80BBB1C8  7F E0 07 35 */	extsh. r0, r31
/* 80BBB1CC  40 81 00 0C */	ble lbl_80BBB1D8
/* 80BBB1D0  7F C3 F3 78 */	mr r3, r30
/* 80BBB1D4  4B 71 3B 69 */	bl __dl__FPv
lbl_80BBB1D8:
/* 80BBB1D8  7F C3 F3 78 */	mr r3, r30
/* 80BBB1DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BBB1E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BBB1E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBB1E8  7C 08 03 A6 */	mtlr r0
/* 80BBB1EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBB1F0  4E 80 00 20 */	blr 

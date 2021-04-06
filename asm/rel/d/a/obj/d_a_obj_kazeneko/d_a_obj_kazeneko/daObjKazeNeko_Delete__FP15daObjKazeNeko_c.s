lbl_80C3D038:
/* 80C3D038  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3D03C  7C 08 02 A6 */	mflr r0
/* 80C3D040  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3D044  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C3D048  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C3D04C  41 82 01 04 */	beq lbl_80C3D150
/* 80C3D050  38 7F 05 7C */	addi r3, r31, 0x57c
/* 80C3D054  3C 80 80 C4 */	lis r4, l_arcName@ha /* 0x80C3D490@ha */
/* 80C3D058  38 84 D4 90 */	addi r4, r4, l_arcName@l /* 0x80C3D490@l */
/* 80C3D05C  80 84 00 00 */	lwz r4, 0(r4)
/* 80C3D060  4B 3E FF A9 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C3D064  34 1F 05 F0 */	addic. r0, r31, 0x5f0
/* 80C3D068  41 82 00 84 */	beq lbl_80C3D0EC
/* 80C3D06C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80C3D070  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80C3D074  90 7F 06 2C */	stw r3, 0x62c(r31)
/* 80C3D078  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C3D07C  90 1F 07 10 */	stw r0, 0x710(r31)
/* 80C3D080  38 03 00 84 */	addi r0, r3, 0x84
/* 80C3D084  90 1F 07 28 */	stw r0, 0x728(r31)
/* 80C3D088  34 1F 06 F4 */	addic. r0, r31, 0x6f4
/* 80C3D08C  41 82 00 54 */	beq lbl_80C3D0E0
/* 80C3D090  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80C3D094  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80C3D098  90 7F 07 10 */	stw r3, 0x710(r31)
/* 80C3D09C  38 03 00 58 */	addi r0, r3, 0x58
/* 80C3D0A0  90 1F 07 28 */	stw r0, 0x728(r31)
/* 80C3D0A4  34 1F 07 14 */	addic. r0, r31, 0x714
/* 80C3D0A8  41 82 00 10 */	beq lbl_80C3D0B8
/* 80C3D0AC  3C 60 80 C4 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80C3D508@ha */
/* 80C3D0B0  38 03 D5 08 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80C3D508@l */
/* 80C3D0B4  90 1F 07 28 */	stw r0, 0x728(r31)
lbl_80C3D0B8:
/* 80C3D0B8  34 1F 06 F4 */	addic. r0, r31, 0x6f4
/* 80C3D0BC  41 82 00 24 */	beq lbl_80C3D0E0
/* 80C3D0C0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80C3D0C4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80C3D0C8  90 1F 07 10 */	stw r0, 0x710(r31)
/* 80C3D0CC  34 1F 06 F4 */	addic. r0, r31, 0x6f4
/* 80C3D0D0  41 82 00 10 */	beq lbl_80C3D0E0
/* 80C3D0D4  3C 60 80 C4 */	lis r3, __vt__8cM3dGAab@ha /* 0x80C3D4FC@ha */
/* 80C3D0D8  38 03 D4 FC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80C3D4FC@l */
/* 80C3D0DC  90 1F 07 0C */	stw r0, 0x70c(r31)
lbl_80C3D0E0:
/* 80C3D0E0  38 7F 05 F0 */	addi r3, r31, 0x5f0
/* 80C3D0E4  38 80 00 00 */	li r4, 0
/* 80C3D0E8  4B 44 6F FD */	bl __dt__12dCcD_GObjInfFv
lbl_80C3D0EC:
/* 80C3D0EC  34 1F 05 B4 */	addic. r0, r31, 0x5b4
/* 80C3D0F0  41 82 00 54 */	beq lbl_80C3D144
/* 80C3D0F4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80C3D0F8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80C3D0FC  90 7F 05 CC */	stw r3, 0x5cc(r31)
/* 80C3D100  38 03 00 20 */	addi r0, r3, 0x20
/* 80C3D104  90 1F 05 D0 */	stw r0, 0x5d0(r31)
/* 80C3D108  34 1F 05 D0 */	addic. r0, r31, 0x5d0
/* 80C3D10C  41 82 00 24 */	beq lbl_80C3D130
/* 80C3D110  3C 60 80 C4 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80C3D4F0@ha */
/* 80C3D114  38 03 D4 F0 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80C3D4F0@l */
/* 80C3D118  90 1F 05 D0 */	stw r0, 0x5d0(r31)
/* 80C3D11C  34 1F 05 D0 */	addic. r0, r31, 0x5d0
/* 80C3D120  41 82 00 10 */	beq lbl_80C3D130
/* 80C3D124  3C 60 80 C4 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80C3D4E4@ha */
/* 80C3D128  38 03 D4 E4 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80C3D4E4@l */
/* 80C3D12C  90 1F 05 D0 */	stw r0, 0x5d0(r31)
lbl_80C3D130:
/* 80C3D130  34 1F 05 B4 */	addic. r0, r31, 0x5b4
/* 80C3D134  41 82 00 10 */	beq lbl_80C3D144
/* 80C3D138  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80C3D13C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80C3D140  90 1F 05 CC */	stw r0, 0x5cc(r31)
lbl_80C3D144:
/* 80C3D144  7F E3 FB 78 */	mr r3, r31
/* 80C3D148  38 80 00 00 */	li r4, 0
/* 80C3D14C  4B 3D BB 41 */	bl __dt__10fopAc_ac_cFv
lbl_80C3D150:
/* 80C3D150  38 60 00 01 */	li r3, 1
/* 80C3D154  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C3D158  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3D15C  7C 08 03 A6 */	mtlr r0
/* 80C3D160  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3D164  4E 80 00 20 */	blr 

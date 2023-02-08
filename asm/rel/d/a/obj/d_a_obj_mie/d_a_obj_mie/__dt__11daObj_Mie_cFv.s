lbl_80C93FCC:
/* 80C93FCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C93FD0  7C 08 02 A6 */	mflr r0
/* 80C93FD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C93FD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C93FDC  93 C1 00 08 */	stw r30, 8(r1)
/* 80C93FE0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C93FE4  7C 9F 23 78 */	mr r31, r4
/* 80C93FE8  41 82 01 C4 */	beq lbl_80C941AC
/* 80C93FEC  3C 60 80 C9 */	lis r3, __vt__11daObj_Mie_c@ha /* 0x80C95CAC@ha */
/* 80C93FF0  38 03 5C AC */	addi r0, r3, __vt__11daObj_Mie_c@l /* 0x80C95CAC@l */
/* 80C93FF4  90 1E 0A 4C */	stw r0, 0xa4c(r30)
/* 80C93FF8  38 7E 05 6C */	addi r3, r30, 0x56c
/* 80C93FFC  3C 80 80 C9 */	lis r4, l_bmdData@ha /* 0x80C95B88@ha */
/* 80C94000  38 84 5B 88 */	addi r4, r4, l_bmdData@l /* 0x80C95B88@l */
/* 80C94004  88 1E 09 D0 */	lbz r0, 0x9d0(r30)
/* 80C94008  54 00 18 38 */	slwi r0, r0, 3
/* 80C9400C  7C 84 02 14 */	add r4, r4, r0
/* 80C94010  80 04 00 04 */	lwz r0, 4(r4)
/* 80C94014  54 00 10 3A */	slwi r0, r0, 2
/* 80C94018  3C 80 80 C9 */	lis r4, l_resNameList@ha /* 0x80C95B90@ha */
/* 80C9401C  38 84 5B 90 */	addi r4, r4, l_resNameList@l /* 0x80C95B90@l */
/* 80C94020  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C94024  4B 39 8F E5 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C94028  38 7E 09 60 */	addi r3, r30, 0x960
/* 80C9402C  38 80 FF FF */	li r4, -1
/* 80C94030  4B 3E 3C AD */	bl __dt__11dBgS_LinChkFv
/* 80C94034  34 1E 09 44 */	addic. r0, r30, 0x944
/* 80C94038  41 82 00 10 */	beq lbl_80C94048
/* 80C9403C  3C 60 80 C9 */	lis r3, __vt__8cM3dGLin@ha /* 0x80C95CA0@ha */
/* 80C94040  38 03 5C A0 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x80C95CA0@l */
/* 80C94044  90 1E 09 5C */	stw r0, 0x95c(r30)
lbl_80C94048:
/* 80C94048  34 1E 08 08 */	addic. r0, r30, 0x808
/* 80C9404C  41 82 00 84 */	beq lbl_80C940D0
/* 80C94050  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80C94054  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80C94058  90 7E 08 44 */	stw r3, 0x844(r30)
/* 80C9405C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C94060  90 1E 09 28 */	stw r0, 0x928(r30)
/* 80C94064  38 03 00 84 */	addi r0, r3, 0x84
/* 80C94068  90 1E 09 40 */	stw r0, 0x940(r30)
/* 80C9406C  34 1E 09 0C */	addic. r0, r30, 0x90c
/* 80C94070  41 82 00 54 */	beq lbl_80C940C4
/* 80C94074  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80C94078  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80C9407C  90 7E 09 28 */	stw r3, 0x928(r30)
/* 80C94080  38 03 00 58 */	addi r0, r3, 0x58
/* 80C94084  90 1E 09 40 */	stw r0, 0x940(r30)
/* 80C94088  34 1E 09 2C */	addic. r0, r30, 0x92c
/* 80C9408C  41 82 00 10 */	beq lbl_80C9409C
/* 80C94090  3C 60 80 C9 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80C95C94@ha */
/* 80C94094  38 03 5C 94 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80C95C94@l */
/* 80C94098  90 1E 09 40 */	stw r0, 0x940(r30)
lbl_80C9409C:
/* 80C9409C  34 1E 09 0C */	addic. r0, r30, 0x90c
/* 80C940A0  41 82 00 24 */	beq lbl_80C940C4
/* 80C940A4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80C940A8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80C940AC  90 1E 09 28 */	stw r0, 0x928(r30)
/* 80C940B0  34 1E 09 0C */	addic. r0, r30, 0x90c
/* 80C940B4  41 82 00 10 */	beq lbl_80C940C4
/* 80C940B8  3C 60 80 C9 */	lis r3, __vt__8cM3dGAab@ha /* 0x80C95C88@ha */
/* 80C940BC  38 03 5C 88 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80C95C88@l */
/* 80C940C0  90 1E 09 24 */	stw r0, 0x924(r30)
lbl_80C940C4:
/* 80C940C4  38 7E 08 08 */	addi r3, r30, 0x808
/* 80C940C8  38 80 00 00 */	li r4, 0
/* 80C940CC  4B 3F 00 19 */	bl __dt__12dCcD_GObjInfFv
lbl_80C940D0:
/* 80C940D0  38 7E 07 CC */	addi r3, r30, 0x7cc
/* 80C940D4  38 80 FF FF */	li r4, -1
/* 80C940D8  4B 5D 3B BD */	bl __dt__11cBgS_GndChkFv
/* 80C940DC  34 1E 07 8C */	addic. r0, r30, 0x78c
/* 80C940E0  41 82 00 28 */	beq lbl_80C94108
/* 80C940E4  3C 60 80 C9 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80C95C7C@ha */
/* 80C940E8  38 03 5C 7C */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80C95C7C@l */
/* 80C940EC  90 1E 07 98 */	stw r0, 0x798(r30)
/* 80C940F0  38 7E 07 A0 */	addi r3, r30, 0x7a0
/* 80C940F4  38 80 FF FF */	li r4, -1
/* 80C940F8  4B 5D AE 21 */	bl __dt__8cM3dGCirFv
/* 80C940FC  38 7E 07 8C */	addi r3, r30, 0x78c
/* 80C94100  38 80 00 00 */	li r4, 0
/* 80C94104  4B 5D 3F AD */	bl __dt__13cBgS_PolyInfoFv
lbl_80C94108:
/* 80C94108  34 1E 07 50 */	addic. r0, r30, 0x750
/* 80C9410C  41 82 00 54 */	beq lbl_80C94160
/* 80C94110  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80C94114  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80C94118  90 7E 07 68 */	stw r3, 0x768(r30)
/* 80C9411C  38 03 00 20 */	addi r0, r3, 0x20
/* 80C94120  90 1E 07 6C */	stw r0, 0x76c(r30)
/* 80C94124  34 1E 07 6C */	addic. r0, r30, 0x76c
/* 80C94128  41 82 00 24 */	beq lbl_80C9414C
/* 80C9412C  3C 60 80 C9 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80C95C70@ha */
/* 80C94130  38 03 5C 70 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80C95C70@l */
/* 80C94134  90 1E 07 6C */	stw r0, 0x76c(r30)
/* 80C94138  34 1E 07 6C */	addic. r0, r30, 0x76c
/* 80C9413C  41 82 00 10 */	beq lbl_80C9414C
/* 80C94140  3C 60 80 C9 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80C95C64@ha */
/* 80C94144  38 03 5C 64 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80C95C64@l */
/* 80C94148  90 1E 07 6C */	stw r0, 0x76c(r30)
lbl_80C9414C:
/* 80C9414C  34 1E 07 50 */	addic. r0, r30, 0x750
/* 80C94150  41 82 00 10 */	beq lbl_80C94160
/* 80C94154  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80C94158  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80C9415C  90 1E 07 68 */	stw r0, 0x768(r30)
lbl_80C94160:
/* 80C94160  34 1E 05 78 */	addic. r0, r30, 0x578
/* 80C94164  41 82 00 2C */	beq lbl_80C94190
/* 80C94168  3C 60 80 C9 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80C95C40@ha */
/* 80C9416C  38 63 5C 40 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80C95C40@l */
/* 80C94170  90 7E 05 88 */	stw r3, 0x588(r30)
/* 80C94174  38 03 00 0C */	addi r0, r3, 0xc
/* 80C94178  90 1E 05 8C */	stw r0, 0x58c(r30)
/* 80C9417C  38 03 00 18 */	addi r0, r3, 0x18
/* 80C94180  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80C94184  38 7E 05 78 */	addi r3, r30, 0x578
/* 80C94188  38 80 00 00 */	li r4, 0
/* 80C9418C  4B 3E 1E 09 */	bl __dt__9dBgS_AcchFv
lbl_80C94190:
/* 80C94190  7F C3 F3 78 */	mr r3, r30
/* 80C94194  38 80 00 00 */	li r4, 0
/* 80C94198  4B 38 4A F5 */	bl __dt__10fopAc_ac_cFv
/* 80C9419C  7F E0 07 35 */	extsh. r0, r31
/* 80C941A0  40 81 00 0C */	ble lbl_80C941AC
/* 80C941A4  7F C3 F3 78 */	mr r3, r30
/* 80C941A8  4B 63 AB 95 */	bl __dl__FPv
lbl_80C941AC:
/* 80C941AC  7F C3 F3 78 */	mr r3, r30
/* 80C941B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C941B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C941B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C941BC  7C 08 03 A6 */	mtlr r0
/* 80C941C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C941C4  4E 80 00 20 */	blr 

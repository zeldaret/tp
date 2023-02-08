lbl_80C7BFE4:
/* 80C7BFE4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C7BFE8  7C 08 02 A6 */	mflr r0
/* 80C7BFEC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C7BFF0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80C7BFF4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80C7BFF8  7C 7E 1B 78 */	mr r30, r3
/* 80C7BFFC  88 03 05 DA */	lbz r0, 0x5da(r3)
/* 80C7C000  28 00 00 03 */	cmplwi r0, 3
/* 80C7C004  41 82 00 0C */	beq lbl_80C7C010
/* 80C7C008  28 00 00 04 */	cmplwi r0, 4
/* 80C7C00C  40 82 00 5C */	bne lbl_80C7C068
lbl_80C7C010:
/* 80C7C010  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C7C014  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C7C018  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 80C7C01C  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 80C7C020  A8 DE 04 E8 */	lha r6, 0x4e8(r30)
/* 80C7C024  4B 39 01 E5 */	bl mDoMtx_ZXYrotS__FPA4_fsss
/* 80C7C028  C0 1E 05 FC */	lfs f0, 0x5fc(r30)
/* 80C7C02C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C7C030  3C 60 80 C8 */	lis r3, lit_3665@ha /* 0x80C7C6E8@ha */
/* 80C7C034  C0 03 C6 E8 */	lfs f0, lit_3665@l(r3)  /* 0x80C7C6E8@l */
/* 80C7C038  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C7C03C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C7C040  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C7C044  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C7C048  38 81 00 20 */	addi r4, r1, 0x20
/* 80C7C04C  7C 85 23 78 */	mr r5, r4
/* 80C7C050  4B 6C AD 1D */	bl PSMTXMultVec
/* 80C7C054  38 61 00 20 */	addi r3, r1, 0x20
/* 80C7C058  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C7C05C  7C 65 1B 78 */	mr r5, r3
/* 80C7C060  4B 6C B0 31 */	bl PSVECAdd
/* 80C7C064  48 00 00 1C */	b lbl_80C7C080
lbl_80C7C068:
/* 80C7C068  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C7C06C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C7C070  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C7C074  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C7C078  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C7C07C  D0 01 00 28 */	stfs f0, 0x28(r1)
lbl_80C7C080:
/* 80C7C080  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C7C084  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C7C088  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80C7C08C  38 80 00 00 */	li r4, 0
/* 80C7C090  90 81 00 08 */	stw r4, 8(r1)
/* 80C7C094  38 00 FF FF */	li r0, -1
/* 80C7C098  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C7C09C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C7C0A0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C7C0A4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C7C0A8  38 80 00 00 */	li r4, 0
/* 80C7C0AC  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008A79@ha */
/* 80C7C0B0  38 A5 8A 79 */	addi r5, r5, 0x8A79 /* 0x00008A79@l */
/* 80C7C0B4  38 C1 00 20 */	addi r6, r1, 0x20
/* 80C7C0B8  38 E0 00 00 */	li r7, 0
/* 80C7C0BC  39 00 00 00 */	li r8, 0
/* 80C7C0C0  39 20 00 00 */	li r9, 0
/* 80C7C0C4  39 40 00 FF */	li r10, 0xff
/* 80C7C0C8  3D 60 80 C8 */	lis r11, lit_3632@ha /* 0x80C7C61C@ha */
/* 80C7C0CC  C0 2B C6 1C */	lfs f1, lit_3632@l(r11)  /* 0x80C7C61C@l */
/* 80C7C0D0  4B 3D 09 C1 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C7C0D4  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80C7C0D8  38 80 00 00 */	li r4, 0
/* 80C7C0DC  90 81 00 08 */	stw r4, 8(r1)
/* 80C7C0E0  38 00 FF FF */	li r0, -1
/* 80C7C0E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C7C0E8  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C7C0EC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C7C0F0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C7C0F4  38 80 00 00 */	li r4, 0
/* 80C7C0F8  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008A7A@ha */
/* 80C7C0FC  38 A5 8A 7A */	addi r5, r5, 0x8A7A /* 0x00008A7A@l */
/* 80C7C100  38 C1 00 20 */	addi r6, r1, 0x20
/* 80C7C104  38 E0 00 00 */	li r7, 0
/* 80C7C108  39 00 00 00 */	li r8, 0
/* 80C7C10C  39 20 00 00 */	li r9, 0
/* 80C7C110  39 40 00 FF */	li r10, 0xff
/* 80C7C114  3D 60 80 C8 */	lis r11, lit_3632@ha /* 0x80C7C61C@ha */
/* 80C7C118  C0 2B C6 1C */	lfs f1, lit_3632@l(r11)  /* 0x80C7C61C@l */
/* 80C7C11C  4B 3D 09 75 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C7C120  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80C7C124  38 80 00 00 */	li r4, 0
/* 80C7C128  90 81 00 08 */	stw r4, 8(r1)
/* 80C7C12C  38 00 FF FF */	li r0, -1
/* 80C7C130  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C7C134  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C7C138  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C7C13C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C7C140  38 80 00 00 */	li r4, 0
/* 80C7C144  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008A7B@ha */
/* 80C7C148  38 A5 8A 7B */	addi r5, r5, 0x8A7B /* 0x00008A7B@l */
/* 80C7C14C  38 C1 00 20 */	addi r6, r1, 0x20
/* 80C7C150  38 E0 00 00 */	li r7, 0
/* 80C7C154  39 00 00 00 */	li r8, 0
/* 80C7C158  39 20 00 00 */	li r9, 0
/* 80C7C15C  39 40 00 FF */	li r10, 0xff
/* 80C7C160  3D 60 80 C8 */	lis r11, lit_3632@ha /* 0x80C7C61C@ha */
/* 80C7C164  C0 2B C6 1C */	lfs f1, lit_3632@l(r11)  /* 0x80C7C61C@l */
/* 80C7C168  4B 3D 09 29 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C7C16C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80C7C170  38 80 00 00 */	li r4, 0
/* 80C7C174  90 81 00 08 */	stw r4, 8(r1)
/* 80C7C178  38 00 FF FF */	li r0, -1
/* 80C7C17C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C7C180  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C7C184  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C7C188  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C7C18C  38 80 00 00 */	li r4, 0
/* 80C7C190  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008A7C@ha */
/* 80C7C194  38 A5 8A 7C */	addi r5, r5, 0x8A7C /* 0x00008A7C@l */
/* 80C7C198  38 C1 00 20 */	addi r6, r1, 0x20
/* 80C7C19C  38 E0 00 00 */	li r7, 0
/* 80C7C1A0  39 00 00 00 */	li r8, 0
/* 80C7C1A4  39 20 00 00 */	li r9, 0
/* 80C7C1A8  39 40 00 FF */	li r10, 0xff
/* 80C7C1AC  3D 60 80 C8 */	lis r11, lit_3632@ha /* 0x80C7C61C@ha */
/* 80C7C1B0  C0 2B C6 1C */	lfs f1, lit_3632@l(r11)  /* 0x80C7C61C@l */
/* 80C7C1B4  4B 3D 08 DD */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C7C1B8  7F C3 F3 78 */	mr r3, r30
/* 80C7C1BC  4B 39 DA C1 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80C7C1C0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80C7C1C4  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80C7C1C8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C7C1CC  7C 08 03 A6 */	mtlr r0
/* 80C7C1D0  38 21 00 40 */	addi r1, r1, 0x40
/* 80C7C1D4  4E 80 00 20 */	blr 

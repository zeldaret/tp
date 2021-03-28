lbl_806AB054:
/* 806AB054  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 806AB058  7C 08 02 A6 */	mflr r0
/* 806AB05C  90 01 00 54 */	stw r0, 0x54(r1)
/* 806AB060  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 806AB064  93 C1 00 48 */	stw r30, 0x48(r1)
/* 806AB068  7C 7F 1B 78 */	mr r31, r3
/* 806AB06C  3C 60 80 6B */	lis r3, l_HIO@ha
/* 806AB070  38 63 D8 08 */	addi r3, r3, l_HIO@l
/* 806AB074  C0 03 00 08 */	lfs f0, 8(r3)
/* 806AB078  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806AB07C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806AB080  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806AB084  38 61 00 20 */	addi r3, r1, 0x20
/* 806AB088  38 80 00 00 */	li r4, 0
/* 806AB08C  38 A0 00 00 */	li r5, 0
/* 806AB090  38 C0 00 00 */	li r6, 0
/* 806AB094  4B BB C3 60 */	b __ct__5csXyzFsss
/* 806AB098  3B C0 00 FF */	li r30, 0xff
/* 806AB09C  4B B0 01 E4 */	b dKy_camera_water_in_status_check__Fv
/* 806AB0A0  2C 03 00 00 */	cmpwi r3, 0
/* 806AB0A4  40 82 00 08 */	bne lbl_806AB0AC
/* 806AB0A8  3B C0 00 55 */	li r30, 0x55
lbl_806AB0AC:
/* 806AB0AC  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 806AB0B0  80 63 00 04 */	lwz r3, 4(r3)
/* 806AB0B4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806AB0B8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806AB0BC  38 63 00 30 */	addi r3, r3, 0x30
/* 806AB0C0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806AB0C4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806AB0C8  4B C9 B3 E8 */	b PSMTXCopy
/* 806AB0CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806AB0D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806AB0D4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806AB0D8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806AB0DC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806AB0E0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806AB0E4  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 806AB0E8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806AB0EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806AB0F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806AB0F4  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 806AB0F8  38 80 00 00 */	li r4, 0
/* 806AB0FC  90 81 00 08 */	stw r4, 8(r1)
/* 806AB100  38 00 FF FF */	li r0, -1
/* 806AB104  90 01 00 0C */	stw r0, 0xc(r1)
/* 806AB108  90 81 00 10 */	stw r4, 0x10(r1)
/* 806AB10C  90 81 00 14 */	stw r4, 0x14(r1)
/* 806AB110  90 81 00 18 */	stw r4, 0x18(r1)
/* 806AB114  38 80 00 00 */	li r4, 0
/* 806AB118  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000860C@ha */
/* 806AB11C  38 A5 86 0C */	addi r5, r5, 0x860C /* 0x0000860C@l */
/* 806AB120  38 C1 00 34 */	addi r6, r1, 0x34
/* 806AB124  38 FF 01 0C */	addi r7, r31, 0x10c
/* 806AB128  39 01 00 20 */	addi r8, r1, 0x20
/* 806AB12C  39 21 00 28 */	addi r9, r1, 0x28
/* 806AB130  7F CA F3 78 */	mr r10, r30
/* 806AB134  3D 60 80 6B */	lis r11, lit_3874@ha
/* 806AB138  C0 2B D5 5C */	lfs f1, lit_3874@l(r11)
/* 806AB13C  4B 9A 19 54 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806AB140  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 806AB144  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 806AB148  80 01 00 54 */	lwz r0, 0x54(r1)
/* 806AB14C  7C 08 03 A6 */	mtlr r0
/* 806AB150  38 21 00 50 */	addi r1, r1, 0x50
/* 806AB154  4E 80 00 20 */	blr 

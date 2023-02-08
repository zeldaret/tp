lbl_80B37FB8:
/* 80B37FB8  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80B37FBC  7C 08 02 A6 */	mflr r0
/* 80B37FC0  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80B37FC4  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 80B37FC8  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 80B37FCC  39 61 00 90 */	addi r11, r1, 0x90
/* 80B37FD0  4B 82 A1 F9 */	bl _savegpr_24
/* 80B37FD4  7C 7B 1B 78 */	mr r27, r3
/* 80B37FD8  3C 60 80 B4 */	lis r3, m__21daNpcWrestler_Param_c@ha /* 0x80B416DC@ha */
/* 80B37FDC  3B A3 16 DC */	addi r29, r3, m__21daNpcWrestler_Param_c@l /* 0x80B416DC@l */
/* 80B37FE0  3C 60 80 B4 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80B41DF8@ha */
/* 80B37FE4  3B C3 1D F8 */	addi r30, r3, cNullVec__6Z2Calc@l /* 0x80B41DF8@l */
/* 80B37FE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B37FEC  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B37FF0  83 9F 5D AC */	lwz r28, 0x5dac(r31)
/* 80B37FF4  A0 1B 0E 96 */	lhz r0, 0xe96(r27)
/* 80B37FF8  2C 00 00 02 */	cmpwi r0, 2
/* 80B37FFC  41 82 01 A4 */	beq lbl_80B381A0
/* 80B38000  40 80 00 10 */	bge lbl_80B38010
/* 80B38004  2C 00 00 00 */	cmpwi r0, 0
/* 80B38008  41 82 00 14 */	beq lbl_80B3801C
/* 80B3800C  48 00 04 E8 */	b lbl_80B384F4
lbl_80B38010:
/* 80B38010  2C 00 00 04 */	cmpwi r0, 4
/* 80B38014  40 80 04 E0 */	bge lbl_80B384F4
/* 80B38018  48 00 04 D4 */	b lbl_80B384EC
lbl_80B3801C:
/* 80B3801C  38 7C 05 F8 */	addi r3, r28, 0x5f8
/* 80B38020  4B 4D 4D 45 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80B38024  3B C0 00 00 */	li r30, 0
/* 80B38028  7F DA F3 78 */	mr r26, r30
/* 80B3802C  3B FC 05 F8 */	addi r31, r28, 0x5f8
/* 80B38030  C3 FD 01 B8 */	lfs f31, 0x1b8(r29)
/* 80B38034  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B38038  3B 23 D4 70 */	addi r25, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B3803C  3B 81 00 08 */	addi r28, r1, 8
lbl_80B38040:
/* 80B38040  2C 1E 00 00 */	cmpwi r30, 0
/* 80B38044  40 82 00 14 */	bne lbl_80B38058
/* 80B38048  80 7B 0B DC */	lwz r3, 0xbdc(r27)
/* 80B3804C  A8 03 00 22 */	lha r0, 0x22(r3)
/* 80B38050  B0 1B 0E 94 */	sth r0, 0xe94(r27)
/* 80B38054  48 00 00 14 */	b lbl_80B38068
lbl_80B38058:
/* 80B38058  80 7B 0B DC */	lwz r3, 0xbdc(r27)
/* 80B3805C  A8 03 00 22 */	lha r0, 0x22(r3)
/* 80B38060  7C 00 00 D0 */	neg r0, r0
/* 80B38064  B0 1B 0E 94 */	sth r0, 0xe94(r27)
lbl_80B38068:
/* 80B38068  7F E3 FB 78 */	mr r3, r31
/* 80B3806C  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80B38070  4B 73 8B 95 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80B38074  A8 9B 0E 94 */	lha r4, 0xe94(r27)
/* 80B38078  80 BB 0B DC */	lwz r5, 0xbdc(r27)
/* 80B3807C  A8 05 00 20 */	lha r0, 0x20(r5)
/* 80B38080  7C 04 01 D6 */	mullw r0, r4, r0
/* 80B38084  7C 03 02 14 */	add r0, r3, r0
/* 80B38088  7C 18 07 34 */	extsh r24, r0
/* 80B3808C  C0 05 00 18 */	lfs f0, 0x18(r5)
/* 80B38090  D3 E1 00 34 */	stfs f31, 0x34(r1)
/* 80B38094  D3 E1 00 38 */	stfs f31, 0x38(r1)
/* 80B38098  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B3809C  4B 4D 4C 2D */	bl push__14mDoMtx_stack_cFv
/* 80B380A0  7F 23 CB 78 */	mr r3, r25
/* 80B380A4  7F 04 C3 78 */	mr r4, r24
/* 80B380A8  4B 4D 43 8D */	bl mDoMtx_YrotM__FPA4_fs
/* 80B380AC  7F 23 CB 78 */	mr r3, r25
/* 80B380B0  38 81 00 34 */	addi r4, r1, 0x34
/* 80B380B4  7C 85 23 78 */	mr r5, r4
/* 80B380B8  4B 80 EC B5 */	bl PSMTXMultVec
/* 80B380BC  4B 4D 4C 59 */	bl pop__14mDoMtx_stack_cFv
/* 80B380C0  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80B380C4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B380C8  D3 E1 00 14 */	stfs f31, 0x14(r1)
/* 80B380CC  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80B380D0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B380D4  C0 3B 0D F8 */	lfs f1, 0xdf8(r27)
/* 80B380D8  C0 1B 0D F0 */	lfs f0, 0xdf0(r27)
/* 80B380DC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B380E0  D3 E1 00 20 */	stfs f31, 0x20(r1)
/* 80B380E4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80B380E8  38 61 00 10 */	addi r3, r1, 0x10
/* 80B380EC  38 81 00 1C */	addi r4, r1, 0x1c
/* 80B380F0  4B 80 F2 AD */	bl PSVECSquareDistance
/* 80B380F4  7C 3C D5 2E */	stfsx f1, r28, r26
/* 80B380F8  3B DE 00 01 */	addi r30, r30, 1
/* 80B380FC  2C 1E 00 02 */	cmpwi r30, 2
/* 80B38100  3B 5A 00 04 */	addi r26, r26, 4
/* 80B38104  41 80 FF 3C */	blt lbl_80B38040
/* 80B38108  C0 21 00 08 */	lfs f1, 8(r1)
/* 80B3810C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80B38110  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B38114  40 81 00 18 */	ble lbl_80B3812C
/* 80B38118  80 7B 0B DC */	lwz r3, 0xbdc(r27)
/* 80B3811C  A8 03 00 22 */	lha r0, 0x22(r3)
/* 80B38120  7C 00 00 D0 */	neg r0, r0
/* 80B38124  7C 00 07 34 */	extsh r0, r0
/* 80B38128  48 00 00 0C */	b lbl_80B38134
lbl_80B3812C:
/* 80B3812C  80 7B 0B DC */	lwz r3, 0xbdc(r27)
/* 80B38130  A8 03 00 22 */	lha r0, 0x22(r3)
lbl_80B38134:
/* 80B38134  B0 1B 0E 94 */	sth r0, 0xe94(r27)
/* 80B38138  A8 1B 0E 94 */	lha r0, 0xe94(r27)
/* 80B3813C  2C 00 00 00 */	cmpwi r0, 0
/* 80B38140  40 81 00 28 */	ble lbl_80B38168
/* 80B38144  7F 63 DB 78 */	mr r3, r27
/* 80B38148  38 80 00 0B */	li r4, 0xb
/* 80B3814C  C0 3D 01 C8 */	lfs f1, 0x1c8(r29)
/* 80B38150  38 A0 00 00 */	li r5, 0
/* 80B38154  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B38158  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B3815C  7D 89 03 A6 */	mtctr r12
/* 80B38160  4E 80 04 21 */	bctrl 
/* 80B38164  48 00 00 24 */	b lbl_80B38188
lbl_80B38168:
/* 80B38168  7F 63 DB 78 */	mr r3, r27
/* 80B3816C  38 80 00 0A */	li r4, 0xa
/* 80B38170  C0 3D 01 C8 */	lfs f1, 0x1c8(r29)
/* 80B38174  38 A0 00 00 */	li r5, 0
/* 80B38178  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B3817C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B38180  7D 89 03 A6 */	mtctr r12
/* 80B38184  4E 80 04 21 */	bctrl 
lbl_80B38188:
/* 80B38188  C0 1D 05 EC */	lfs f0, 0x5ec(r29)
/* 80B3818C  80 7B 05 68 */	lwz r3, 0x568(r27)
/* 80B38190  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B38194  38 00 00 02 */	li r0, 2
/* 80B38198  B0 1B 0E 96 */	sth r0, 0xe96(r27)
/* 80B3819C  48 00 03 58 */	b lbl_80B384F4
lbl_80B381A0:
/* 80B381A0  7F 83 E3 78 */	mr r3, r28
/* 80B381A4  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 80B381A8  81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 80B381AC  7D 89 03 A6 */	mtctr r12
/* 80B381B0  4E 80 04 21 */	bctrl 
/* 80B381B4  C0 1D 05 C8 */	lfs f0, 0x5c8(r29)
/* 80B381B8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B381BC  40 82 00 80 */	bne lbl_80B3823C
/* 80B381C0  7F 63 DB 78 */	mr r3, r27
/* 80B381C4  38 80 00 07 */	li r4, 7
/* 80B381C8  38 A0 00 01 */	li r5, 1
/* 80B381CC  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B381D0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80B381D4  7D 89 03 A6 */	mtctr r12
/* 80B381D8  4E 80 04 21 */	bctrl 
/* 80B381DC  7F 63 DB 78 */	mr r3, r27
/* 80B381E0  38 80 00 0F */	li r4, 0xf
/* 80B381E4  C0 3D 01 C8 */	lfs f1, 0x1c8(r29)
/* 80B381E8  38 A0 00 00 */	li r5, 0
/* 80B381EC  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B381F0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B381F4  7D 89 03 A6 */	mtctr r12
/* 80B381F8  4E 80 04 21 */	bctrl 
/* 80B381FC  C0 1D 05 C8 */	lfs f0, 0x5c8(r29)
/* 80B38200  80 7B 05 68 */	lwz r3, 0x568(r27)
/* 80B38204  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80B38208  C0 3D 01 B8 */	lfs f1, 0x1b8(r29)
/* 80B3820C  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 80B38210  C0 1D 01 B4 */	lfs f0, 0x1b4(r29)
/* 80B38214  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80B38218  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 80B3821C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B38220  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B38224  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80B38228  80 9B 0B D8 */	lwz r4, 0xbd8(r27)
/* 80B3822C  80 84 00 74 */	lwz r4, 0x74(r4)
/* 80B38230  38 A0 00 0F */	li r5, 0xf
/* 80B38234  38 C1 00 64 */	addi r6, r1, 0x64
/* 80B38238  4B 53 77 ED */	bl StartShock__12dVibration_cFii4cXyz
lbl_80B3823C:
/* 80B3823C  7F 83 E3 78 */	mr r3, r28
/* 80B38240  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 80B38244  81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 80B38248  7D 89 03 A6 */	mtctr r12
/* 80B3824C  4E 80 04 21 */	bctrl 
/* 80B38250  C0 1D 05 C8 */	lfs f0, 0x5c8(r29)
/* 80B38254  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B38258  4C 41 13 82 */	cror 2, 1, 2
/* 80B3825C  40 82 00 30 */	bne lbl_80B3828C
/* 80B38260  C0 1D 01 B8 */	lfs f0, 0x1b8(r29)
/* 80B38264  80 7B 05 68 */	lwz r3, 0x568(r27)
/* 80B38268  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B3826C  7F 83 E3 78 */	mr r3, r28
/* 80B38270  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 80B38274  81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 80B38278  7D 89 03 A6 */	mtctr r12
/* 80B3827C  4E 80 04 21 */	bctrl 
/* 80B38280  80 7B 05 68 */	lwz r3, 0x568(r27)
/* 80B38284  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 80B38288  48 00 00 94 */	b lbl_80B3831C
lbl_80B3828C:
/* 80B3828C  83 3F 5D AC */	lwz r25, 0x5dac(r31)
/* 80B38290  80 7B 0B DC */	lwz r3, 0xbdc(r27)
/* 80B38294  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 80B38298  C0 1D 01 B8 */	lfs f0, 0x1b8(r29)
/* 80B3829C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B382A0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B382A4  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80B382A8  38 79 05 F8 */	addi r3, r25, 0x5f8
/* 80B382AC  4B 4D 4A B9 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80B382B0  38 79 05 F8 */	addi r3, r25, 0x5f8
/* 80B382B4  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80B382B8  4B 73 89 4D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80B382BC  A8 1B 0E 94 */	lha r0, 0xe94(r27)
/* 80B382C0  7C 00 1A 14 */	add r0, r0, r3
/* 80B382C4  7C 04 07 34 */	extsh r4, r0
/* 80B382C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B382CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B382D0  4B 4D 41 65 */	bl mDoMtx_YrotM__FPA4_fs
/* 80B382D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B382D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B382DC  38 81 00 28 */	addi r4, r1, 0x28
/* 80B382E0  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 80B382E4  4B 80 EA 89 */	bl PSMTXMultVec
/* 80B382E8  7F 63 DB 78 */	mr r3, r27
/* 80B382EC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B382F0  4B 4E 24 21 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B382F4  7C 64 1B 78 */	mr r4, r3
/* 80B382F8  38 7B 08 F2 */	addi r3, r27, 0x8f2
/* 80B382FC  80 BB 0B D8 */	lwz r5, 0xbd8(r27)
/* 80B38300  A8 A5 00 78 */	lha r5, 0x78(r5)
/* 80B38304  38 C0 40 00 */	li r6, 0x4000
/* 80B38308  38 E0 00 40 */	li r7, 0x40
/* 80B3830C  4B 73 82 35 */	bl cLib_addCalcAngleS__FPsssss
/* 80B38310  7F 63 DB 78 */	mr r3, r27
/* 80B38314  A8 9B 08 F2 */	lha r4, 0x8f2(r27)
/* 80B38318  4B 61 BF 39 */	bl setAngle__8daNpcF_cFs
lbl_80B3831C:
/* 80B3831C  7F 63 DB 78 */	mr r3, r27
/* 80B38320  4B FF D4 61 */	bl checkOutOfArenaW__15daNpcWrestler_cFv
/* 80B38324  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B38328  41 82 00 90 */	beq lbl_80B383B8
/* 80B3832C  80 7E 0D 28 */	lwz r3, 0xd28(r30)
/* 80B38330  80 1E 0D 2C */	lwz r0, 0xd2c(r30)
/* 80B38334  90 61 00 58 */	stw r3, 0x58(r1)
/* 80B38338  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80B3833C  80 1E 0D 30 */	lwz r0, 0xd30(r30)
/* 80B38340  90 01 00 60 */	stw r0, 0x60(r1)
/* 80B38344  38 00 00 03 */	li r0, 3
/* 80B38348  B0 1B 0E 96 */	sth r0, 0xe96(r27)
/* 80B3834C  38 7B 0D CC */	addi r3, r27, 0xdcc
/* 80B38350  4B 82 9C C9 */	bl __ptmf_test
/* 80B38354  2C 03 00 00 */	cmpwi r3, 0
/* 80B38358  41 82 00 18 */	beq lbl_80B38370
/* 80B3835C  7F 63 DB 78 */	mr r3, r27
/* 80B38360  38 80 00 00 */	li r4, 0
/* 80B38364  39 9B 0D CC */	addi r12, r27, 0xdcc
/* 80B38368  4B 82 9D 1D */	bl __ptmf_scall
/* 80B3836C  60 00 00 00 */	nop 
lbl_80B38370:
/* 80B38370  38 00 00 00 */	li r0, 0
/* 80B38374  B0 1B 0E 96 */	sth r0, 0xe96(r27)
/* 80B38378  80 61 00 58 */	lwz r3, 0x58(r1)
/* 80B3837C  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 80B38380  90 7B 0D CC */	stw r3, 0xdcc(r27)
/* 80B38384  90 1B 0D D0 */	stw r0, 0xdd0(r27)
/* 80B38388  80 01 00 60 */	lwz r0, 0x60(r1)
/* 80B3838C  90 1B 0D D4 */	stw r0, 0xdd4(r27)
/* 80B38390  38 7B 0D CC */	addi r3, r27, 0xdcc
/* 80B38394  4B 82 9C 85 */	bl __ptmf_test
/* 80B38398  2C 03 00 00 */	cmpwi r3, 0
/* 80B3839C  41 82 01 58 */	beq lbl_80B384F4
/* 80B383A0  7F 63 DB 78 */	mr r3, r27
/* 80B383A4  38 80 00 00 */	li r4, 0
/* 80B383A8  39 9B 0D CC */	addi r12, r27, 0xdcc
/* 80B383AC  4B 82 9C D9 */	bl __ptmf_scall
/* 80B383B0  60 00 00 00 */	nop 
/* 80B383B4  48 00 01 40 */	b lbl_80B384F4
lbl_80B383B8:
/* 80B383B8  7F 63 DB 78 */	mr r3, r27
/* 80B383BC  4B FF B6 31 */	bl checkOutOfArenaP__15daNpcWrestler_cFv
/* 80B383C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B383C4  41 82 00 90 */	beq lbl_80B38454
/* 80B383C8  80 7E 0D 34 */	lwz r3, 0xd34(r30)
/* 80B383CC  80 1E 0D 38 */	lwz r0, 0xd38(r30)
/* 80B383D0  90 61 00 4C */	stw r3, 0x4c(r1)
/* 80B383D4  90 01 00 50 */	stw r0, 0x50(r1)
/* 80B383D8  80 1E 0D 3C */	lwz r0, 0xd3c(r30)
/* 80B383DC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80B383E0  38 00 00 03 */	li r0, 3
/* 80B383E4  B0 1B 0E 96 */	sth r0, 0xe96(r27)
/* 80B383E8  38 7B 0D CC */	addi r3, r27, 0xdcc
/* 80B383EC  4B 82 9C 2D */	bl __ptmf_test
/* 80B383F0  2C 03 00 00 */	cmpwi r3, 0
/* 80B383F4  41 82 00 18 */	beq lbl_80B3840C
/* 80B383F8  7F 63 DB 78 */	mr r3, r27
/* 80B383FC  38 80 00 00 */	li r4, 0
/* 80B38400  39 9B 0D CC */	addi r12, r27, 0xdcc
/* 80B38404  4B 82 9C 81 */	bl __ptmf_scall
/* 80B38408  60 00 00 00 */	nop 
lbl_80B3840C:
/* 80B3840C  38 00 00 00 */	li r0, 0
/* 80B38410  B0 1B 0E 96 */	sth r0, 0xe96(r27)
/* 80B38414  80 61 00 4C */	lwz r3, 0x4c(r1)
/* 80B38418  80 01 00 50 */	lwz r0, 0x50(r1)
/* 80B3841C  90 7B 0D CC */	stw r3, 0xdcc(r27)
/* 80B38420  90 1B 0D D0 */	stw r0, 0xdd0(r27)
/* 80B38424  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80B38428  90 1B 0D D4 */	stw r0, 0xdd4(r27)
/* 80B3842C  38 7B 0D CC */	addi r3, r27, 0xdcc
/* 80B38430  4B 82 9B E9 */	bl __ptmf_test
/* 80B38434  2C 03 00 00 */	cmpwi r3, 0
/* 80B38438  41 82 00 BC */	beq lbl_80B384F4
/* 80B3843C  7F 63 DB 78 */	mr r3, r27
/* 80B38440  38 80 00 00 */	li r4, 0
/* 80B38444  39 9B 0D CC */	addi r12, r27, 0xdcc
/* 80B38448  4B 82 9C 3D */	bl __ptmf_scall
/* 80B3844C  60 00 00 00 */	nop 
/* 80B38450  48 00 00 A4 */	b lbl_80B384F4
lbl_80B38454:
/* 80B38454  88 1C 05 6A */	lbz r0, 0x56a(r28)
/* 80B38458  28 00 00 16 */	cmplwi r0, 0x16
/* 80B3845C  40 82 00 98 */	bne lbl_80B384F4
/* 80B38460  80 7E 0D 40 */	lwz r3, 0xd40(r30)
/* 80B38464  80 1E 0D 44 */	lwz r0, 0xd44(r30)
/* 80B38468  90 61 00 40 */	stw r3, 0x40(r1)
/* 80B3846C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B38470  80 1E 0D 48 */	lwz r0, 0xd48(r30)
/* 80B38474  90 01 00 48 */	stw r0, 0x48(r1)
/* 80B38478  38 00 00 03 */	li r0, 3
/* 80B3847C  B0 1B 0E 96 */	sth r0, 0xe96(r27)
/* 80B38480  38 7B 0D CC */	addi r3, r27, 0xdcc
/* 80B38484  4B 82 9B 95 */	bl __ptmf_test
/* 80B38488  2C 03 00 00 */	cmpwi r3, 0
/* 80B3848C  41 82 00 18 */	beq lbl_80B384A4
/* 80B38490  7F 63 DB 78 */	mr r3, r27
/* 80B38494  38 80 00 00 */	li r4, 0
/* 80B38498  39 9B 0D CC */	addi r12, r27, 0xdcc
/* 80B3849C  4B 82 9B E9 */	bl __ptmf_scall
/* 80B384A0  60 00 00 00 */	nop 
lbl_80B384A4:
/* 80B384A4  38 00 00 00 */	li r0, 0
/* 80B384A8  B0 1B 0E 96 */	sth r0, 0xe96(r27)
/* 80B384AC  80 61 00 40 */	lwz r3, 0x40(r1)
/* 80B384B0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B384B4  90 7B 0D CC */	stw r3, 0xdcc(r27)
/* 80B384B8  90 1B 0D D0 */	stw r0, 0xdd0(r27)
/* 80B384BC  80 01 00 48 */	lwz r0, 0x48(r1)
/* 80B384C0  90 1B 0D D4 */	stw r0, 0xdd4(r27)
/* 80B384C4  38 7B 0D CC */	addi r3, r27, 0xdcc
/* 80B384C8  4B 82 9B 51 */	bl __ptmf_test
/* 80B384CC  2C 03 00 00 */	cmpwi r3, 0
/* 80B384D0  41 82 00 24 */	beq lbl_80B384F4
/* 80B384D4  7F 63 DB 78 */	mr r3, r27
/* 80B384D8  38 80 00 00 */	li r4, 0
/* 80B384DC  39 9B 0D CC */	addi r12, r27, 0xdcc
/* 80B384E0  4B 82 9B A5 */	bl __ptmf_scall
/* 80B384E4  60 00 00 00 */	nop 
/* 80B384E8  48 00 00 0C */	b lbl_80B384F4
lbl_80B384EC:
/* 80B384EC  38 00 00 00 */	li r0, 0
/* 80B384F0  B0 1B 0E 94 */	sth r0, 0xe94(r27)
lbl_80B384F4:
/* 80B384F4  38 60 00 01 */	li r3, 1
/* 80B384F8  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 80B384FC  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 80B38500  39 61 00 90 */	addi r11, r1, 0x90
/* 80B38504  4B 82 9D 11 */	bl _restgpr_24
/* 80B38508  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80B3850C  7C 08 03 A6 */	mtlr r0
/* 80B38510  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80B38514  4E 80 00 20 */	blr 

lbl_80CD009C:
/* 80CD009C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80CD00A0  7C 08 02 A6 */	mflr r0
/* 80CD00A4  90 01 00 74 */	stw r0, 0x74(r1)
/* 80CD00A8  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80CD00AC  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80CD00B0  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80CD00B4  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80CD00B8  39 61 00 50 */	addi r11, r1, 0x50
/* 80CD00BC  4B 69 21 18 */	b _savegpr_27
/* 80CD00C0  7C 7B 1B 78 */	mr r27, r3
/* 80CD00C4  3C 60 80 CD */	lis r3, m__21daObj_Sekizoa_Param_c@ha
/* 80CD00C8  3B E3 5C FC */	addi r31, r3, m__21daObj_Sekizoa_Param_c@l
/* 80CD00CC  88 1B 0E 25 */	lbz r0, 0xe25(r27)
/* 80CD00D0  28 00 00 00 */	cmplwi r0, 0
/* 80CD00D4  40 82 02 74 */	bne lbl_80CD0348
/* 80CD00D8  3B C0 00 79 */	li r30, 0x79
/* 80CD00DC  3C 60 D8 FB */	lis r3, 0xD8FB /* 0xD8FAFDBF@ha */
/* 80CD00E0  3B A3 FD BF */	addi r29, r3, 0xFDBF /* 0xD8FAFDBF@l */
/* 80CD00E4  3B 80 00 1F */	li r28, 0x1f
/* 80CD00E8  38 60 00 31 */	li r3, 0x31
/* 80CD00EC  4B 47 CA 80 */	b daNpcT_chkTmpBit__FUl
/* 80CD00F0  2C 03 00 00 */	cmpwi r3, 0
/* 80CD00F4  41 82 00 0C */	beq lbl_80CD0100
/* 80CD00F8  3B C0 00 69 */	li r30, 0x69
/* 80CD00FC  48 00 00 50 */	b lbl_80CD014C
lbl_80CD0100:
/* 80CD0100  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CD0104  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CD0108  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80CD010C  28 00 00 00 */	cmplwi r0, 0
/* 80CD0110  41 82 00 10 */	beq lbl_80CD0120
/* 80CD0114  3B A0 00 00 */	li r29, 0
/* 80CD0118  3B 80 00 00 */	li r28, 0
/* 80CD011C  48 00 00 30 */	b lbl_80CD014C
lbl_80CD0120:
/* 80CD0120  88 1B 0A 89 */	lbz r0, 0xa89(r27)
/* 80CD0124  28 00 00 00 */	cmplwi r0, 0
/* 80CD0128  41 82 00 10 */	beq lbl_80CD0138
/* 80CD012C  3B A0 00 00 */	li r29, 0
/* 80CD0130  3B 80 00 00 */	li r28, 0
/* 80CD0134  48 00 00 18 */	b lbl_80CD014C
lbl_80CD0138:
/* 80CD0138  A8 1B 0D 1C */	lha r0, 0xd1c(r27)
/* 80CD013C  2C 00 00 00 */	cmpwi r0, 0
/* 80CD0140  41 82 00 0C */	beq lbl_80CD014C
/* 80CD0144  3B A0 00 00 */	li r29, 0
/* 80CD0148  3B 80 00 00 */	li r28, 0
lbl_80CD014C:
/* 80CD014C  88 1B 10 C8 */	lbz r0, 0x10c8(r27)
/* 80CD0150  28 00 00 02 */	cmplwi r0, 2
/* 80CD0154  41 82 00 1C */	beq lbl_80CD0170
/* 80CD0158  28 00 00 03 */	cmplwi r0, 3
/* 80CD015C  41 82 00 14 */	beq lbl_80CD0170
/* 80CD0160  28 00 00 04 */	cmplwi r0, 4
/* 80CD0164  41 82 00 0C */	beq lbl_80CD0170
/* 80CD0168  28 00 00 05 */	cmplwi r0, 5
/* 80CD016C  40 82 01 04 */	bne lbl_80CD0270
lbl_80CD0170:
/* 80CD0170  28 00 00 02 */	cmplwi r0, 2
/* 80CD0174  41 82 00 0C */	beq lbl_80CD0180
/* 80CD0178  28 00 00 04 */	cmplwi r0, 4
/* 80CD017C  40 82 00 20 */	bne lbl_80CD019C
lbl_80CD0180:
/* 80CD0180  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 80CD0184  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CD0188  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80CD018C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CD0190  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80CD0194  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CD0198  48 00 00 1C */	b lbl_80CD01B4
lbl_80CD019C:
/* 80CD019C  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 80CD01A0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CD01A4  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80CD01A8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CD01AC  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80CD01B0  D0 01 00 1C */	stfs f0, 0x1c(r1)
lbl_80CD01B4:
/* 80CD01B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CD01B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CD01BC  A8 9B 0D 7A */	lha r4, 0xd7a(r27)
/* 80CD01C0  4B 33 C2 1C */	b mDoMtx_YrotS__FPA4_fs
/* 80CD01C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CD01C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CD01CC  38 81 00 14 */	addi r4, r1, 0x14
/* 80CD01D0  7C 85 23 78 */	mr r5, r4
/* 80CD01D4  4B 67 6B 98 */	b PSMTXMultVec
/* 80CD01D8  C3 FB 0D EC */	lfs f31, 0xdec(r27)
/* 80CD01DC  38 61 00 08 */	addi r3, r1, 8
/* 80CD01E0  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80CD01E4  38 A1 00 14 */	addi r5, r1, 0x14
/* 80CD01E8  4B 59 68 FC */	b __pl__4cXyzCFRC3Vec
/* 80CD01EC  C0 01 00 08 */	lfs f0, 8(r1)
/* 80CD01F0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80CD01F4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80CD01F8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80CD01FC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80CD0200  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CD0204  93 DB 0F B8 */	stw r30, 0xfb8(r27)
/* 80CD0208  93 BB 0F B4 */	stw r29, 0xfb4(r27)
/* 80CD020C  38 00 00 09 */	li r0, 9
/* 80CD0210  98 1B 10 44 */	stb r0, 0x1044(r27)
/* 80CD0214  38 00 00 02 */	li r0, 2
/* 80CD0218  98 1B 10 46 */	stb r0, 0x1046(r27)
/* 80CD021C  93 9B 0F A4 */	stw r28, 0xfa4(r27)
/* 80CD0220  80 1B 10 28 */	lwz r0, 0x1028(r27)
/* 80CD0224  60 00 00 01 */	ori r0, r0, 1
/* 80CD0228  90 1B 10 28 */	stw r0, 0x1028(r27)
/* 80CD022C  80 1B 10 28 */	lwz r0, 0x1028(r27)
/* 80CD0230  60 00 00 02 */	ori r0, r0, 2
/* 80CD0234  90 1B 10 28 */	stw r0, 0x1028(r27)
/* 80CD0238  38 7B 10 B0 */	addi r3, r27, 0x10b0
/* 80CD023C  FC 20 F8 90 */	fmr f1, f31
/* 80CD0240  4B 59 EF B8 */	b SetH__8cM3dGCylFf
/* 80CD0244  38 7B 10 B0 */	addi r3, r27, 0x10b0
/* 80CD0248  C0 3F 01 0C */	lfs f1, 0x10c(r31)
/* 80CD024C  4B 59 EF B4 */	b SetR__8cM3dGCylFf
/* 80CD0250  38 7B 10 B0 */	addi r3, r27, 0x10b0
/* 80CD0254  38 81 00 20 */	addi r4, r1, 0x20
/* 80CD0258  4B 59 EF 84 */	b SetC__8cM3dGCylFRC4cXyz
/* 80CD025C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CD0260  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CD0264  38 63 23 3C */	addi r3, r3, 0x233c
/* 80CD0268  38 9B 0F 8C */	addi r4, r27, 0xf8c
/* 80CD026C  4B 59 49 3C */	b Set__4cCcSFP8cCcD_Obj
lbl_80CD0270:
/* 80CD0270  93 DB 0E 7C */	stw r30, 0xe7c(r27)
/* 80CD0274  93 BB 0E 78 */	stw r29, 0xe78(r27)
/* 80CD0278  38 00 00 09 */	li r0, 9
/* 80CD027C  98 1B 0F 08 */	stb r0, 0xf08(r27)
/* 80CD0280  38 00 00 02 */	li r0, 2
/* 80CD0284  98 1B 0F 0A */	stb r0, 0xf0a(r27)
/* 80CD0288  93 9B 0E 68 */	stw r28, 0xe68(r27)
/* 80CD028C  80 1B 0E EC */	lwz r0, 0xeec(r27)
/* 80CD0290  60 00 00 01 */	ori r0, r0, 1
/* 80CD0294  90 1B 0E EC */	stw r0, 0xeec(r27)
/* 80CD0298  80 1B 0E EC */	lwz r0, 0xeec(r27)
/* 80CD029C  60 00 00 02 */	ori r0, r0, 2
/* 80CD02A0  90 1B 0E EC */	stw r0, 0xeec(r27)
/* 80CD02A4  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80CD02A8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80CD02AC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80CD02B0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CD02B4  C3 FB 0D EC */	lfs f31, 0xdec(r27)
/* 80CD02B8  C3 DB 0D F0 */	lfs f30, 0xdf0(r27)
/* 80CD02BC  88 1B 10 C8 */	lbz r0, 0x10c8(r27)
/* 80CD02C0  28 00 00 06 */	cmplwi r0, 6
/* 80CD02C4  40 82 00 18 */	bne lbl_80CD02DC
/* 80CD02C8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80CD02CC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80CD02D0  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 80CD02D4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CD02D8  C3 DF 01 14 */	lfs f30, 0x114(r31)
lbl_80CD02DC:
/* 80CD02DC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CD02E0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CD02E4  A8 9B 0D 7A */	lha r4, 0xd7a(r27)
/* 80CD02E8  4B 33 C0 F4 */	b mDoMtx_YrotS__FPA4_fs
/* 80CD02EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CD02F0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CD02F4  38 81 00 20 */	addi r4, r1, 0x20
/* 80CD02F8  7C 85 23 78 */	mr r5, r4
/* 80CD02FC  4B 67 6A 70 */	b PSMTXMultVec
/* 80CD0300  38 61 00 20 */	addi r3, r1, 0x20
/* 80CD0304  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80CD0308  7C 65 1B 78 */	mr r5, r3
/* 80CD030C  4B 67 6D 84 */	b PSVECAdd
/* 80CD0310  38 7B 0F 74 */	addi r3, r27, 0xf74
/* 80CD0314  FC 20 F8 90 */	fmr f1, f31
/* 80CD0318  4B 59 EE E0 */	b SetH__8cM3dGCylFf
/* 80CD031C  38 7B 0F 74 */	addi r3, r27, 0xf74
/* 80CD0320  FC 20 F0 90 */	fmr f1, f30
/* 80CD0324  4B 59 EE DC */	b SetR__8cM3dGCylFf
/* 80CD0328  38 7B 0F 74 */	addi r3, r27, 0xf74
/* 80CD032C  38 81 00 20 */	addi r4, r1, 0x20
/* 80CD0330  4B 59 EE AC */	b SetC__8cM3dGCylFRC4cXyz
/* 80CD0334  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CD0338  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CD033C  38 63 23 3C */	addi r3, r3, 0x233c
/* 80CD0340  38 9B 0E 50 */	addi r4, r27, 0xe50
/* 80CD0344  4B 59 48 64 */	b Set__4cCcSFP8cCcD_Obj
lbl_80CD0348:
/* 80CD0348  38 7B 0F 8C */	addi r3, r27, 0xf8c
/* 80CD034C  81 9B 0F C8 */	lwz r12, 0xfc8(r27)
/* 80CD0350  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80CD0354  7D 89 03 A6 */	mtctr r12
/* 80CD0358  4E 80 04 21 */	bctrl 
/* 80CD035C  38 7B 0E 50 */	addi r3, r27, 0xe50
/* 80CD0360  81 9B 0E 8C */	lwz r12, 0xe8c(r27)
/* 80CD0364  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80CD0368  7D 89 03 A6 */	mtctr r12
/* 80CD036C  4E 80 04 21 */	bctrl 
/* 80CD0370  38 7B 0F 8C */	addi r3, r27, 0xf8c
/* 80CD0374  81 9B 0F C8 */	lwz r12, 0xfc8(r27)
/* 80CD0378  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80CD037C  7D 89 03 A6 */	mtctr r12
/* 80CD0380  4E 80 04 21 */	bctrl 
/* 80CD0384  38 7B 0E 50 */	addi r3, r27, 0xe50
/* 80CD0388  81 9B 0E 8C */	lwz r12, 0xe8c(r27)
/* 80CD038C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80CD0390  7D 89 03 A6 */	mtctr r12
/* 80CD0394  4E 80 04 21 */	bctrl 
/* 80CD0398  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80CD039C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80CD03A0  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 80CD03A4  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80CD03A8  39 61 00 50 */	addi r11, r1, 0x50
/* 80CD03AC  4B 69 1E 74 */	b _restgpr_27
/* 80CD03B0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80CD03B4  7C 08 03 A6 */	mtlr r0
/* 80CD03B8  38 21 00 70 */	addi r1, r1, 0x70
/* 80CD03BC  4E 80 00 20 */	blr 

lbl_8069FFFC:
/* 8069FFFC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 806A0000  7C 08 02 A6 */	mflr r0
/* 806A0004  90 01 00 64 */	stw r0, 0x64(r1)
/* 806A0008  39 61 00 60 */	addi r11, r1, 0x60
/* 806A000C  4B CC 21 B4 */	b _savegpr_22
/* 806A0010  7C 79 1B 78 */	mr r25, r3
/* 806A0014  7C 9A 23 78 */	mr r26, r4
/* 806A0018  3C 60 80 6A */	lis r3, lit_3902@ha
/* 806A001C  3B A3 19 0C */	addi r29, r3, lit_3902@l
/* 806A0020  80 79 05 B8 */	lwz r3, 0x5b8(r25)
/* 806A0024  83 83 00 04 */	lwz r28, 4(r3)
/* 806A0028  88 79 12 38 */	lbz r3, 0x1238(r25)
/* 806A002C  7C 60 07 75 */	extsb. r0, r3
/* 806A0030  41 82 00 14 */	beq lbl_806A0044
/* 806A0034  38 03 FF FF */	addi r0, r3, -1
/* 806A0038  98 19 12 38 */	stb r0, 0x1238(r25)
/* 806A003C  38 00 00 03 */	li r0, 3
/* 806A0040  98 19 12 39 */	stb r0, 0x1239(r25)
lbl_806A0044:
/* 806A0044  38 79 12 54 */	addi r3, r25, 0x1254
/* 806A0048  88 19 12 39 */	lbz r0, 0x1239(r25)
/* 806A004C  2C 00 00 01 */	cmpwi r0, 1
/* 806A0050  41 82 00 0C */	beq lbl_806A005C
/* 806A0054  C0 3D 00 04 */	lfs f1, 4(r29)
/* 806A0058  48 00 00 08 */	b lbl_806A0060
lbl_806A005C:
/* 806A005C  C0 3D 00 08 */	lfs f1, 8(r29)
lbl_806A0060:
/* 806A0060  C0 5D 00 08 */	lfs f2, 8(r29)
/* 806A0064  C0 7D 00 78 */	lfs f3, 0x78(r29)
/* 806A0068  4B BC F9 D4 */	b cLib_addCalc2__FPffff
/* 806A006C  3B 60 00 00 */	li r27, 0
/* 806A0070  3B 00 00 00 */	li r24, 0
/* 806A0074  3A E0 00 00 */	li r23, 0
/* 806A0078  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806A007C  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
lbl_806A0080:
/* 806A0080  2C 1A 00 00 */	cmpwi r26, 0
/* 806A0084  40 82 00 60 */	bne lbl_806A00E4
/* 806A0088  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 806A008C  38 00 00 FF */	li r0, 0xff
/* 806A0090  90 01 00 08 */	stw r0, 8(r1)
/* 806A0094  38 80 00 00 */	li r4, 0
/* 806A0098  90 81 00 0C */	stw r4, 0xc(r1)
/* 806A009C  38 00 FF FF */	li r0, -1
/* 806A00A0  90 01 00 10 */	stw r0, 0x10(r1)
/* 806A00A4  90 81 00 14 */	stw r4, 0x14(r1)
/* 806A00A8  90 81 00 18 */	stw r4, 0x18(r1)
/* 806A00AC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 806A00B0  3B F7 12 3C */	addi r31, r23, 0x123c
/* 806A00B4  7C 99 F8 2E */	lwzx r4, r25, r31
/* 806A00B8  38 A0 00 00 */	li r5, 0
/* 806A00BC  3C C0 80 6A */	lis r6, p_name@ha
/* 806A00C0  38 C6 1B EC */	addi r6, r6, p_name@l
/* 806A00C4  7C C6 C2 2E */	lhzx r6, r6, r24
/* 806A00C8  38 F9 04 D0 */	addi r7, r25, 0x4d0
/* 806A00CC  39 00 00 00 */	li r8, 0
/* 806A00D0  39 20 00 00 */	li r9, 0
/* 806A00D4  39 40 00 00 */	li r10, 0
/* 806A00D8  C0 3D 00 08 */	lfs f1, 8(r29)
/* 806A00DC  4B 9A D3 F0 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806A00E0  7C 79 F9 2E */	stwx r3, r25, r31
lbl_806A00E4:
/* 806A00E4  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 806A00E8  38 63 02 10 */	addi r3, r3, 0x210
/* 806A00EC  3A D7 12 3C */	addi r22, r23, 0x123c
/* 806A00F0  7C 99 B0 2E */	lwzx r4, r25, r22
/* 806A00F4  4B 9A B8 24 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 806A00F8  7C 7F 1B 79 */	or. r31, r3, r3
/* 806A00FC  41 82 00 90 */	beq lbl_806A018C
/* 806A0100  2C 1A 00 00 */	cmpwi r26, 0
/* 806A0104  41 82 00 1C */	beq lbl_806A0120
/* 806A0108  4B BD EB 58 */	b deleteAllParticle__14JPABaseEmitterFv
/* 806A010C  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 806A0110  38 63 02 10 */	addi r3, r3, 0x210
/* 806A0114  7C 99 B0 2E */	lwzx r4, r25, r22
/* 806A0118  4B 9A B7 9C */	b forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 806A011C  48 00 00 70 */	b lbl_806A018C
lbl_806A0120:
/* 806A0120  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 806A0124  80 83 00 0C */	lwz r4, 0xc(r3)
/* 806A0128  3C 60 80 6A */	lis r3, p_idx@ha
/* 806A012C  38 63 1B F4 */	addi r3, r3, p_idx@l
/* 806A0130  7C 03 B8 2E */	lwzx r0, r3, r23
/* 806A0134  1C 00 00 30 */	mulli r0, r0, 0x30
/* 806A0138  7C 64 02 14 */	add r3, r4, r0
/* 806A013C  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 806A0140  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 806A0144  80 84 00 00 */	lwz r4, 0(r4)
/* 806A0148  4B CA 63 68 */	b PSMTXCopy
/* 806A014C  C0 39 12 54 */	lfs f1, 0x1254(r25)
/* 806A0150  FC 40 08 90 */	fmr f2, f1
/* 806A0154  FC 60 08 90 */	fmr f3, f1
/* 806A0158  38 60 00 01 */	li r3, 1
/* 806A015C  4B BD 0D 48 */	b MtxScale__FfffUc
/* 806A0160  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806A0164  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 806A0168  80 63 00 00 */	lwz r3, 0(r3)
/* 806A016C  38 9F 00 68 */	addi r4, r31, 0x68
/* 806A0170  38 BF 00 98 */	addi r5, r31, 0x98
/* 806A0174  38 DF 00 A4 */	addi r6, r31, 0xa4
/* 806A0178  4B BE 06 90 */	b func_80280808
/* 806A017C  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 806A0180  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 806A0184  D0 1F 00 B0 */	stfs f0, 0xb0(r31)
/* 806A0188  D0 3F 00 B4 */	stfs f1, 0xb4(r31)
lbl_806A018C:
/* 806A018C  3B 7B 00 01 */	addi r27, r27, 1
/* 806A0190  2C 1B 00 02 */	cmpwi r27, 2
/* 806A0194  3B 18 00 02 */	addi r24, r24, 2
/* 806A0198  3A F7 00 04 */	addi r23, r23, 4
/* 806A019C  40 81 FE E4 */	ble lbl_806A0080
/* 806A01A0  88 79 12 39 */	lbz r3, 0x1239(r25)
/* 806A01A4  7C 60 07 75 */	extsb. r0, r3
/* 806A01A8  41 82 02 04 */	beq lbl_806A03AC
/* 806A01AC  7C 60 07 74 */	extsb r0, r3
/* 806A01B0  2C 00 00 01 */	cmpwi r0, 1
/* 806A01B4  40 82 00 9C */	bne lbl_806A0250
/* 806A01B8  C0 19 04 D0 */	lfs f0, 0x4d0(r25)
/* 806A01BC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806A01C0  C0 39 04 D4 */	lfs f1, 0x4d4(r25)
/* 806A01C4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 806A01C8  C0 19 04 D8 */	lfs f0, 0x4d8(r25)
/* 806A01CC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806A01D0  C0 1D 00 00 */	lfs f0, 0(r29)
/* 806A01D4  EC 01 00 2A */	fadds f0, f1, f0
/* 806A01D8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806A01DC  38 61 00 20 */	addi r3, r1, 0x20
/* 806A01E0  4B 97 DA DC */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 806A01E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806A01E8  41 82 00 10 */	beq lbl_806A01F8
/* 806A01EC  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 806A01F0  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 806A01F4  D0 01 00 24 */	stfs f0, 0x24(r1)
lbl_806A01F8:
/* 806A01F8  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 806A01FC  38 00 00 FF */	li r0, 0xff
/* 806A0200  90 01 00 08 */	stw r0, 8(r1)
/* 806A0204  38 80 00 00 */	li r4, 0
/* 806A0208  90 81 00 0C */	stw r4, 0xc(r1)
/* 806A020C  38 00 FF FF */	li r0, -1
/* 806A0210  90 01 00 10 */	stw r0, 0x10(r1)
/* 806A0214  90 81 00 14 */	stw r4, 0x14(r1)
/* 806A0218  90 81 00 18 */	stw r4, 0x18(r1)
/* 806A021C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 806A0220  80 99 12 4C */	lwz r4, 0x124c(r25)
/* 806A0224  38 A0 00 00 */	li r5, 0
/* 806A0228  3C C0 00 01 */	lis r6, 0x0001 /* 0x000081DD@ha */
/* 806A022C  38 C6 81 DD */	addi r6, r6, 0x81DD /* 0x000081DD@l */
/* 806A0230  38 E1 00 20 */	addi r7, r1, 0x20
/* 806A0234  39 00 00 00 */	li r8, 0
/* 806A0238  39 20 00 00 */	li r9, 0
/* 806A023C  39 40 00 00 */	li r10, 0
/* 806A0240  C0 3D 00 08 */	lfs f1, 8(r29)
/* 806A0244  4B 9A D2 88 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806A0248  90 79 12 4C */	stw r3, 0x124c(r25)
/* 806A024C  48 00 01 58 */	b lbl_806A03A4
lbl_806A0250:
/* 806A0250  2C 00 00 02 */	cmpwi r0, 2
/* 806A0254  40 82 00 A8 */	bne lbl_806A02FC
/* 806A0258  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 806A025C  38 00 00 FF */	li r0, 0xff
/* 806A0260  90 01 00 08 */	stw r0, 8(r1)
/* 806A0264  38 80 00 00 */	li r4, 0
/* 806A0268  90 81 00 0C */	stw r4, 0xc(r1)
/* 806A026C  38 00 FF FF */	li r0, -1
/* 806A0270  90 01 00 10 */	stw r0, 0x10(r1)
/* 806A0274  90 81 00 14 */	stw r4, 0x14(r1)
/* 806A0278  90 81 00 18 */	stw r4, 0x18(r1)
/* 806A027C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 806A0280  80 99 12 48 */	lwz r4, 0x1248(r25)
/* 806A0284  38 A0 00 00 */	li r5, 0
/* 806A0288  3C C0 00 01 */	lis r6, 0x0001 /* 0x000081C2@ha */
/* 806A028C  38 C6 81 C2 */	addi r6, r6, 0x81C2 /* 0x000081C2@l */
/* 806A0290  38 F9 04 D0 */	addi r7, r25, 0x4d0
/* 806A0294  39 00 00 00 */	li r8, 0
/* 806A0298  39 20 00 00 */	li r9, 0
/* 806A029C  39 40 00 00 */	li r10, 0
/* 806A02A0  C0 3D 00 08 */	lfs f1, 8(r29)
/* 806A02A4  4B 9A D2 28 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806A02A8  90 79 12 48 */	stw r3, 0x1248(r25)
/* 806A02AC  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 806A02B0  38 63 02 10 */	addi r3, r3, 0x210
/* 806A02B4  80 99 12 48 */	lwz r4, 0x1248(r25)
/* 806A02B8  4B 9A B6 60 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 806A02BC  7C 77 1B 79 */	or. r23, r3, r3
/* 806A02C0  41 82 00 E4 */	beq lbl_806A03A4
/* 806A02C4  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 806A02C8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806A02CC  38 63 00 30 */	addi r3, r3, 0x30
/* 806A02D0  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 806A02D4  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 806A02D8  80 84 00 00 */	lwz r4, 0(r4)
/* 806A02DC  4B CA 61 D4 */	b PSMTXCopy
/* 806A02E0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806A02E4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 806A02E8  80 63 00 00 */	lwz r3, 0(r3)
/* 806A02EC  38 97 00 68 */	addi r4, r23, 0x68
/* 806A02F0  38 B7 00 A4 */	addi r5, r23, 0xa4
/* 806A02F4  4B BE 04 EC */	b func_802807E0
/* 806A02F8  48 00 00 AC */	b lbl_806A03A4
lbl_806A02FC:
/* 806A02FC  2C 00 00 03 */	cmpwi r0, 3
/* 806A0300  40 82 00 A4 */	bne lbl_806A03A4
/* 806A0304  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 806A0308  38 00 00 FF */	li r0, 0xff
/* 806A030C  90 01 00 08 */	stw r0, 8(r1)
/* 806A0310  38 80 00 00 */	li r4, 0
/* 806A0314  90 81 00 0C */	stw r4, 0xc(r1)
/* 806A0318  38 00 FF FF */	li r0, -1
/* 806A031C  90 01 00 10 */	stw r0, 0x10(r1)
/* 806A0320  90 81 00 14 */	stw r4, 0x14(r1)
/* 806A0324  90 81 00 18 */	stw r4, 0x18(r1)
/* 806A0328  90 81 00 1C */	stw r4, 0x1c(r1)
/* 806A032C  80 99 12 50 */	lwz r4, 0x1250(r25)
/* 806A0330  38 A0 00 00 */	li r5, 0
/* 806A0334  3C C0 00 01 */	lis r6, 0x0001 /* 0x000081C3@ha */
/* 806A0338  38 C6 81 C3 */	addi r6, r6, 0x81C3 /* 0x000081C3@l */
/* 806A033C  38 F9 04 D0 */	addi r7, r25, 0x4d0
/* 806A0340  39 00 00 00 */	li r8, 0
/* 806A0344  39 20 00 00 */	li r9, 0
/* 806A0348  39 40 00 00 */	li r10, 0
/* 806A034C  C0 3D 00 08 */	lfs f1, 8(r29)
/* 806A0350  4B 9A D1 7C */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806A0354  90 79 12 50 */	stw r3, 0x1250(r25)
/* 806A0358  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 806A035C  38 63 02 10 */	addi r3, r3, 0x210
/* 806A0360  80 99 12 50 */	lwz r4, 0x1250(r25)
/* 806A0364  4B 9A B5 B4 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 806A0368  7C 77 1B 79 */	or. r23, r3, r3
/* 806A036C  41 82 00 38 */	beq lbl_806A03A4
/* 806A0370  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 806A0374  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806A0378  38 63 00 30 */	addi r3, r3, 0x30
/* 806A037C  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 806A0380  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 806A0384  80 84 00 00 */	lwz r4, 0(r4)
/* 806A0388  4B CA 61 28 */	b PSMTXCopy
/* 806A038C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806A0390  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 806A0394  80 63 00 00 */	lwz r3, 0(r3)
/* 806A0398  38 97 00 68 */	addi r4, r23, 0x68
/* 806A039C  38 B7 00 A4 */	addi r5, r23, 0xa4
/* 806A03A0  4B BE 04 40 */	b func_802807E0
lbl_806A03A4:
/* 806A03A4  38 00 00 00 */	li r0, 0
/* 806A03A8  98 19 12 39 */	stb r0, 0x1239(r25)
lbl_806A03AC:
/* 806A03AC  39 61 00 60 */	addi r11, r1, 0x60
/* 806A03B0  4B CC 1E 5C */	b _restgpr_22
/* 806A03B4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 806A03B8  7C 08 03 A6 */	mtlr r0
/* 806A03BC  38 21 00 60 */	addi r1, r1, 0x60
/* 806A03C0  4E 80 00 20 */	blr 

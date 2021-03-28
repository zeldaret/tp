lbl_80D1D0AC:
/* 80D1D0AC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80D1D0B0  7C 08 02 A6 */	mflr r0
/* 80D1D0B4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D1D0B8  39 61 00 40 */	addi r11, r1, 0x40
/* 80D1D0BC  4B 64 51 14 */	b _savegpr_26
/* 80D1D0C0  7C 7A 1B 78 */	mr r26, r3
/* 80D1D0C4  3C 60 80 D2 */	lis r3, l_R02_eff_id@ha
/* 80D1D0C8  3B A3 D3 D4 */	addi r29, r3, l_R02_eff_id@l
/* 80D1D0CC  3B 80 00 00 */	li r28, 0
/* 80D1D0D0  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 80D1D0D4  7C 00 07 74 */	extsb r0, r0
/* 80D1D0D8  2C 00 00 06 */	cmpwi r0, 6
/* 80D1D0DC  41 82 01 20 */	beq lbl_80D1D1FC
/* 80D1D0E0  40 80 00 2C */	bge lbl_80D1D10C
/* 80D1D0E4  2C 00 00 02 */	cmpwi r0, 2
/* 80D1D0E8  41 82 00 50 */	beq lbl_80D1D138
/* 80D1D0EC  40 80 00 10 */	bge lbl_80D1D0FC
/* 80D1D0F0  2C 00 00 00 */	cmpwi r0, 0
/* 80D1D0F4  41 82 01 08 */	beq lbl_80D1D1FC
/* 80D1D0F8  48 00 00 74 */	b lbl_80D1D16C
lbl_80D1D0FC:
/* 80D1D0FC  2C 00 00 04 */	cmpwi r0, 4
/* 80D1D100  41 82 00 40 */	beq lbl_80D1D140
/* 80D1D104  40 80 00 44 */	bge lbl_80D1D148
/* 80D1D108  48 00 00 F4 */	b lbl_80D1D1FC
lbl_80D1D10C:
/* 80D1D10C  2C 00 00 0E */	cmpwi r0, 0xe
/* 80D1D110  41 82 00 48 */	beq lbl_80D1D158
/* 80D1D114  40 80 00 18 */	bge lbl_80D1D12C
/* 80D1D118  2C 00 00 0D */	cmpwi r0, 0xd
/* 80D1D11C  40 80 00 E0 */	bge lbl_80D1D1FC
/* 80D1D120  2C 00 00 09 */	cmpwi r0, 9
/* 80D1D124  40 80 00 48 */	bge lbl_80D1D16C
/* 80D1D128  48 00 00 28 */	b lbl_80D1D150
lbl_80D1D12C:
/* 80D1D12C  2C 00 00 33 */	cmpwi r0, 0x33
/* 80D1D130  41 82 00 30 */	beq lbl_80D1D160
/* 80D1D134  48 00 00 38 */	b lbl_80D1D16C
lbl_80D1D138:
/* 80D1D138  3B 9D 00 00 */	addi r28, r29, 0
/* 80D1D13C  48 00 00 30 */	b lbl_80D1D16C
lbl_80D1D140:
/* 80D1D140  3B 9D 00 08 */	addi r28, r29, 8
/* 80D1D144  48 00 00 28 */	b lbl_80D1D16C
lbl_80D1D148:
/* 80D1D148  3B 9D 00 10 */	addi r28, r29, 0x10
/* 80D1D14C  48 00 00 20 */	b lbl_80D1D16C
lbl_80D1D150:
/* 80D1D150  3B 9D 00 18 */	addi r28, r29, 0x18
/* 80D1D154  48 00 00 18 */	b lbl_80D1D16C
lbl_80D1D158:
/* 80D1D158  3B 9D 00 20 */	addi r28, r29, 0x20
/* 80D1D15C  48 00 00 10 */	b lbl_80D1D16C
lbl_80D1D160:
/* 80D1D160  3B 9D 00 28 */	addi r28, r29, 0x28
/* 80D1D164  48 00 00 08 */	b lbl_80D1D16C
/* 80D1D168  48 00 00 94 */	b lbl_80D1D1FC
lbl_80D1D16C:
/* 80D1D16C  3B 60 00 00 */	li r27, 0
/* 80D1D170  3B E0 00 00 */	li r31, 0
/* 80D1D174  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D1D178  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
lbl_80D1D17C:
/* 80D1D17C  A0 BC 00 00 */	lhz r5, 0(r28)
/* 80D1D180  28 05 FF FF */	cmplwi r5, 0xffff
/* 80D1D184  41 82 00 50 */	beq lbl_80D1D1D4
/* 80D1D188  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80D1D18C  38 80 00 00 */	li r4, 0
/* 80D1D190  90 81 00 08 */	stw r4, 8(r1)
/* 80D1D194  38 00 FF FF */	li r0, -1
/* 80D1D198  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D1D19C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D1D1A0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D1D1A4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D1D1A8  38 80 00 00 */	li r4, 0
/* 80D1D1AC  38 DA 04 D0 */	addi r6, r26, 0x4d0
/* 80D1D1B0  38 E0 00 00 */	li r7, 0
/* 80D1D1B4  39 1A 04 B4 */	addi r8, r26, 0x4b4
/* 80D1D1B8  39 20 00 00 */	li r9, 0
/* 80D1D1BC  39 40 00 FF */	li r10, 0xff
/* 80D1D1C0  C0 3D 00 34 */	lfs f1, 0x34(r29)
/* 80D1D1C4  4B 32 F8 CC */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D1D1C8  38 1F 07 7C */	addi r0, r31, 0x77c
/* 80D1D1CC  7C 7A 01 2E */	stwx r3, r26, r0
/* 80D1D1D0  48 00 00 10 */	b lbl_80D1D1E0
lbl_80D1D1D4:
/* 80D1D1D4  38 60 00 00 */	li r3, 0
/* 80D1D1D8  38 1F 07 7C */	addi r0, r31, 0x77c
/* 80D1D1DC  7C 7A 01 2E */	stwx r3, r26, r0
lbl_80D1D1E0:
/* 80D1D1E0  3B 7B 00 01 */	addi r27, r27, 1
/* 80D1D1E4  2C 1B 00 03 */	cmpwi r27, 3
/* 80D1D1E8  3B 9C 00 02 */	addi r28, r28, 2
/* 80D1D1EC  3B FF 00 04 */	addi r31, r31, 4
/* 80D1D1F0  41 80 FF 8C */	blt lbl_80D1D17C
/* 80D1D1F4  7F 43 D3 78 */	mr r3, r26
/* 80D1D1F8  48 00 00 B5 */	bl stopParticle__12daObjTrnd2_cFv
lbl_80D1D1FC:
/* 80D1D1FC  39 61 00 40 */	addi r11, r1, 0x40
/* 80D1D200  4B 64 50 1C */	b _restgpr_26
/* 80D1D204  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D1D208  7C 08 03 A6 */	mtlr r0
/* 80D1D20C  38 21 00 40 */	addi r1, r1, 0x40
/* 80D1D210  4E 80 00 20 */	blr 

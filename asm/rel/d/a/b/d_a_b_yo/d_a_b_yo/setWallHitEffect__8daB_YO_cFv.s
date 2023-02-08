lbl_8063089C:
/* 8063089C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 806308A0  7C 08 02 A6 */	mflr r0
/* 806308A4  90 01 00 64 */	stw r0, 0x64(r1)
/* 806308A8  39 61 00 60 */	addi r11, r1, 0x60
/* 806308AC  4B D3 19 25 */	bl _savegpr_26
/* 806308B0  7C 7F 1B 78 */	mr r31, r3
/* 806308B4  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 806308B8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806308BC  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 806308C0  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 806308C4  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 806308C8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806308CC  88 83 0F A8 */	lbz r4, 0xfa8(r3)
/* 806308D0  28 04 00 07 */	cmplwi r4, 7
/* 806308D4  40 82 00 D8 */	bne lbl_806309AC
/* 806308D8  3C 60 80 64 */	lis r3, lit_4432@ha /* 0x80639850@ha */
/* 806308DC  C0 03 98 50 */	lfs f0, lit_4432@l(r3)  /* 0x80639850@l */
/* 806308E0  EC 01 00 28 */	fsubs f0, f1, f0
/* 806308E4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806308E8  3C 60 80 64 */	lis r3, lit_3795@ha /* 0x80639810@ha */
/* 806308EC  C0 03 98 10 */	lfs f0, lit_3795@l(r3)  /* 0x80639810@l */
/* 806308F0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806308F4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806308F8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806308FC  88 7F 0F AB */	lbz r3, 0xfab(r31)
/* 80630900  38 03 FF FF */	addi r0, r3, -1
/* 80630904  54 1B 08 3C */	slwi r27, r0, 1
/* 80630908  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007030B@ha */
/* 8063090C  38 03 03 0B */	addi r0, r3, 0x030B /* 0x0007030B@l */
/* 80630910  90 01 00 28 */	stw r0, 0x28(r1)
/* 80630914  38 7F 06 34 */	addi r3, r31, 0x634
/* 80630918  38 81 00 28 */	addi r4, r1, 0x28
/* 8063091C  38 A0 00 00 */	li r5, 0
/* 80630920  38 C0 FF FF */	li r6, -1
/* 80630924  81 9F 06 34 */	lwz r12, 0x634(r31)
/* 80630928  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8063092C  7D 89 03 A6 */	mtctr r12
/* 80630930  4E 80 04 21 */	bctrl 
/* 80630934  3B 40 00 00 */	li r26, 0
/* 80630938  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8063093C  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80630940  3C 60 80 64 */	lis r3, wall_hit_effect_id@ha /* 0x80639C84@ha */
/* 80630944  3B A3 9C 84 */	addi r29, r3, wall_hit_effect_id@l /* 0x80639C84@l */
/* 80630948  3C 60 80 64 */	lis r3, lit_3795@ha /* 0x80639810@ha */
/* 8063094C  3B C3 98 10 */	addi r30, r3, lit_3795@l /* 0x80639810@l */
lbl_80630950:
/* 80630950  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80630954  38 80 00 00 */	li r4, 0
/* 80630958  90 81 00 08 */	stw r4, 8(r1)
/* 8063095C  38 00 FF FF */	li r0, -1
/* 80630960  90 01 00 0C */	stw r0, 0xc(r1)
/* 80630964  90 81 00 10 */	stw r4, 0x10(r1)
/* 80630968  90 81 00 14 */	stw r4, 0x14(r1)
/* 8063096C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80630970  38 80 00 00 */	li r4, 0
/* 80630974  7C 1B D2 14 */	add r0, r27, r26
/* 80630978  54 00 08 3C */	slwi r0, r0, 1
/* 8063097C  7C BD 02 2E */	lhzx r5, r29, r0
/* 80630980  38 C1 00 2C */	addi r6, r1, 0x2c
/* 80630984  38 FF 01 0C */	addi r7, r31, 0x10c
/* 80630988  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 8063098C  39 21 00 38 */	addi r9, r1, 0x38
/* 80630990  39 40 00 FF */	li r10, 0xff
/* 80630994  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80630998  4B A1 C0 F9 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8063099C  3B 5A 00 01 */	addi r26, r26, 1
/* 806309A0  2C 1A 00 02 */	cmpwi r26, 2
/* 806309A4  41 80 FF AC */	blt lbl_80630950
/* 806309A8  48 00 00 DC */	b lbl_80630A84
lbl_806309AC:
/* 806309AC  3C 60 80 64 */	lis r3, l_HIO@ha /* 0x80639F84@ha */
/* 806309B0  38 63 9F 84 */	addi r3, r3, l_HIO@l /* 0x80639F84@l */
/* 806309B4  54 80 15 BA */	rlwinm r0, r4, 2, 0x16, 0x1d
/* 806309B8  7C 63 02 14 */	add r3, r3, r0
/* 806309BC  C0 03 00 08 */	lfs f0, 8(r3)
/* 806309C0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806309C4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806309C8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806309CC  28 04 00 04 */	cmplwi r4, 4
/* 806309D0  40 80 00 34 */	bge lbl_80630A04
/* 806309D4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702FF@ha */
/* 806309D8  38 03 02 FF */	addi r0, r3, 0x02FF /* 0x000702FF@l */
/* 806309DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 806309E0  38 7F 06 34 */	addi r3, r31, 0x634
/* 806309E4  38 81 00 24 */	addi r4, r1, 0x24
/* 806309E8  38 A0 00 00 */	li r5, 0
/* 806309EC  38 C0 FF FF */	li r6, -1
/* 806309F0  81 9F 06 34 */	lwz r12, 0x634(r31)
/* 806309F4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806309F8  7D 89 03 A6 */	mtctr r12
/* 806309FC  4E 80 04 21 */	bctrl 
/* 80630A00  48 00 00 30 */	b lbl_80630A30
lbl_80630A04:
/* 80630A04  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070300@ha */
/* 80630A08  38 03 03 00 */	addi r0, r3, 0x0300 /* 0x00070300@l */
/* 80630A0C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80630A10  38 7F 06 34 */	addi r3, r31, 0x634
/* 80630A14  38 81 00 20 */	addi r4, r1, 0x20
/* 80630A18  38 A0 00 00 */	li r5, 0
/* 80630A1C  38 C0 FF FF */	li r6, -1
/* 80630A20  81 9F 06 34 */	lwz r12, 0x634(r31)
/* 80630A24  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80630A28  7D 89 03 A6 */	mtctr r12
/* 80630A2C  4E 80 04 21 */	bctrl 
lbl_80630A30:
/* 80630A30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80630A34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80630A38  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80630A3C  38 80 00 00 */	li r4, 0
/* 80630A40  90 81 00 08 */	stw r4, 8(r1)
/* 80630A44  38 00 FF FF */	li r0, -1
/* 80630A48  90 01 00 0C */	stw r0, 0xc(r1)
/* 80630A4C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80630A50  90 81 00 14 */	stw r4, 0x14(r1)
/* 80630A54  90 81 00 18 */	stw r4, 0x18(r1)
/* 80630A58  38 80 00 00 */	li r4, 0
/* 80630A5C  3C A0 00 01 */	lis r5, 0x0001 /* 0x000087BF@ha */
/* 80630A60  38 A5 87 BF */	addi r5, r5, 0x87BF /* 0x000087BF@l */
/* 80630A64  38 C1 00 2C */	addi r6, r1, 0x2c
/* 80630A68  38 FF 01 0C */	addi r7, r31, 0x10c
/* 80630A6C  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 80630A70  39 21 00 38 */	addi r9, r1, 0x38
/* 80630A74  39 40 00 FF */	li r10, 0xff
/* 80630A78  3D 60 80 64 */	lis r11, lit_3795@ha /* 0x80639810@ha */
/* 80630A7C  C0 2B 98 10 */	lfs f1, lit_3795@l(r11)  /* 0x80639810@l */
/* 80630A80  4B A1 C0 11 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_80630A84:
/* 80630A84  39 61 00 60 */	addi r11, r1, 0x60
/* 80630A88  4B D3 17 95 */	bl _restgpr_26
/* 80630A8C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80630A90  7C 08 03 A6 */	mtlr r0
/* 80630A94  38 21 00 60 */	addi r1, r1, 0x60
/* 80630A98  4E 80 00 20 */	blr 

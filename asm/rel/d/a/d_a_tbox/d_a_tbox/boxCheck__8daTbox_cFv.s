lbl_80491F68:
/* 80491F68  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80491F6C  7C 08 02 A6 */	mflr r0
/* 80491F70  90 01 00 54 */	stw r0, 0x54(r1)
/* 80491F74  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80491F78  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80491F7C  39 61 00 40 */	addi r11, r1, 0x40
/* 80491F80  4B ED 02 59 */	bl _savegpr_28
/* 80491F84  7C 7C 1B 78 */	mr r28, r3
/* 80491F88  3C 60 80 49 */	lis r3, l_cull_size_box@ha /* 0x804961D4@ha */
/* 80491F8C  3B C3 61 D4 */	addi r30, r3, l_cull_size_box@l /* 0x804961D4@l */
/* 80491F90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80491F94  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80491F98  83 BF 5D AC */	lwz r29, 0x5dac(r31)
/* 80491F9C  38 7F 4E 00 */	addi r3, r31, 0x4e00
/* 80491FA0  3C 80 80 49 */	lis r4, d_a_tbox__stringBase0@ha /* 0x80496334@ha */
/* 80491FA4  38 84 63 34 */	addi r4, r4, d_a_tbox__stringBase0@l /* 0x80496334@l */
/* 80491FA8  38 84 00 34 */	addi r4, r4, 0x34
/* 80491FAC  4B ED 69 E9 */	bl strcmp
/* 80491FB0  2C 03 00 00 */	cmpwi r3, 0
/* 80491FB4  40 82 00 34 */	bne lbl_80491FE8
/* 80491FB8  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80491FBC  2C 00 00 07 */	cmpwi r0, 7
/* 80491FC0  40 82 00 28 */	bne lbl_80491FE8
/* 80491FC4  7F A3 EB 78 */	mr r3, r29
/* 80491FC8  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80491FCC  81 8C 01 C8 */	lwz r12, 0x1c8(r12)
/* 80491FD0  7D 89 03 A6 */	mtctr r12
/* 80491FD4  4E 80 04 21 */	bctrl 
/* 80491FD8  28 03 00 00 */	cmplwi r3, 0
/* 80491FDC  40 82 00 0C */	bne lbl_80491FE8
/* 80491FE0  38 60 00 00 */	li r3, 0
/* 80491FE4  48 00 00 A4 */	b lbl_80492088
lbl_80491FE8:
/* 80491FE8  38 61 00 14 */	addi r3, r1, 0x14
/* 80491FEC  38 9D 05 50 */	addi r4, r29, 0x550
/* 80491FF0  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80491FF4  4B DD 4B 41 */	bl __mi__4cXyzCFRC3Vec
/* 80491FF8  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80491FFC  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80492000  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80492004  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80492008  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 8049200C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80492010  D0 41 00 08 */	stfs f2, 8(r1)
/* 80492014  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 80492018  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8049201C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80492020  38 61 00 08 */	addi r3, r1, 8
/* 80492024  4B EB 51 15 */	bl PSVECSquareMag
/* 80492028  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 8049202C  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80492030  EC 02 00 28 */	fsubs f0, f2, f0
/* 80492034  FC 00 02 10 */	fabs f0, f0
/* 80492038  FF E0 00 18 */	frsp f31, f0
/* 8049203C  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 80492040  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80492044  40 80 00 40 */	bge lbl_80492084
/* 80492048  7F 83 E3 78 */	mr r3, r28
/* 8049204C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80492050  4B B8 87 4D */	bl fopAcM_seenActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80492054  2C 03 20 00 */	cmpwi r3, 0x2000
/* 80492058  40 80 00 2C */	bge lbl_80492084
/* 8049205C  7F A3 EB 78 */	mr r3, r29
/* 80492060  7F 84 E3 78 */	mr r4, r28
/* 80492064  4B B8 87 39 */	bl fopAcM_seenActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80492068  2C 03 20 00 */	cmpwi r3, 0x2000
/* 8049206C  40 80 00 18 */	bge lbl_80492084
/* 80492070  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 80492074  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80492078  40 80 00 0C */	bge lbl_80492084
/* 8049207C  38 60 00 01 */	li r3, 1
/* 80492080  48 00 00 08 */	b lbl_80492088
lbl_80492084:
/* 80492084  38 60 00 00 */	li r3, 0
lbl_80492088:
/* 80492088  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8049208C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80492090  39 61 00 40 */	addi r11, r1, 0x40
/* 80492094  4B ED 01 91 */	bl _restgpr_28
/* 80492098  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8049209C  7C 08 03 A6 */	mtlr r0
/* 804920A0  38 21 00 50 */	addi r1, r1, 0x50
/* 804920A4  4E 80 00 20 */	blr 

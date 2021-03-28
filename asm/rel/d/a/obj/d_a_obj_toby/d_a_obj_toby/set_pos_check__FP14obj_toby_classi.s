lbl_80D14BD4:
/* 80D14BD4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80D14BD8  7C 08 02 A6 */	mflr r0
/* 80D14BDC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D14BE0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80D14BE4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80D14BE8  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80D14BEC  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80D14BF0  39 61 00 20 */	addi r11, r1, 0x20
/* 80D14BF4  4B 64 D5 DC */	b _savegpr_26
/* 80D14BF8  7C 7A 1B 78 */	mr r26, r3
/* 80D14BFC  7C 9B 23 78 */	mr r27, r4
/* 80D14C00  3C 60 80 D1 */	lis r3, lit_3806@ha
/* 80D14C04  3B C3 55 E8 */	addi r30, r3, lit_3806@l
/* 80D14C08  3B 80 00 00 */	li r28, 0
/* 80D14C0C  3B E0 00 00 */	li r31, 0
/* 80D14C10  1C 1B 00 78 */	mulli r0, r27, 0x78
/* 80D14C14  7F BA 02 14 */	add r29, r26, r0
/* 80D14C18  C3 DE 00 04 */	lfs f30, 4(r30)
/* 80D14C1C  C3 FE 00 84 */	lfs f31, 0x84(r30)
/* 80D14C20  48 00 00 A8 */	b lbl_80D14CC8
lbl_80D14C24:
/* 80D14C24  7C 7A FA 14 */	add r3, r26, r31
/* 80D14C28  C0 23 05 94 */	lfs f1, 0x594(r3)
/* 80D14C2C  C0 1D 05 94 */	lfs f0, 0x594(r29)
/* 80D14C30  EC 41 00 28 */	fsubs f2, f1, f0
/* 80D14C34  C0 23 05 9C */	lfs f1, 0x59c(r3)
/* 80D14C38  C0 1D 05 9C */	lfs f0, 0x59c(r29)
/* 80D14C3C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D14C40  EC 22 00 B2 */	fmuls f1, f2, f2
/* 80D14C44  EC 00 00 32 */	fmuls f0, f0, f0
/* 80D14C48  EC 21 00 2A */	fadds f1, f1, f0
/* 80D14C4C  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 80D14C50  40 81 00 0C */	ble lbl_80D14C5C
/* 80D14C54  FC 00 08 34 */	frsqrte f0, f1
/* 80D14C58  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80D14C5C:
/* 80D14C5C  C0 5A 05 7C */	lfs f2, 0x57c(r26)
/* 80D14C60  EC 1F 00 B2 */	fmuls f0, f31, f2
/* 80D14C64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D14C68  40 80 00 0C */	bge lbl_80D14C74
/* 80D14C6C  38 60 00 00 */	li r3, 0
/* 80D14C70  48 00 00 64 */	b lbl_80D14CD4
lbl_80D14C74:
/* 80D14C74  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 80D14C78  40 80 00 48 */	bge lbl_80D14CC0
/* 80D14C7C  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 80D14C80  C0 03 05 98 */	lfs f0, 0x598(r3)
/* 80D14C84  EC 01 00 2A */	fadds f0, f1, f0
/* 80D14C88  D0 1D 05 98 */	stfs f0, 0x598(r29)
/* 80D14C8C  C0 5D 05 98 */	lfs f2, 0x598(r29)
/* 80D14C90  C0 3E 00 88 */	lfs f1, 0x88(r30)
/* 80D14C94  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80D14C98  EC 01 00 2A */	fadds f0, f1, f0
/* 80D14C9C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80D14CA0  40 81 00 20 */	ble lbl_80D14CC0
/* 80D14CA4  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 80D14CA8  4B 55 2C AC */	b cM_rndF__Ff
/* 80D14CAC  C0 5E 00 8C */	lfs f2, 0x8c(r30)
/* 80D14CB0  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80D14CB4  EC 02 00 2A */	fadds f0, f2, f0
/* 80D14CB8  EC 00 08 2A */	fadds f0, f0, f1
/* 80D14CBC  D0 1D 05 98 */	stfs f0, 0x598(r29)
lbl_80D14CC0:
/* 80D14CC0  3B 9C 00 01 */	addi r28, r28, 1
/* 80D14CC4  3B FF 00 78 */	addi r31, r31, 0x78
lbl_80D14CC8:
/* 80D14CC8  7C 1C D8 00 */	cmpw r28, r27
/* 80D14CCC  41 80 FF 58 */	blt lbl_80D14C24
/* 80D14CD0  38 60 00 01 */	li r3, 1
lbl_80D14CD4:
/* 80D14CD4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80D14CD8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80D14CDC  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80D14CE0  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80D14CE4  39 61 00 20 */	addi r11, r1, 0x20
/* 80D14CE8  4B 64 D5 34 */	b _restgpr_26
/* 80D14CEC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D14CF0  7C 08 03 A6 */	mtlr r0
/* 80D14CF4  38 21 00 40 */	addi r1, r1, 0x40
/* 80D14CF8  4E 80 00 20 */	blr 

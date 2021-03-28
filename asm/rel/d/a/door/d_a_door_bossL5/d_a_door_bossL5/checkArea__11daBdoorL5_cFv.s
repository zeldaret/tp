lbl_80671C14:
/* 80671C14  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80671C18  7C 08 02 A6 */	mflr r0
/* 80671C1C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80671C20  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80671C24  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80671C28  7C 7E 1B 78 */	mr r30, r3
/* 80671C2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80671C30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80671C34  83 E3 5D AC */	lwz r31, 0x5dac(r3)
/* 80671C38  38 61 00 08 */	addi r3, r1, 8
/* 80671C3C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80671C40  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80671C44  4B BF 4E F0 */	b __mi__4cXyzCFRC3Vec
/* 80671C48  C0 01 00 08 */	lfs f0, 8(r1)
/* 80671C4C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80671C50  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80671C54  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80671C58  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80671C5C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80671C60  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80671C64  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80671C68  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80671C6C  7C 00 00 D0 */	neg r0, r0
/* 80671C70  7C 04 07 34 */	extsh r4, r0
/* 80671C74  4B 99 A7 68 */	b mDoMtx_YrotS__FPA4_fs
/* 80671C78  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80671C7C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80671C80  38 81 00 14 */	addi r4, r1, 0x14
/* 80671C84  7C 85 23 78 */	mr r5, r4
/* 80671C88  4B CD 50 E4 */	b PSMTXMultVec
/* 80671C8C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80671C90  FC 00 02 10 */	fabs f0, f0
/* 80671C94  FC 20 00 18 */	frsp f1, f0
/* 80671C98  3C 60 80 67 */	lis r3, lit_4154@ha
/* 80671C9C  C0 03 25 30 */	lfs f0, lit_4154@l(r3)
/* 80671CA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80671CA4  40 81 00 0C */	ble lbl_80671CB0
/* 80671CA8  38 60 00 00 */	li r3, 0
/* 80671CAC  48 00 00 80 */	b lbl_80671D2C
lbl_80671CB0:
/* 80671CB0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80671CB4  FC 00 02 10 */	fabs f0, f0
/* 80671CB8  FC 20 00 18 */	frsp f1, f0
/* 80671CBC  3C 60 80 67 */	lis r3, lit_4155@ha
/* 80671CC0  C0 03 25 34 */	lfs f0, lit_4155@l(r3)
/* 80671CC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80671CC8  40 81 00 0C */	ble lbl_80671CD4
/* 80671CCC  38 60 00 00 */	li r3, 0
/* 80671CD0  48 00 00 5C */	b lbl_80671D2C
lbl_80671CD4:
/* 80671CD4  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80671CD8  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 80671CDC  38 03 80 01 */	addi r0, r3, -32767
/* 80671CE0  7C 04 00 50 */	subf r0, r4, r0
/* 80671CE4  3C 60 80 67 */	lis r3, lit_4157@ha
/* 80671CE8  C8 23 25 38 */	lfd f1, lit_4157@l(r3)
/* 80671CEC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80671CF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80671CF4  3C 00 43 30 */	lis r0, 0x4330
/* 80671CF8  90 01 00 20 */	stw r0, 0x20(r1)
/* 80671CFC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80671D00  FC 00 08 28 */	fsub f0, f0, f1
/* 80671D04  FC 00 02 10 */	fabs f0, f0
/* 80671D08  FC 00 00 1E */	fctiwz f0, f0
/* 80671D0C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80671D10  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80671D14  7C 05 07 34 */	extsh r5, r0
/* 80671D18  38 00 40 00 */	li r0, 0x4000
/* 80671D1C  7C 04 FE 70 */	srawi r4, r0, 0x1f
/* 80671D20  54 A3 0F FE */	srwi r3, r5, 0x1f
/* 80671D24  7C 05 00 10 */	subfc r0, r5, r0
/* 80671D28  7C 64 19 14 */	adde r3, r4, r3
lbl_80671D2C:
/* 80671D2C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80671D30  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80671D34  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80671D38  7C 08 03 A6 */	mtlr r0
/* 80671D3C  38 21 00 40 */	addi r1, r1, 0x40
/* 80671D40  4E 80 00 20 */	blr 

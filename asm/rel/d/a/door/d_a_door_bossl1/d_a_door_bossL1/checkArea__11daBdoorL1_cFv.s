lbl_804E4158:
/* 804E4158  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 804E415C  7C 08 02 A6 */	mflr r0
/* 804E4160  90 01 00 74 */	stw r0, 0x74(r1)
/* 804E4164  39 61 00 70 */	addi r11, r1, 0x70
/* 804E4168  4B E7 E0 71 */	bl _savegpr_28
/* 804E416C  7C 7D 1B 78 */	mr r29, r3
/* 804E4170  3C 60 80 4E */	lis r3, l_staff_name@ha /* 0x804E4A14@ha */
/* 804E4174  3B E3 4A 14 */	addi r31, r3, l_staff_name@l /* 0x804E4A14@l */
/* 804E4178  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804E417C  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804E4180  83 DC 5D AC */	lwz r30, 0x5dac(r28)
/* 804E4184  80 7C 5D B4 */	lwz r3, 0x5db4(r28)
/* 804E4188  80 03 05 74 */	lwz r0, 0x574(r3)
/* 804E418C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 804E4190  41 82 00 58 */	beq lbl_804E41E8
/* 804E4194  38 61 00 20 */	addi r3, r1, 0x20
/* 804E4198  38 9E 05 50 */	addi r4, r30, 0x550
/* 804E419C  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 804E41A0  4B D8 29 95 */	bl __mi__4cXyzCFRC3Vec
/* 804E41A4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 804E41A8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804E41AC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 804E41B0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804E41B4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 804E41B8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 804E41BC  38 61 00 14 */	addi r3, r1, 0x14
/* 804E41C0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804E41C4  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 804E41C8  4B D8 29 6D */	bl __mi__4cXyzCFRC3Vec
/* 804E41CC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804E41D0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804E41D4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 804E41D8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804E41DC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804E41E0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804E41E4  48 00 00 2C */	b lbl_804E4210
lbl_804E41E8:
/* 804E41E8  38 61 00 08 */	addi r3, r1, 8
/* 804E41EC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804E41F0  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 804E41F4  4B D8 29 41 */	bl __mi__4cXyzCFRC3Vec
/* 804E41F8  C0 01 00 08 */	lfs f0, 8(r1)
/* 804E41FC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804E4200  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804E4204  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804E4208  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804E420C  D0 01 00 40 */	stfs f0, 0x40(r1)
lbl_804E4210:
/* 804E4210  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804E4214  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804E4218  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 804E421C  7C 00 00 D0 */	neg r0, r0
/* 804E4220  7C 04 07 34 */	extsh r4, r0
/* 804E4224  4B B2 81 B9 */	bl mDoMtx_YrotS__FPA4_fs
/* 804E4228  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804E422C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804E4230  38 81 00 38 */	addi r4, r1, 0x38
/* 804E4234  7C 85 23 78 */	mr r5, r4
/* 804E4238  4B E6 2B 35 */	bl PSMTXMultVec
/* 804E423C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 804E4240  FC 00 02 10 */	fabs f0, f0
/* 804E4244  FC 20 00 18 */	frsp f1, f0
/* 804E4248  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 804E424C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E4250  40 81 00 0C */	ble lbl_804E425C
/* 804E4254  38 60 00 00 */	li r3, 0
/* 804E4258  48 00 00 BC */	b lbl_804E4314
lbl_804E425C:
/* 804E425C  80 7C 5D B4 */	lwz r3, 0x5db4(r28)
/* 804E4260  80 03 05 74 */	lwz r0, 0x574(r3)
/* 804E4264  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 804E4268  41 82 00 38 */	beq lbl_804E42A0
/* 804E426C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804E4270  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804E4274  38 81 00 2C */	addi r4, r1, 0x2c
/* 804E4278  7C 85 23 78 */	mr r5, r4
/* 804E427C  4B E6 2A F1 */	bl PSMTXMultVec
/* 804E4280  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 804E4284  FC 00 02 10 */	fabs f0, f0
/* 804E4288  FC 20 00 18 */	frsp f1, f0
/* 804E428C  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 804E4290  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E4294  40 81 00 0C */	ble lbl_804E42A0
/* 804E4298  38 60 00 00 */	li r3, 0
/* 804E429C  48 00 00 78 */	b lbl_804E4314
lbl_804E42A0:
/* 804E42A0  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 804E42A4  FC 00 02 10 */	fabs f0, f0
/* 804E42A8  FC 20 00 18 */	frsp f1, f0
/* 804E42AC  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 804E42B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E42B4  40 81 00 0C */	ble lbl_804E42C0
/* 804E42B8  38 60 00 00 */	li r3, 0
/* 804E42BC  48 00 00 58 */	b lbl_804E4314
lbl_804E42C0:
/* 804E42C0  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 804E42C4  A8 7D 04 DE */	lha r3, 0x4de(r29)
/* 804E42C8  38 03 80 01 */	addi r0, r3, -32767
/* 804E42CC  7C 04 00 50 */	subf r0, r4, r0
/* 804E42D0  C8 3F 00 B8 */	lfd f1, 0xb8(r31)
/* 804E42D4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804E42D8  90 01 00 4C */	stw r0, 0x4c(r1)
/* 804E42DC  3C 00 43 30 */	lis r0, 0x4330
/* 804E42E0  90 01 00 48 */	stw r0, 0x48(r1)
/* 804E42E4  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 804E42E8  FC 00 08 28 */	fsub f0, f0, f1
/* 804E42EC  FC 00 02 10 */	fabs f0, f0
/* 804E42F0  FC 00 00 1E */	fctiwz f0, f0
/* 804E42F4  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 804E42F8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804E42FC  7C 05 07 34 */	extsh r5, r0
/* 804E4300  38 00 40 00 */	li r0, 0x4000
/* 804E4304  7C 04 FE 70 */	srawi r4, r0, 0x1f
/* 804E4308  54 A3 0F FE */	srwi r3, r5, 0x1f
/* 804E430C  7C 05 00 10 */	subfc r0, r5, r0
/* 804E4310  7C 64 19 14 */	adde r3, r4, r3
lbl_804E4314:
/* 804E4314  39 61 00 70 */	addi r11, r1, 0x70
/* 804E4318  4B E7 DF 0D */	bl _restgpr_28
/* 804E431C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804E4320  7C 08 03 A6 */	mtlr r0
/* 804E4324  38 21 00 70 */	addi r1, r1, 0x70
/* 804E4328  4E 80 00 20 */	blr 

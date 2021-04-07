lbl_80ABEAD8:
/* 80ABEAD8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80ABEADC  7C 08 02 A6 */	mflr r0
/* 80ABEAE0  90 01 00 64 */	stw r0, 0x64(r1)
/* 80ABEAE4  39 61 00 60 */	addi r11, r1, 0x60
/* 80ABEAE8  4B 8A 36 F5 */	bl _savegpr_29
/* 80ABEAEC  7C 7D 1B 78 */	mr r29, r3
/* 80ABEAF0  3C 60 80 AC */	lis r3, m__19daNpcRafrel_Param_c@ha /* 0x80ABF9E0@ha */
/* 80ABEAF4  3B C3 F9 E0 */	addi r30, r3, m__19daNpcRafrel_Param_c@l /* 0x80ABF9E0@l */
/* 80ABEAF8  A8 1D 0E 0E */	lha r0, 0xe0e(r29)
/* 80ABEAFC  2C 00 00 01 */	cmpwi r0, 1
/* 80ABEB00  40 82 00 34 */	bne lbl_80ABEB34
/* 80ABEB04  38 60 00 00 */	li r3, 0
/* 80ABEB08  7C 66 1B 78 */	mr r6, r3
/* 80ABEB0C  7C 65 1B 78 */	mr r5, r3
/* 80ABEB10  7C 64 1B 78 */	mr r4, r3
/* 80ABEB14  38 00 00 03 */	li r0, 3
/* 80ABEB18  7C 09 03 A6 */	mtctr r0
lbl_80ABEB1C:
/* 80ABEB1C  7C FD 1A 14 */	add r7, r29, r3
/* 80ABEB20  B0 C7 09 1A */	sth r6, 0x91a(r7)
/* 80ABEB24  B0 A7 09 1C */	sth r5, 0x91c(r7)
/* 80ABEB28  B0 87 09 1E */	sth r4, 0x91e(r7)
/* 80ABEB2C  38 63 00 06 */	addi r3, r3, 6
/* 80ABEB30  42 00 FF EC */	bdnz lbl_80ABEB1C
lbl_80ABEB34:
/* 80ABEB34  7F A3 EB 78 */	mr r3, r29
/* 80ABEB38  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ABEB3C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80ABEB40  7D 89 03 A6 */	mtctr r12
/* 80ABEB44  4E 80 04 21 */	bctrl 
/* 80ABEB48  7F A3 EB 78 */	mr r3, r29
/* 80ABEB4C  48 00 03 4D */	bl lookat__13daNpcRafrel_cFv
/* 80ABEB50  88 1D 0E 17 */	lbz r0, 0xe17(r29)
/* 80ABEB54  28 00 00 00 */	cmplwi r0, 0
/* 80ABEB58  40 82 00 1C */	bne lbl_80ABEB74
/* 80ABEB5C  C0 1E 03 C8 */	lfs f0, 0x3c8(r30)
/* 80ABEB60  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80ABEB64  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 80ABEB68  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80ABEB6C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80ABEB70  48 00 00 1C */	b lbl_80ABEB8C
lbl_80ABEB74:
/* 80ABEB74  C0 1E 03 C8 */	lfs f0, 0x3c8(r30)
/* 80ABEB78  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80ABEB7C  C0 1E 03 CC */	lfs f0, 0x3cc(r30)
/* 80ABEB80  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80ABEB84  C0 1E 03 D0 */	lfs f0, 0x3d0(r30)
/* 80ABEB88  D0 01 00 44 */	stfs f0, 0x44(r1)
lbl_80ABEB8C:
/* 80ABEB8C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80ABEB90  80 63 00 04 */	lwz r3, 4(r3)
/* 80ABEB94  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80ABEB98  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80ABEB9C  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80ABEBA0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80ABEBA4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80ABEBA8  4B 88 79 09 */	bl PSMTXCopy
/* 80ABEBAC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80ABEBB0  3B E3 D4 70 */	addi r31, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80ABEBB4  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80ABEBB8  D0 1D 08 E4 */	stfs f0, 0x8e4(r29)
/* 80ABEBBC  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80ABEBC0  D0 1D 08 E8 */	stfs f0, 0x8e8(r29)
/* 80ABEBC4  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80ABEBC8  D0 1D 08 EC */	stfs f0, 0x8ec(r29)
/* 80ABEBCC  7F E3 FB 78 */	mr r3, r31
/* 80ABEBD0  38 81 00 3C */	addi r4, r1, 0x3c
/* 80ABEBD4  38 BD 05 38 */	addi r5, r29, 0x538
/* 80ABEBD8  4B 88 81 95 */	bl PSMTXMultVec
/* 80ABEBDC  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 80ABEBE0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80ABEBE4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80ABEBE8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80ABEBEC  38 81 00 3C */	addi r4, r1, 0x3c
/* 80ABEBF0  7C 85 23 78 */	mr r5, r4
/* 80ABEBF4  4B 88 81 79 */	bl PSMTXMultVec
/* 80ABEBF8  38 7D 08 E4 */	addi r3, r29, 0x8e4
/* 80ABEBFC  38 81 00 3C */	addi r4, r1, 0x3c
/* 80ABEC00  4B 7B 20 75 */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80ABEC04  B0 7D 09 02 */	sth r3, 0x902(r29)
/* 80ABEC08  38 7D 08 E4 */	addi r3, r29, 0x8e4
/* 80ABEC0C  38 81 00 3C */	addi r4, r1, 0x3c
/* 80ABEC10  4B 7B 1F F5 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80ABEC14  B0 7D 09 04 */	sth r3, 0x904(r29)
/* 80ABEC18  80 9D 0C 10 */	lwz r4, 0xc10(r29)
/* 80ABEC1C  28 04 00 00 */	cmplwi r4, 0
/* 80ABEC20  41 82 01 70 */	beq lbl_80ABED90
/* 80ABEC24  38 61 00 18 */	addi r3, r1, 0x18
/* 80ABEC28  38 BD 05 38 */	addi r5, r29, 0x538
/* 80ABEC2C  4B 7A 7F 09 */	bl __mi__4cXyzCFRC3Vec
/* 80ABEC30  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80ABEC34  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80ABEC38  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80ABEC3C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80ABEC40  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80ABEC44  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80ABEC48  A8 7D 09 28 */	lha r3, 0x928(r29)
/* 80ABEC4C  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80ABEC50  7C 03 02 14 */	add r0, r3, r0
/* 80ABEC54  7C 00 00 D0 */	neg r0, r0
/* 80ABEC58  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 80ABEC5C  4B 7A 8A 19 */	bl cM_atan2s__Fff
/* 80ABEC60  A8 1D 08 FE */	lha r0, 0x8fe(r29)
/* 80ABEC64  7C 00 1A 14 */	add r0, r0, r3
/* 80ABEC68  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 80ABEC6C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80ABEC70  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80ABEC74  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 80ABEC78  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80ABEC7C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80ABEC80  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80ABEC84  38 61 00 0C */	addi r3, r1, 0xc
/* 80ABEC88  4B 88 84 B1 */	bl PSVECSquareMag
/* 80ABEC8C  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 80ABEC90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80ABEC94  40 81 00 58 */	ble lbl_80ABECEC
/* 80ABEC98  FC 00 08 34 */	frsqrte f0, f1
/* 80ABEC9C  C8 9E 03 90 */	lfd f4, 0x390(r30)
/* 80ABECA0  FC 44 00 32 */	fmul f2, f4, f0
/* 80ABECA4  C8 7E 03 98 */	lfd f3, 0x398(r30)
/* 80ABECA8  FC 00 00 32 */	fmul f0, f0, f0
/* 80ABECAC  FC 01 00 32 */	fmul f0, f1, f0
/* 80ABECB0  FC 03 00 28 */	fsub f0, f3, f0
/* 80ABECB4  FC 02 00 32 */	fmul f0, f2, f0
/* 80ABECB8  FC 44 00 32 */	fmul f2, f4, f0
/* 80ABECBC  FC 00 00 32 */	fmul f0, f0, f0
/* 80ABECC0  FC 01 00 32 */	fmul f0, f1, f0
/* 80ABECC4  FC 03 00 28 */	fsub f0, f3, f0
/* 80ABECC8  FC 02 00 32 */	fmul f0, f2, f0
/* 80ABECCC  FC 44 00 32 */	fmul f2, f4, f0
/* 80ABECD0  FC 00 00 32 */	fmul f0, f0, f0
/* 80ABECD4  FC 01 00 32 */	fmul f0, f1, f0
/* 80ABECD8  FC 03 00 28 */	fsub f0, f3, f0
/* 80ABECDC  FC 02 00 32 */	fmul f0, f2, f0
/* 80ABECE0  FC 41 00 32 */	fmul f2, f1, f0
/* 80ABECE4  FC 40 10 18 */	frsp f2, f2
/* 80ABECE8  48 00 00 90 */	b lbl_80ABED78
lbl_80ABECEC:
/* 80ABECEC  C8 1E 03 A0 */	lfd f0, 0x3a0(r30)
/* 80ABECF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80ABECF4  40 80 00 10 */	bge lbl_80ABED04
/* 80ABECF8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80ABECFC  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80ABED00  48 00 00 78 */	b lbl_80ABED78
lbl_80ABED04:
/* 80ABED04  D0 21 00 08 */	stfs f1, 8(r1)
/* 80ABED08  80 81 00 08 */	lwz r4, 8(r1)
/* 80ABED0C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80ABED10  3C 00 7F 80 */	lis r0, 0x7f80
/* 80ABED14  7C 03 00 00 */	cmpw r3, r0
/* 80ABED18  41 82 00 14 */	beq lbl_80ABED2C
/* 80ABED1C  40 80 00 40 */	bge lbl_80ABED5C
/* 80ABED20  2C 03 00 00 */	cmpwi r3, 0
/* 80ABED24  41 82 00 20 */	beq lbl_80ABED44
/* 80ABED28  48 00 00 34 */	b lbl_80ABED5C
lbl_80ABED2C:
/* 80ABED2C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80ABED30  41 82 00 0C */	beq lbl_80ABED3C
/* 80ABED34  38 00 00 01 */	li r0, 1
/* 80ABED38  48 00 00 28 */	b lbl_80ABED60
lbl_80ABED3C:
/* 80ABED3C  38 00 00 02 */	li r0, 2
/* 80ABED40  48 00 00 20 */	b lbl_80ABED60
lbl_80ABED44:
/* 80ABED44  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80ABED48  41 82 00 0C */	beq lbl_80ABED54
/* 80ABED4C  38 00 00 05 */	li r0, 5
/* 80ABED50  48 00 00 10 */	b lbl_80ABED60
lbl_80ABED54:
/* 80ABED54  38 00 00 03 */	li r0, 3
/* 80ABED58  48 00 00 08 */	b lbl_80ABED60
lbl_80ABED5C:
/* 80ABED5C  38 00 00 04 */	li r0, 4
lbl_80ABED60:
/* 80ABED60  2C 00 00 01 */	cmpwi r0, 1
/* 80ABED64  40 82 00 10 */	bne lbl_80ABED74
/* 80ABED68  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80ABED6C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80ABED70  48 00 00 08 */	b lbl_80ABED78
lbl_80ABED74:
/* 80ABED74  FC 40 08 90 */	fmr f2, f1
lbl_80ABED78:
/* 80ABED78  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80ABED7C  4B 7A 88 F9 */	bl cM_atan2s__Fff
/* 80ABED80  A8 1D 09 02 */	lha r0, 0x902(r29)
/* 80ABED84  7C 03 00 50 */	subf r0, r3, r0
/* 80ABED88  B0 1D 08 FC */	sth r0, 0x8fc(r29)
/* 80ABED8C  48 00 00 10 */	b lbl_80ABED9C
lbl_80ABED90:
/* 80ABED90  38 00 00 00 */	li r0, 0
/* 80ABED94  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 80ABED98  B0 1D 08 FC */	sth r0, 0x8fc(r29)
lbl_80ABED9C:
/* 80ABED9C  88 1D 0E 17 */	lbz r0, 0xe17(r29)
/* 80ABEDA0  28 00 00 01 */	cmplwi r0, 1
/* 80ABEDA4  40 82 00 28 */	bne lbl_80ABEDCC
/* 80ABEDA8  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80ABEDAC  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 80ABEDB0  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80ABEDB4  EC 21 00 2A */	fadds f1, f1, f0
/* 80ABEDB8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80ABEDBC  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 80ABEDC0  D0 3D 05 54 */	stfs f1, 0x554(r29)
/* 80ABEDC4  D0 5D 05 58 */	stfs f2, 0x558(r29)
/* 80ABEDC8  48 00 00 24 */	b lbl_80ABEDEC
lbl_80ABEDCC:
/* 80ABEDCC  C0 5D 08 EC */	lfs f2, 0x8ec(r29)
/* 80ABEDD0  C0 3D 08 E8 */	lfs f1, 0x8e8(r29)
/* 80ABEDD4  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80ABEDD8  EC 21 00 2A */	fadds f1, f1, f0
/* 80ABEDDC  C0 1D 08 E4 */	lfs f0, 0x8e4(r29)
/* 80ABEDE0  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 80ABEDE4  D0 3D 05 54 */	stfs f1, 0x554(r29)
/* 80ABEDE8  D0 5D 05 58 */	stfs f2, 0x558(r29)
lbl_80ABEDEC:
/* 80ABEDEC  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80ABEDF0  80 63 00 04 */	lwz r3, 4(r3)
/* 80ABEDF4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80ABEDF8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80ABEDFC  38 63 00 60 */	addi r3, r3, 0x60
/* 80ABEE00  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80ABEE04  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80ABEE08  4B 88 76 A9 */	bl PSMTXCopy
/* 80ABEE0C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80ABEE10  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80ABEE14  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80ABEE18  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80ABEE1C  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80ABEE20  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80ABEE24  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80ABEE28  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80ABEE2C  38 7D 0D C8 */	addi r3, r29, 0xdc8
/* 80ABEE30  38 81 00 24 */	addi r4, r1, 0x24
/* 80ABEE34  4B 7B 03 A9 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80ABEE38  38 7D 0D C8 */	addi r3, r29, 0xdc8
/* 80ABEE3C  38 9E 00 00 */	addi r4, r30, 0
/* 80ABEE40  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 80ABEE44  4B 7B 03 B5 */	bl SetH__8cM3dGCylFf
/* 80ABEE48  38 7D 0D C8 */	addi r3, r29, 0xdc8
/* 80ABEE4C  88 1D 0E 17 */	lbz r0, 0xe17(r29)
/* 80ABEE50  28 00 00 00 */	cmplwi r0, 0
/* 80ABEE54  40 82 00 0C */	bne lbl_80ABEE60
/* 80ABEE58  C0 3E 03 D4 */	lfs f1, 0x3d4(r30)
/* 80ABEE5C  48 00 00 0C */	b lbl_80ABEE68
lbl_80ABEE60:
/* 80ABEE60  38 9E 00 00 */	addi r4, r30, 0
/* 80ABEE64  C0 24 00 1C */	lfs f1, 0x1c(r4)
lbl_80ABEE68:
/* 80ABEE68  4B 7B 03 99 */	bl SetR__8cM3dGCylFf
/* 80ABEE6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80ABEE70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80ABEE74  38 63 23 3C */	addi r3, r3, 0x233c
/* 80ABEE78  38 9D 0C A4 */	addi r4, r29, 0xca4
/* 80ABEE7C  4B 7A 5D 2D */	bl Set__4cCcSFP8cCcD_Obj
/* 80ABEE80  39 61 00 60 */	addi r11, r1, 0x60
/* 80ABEE84  4B 8A 33 A5 */	bl _restgpr_29
/* 80ABEE88  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80ABEE8C  7C 08 03 A6 */	mtlr r0
/* 80ABEE90  38 21 00 60 */	addi r1, r1, 0x60
/* 80ABEE94  4E 80 00 20 */	blr 

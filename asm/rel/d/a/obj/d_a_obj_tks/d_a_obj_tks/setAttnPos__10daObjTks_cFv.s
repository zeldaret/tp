lbl_80D119BC:
/* 80D119BC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80D119C0  7C 08 02 A6 */	mflr r0
/* 80D119C4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80D119C8  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80D119CC  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80D119D0  7C 7E 1B 78 */	mr r30, r3
/* 80D119D4  3C 60 80 D1 */	lis r3, m__16daObjTks_Param_c@ha /* 0x80D1273C@ha */
/* 80D119D8  3B E3 27 3C */	addi r31, r3, m__16daObjTks_Param_c@l /* 0x80D1273C@l */
/* 80D119DC  A8 1E 0D DC */	lha r0, 0xddc(r30)
/* 80D119E0  2C 00 00 01 */	cmpwi r0, 1
/* 80D119E4  40 82 00 34 */	bne lbl_80D11A18
/* 80D119E8  38 60 00 00 */	li r3, 0
/* 80D119EC  7C 66 1B 78 */	mr r6, r3
/* 80D119F0  7C 65 1B 78 */	mr r5, r3
/* 80D119F4  7C 64 1B 78 */	mr r4, r3
/* 80D119F8  38 00 00 03 */	li r0, 3
/* 80D119FC  7C 09 03 A6 */	mtctr r0
lbl_80D11A00:
/* 80D11A00  7C FE 1A 14 */	add r7, r30, r3
/* 80D11A04  B0 C7 09 1A */	sth r6, 0x91a(r7)
/* 80D11A08  B0 A7 09 1C */	sth r5, 0x91c(r7)
/* 80D11A0C  B0 87 09 1E */	sth r4, 0x91e(r7)
/* 80D11A10  38 63 00 06 */	addi r3, r3, 6
/* 80D11A14  42 00 FF EC */	bdnz lbl_80D11A00
lbl_80D11A18:
/* 80D11A18  7F C3 F3 78 */	mr r3, r30
/* 80D11A1C  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80D11A20  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80D11A24  7D 89 03 A6 */	mtctr r12
/* 80D11A28  4E 80 04 21 */	bctrl 
/* 80D11A2C  7F C3 F3 78 */	mr r3, r30
/* 80D11A30  48 00 02 85 */	bl lookat__10daObjTks_cFv
/* 80D11A34  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80D11A38  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80D11A3C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80D11A40  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80D11A44  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80D11A48  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80D11A4C  80 63 00 04 */	lwz r3, 4(r3)
/* 80D11A50  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80D11A54  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80D11A58  38 63 03 30 */	addi r3, r3, 0x330
/* 80D11A5C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D11A60  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D11A64  4B 63 4A 4D */	bl PSMTXCopy
/* 80D11A68  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D11A6C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D11A70  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80D11A74  D0 1E 08 E4 */	stfs f0, 0x8e4(r30)
/* 80D11A78  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80D11A7C  D0 1E 08 E8 */	stfs f0, 0x8e8(r30)
/* 80D11A80  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80D11A84  D0 1E 08 EC */	stfs f0, 0x8ec(r30)
/* 80D11A88  38 81 00 30 */	addi r4, r1, 0x30
/* 80D11A8C  38 BE 05 38 */	addi r5, r30, 0x538
/* 80D11A90  4B 63 52 DD */	bl PSMTXMultVec
/* 80D11A94  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80D11A98  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80D11A9C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D11AA0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D11AA4  38 81 00 30 */	addi r4, r1, 0x30
/* 80D11AA8  7C 85 23 78 */	mr r5, r4
/* 80D11AAC  4B 63 52 C1 */	bl PSMTXMultVec
/* 80D11AB0  38 7E 08 E4 */	addi r3, r30, 0x8e4
/* 80D11AB4  38 81 00 30 */	addi r4, r1, 0x30
/* 80D11AB8  4B 55 F1 BD */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80D11ABC  B0 7E 09 02 */	sth r3, 0x902(r30)
/* 80D11AC0  38 7E 08 E4 */	addi r3, r30, 0x8e4
/* 80D11AC4  38 81 00 30 */	addi r4, r1, 0x30
/* 80D11AC8  4B 55 F1 3D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80D11ACC  B0 7E 09 04 */	sth r3, 0x904(r30)
/* 80D11AD0  80 9E 0C 0C */	lwz r4, 0xc0c(r30)
/* 80D11AD4  28 04 00 00 */	cmplwi r4, 0
/* 80D11AD8  41 82 01 6C */	beq lbl_80D11C44
/* 80D11ADC  38 61 00 18 */	addi r3, r1, 0x18
/* 80D11AE0  38 BE 05 38 */	addi r5, r30, 0x538
/* 80D11AE4  4B 55 50 51 */	bl __mi__4cXyzCFRC3Vec
/* 80D11AE8  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80D11AEC  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80D11AF0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80D11AF4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80D11AF8  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80D11AFC  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80D11B00  A8 7E 09 28 */	lha r3, 0x928(r30)
/* 80D11B04  A8 1E 08 F2 */	lha r0, 0x8f2(r30)
/* 80D11B08  7C 03 02 14 */	add r0, r3, r0
/* 80D11B0C  7C 00 00 D0 */	neg r0, r0
/* 80D11B10  B0 1E 08 FE */	sth r0, 0x8fe(r30)
/* 80D11B14  4B 55 5B 61 */	bl cM_atan2s__Fff
/* 80D11B18  A8 1E 08 FE */	lha r0, 0x8fe(r30)
/* 80D11B1C  7C 00 1A 14 */	add r0, r0, r3
/* 80D11B20  B0 1E 08 FE */	sth r0, 0x8fe(r30)
/* 80D11B24  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80D11B28  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D11B2C  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80D11B30  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D11B34  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80D11B38  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80D11B3C  38 61 00 0C */	addi r3, r1, 0xc
/* 80D11B40  4B 63 55 F9 */	bl PSVECSquareMag
/* 80D11B44  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80D11B48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D11B4C  40 81 00 58 */	ble lbl_80D11BA4
/* 80D11B50  FC 00 08 34 */	frsqrte f0, f1
/* 80D11B54  C8 9F 01 70 */	lfd f4, 0x170(r31)
/* 80D11B58  FC 44 00 32 */	fmul f2, f4, f0
/* 80D11B5C  C8 7F 01 78 */	lfd f3, 0x178(r31)
/* 80D11B60  FC 00 00 32 */	fmul f0, f0, f0
/* 80D11B64  FC 01 00 32 */	fmul f0, f1, f0
/* 80D11B68  FC 03 00 28 */	fsub f0, f3, f0
/* 80D11B6C  FC 02 00 32 */	fmul f0, f2, f0
/* 80D11B70  FC 44 00 32 */	fmul f2, f4, f0
/* 80D11B74  FC 00 00 32 */	fmul f0, f0, f0
/* 80D11B78  FC 01 00 32 */	fmul f0, f1, f0
/* 80D11B7C  FC 03 00 28 */	fsub f0, f3, f0
/* 80D11B80  FC 02 00 32 */	fmul f0, f2, f0
/* 80D11B84  FC 44 00 32 */	fmul f2, f4, f0
/* 80D11B88  FC 00 00 32 */	fmul f0, f0, f0
/* 80D11B8C  FC 01 00 32 */	fmul f0, f1, f0
/* 80D11B90  FC 03 00 28 */	fsub f0, f3, f0
/* 80D11B94  FC 02 00 32 */	fmul f0, f2, f0
/* 80D11B98  FC 41 00 32 */	fmul f2, f1, f0
/* 80D11B9C  FC 40 10 18 */	frsp f2, f2
/* 80D11BA0  48 00 00 90 */	b lbl_80D11C30
lbl_80D11BA4:
/* 80D11BA4  C8 1F 01 80 */	lfd f0, 0x180(r31)
/* 80D11BA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D11BAC  40 80 00 10 */	bge lbl_80D11BBC
/* 80D11BB0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D11BB4  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80D11BB8  48 00 00 78 */	b lbl_80D11C30
lbl_80D11BBC:
/* 80D11BBC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80D11BC0  80 81 00 08 */	lwz r4, 8(r1)
/* 80D11BC4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D11BC8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D11BCC  7C 03 00 00 */	cmpw r3, r0
/* 80D11BD0  41 82 00 14 */	beq lbl_80D11BE4
/* 80D11BD4  40 80 00 40 */	bge lbl_80D11C14
/* 80D11BD8  2C 03 00 00 */	cmpwi r3, 0
/* 80D11BDC  41 82 00 20 */	beq lbl_80D11BFC
/* 80D11BE0  48 00 00 34 */	b lbl_80D11C14
lbl_80D11BE4:
/* 80D11BE4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D11BE8  41 82 00 0C */	beq lbl_80D11BF4
/* 80D11BEC  38 00 00 01 */	li r0, 1
/* 80D11BF0  48 00 00 28 */	b lbl_80D11C18
lbl_80D11BF4:
/* 80D11BF4  38 00 00 02 */	li r0, 2
/* 80D11BF8  48 00 00 20 */	b lbl_80D11C18
lbl_80D11BFC:
/* 80D11BFC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D11C00  41 82 00 0C */	beq lbl_80D11C0C
/* 80D11C04  38 00 00 05 */	li r0, 5
/* 80D11C08  48 00 00 10 */	b lbl_80D11C18
lbl_80D11C0C:
/* 80D11C0C  38 00 00 03 */	li r0, 3
/* 80D11C10  48 00 00 08 */	b lbl_80D11C18
lbl_80D11C14:
/* 80D11C14  38 00 00 04 */	li r0, 4
lbl_80D11C18:
/* 80D11C18  2C 00 00 01 */	cmpwi r0, 1
/* 80D11C1C  40 82 00 10 */	bne lbl_80D11C2C
/* 80D11C20  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D11C24  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80D11C28  48 00 00 08 */	b lbl_80D11C30
lbl_80D11C2C:
/* 80D11C2C  FC 40 08 90 */	fmr f2, f1
lbl_80D11C30:
/* 80D11C30  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80D11C34  4B 55 5A 41 */	bl cM_atan2s__Fff
/* 80D11C38  7C 03 00 D0 */	neg r0, r3
/* 80D11C3C  B0 1E 08 FC */	sth r0, 0x8fc(r30)
/* 80D11C40  48 00 00 10 */	b lbl_80D11C50
lbl_80D11C44:
/* 80D11C44  38 00 00 00 */	li r0, 0
/* 80D11C48  B0 1E 08 FE */	sth r0, 0x8fe(r30)
/* 80D11C4C  B0 1E 08 FC */	sth r0, 0x8fc(r30)
lbl_80D11C50:
/* 80D11C50  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80D11C54  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80D11C58  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80D11C5C  EC 21 00 2A */	fadds f1, f1, f0
/* 80D11C60  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80D11C64  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80D11C68  D0 3E 05 54 */	stfs f1, 0x554(r30)
/* 80D11C6C  D0 5E 05 58 */	stfs f2, 0x558(r30)
/* 80D11C70  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80D11C74  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80D11C78  40 82 00 24 */	bne lbl_80D11C9C
/* 80D11C7C  38 7E 0D A0 */	addi r3, r30, 0xda0
/* 80D11C80  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80D11C84  4B 55 D5 59 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80D11C88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D11C8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D11C90  38 63 23 3C */	addi r3, r3, 0x233c
/* 80D11C94  38 9E 0C 7C */	addi r4, r30, 0xc7c
/* 80D11C98  4B 55 2F 11 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80D11C9C:
/* 80D11C9C  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80D11CA0  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80D11CA4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80D11CA8  7C 08 03 A6 */	mtlr r0
/* 80D11CAC  38 21 00 50 */	addi r1, r1, 0x50
/* 80D11CB0  4E 80 00 20 */	blr 

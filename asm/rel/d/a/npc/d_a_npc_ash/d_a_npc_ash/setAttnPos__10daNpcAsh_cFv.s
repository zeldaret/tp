lbl_8095C5C4:
/* 8095C5C4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8095C5C8  7C 08 02 A6 */	mflr r0
/* 8095C5CC  90 01 00 64 */	stw r0, 0x64(r1)
/* 8095C5D0  39 61 00 60 */	addi r11, r1, 0x60
/* 8095C5D4  4B A0 5C 09 */	bl _savegpr_29
/* 8095C5D8  7C 7D 1B 78 */	mr r29, r3
/* 8095C5DC  3C 60 80 96 */	lis r3, m__16daNpcAsh_Param_c@ha /* 0x8095D640@ha */
/* 8095C5E0  3B C3 D6 40 */	addi r30, r3, m__16daNpcAsh_Param_c@l /* 0x8095D640@l */
/* 8095C5E4  A8 1D 0F 5A */	lha r0, 0xf5a(r29)
/* 8095C5E8  2C 00 00 01 */	cmpwi r0, 1
/* 8095C5EC  40 82 00 34 */	bne lbl_8095C620
/* 8095C5F0  38 60 00 00 */	li r3, 0
/* 8095C5F4  7C 66 1B 78 */	mr r6, r3
/* 8095C5F8  7C 65 1B 78 */	mr r5, r3
/* 8095C5FC  7C 64 1B 78 */	mr r4, r3
/* 8095C600  38 00 00 03 */	li r0, 3
/* 8095C604  7C 09 03 A6 */	mtctr r0
lbl_8095C608:
/* 8095C608  7C FD 1A 14 */	add r7, r29, r3
/* 8095C60C  B0 C7 09 1A */	sth r6, 0x91a(r7)
/* 8095C610  B0 A7 09 1C */	sth r5, 0x91c(r7)
/* 8095C614  B0 87 09 1E */	sth r4, 0x91e(r7)
/* 8095C618  38 63 00 06 */	addi r3, r3, 6
/* 8095C61C  42 00 FF EC */	bdnz lbl_8095C608
lbl_8095C620:
/* 8095C620  7F A3 EB 78 */	mr r3, r29
/* 8095C624  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 8095C628  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8095C62C  7D 89 03 A6 */	mtctr r12
/* 8095C630  4E 80 04 21 */	bctrl 
/* 8095C634  7F A3 EB 78 */	mr r3, r29
/* 8095C638  48 00 03 85 */	bl lookat__10daNpcAsh_cFv
/* 8095C63C  C0 1E 02 A8 */	lfs f0, 0x2a8(r30)
/* 8095C640  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8095C644  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8095C648  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 8095C64C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8095C650  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 8095C654  80 63 00 04 */	lwz r3, 4(r3)
/* 8095C658  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8095C65C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8095C660  38 63 00 C0 */	addi r3, r3, 0xc0
/* 8095C664  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8095C668  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8095C66C  4B 9E 9E 45 */	bl PSMTXCopy
/* 8095C670  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8095C674  3B E3 D4 70 */	addi r31, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8095C678  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8095C67C  D0 1D 08 E4 */	stfs f0, 0x8e4(r29)
/* 8095C680  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8095C684  D0 1D 08 E8 */	stfs f0, 0x8e8(r29)
/* 8095C688  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8095C68C  D0 1D 08 EC */	stfs f0, 0x8ec(r29)
/* 8095C690  7F E3 FB 78 */	mr r3, r31
/* 8095C694  38 81 00 3C */	addi r4, r1, 0x3c
/* 8095C698  38 BD 05 38 */	addi r5, r29, 0x538
/* 8095C69C  4B 9E A6 D1 */	bl PSMTXMultVec
/* 8095C6A0  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 8095C6A4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8095C6A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8095C6AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8095C6B0  38 81 00 3C */	addi r4, r1, 0x3c
/* 8095C6B4  7C 85 23 78 */	mr r5, r4
/* 8095C6B8  4B 9E A6 B5 */	bl PSMTXMultVec
/* 8095C6BC  38 7D 08 E4 */	addi r3, r29, 0x8e4
/* 8095C6C0  38 81 00 3C */	addi r4, r1, 0x3c
/* 8095C6C4  4B 91 45 B1 */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 8095C6C8  B0 7D 09 02 */	sth r3, 0x902(r29)
/* 8095C6CC  38 7D 08 E4 */	addi r3, r29, 0x8e4
/* 8095C6D0  38 81 00 3C */	addi r4, r1, 0x3c
/* 8095C6D4  4B 91 45 31 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8095C6D8  B0 7D 09 04 */	sth r3, 0x904(r29)
/* 8095C6DC  80 9D 0C 14 */	lwz r4, 0xc14(r29)
/* 8095C6E0  28 04 00 00 */	cmplwi r4, 0
/* 8095C6E4  41 82 01 7C */	beq lbl_8095C860
/* 8095C6E8  38 61 00 18 */	addi r3, r1, 0x18
/* 8095C6EC  38 BD 05 38 */	addi r5, r29, 0x538
/* 8095C6F0  4B 90 A4 45 */	bl __mi__4cXyzCFRC3Vec
/* 8095C6F4  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8095C6F8  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8095C6FC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8095C700  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8095C704  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 8095C708  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 8095C70C  A8 7D 09 28 */	lha r3, 0x928(r29)
/* 8095C710  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 8095C714  7C 03 02 14 */	add r0, r3, r0
/* 8095C718  7C 00 00 D0 */	neg r0, r0
/* 8095C71C  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 8095C720  4B 90 AF 55 */	bl cM_atan2s__Fff
/* 8095C724  A8 1D 08 FE */	lha r0, 0x8fe(r29)
/* 8095C728  7C 00 1A 14 */	add r0, r0, r3
/* 8095C72C  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 8095C730  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8095C734  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8095C738  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 8095C73C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8095C740  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8095C744  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8095C748  38 61 00 0C */	addi r3, r1, 0xc
/* 8095C74C  4B 9E A9 ED */	bl PSVECSquareMag
/* 8095C750  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 8095C754  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8095C758  40 81 00 58 */	ble lbl_8095C7B0
/* 8095C75C  FC 00 08 34 */	frsqrte f0, f1
/* 8095C760  C8 9E 02 68 */	lfd f4, 0x268(r30)
/* 8095C764  FC 44 00 32 */	fmul f2, f4, f0
/* 8095C768  C8 7E 02 70 */	lfd f3, 0x270(r30)
/* 8095C76C  FC 00 00 32 */	fmul f0, f0, f0
/* 8095C770  FC 01 00 32 */	fmul f0, f1, f0
/* 8095C774  FC 03 00 28 */	fsub f0, f3, f0
/* 8095C778  FC 02 00 32 */	fmul f0, f2, f0
/* 8095C77C  FC 44 00 32 */	fmul f2, f4, f0
/* 8095C780  FC 00 00 32 */	fmul f0, f0, f0
/* 8095C784  FC 01 00 32 */	fmul f0, f1, f0
/* 8095C788  FC 03 00 28 */	fsub f0, f3, f0
/* 8095C78C  FC 02 00 32 */	fmul f0, f2, f0
/* 8095C790  FC 44 00 32 */	fmul f2, f4, f0
/* 8095C794  FC 00 00 32 */	fmul f0, f0, f0
/* 8095C798  FC 01 00 32 */	fmul f0, f1, f0
/* 8095C79C  FC 03 00 28 */	fsub f0, f3, f0
/* 8095C7A0  FC 02 00 32 */	fmul f0, f2, f0
/* 8095C7A4  FC 41 00 32 */	fmul f2, f1, f0
/* 8095C7A8  FC 40 10 18 */	frsp f2, f2
/* 8095C7AC  48 00 00 90 */	b lbl_8095C83C
lbl_8095C7B0:
/* 8095C7B0  C8 1E 02 78 */	lfd f0, 0x278(r30)
/* 8095C7B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8095C7B8  40 80 00 10 */	bge lbl_8095C7C8
/* 8095C7BC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8095C7C0  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8095C7C4  48 00 00 78 */	b lbl_8095C83C
lbl_8095C7C8:
/* 8095C7C8  D0 21 00 08 */	stfs f1, 8(r1)
/* 8095C7CC  80 81 00 08 */	lwz r4, 8(r1)
/* 8095C7D0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8095C7D4  3C 00 7F 80 */	lis r0, 0x7f80
/* 8095C7D8  7C 03 00 00 */	cmpw r3, r0
/* 8095C7DC  41 82 00 14 */	beq lbl_8095C7F0
/* 8095C7E0  40 80 00 40 */	bge lbl_8095C820
/* 8095C7E4  2C 03 00 00 */	cmpwi r3, 0
/* 8095C7E8  41 82 00 20 */	beq lbl_8095C808
/* 8095C7EC  48 00 00 34 */	b lbl_8095C820
lbl_8095C7F0:
/* 8095C7F0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8095C7F4  41 82 00 0C */	beq lbl_8095C800
/* 8095C7F8  38 00 00 01 */	li r0, 1
/* 8095C7FC  48 00 00 28 */	b lbl_8095C824
lbl_8095C800:
/* 8095C800  38 00 00 02 */	li r0, 2
/* 8095C804  48 00 00 20 */	b lbl_8095C824
lbl_8095C808:
/* 8095C808  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8095C80C  41 82 00 0C */	beq lbl_8095C818
/* 8095C810  38 00 00 05 */	li r0, 5
/* 8095C814  48 00 00 10 */	b lbl_8095C824
lbl_8095C818:
/* 8095C818  38 00 00 03 */	li r0, 3
/* 8095C81C  48 00 00 08 */	b lbl_8095C824
lbl_8095C820:
/* 8095C820  38 00 00 04 */	li r0, 4
lbl_8095C824:
/* 8095C824  2C 00 00 01 */	cmpwi r0, 1
/* 8095C828  40 82 00 10 */	bne lbl_8095C838
/* 8095C82C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8095C830  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8095C834  48 00 00 08 */	b lbl_8095C83C
lbl_8095C838:
/* 8095C838  FC 40 08 90 */	fmr f2, f1
lbl_8095C83C:
/* 8095C83C  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 8095C840  4B 90 AE 35 */	bl cM_atan2s__Fff
/* 8095C844  7C 03 00 D0 */	neg r0, r3
/* 8095C848  B0 1D 08 FC */	sth r0, 0x8fc(r29)
/* 8095C84C  A8 7D 08 FC */	lha r3, 0x8fc(r29)
/* 8095C850  A8 1D 09 02 */	lha r0, 0x902(r29)
/* 8095C854  7C 03 02 14 */	add r0, r3, r0
/* 8095C858  B0 1D 08 FC */	sth r0, 0x8fc(r29)
/* 8095C85C  48 00 00 10 */	b lbl_8095C86C
lbl_8095C860:
/* 8095C860  38 00 00 00 */	li r0, 0
/* 8095C864  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 8095C868  B0 1D 08 FC */	sth r0, 0x8fc(r29)
lbl_8095C86C:
/* 8095C86C  C0 5D 08 EC */	lfs f2, 0x8ec(r29)
/* 8095C870  C0 3D 08 E8 */	lfs f1, 0x8e8(r29)
/* 8095C874  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8095C878  EC 21 00 2A */	fadds f1, f1, f0
/* 8095C87C  C0 1D 08 E4 */	lfs f0, 0x8e4(r29)
/* 8095C880  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 8095C884  D0 3D 05 54 */	stfs f1, 0x554(r29)
/* 8095C888  D0 5D 05 58 */	stfs f2, 0x558(r29)
/* 8095C88C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 8095C890  80 63 00 04 */	lwz r3, 4(r3)
/* 8095C894  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8095C898  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8095C89C  38 63 00 60 */	addi r3, r3, 0x60
/* 8095C8A0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8095C8A4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8095C8A8  4B 9E 9C 09 */	bl PSMTXCopy
/* 8095C8AC  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8095C8B0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8095C8B4  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8095C8B8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8095C8BC  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8095C8C0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8095C8C4  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8095C8C8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8095C8CC  38 7D 0D DC */	addi r3, r29, 0xddc
/* 8095C8D0  38 81 00 24 */	addi r4, r1, 0x24
/* 8095C8D4  4B 91 29 09 */	bl SetC__8cM3dGCylFRC4cXyz
/* 8095C8D8  38 7D 0D DC */	addi r3, r29, 0xddc
/* 8095C8DC  38 9E 00 00 */	addi r4, r30, 0
/* 8095C8E0  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 8095C8E4  4B 91 29 15 */	bl SetH__8cM3dGCylFf
/* 8095C8E8  38 7D 0D DC */	addi r3, r29, 0xddc
/* 8095C8EC  38 9E 00 00 */	addi r4, r30, 0
/* 8095C8F0  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 8095C8F4  4B 91 29 0D */	bl SetR__8cM3dGCylFf
/* 8095C8F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8095C8FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8095C900  3B E3 23 3C */	addi r31, r3, 0x233c
/* 8095C904  7F E3 FB 78 */	mr r3, r31
/* 8095C908  38 9D 0C B8 */	addi r4, r29, 0xcb8
/* 8095C90C  4B 90 82 9D */	bl Set__4cCcSFP8cCcD_Obj
/* 8095C910  88 1D 0F 60 */	lbz r0, 0xf60(r29)
/* 8095C914  28 00 00 00 */	cmplwi r0, 0
/* 8095C918  40 82 00 8C */	bne lbl_8095C9A4
/* 8095C91C  38 60 01 69 */	li r3, 0x169
/* 8095C920  4B 7F 8D 15 */	bl daNpcF_chkEvtBit__FUl
/* 8095C924  2C 03 00 00 */	cmpwi r3, 0
/* 8095C928  41 82 00 34 */	beq lbl_8095C95C
/* 8095C92C  38 60 01 0A */	li r3, 0x10a
/* 8095C930  4B 7F 8D 05 */	bl daNpcF_chkEvtBit__FUl
/* 8095C934  2C 03 00 00 */	cmpwi r3, 0
/* 8095C938  41 82 00 24 */	beq lbl_8095C95C
/* 8095C93C  38 60 01 0B */	li r3, 0x10b
/* 8095C940  4B 7F 8C F5 */	bl daNpcF_chkEvtBit__FUl
/* 8095C944  2C 03 00 00 */	cmpwi r3, 0
/* 8095C948  41 82 00 14 */	beq lbl_8095C95C
/* 8095C94C  38 60 01 0C */	li r3, 0x10c
/* 8095C950  4B 7F 8C E5 */	bl daNpcF_chkEvtBit__FUl
/* 8095C954  2C 03 00 00 */	cmpwi r3, 0
/* 8095C958  41 82 00 4C */	beq lbl_8095C9A4
lbl_8095C95C:
/* 8095C95C  C0 1E 02 AC */	lfs f0, 0x2ac(r30)
/* 8095C960  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8095C964  C0 1E 02 B0 */	lfs f0, 0x2b0(r30)
/* 8095C968  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8095C96C  C0 1E 02 B4 */	lfs f0, 0x2b4(r30)
/* 8095C970  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8095C974  38 7D 0F 18 */	addi r3, r29, 0xf18
/* 8095C978  38 81 00 24 */	addi r4, r1, 0x24
/* 8095C97C  4B 91 28 61 */	bl SetC__8cM3dGCylFRC4cXyz
/* 8095C980  38 7D 0F 18 */	addi r3, r29, 0xf18
/* 8095C984  C0 3E 02 B8 */	lfs f1, 0x2b8(r30)
/* 8095C988  4B 91 28 71 */	bl SetH__8cM3dGCylFf
/* 8095C98C  38 7D 0F 18 */	addi r3, r29, 0xf18
/* 8095C990  C0 3E 02 BC */	lfs f1, 0x2bc(r30)
/* 8095C994  4B 91 28 6D */	bl SetR__8cM3dGCylFf
/* 8095C998  7F E3 FB 78 */	mr r3, r31
/* 8095C99C  38 9D 0D F4 */	addi r4, r29, 0xdf4
/* 8095C9A0  4B 90 82 09 */	bl Set__4cCcSFP8cCcD_Obj
lbl_8095C9A4:
/* 8095C9A4  39 61 00 60 */	addi r11, r1, 0x60
/* 8095C9A8  4B A0 58 81 */	bl _restgpr_29
/* 8095C9AC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8095C9B0  7C 08 03 A6 */	mtlr r0
/* 8095C9B4  38 21 00 60 */	addi r1, r1, 0x60
/* 8095C9B8  4E 80 00 20 */	blr 

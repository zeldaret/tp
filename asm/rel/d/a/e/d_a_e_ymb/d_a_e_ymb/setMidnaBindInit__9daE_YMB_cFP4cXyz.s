lbl_8081C4EC:
/* 8081C4EC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8081C4F0  7C 08 02 A6 */	mflr r0
/* 8081C4F4  90 01 00 84 */	stw r0, 0x84(r1)
/* 8081C4F8  39 61 00 80 */	addi r11, r1, 0x80
/* 8081C4FC  4B B4 5C D9 */	bl _savegpr_27
/* 8081C500  7C 7C 1B 78 */	mr r28, r3
/* 8081C504  7C 9D 23 78 */	mr r29, r4
/* 8081C508  3C 60 80 82 */	lis r3, lit_3791@ha /* 0x808218AC@ha */
/* 8081C50C  3B C3 18 AC */	addi r30, r3, lit_3791@l /* 0x808218AC@l */
/* 8081C510  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8081C514  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8081C518  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8081C51C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8081C520  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 8081C524  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l /* 0x80451018@l */
/* 8081C528  80 63 00 00 */	lwz r3, 0(r3)
/* 8081C52C  80 63 05 74 */	lwz r3, 0x574(r3)
/* 8081C530  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8081C534  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8081C538  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 8081C53C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8081C540  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8081C544  4B B2 9F 6D */	bl PSMTXCopy
/* 8081C548  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8081C54C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8081C550  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8081C554  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8081C558  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8081C55C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8081C560  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8081C564  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8081C568  38 61 00 30 */	addi r3, r1, 0x30
/* 8081C56C  38 81 00 48 */	addi r4, r1, 0x48
/* 8081C570  7F A5 EB 78 */	mr r5, r29
/* 8081C574  4B A4 A5 C1 */	bl __mi__4cXyzCFRC3Vec
/* 8081C578  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 8081C57C  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 8081C580  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8081C584  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8081C588  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 8081C58C  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 8081C590  4B A4 B0 E5 */	bl cM_atan2s__Fff
/* 8081C594  B0 61 00 2A */	sth r3, 0x2a(r1)
/* 8081C598  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8081C59C  EC 20 00 32 */	fmuls f1, f0, f0
/* 8081C5A0  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8081C5A4  EC 00 00 32 */	fmuls f0, f0, f0
/* 8081C5A8  EC 41 00 2A */	fadds f2, f1, f0
/* 8081C5AC  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8081C5B0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8081C5B4  40 81 00 0C */	ble lbl_8081C5C0
/* 8081C5B8  FC 00 10 34 */	frsqrte f0, f2
/* 8081C5BC  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8081C5C0:
/* 8081C5C0  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 8081C5C4  4B A4 B0 B1 */	bl cM_atan2s__Fff
/* 8081C5C8  7C 03 00 D0 */	neg r0, r3
/* 8081C5CC  B0 01 00 28 */	sth r0, 0x28(r1)
/* 8081C5D0  38 A0 00 00 */	li r5, 0
/* 8081C5D4  B0 A1 00 2C */	sth r5, 0x2c(r1)
/* 8081C5D8  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 8081C5DC  7C 00 07 74 */	extsb r0, r0
/* 8081C5E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8081C5E4  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8081C5E8  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 8081C5EC  90 A1 00 08 */	stw r5, 8(r1)
/* 8081C5F0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8081C5F4  3C 80 80 82 */	lis r4, e_prim_6362@ha /* 0x80821CF8@ha */
/* 8081C5F8  38 04 1C F8 */	addi r0, r4, e_prim_6362@l /* 0x80821CF8@l */
/* 8081C5FC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8081C600  3C 80 80 82 */	lis r4, e_env_6363@ha /* 0x80821CFC@ha */
/* 8081C604  38 04 1C FC */	addi r0, r4, e_env_6363@l /* 0x80821CFC@l */
/* 8081C608  90 01 00 14 */	stw r0, 0x14(r1)
/* 8081C60C  90 A1 00 18 */	stw r5, 0x18(r1)
/* 8081C610  38 80 00 00 */	li r4, 0
/* 8081C614  38 A0 02 9B */	li r5, 0x29b
/* 8081C618  7F A6 EB 78 */	mr r6, r29
/* 8081C61C  38 FC 01 0C */	addi r7, r28, 0x10c
/* 8081C620  39 01 00 28 */	addi r8, r1, 0x28
/* 8081C624  39 21 00 54 */	addi r9, r1, 0x54
/* 8081C628  39 40 00 FF */	li r10, 0xff
/* 8081C62C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8081C630  4B 83 04 61 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8081C634  7C 7B 1B 79 */	or. r27, r3, r3
/* 8081C638  41 82 00 FC */	beq lbl_8081C734
/* 8081C63C  38 61 00 3C */	addi r3, r1, 0x3c
/* 8081C640  4B B2 AA F9 */	bl PSVECSquareMag
/* 8081C644  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8081C648  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081C64C  40 81 00 58 */	ble lbl_8081C6A4
/* 8081C650  FC 00 08 34 */	frsqrte f0, f1
/* 8081C654  C8 9E 00 40 */	lfd f4, 0x40(r30)
/* 8081C658  FC 44 00 32 */	fmul f2, f4, f0
/* 8081C65C  C8 7E 00 48 */	lfd f3, 0x48(r30)
/* 8081C660  FC 00 00 32 */	fmul f0, f0, f0
/* 8081C664  FC 01 00 32 */	fmul f0, f1, f0
/* 8081C668  FC 03 00 28 */	fsub f0, f3, f0
/* 8081C66C  FC 02 00 32 */	fmul f0, f2, f0
/* 8081C670  FC 44 00 32 */	fmul f2, f4, f0
/* 8081C674  FC 00 00 32 */	fmul f0, f0, f0
/* 8081C678  FC 01 00 32 */	fmul f0, f1, f0
/* 8081C67C  FC 03 00 28 */	fsub f0, f3, f0
/* 8081C680  FC 02 00 32 */	fmul f0, f2, f0
/* 8081C684  FC 44 00 32 */	fmul f2, f4, f0
/* 8081C688  FC 00 00 32 */	fmul f0, f0, f0
/* 8081C68C  FC 01 00 32 */	fmul f0, f1, f0
/* 8081C690  FC 03 00 28 */	fsub f0, f3, f0
/* 8081C694  FC 02 00 32 */	fmul f0, f2, f0
/* 8081C698  FC 21 00 32 */	fmul f1, f1, f0
/* 8081C69C  FC 20 08 18 */	frsp f1, f1
/* 8081C6A0  48 00 00 88 */	b lbl_8081C728
lbl_8081C6A4:
/* 8081C6A4  C8 1E 00 50 */	lfd f0, 0x50(r30)
/* 8081C6A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081C6AC  40 80 00 10 */	bge lbl_8081C6BC
/* 8081C6B0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8081C6B4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8081C6B8  48 00 00 70 */	b lbl_8081C728
lbl_8081C6BC:
/* 8081C6BC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8081C6C0  80 81 00 20 */	lwz r4, 0x20(r1)
/* 8081C6C4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8081C6C8  3C 00 7F 80 */	lis r0, 0x7f80
/* 8081C6CC  7C 03 00 00 */	cmpw r3, r0
/* 8081C6D0  41 82 00 14 */	beq lbl_8081C6E4
/* 8081C6D4  40 80 00 40 */	bge lbl_8081C714
/* 8081C6D8  2C 03 00 00 */	cmpwi r3, 0
/* 8081C6DC  41 82 00 20 */	beq lbl_8081C6FC
/* 8081C6E0  48 00 00 34 */	b lbl_8081C714
lbl_8081C6E4:
/* 8081C6E4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8081C6E8  41 82 00 0C */	beq lbl_8081C6F4
/* 8081C6EC  38 00 00 01 */	li r0, 1
/* 8081C6F0  48 00 00 28 */	b lbl_8081C718
lbl_8081C6F4:
/* 8081C6F4  38 00 00 02 */	li r0, 2
/* 8081C6F8  48 00 00 20 */	b lbl_8081C718
lbl_8081C6FC:
/* 8081C6FC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8081C700  41 82 00 0C */	beq lbl_8081C70C
/* 8081C704  38 00 00 05 */	li r0, 5
/* 8081C708  48 00 00 10 */	b lbl_8081C718
lbl_8081C70C:
/* 8081C70C  38 00 00 03 */	li r0, 3
/* 8081C710  48 00 00 08 */	b lbl_8081C718
lbl_8081C714:
/* 8081C714  38 00 00 04 */	li r0, 4
lbl_8081C718:
/* 8081C718  2C 00 00 01 */	cmpwi r0, 1
/* 8081C71C  40 82 00 0C */	bne lbl_8081C728
/* 8081C720  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8081C724  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8081C728:
/* 8081C728  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 8081C72C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8081C730  D0 1B 00 B4 */	stfs f0, 0xb4(r27)
lbl_8081C734:
/* 8081C734  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 8081C738  7C 00 07 74 */	extsb r0, r0
/* 8081C73C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 8081C740  38 A0 00 00 */	li r5, 0
/* 8081C744  90 A1 00 08 */	stw r5, 8(r1)
/* 8081C748  90 01 00 0C */	stw r0, 0xc(r1)
/* 8081C74C  3C 80 80 82 */	lis r4, e_prim_6362@ha /* 0x80821CF8@ha */
/* 8081C750  38 04 1C F8 */	addi r0, r4, e_prim_6362@l /* 0x80821CF8@l */
/* 8081C754  90 01 00 10 */	stw r0, 0x10(r1)
/* 8081C758  3C 80 80 82 */	lis r4, e_env_6363@ha /* 0x80821CFC@ha */
/* 8081C75C  38 04 1C FC */	addi r0, r4, e_env_6363@l /* 0x80821CFC@l */
/* 8081C760  90 01 00 14 */	stw r0, 0x14(r1)
/* 8081C764  90 A1 00 18 */	stw r5, 0x18(r1)
/* 8081C768  38 80 00 00 */	li r4, 0
/* 8081C76C  38 A0 02 9C */	li r5, 0x29c
/* 8081C770  7F A6 EB 78 */	mr r6, r29
/* 8081C774  38 FC 01 0C */	addi r7, r28, 0x10c
/* 8081C778  39 1C 04 E4 */	addi r8, r28, 0x4e4
/* 8081C77C  39 21 00 54 */	addi r9, r1, 0x54
/* 8081C780  39 40 00 FF */	li r10, 0xff
/* 8081C784  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8081C788  4B 83 03 09 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8081C78C  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 8081C790  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 8081C794  90 01 00 24 */	stw r0, 0x24(r1)
/* 8081C798  38 7C 05 C4 */	addi r3, r28, 0x5c4
/* 8081C79C  38 81 00 24 */	addi r4, r1, 0x24
/* 8081C7A0  38 A0 00 00 */	li r5, 0
/* 8081C7A4  38 C0 FF FF */	li r6, -1
/* 8081C7A8  81 9C 05 C4 */	lwz r12, 0x5c4(r28)
/* 8081C7AC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8081C7B0  7D 89 03 A6 */	mtctr r12
/* 8081C7B4  4E 80 04 21 */	bctrl 
/* 8081C7B8  39 61 00 80 */	addi r11, r1, 0x80
/* 8081C7BC  4B B4 5A 65 */	bl _restgpr_27
/* 8081C7C0  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8081C7C4  7C 08 03 A6 */	mtlr r0
/* 8081C7C8  38 21 00 80 */	addi r1, r1, 0x80
/* 8081C7CC  4E 80 00 20 */	blr 

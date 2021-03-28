lbl_8059A670:
/* 8059A670  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059A674  7C 08 02 A6 */	mflr r0
/* 8059A678  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059A67C  39 61 00 20 */	addi r11, r1, 0x20
/* 8059A680  4B DC 7B 54 */	b _savegpr_27
/* 8059A684  7C 7E 1B 78 */	mr r30, r3
/* 8059A688  3C 80 80 5A */	lis r4, l_bmdName@ha
/* 8059A68C  3B E4 B2 C8 */	addi r31, r4, l_bmdName@l
/* 8059A690  4B FF FF 59 */	bl initBaseMtx__11daObjSwPr_cFv
/* 8059A694  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 8059A698  38 03 00 24 */	addi r0, r3, 0x24
/* 8059A69C  90 1E 05 04 */	stw r0, 0x504(r30)
/* 8059A6A0  38 7E 05 74 */	addi r3, r30, 0x574
/* 8059A6A4  38 80 00 FF */	li r4, 0xff
/* 8059A6A8  38 A0 00 FF */	li r5, 0xff
/* 8059A6AC  7F C6 F3 78 */	mr r6, r30
/* 8059A6B0  4B AE 91 B0 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8059A6B4  38 7E 05 B0 */	addi r3, r30, 0x5b0
/* 8059A6B8  38 9F 00 10 */	addi r4, r31, 0x10
/* 8059A6BC  4B AE A1 F8 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 8059A6C0  38 1E 05 74 */	addi r0, r30, 0x574
/* 8059A6C4  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 8059A6C8  88 1E 08 3C */	lbz r0, 0x83c(r30)
/* 8059A6CC  28 00 00 01 */	cmplwi r0, 1
/* 8059A6D0  40 82 00 28 */	bne lbl_8059A6F8
/* 8059A6D4  38 7E 06 EC */	addi r3, r30, 0x6ec
/* 8059A6D8  38 9F 00 10 */	addi r4, r31, 0x10
/* 8059A6DC  4B AE A1 D8 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 8059A6E0  38 1E 05 74 */	addi r0, r30, 0x574
/* 8059A6E4  90 1E 07 30 */	stw r0, 0x730(r30)
/* 8059A6E8  38 00 02 00 */	li r0, 0x200
/* 8059A6EC  90 1E 07 14 */	stw r0, 0x714(r30)
/* 8059A6F0  38 00 00 03 */	li r0, 3
/* 8059A6F4  98 1E 07 A5 */	stb r0, 0x7a5(r30)
lbl_8059A6F8:
/* 8059A6F8  7F C3 F3 78 */	mr r3, r30
/* 8059A6FC  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8059A700  38 9F 00 54 */	addi r4, r31, 0x54
/* 8059A704  C0 44 00 04 */	lfs f2, 4(r4)
/* 8059A708  C0 64 00 08 */	lfs f3, 8(r4)
/* 8059A70C  C0 84 00 0C */	lfs f4, 0xc(r4)
/* 8059A710  C0 A4 00 10 */	lfs f5, 0x10(r4)
/* 8059A714  C0 C4 00 14 */	lfs f6, 0x14(r4)
/* 8059A718  4B A7 FE 30 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 8059A71C  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 8059A720  80 63 00 04 */	lwz r3, 4(r3)
/* 8059A724  83 83 00 54 */	lwz r28, 0x54(r3)
/* 8059A728  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 8059A72C  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 8059A730  B0 1E 08 30 */	sth r0, 0x830(r30)
/* 8059A734  3B 60 00 00 */	li r27, 0
/* 8059A738  3C 60 80 5A */	lis r3, l_joint_name@ha
/* 8059A73C  3B A3 B3 88 */	addi r29, r3, l_joint_name@l
/* 8059A740  48 00 00 28 */	b lbl_8059A768
lbl_8059A744:
/* 8059A744  7F 83 E3 78 */	mr r3, r28
/* 8059A748  7F 64 DB 78 */	mr r4, r27
/* 8059A74C  4B D4 43 AC */	b getName__10JUTNameTabCFUs
/* 8059A750  80 9D 00 00 */	lwz r4, 0(r29)
/* 8059A754  4B DC E2 40 */	b strcmp
/* 8059A758  2C 03 00 00 */	cmpwi r3, 0
/* 8059A75C  40 82 00 08 */	bne lbl_8059A764
/* 8059A760  B3 7E 08 30 */	sth r27, 0x830(r30)
lbl_8059A764:
/* 8059A764  3B 7B 00 01 */	addi r27, r27, 1
lbl_8059A768:
/* 8059A768  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 8059A76C  80 83 00 04 */	lwz r4, 4(r3)
/* 8059A770  A0 64 00 2C */	lhz r3, 0x2c(r4)
/* 8059A774  57 60 04 3E */	clrlwi r0, r27, 0x10
/* 8059A778  7C 00 18 40 */	cmplw r0, r3
/* 8059A77C  41 80 FF C8 */	blt lbl_8059A744
/* 8059A780  80 64 00 28 */	lwz r3, 0x28(r4)
/* 8059A784  A0 1E 08 30 */	lhz r0, 0x830(r30)
/* 8059A788  54 00 10 3A */	slwi r0, r0, 2
/* 8059A78C  7C 83 00 2E */	lwzx r4, r3, r0
/* 8059A790  3C 60 80 5A */	lis r3, nodeCallBack__FP8J3DJointi@ha
/* 8059A794  38 03 A5 18 */	addi r0, r3, nodeCallBack__FP8J3DJointi@l
/* 8059A798  90 04 00 04 */	stw r0, 4(r4)
/* 8059A79C  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 8059A7A0  93 C3 00 14 */	stw r30, 0x14(r3)
/* 8059A7A4  C0 3E 05 3C */	lfs f1, 0x53c(r30)
/* 8059A7A8  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 8059A7AC  EC 01 00 2A */	fadds f0, f1, f0
/* 8059A7B0  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 8059A7B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8059A7B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8059A7BC  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 8059A7C0  3C 80 80 5A */	lis r4, struct_8059B360+0x0@ha
/* 8059A7C4  38 84 B3 60 */	addi r4, r4, struct_8059B360+0x0@l
/* 8059A7C8  38 84 00 19 */	addi r4, r4, 0x19
/* 8059A7CC  4B DC E1 C8 */	b strcmp
/* 8059A7D0  2C 03 00 00 */	cmpwi r3, 0
/* 8059A7D4  40 82 00 18 */	bne lbl_8059A7EC
/* 8059A7D8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8059A7DC  2C 00 00 04 */	cmpwi r0, 4
/* 8059A7E0  40 82 00 0C */	bne lbl_8059A7EC
/* 8059A7E4  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 8059A7E8  D0 1E 05 20 */	stfs f0, 0x520(r30)
lbl_8059A7EC:
/* 8059A7EC  38 60 00 01 */	li r3, 1
/* 8059A7F0  39 61 00 20 */	addi r11, r1, 0x20
/* 8059A7F4  4B DC 7A 2C */	b _restgpr_27
/* 8059A7F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059A7FC  7C 08 03 A6 */	mtlr r0
/* 8059A800  38 21 00 20 */	addi r1, r1, 0x20
/* 8059A804  4E 80 00 20 */	blr 

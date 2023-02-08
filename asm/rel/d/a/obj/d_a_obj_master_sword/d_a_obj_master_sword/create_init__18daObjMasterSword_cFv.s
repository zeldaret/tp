lbl_80C90F6C:
/* 80C90F6C  94 21 FD B0 */	stwu r1, -0x250(r1)
/* 80C90F70  7C 08 02 A6 */	mflr r0
/* 80C90F74  90 01 02 54 */	stw r0, 0x254(r1)
/* 80C90F78  39 61 02 50 */	addi r11, r1, 0x250
/* 80C90F7C  4B 6D 12 59 */	bl _savegpr_27
/* 80C90F80  7C 7C 1B 78 */	mr r28, r3
/* 80C90F84  3C 80 80 C9 */	lis r4, mAttr__18daObjMasterSword_c@ha /* 0x80C91940@ha */
/* 80C90F88  3B E4 19 40 */	addi r31, r4, mAttr__18daObjMasterSword_c@l /* 0x80C91940@l */
/* 80C90F8C  80 83 05 68 */	lwz r4, 0x568(r3)
/* 80C90F90  80 84 00 04 */	lwz r4, 4(r4)
/* 80C90F94  4B 38 95 E5 */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80C90F98  3C 60 80 C9 */	lis r3, data_80C91AD0@ha /* 0x80C91AD0@ha */
/* 80C90F9C  38 83 1A D0 */	addi r4, r3, data_80C91AD0@l /* 0x80C91AD0@l */
/* 80C90FA0  88 04 00 00 */	lbz r0, 0(r4)
/* 80C90FA4  7C 00 07 75 */	extsb. r0, r0
/* 80C90FA8  40 82 00 2C */	bne lbl_80C90FD4
/* 80C90FAC  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80C90FB0  3C 60 80 C9 */	lis r3, data_80C919D0@ha /* 0x80C919D0@ha */
/* 80C90FB4  38 63 19 D0 */	addi r3, r3, data_80C919D0@l /* 0x80C919D0@l */
/* 80C90FB8  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 80C90FBC  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80C90FC0  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 80C90FC4  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80C90FC8  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 80C90FCC  38 00 00 01 */	li r0, 1
/* 80C90FD0  98 04 00 00 */	stb r0, 0(r4)
lbl_80C90FD4:
/* 80C90FD4  38 7C 05 A4 */	addi r3, r28, 0x5a4
/* 80C90FD8  38 80 00 FF */	li r4, 0xff
/* 80C90FDC  38 A0 00 FF */	li r5, 0xff
/* 80C90FE0  7F 86 E3 78 */	mr r6, r28
/* 80C90FE4  4B 3F 28 7D */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C90FE8  38 7C 05 E0 */	addi r3, r28, 0x5e0
/* 80C90FEC  3C 80 80 C9 */	lis r4, data_80C919D0@ha /* 0x80C919D0@ha */
/* 80C90FF0  38 84 19 D0 */	addi r4, r4, data_80C919D0@l /* 0x80C919D0@l */
/* 80C90FF4  4B 3F 38 C1 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80C90FF8  38 1C 05 A4 */	addi r0, r28, 0x5a4
/* 80C90FFC  90 1C 06 24 */	stw r0, 0x624(r28)
/* 80C91000  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80C91004  38 03 00 24 */	addi r0, r3, 0x24
/* 80C91008  90 1C 05 04 */	stw r0, 0x504(r28)
/* 80C9100C  80 7F 00 04 */	lwz r3, 4(r31)
/* 80C91010  80 1F 00 08 */	lwz r0, 8(r31)
/* 80C91014  90 61 00 10 */	stw r3, 0x10(r1)
/* 80C91018  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9101C  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80C91020  90 01 00 18 */	stw r0, 0x18(r1)
/* 80C91024  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80C91028  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C9102C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C91030  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C91034  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80C91038  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C9103C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C91040  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C91044  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80C91048  4B 37 BD 1D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80C9104C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C91050  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C91054  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 80C91058  4B 37 B3 DD */	bl mDoMtx_YrotM__FPA4_fs
/* 80C9105C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C91060  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C91064  80 9C 05 68 */	lwz r4, 0x568(r28)
/* 80C91068  38 84 00 24 */	addi r4, r4, 0x24
/* 80C9106C  4B 6B 54 45 */	bl PSMTXCopy
/* 80C91070  88 1C 04 9A */	lbz r0, 0x49a(r28)
/* 80C91074  60 00 00 30 */	ori r0, r0, 0x30
/* 80C91078  98 1C 04 9A */	stb r0, 0x49a(r28)
/* 80C9107C  80 1C 05 5C */	lwz r0, 0x55c(r28)
/* 80C91080  60 00 00 10 */	ori r0, r0, 0x10
/* 80C91084  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 80C91088  38 00 00 4A */	li r0, 0x4a
/* 80C9108C  98 1C 05 48 */	stb r0, 0x548(r28)
/* 80C91090  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80C91094  D0 1C 05 50 */	stfs f0, 0x550(r28)
/* 80C91098  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80C9109C  D0 1C 05 54 */	stfs f0, 0x554(r28)
/* 80C910A0  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80C910A4  D0 1C 05 58 */	stfs f0, 0x558(r28)
/* 80C910A8  C0 3C 05 54 */	lfs f1, 0x554(r28)
/* 80C910AC  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80C910B0  EC 01 00 2A */	fadds f0, f1, f0
/* 80C910B4  D0 1C 05 54 */	stfs f0, 0x554(r28)
/* 80C910B8  C0 1C 05 50 */	lfs f0, 0x550(r28)
/* 80C910BC  D0 1C 05 38 */	stfs f0, 0x538(r28)
/* 80C910C0  C0 1C 05 54 */	lfs f0, 0x554(r28)
/* 80C910C4  D0 1C 05 3C */	stfs f0, 0x53c(r28)
/* 80C910C8  C0 1C 05 58 */	lfs f0, 0x558(r28)
/* 80C910CC  D0 1C 05 40 */	stfs f0, 0x540(r28)
/* 80C910D0  38 61 00 1C */	addi r3, r1, 0x1c
/* 80C910D4  4B 3E 4D D9 */	bl __ct__12dBgS_AcchCirFv
/* 80C910D8  3B 61 00 5C */	addi r27, r1, 0x5c
/* 80C910DC  7F 63 DB 78 */	mr r3, r27
/* 80C910E0  4B 3E 4F C1 */	bl __ct__9dBgS_AcchFv
/* 80C910E4  3C 60 80 C9 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80C91A88@ha */
/* 80C910E8  38 63 1A 88 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80C91A88@l */
/* 80C910EC  90 61 00 6C */	stw r3, 0x6c(r1)
/* 80C910F0  3B C3 00 0C */	addi r30, r3, 0xc
/* 80C910F4  93 C1 00 70 */	stw r30, 0x70(r1)
/* 80C910F8  3B A3 00 18 */	addi r29, r3, 0x18
/* 80C910FC  93 A1 00 80 */	stw r29, 0x80(r1)
/* 80C91100  38 7B 00 14 */	addi r3, r27, 0x14
/* 80C91104  4B 3E 7D 65 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80C91108  38 61 00 1C */	addi r3, r1, 0x1c
/* 80C9110C  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80C91110  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80C91114  4B 3E 4E 45 */	bl SetWall__12dBgS_AcchCirFff
/* 80C91118  38 00 00 00 */	li r0, 0
/* 80C9111C  90 01 00 08 */	stw r0, 8(r1)
/* 80C91120  7F 63 DB 78 */	mr r3, r27
/* 80C91124  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80C91128  38 BC 04 BC */	addi r5, r28, 0x4bc
/* 80C9112C  7F 86 E3 78 */	mr r6, r28
/* 80C91130  38 E0 00 01 */	li r7, 1
/* 80C91134  39 01 00 1C */	addi r8, r1, 0x1c
/* 80C91138  39 3C 04 F8 */	addi r9, r28, 0x4f8
/* 80C9113C  39 40 00 00 */	li r10, 0
/* 80C91140  4B 3E 51 09 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80C91144  7F 63 DB 78 */	mr r3, r27
/* 80C91148  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C9114C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C91150  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80C91154  4B 3E 59 59 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80C91158  C0 01 00 F4 */	lfs f0, 0xf4(r1)
/* 80C9115C  D0 1C 07 38 */	stfs f0, 0x738(r28)
/* 80C91160  A0 01 01 4C */	lhz r0, 0x14c(r1)
/* 80C91164  B0 1C 07 28 */	sth r0, 0x728(r28)
/* 80C91168  A0 01 01 4E */	lhz r0, 0x14e(r1)
/* 80C9116C  B0 1C 07 2A */	sth r0, 0x72a(r28)
/* 80C91170  80 01 01 50 */	lwz r0, 0x150(r1)
/* 80C91174  90 1C 07 2C */	stw r0, 0x72c(r28)
/* 80C91178  80 01 01 54 */	lwz r0, 0x154(r1)
/* 80C9117C  90 1C 07 30 */	stw r0, 0x730(r28)
/* 80C91180  38 00 00 00 */	li r0, 0
/* 80C91184  90 1C 07 20 */	stw r0, 0x720(r28)
/* 80C91188  80 1C 07 20 */	lwz r0, 0x720(r28)
/* 80C9118C  1C 80 00 18 */	mulli r4, r0, 0x18
/* 80C91190  3C 60 80 C9 */	lis r3, ActionTable__18daObjMasterSword_c@ha /* 0x80C919B8@ha */
/* 80C91194  38 03 19 B8 */	addi r0, r3, ActionTable__18daObjMasterSword_c@l /* 0x80C919B8@l */
/* 80C91198  7C 00 22 14 */	add r0, r0, r4
/* 80C9119C  90 1C 07 1C */	stw r0, 0x71c(r28)
/* 80C911A0  7F 83 E3 78 */	mr r3, r28
/* 80C911A4  81 9C 07 1C */	lwz r12, 0x71c(r28)
/* 80C911A8  4B 6D 0E DD */	bl __ptmf_scall
/* 80C911AC  60 00 00 00 */	nop 
/* 80C911B0  3C 60 80 C9 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80C91A88@ha */
/* 80C911B4  38 03 1A 88 */	addi r0, r3, __vt__12dBgS_ObjAcch@l /* 0x80C91A88@l */
/* 80C911B8  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80C911BC  93 C1 00 70 */	stw r30, 0x70(r1)
/* 80C911C0  93 A1 00 80 */	stw r29, 0x80(r1)
/* 80C911C4  7F 63 DB 78 */	mr r3, r27
/* 80C911C8  38 80 00 00 */	li r4, 0
/* 80C911CC  4B 3E 4D C9 */	bl __dt__9dBgS_AcchFv
/* 80C911D0  3C 60 80 C9 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80C91A7C@ha */
/* 80C911D4  38 03 1A 7C */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80C91A7C@l */
/* 80C911D8  90 01 00 28 */	stw r0, 0x28(r1)
/* 80C911DC  38 61 00 30 */	addi r3, r1, 0x30
/* 80C911E0  38 80 FF FF */	li r4, -1
/* 80C911E4  4B 5D DD 35 */	bl __dt__8cM3dGCirFv
/* 80C911E8  38 61 00 1C */	addi r3, r1, 0x1c
/* 80C911EC  38 80 00 00 */	li r4, 0
/* 80C911F0  4B 5D 6E C1 */	bl __dt__13cBgS_PolyInfoFv
/* 80C911F4  39 61 02 50 */	addi r11, r1, 0x250
/* 80C911F8  4B 6D 10 29 */	bl _restgpr_27
/* 80C911FC  80 01 02 54 */	lwz r0, 0x254(r1)
/* 80C91200  7C 08 03 A6 */	mtlr r0
/* 80C91204  38 21 02 50 */	addi r1, r1, 0x250
/* 80C91208  4E 80 00 20 */	blr 

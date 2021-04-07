lbl_80A3F5A4:
/* 80A3F5A4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A3F5A8  7C 08 02 A6 */	mflr r0
/* 80A3F5AC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A3F5B0  39 61 00 40 */	addi r11, r1, 0x40
/* 80A3F5B4  4B 92 2C 29 */	bl _savegpr_29
/* 80A3F5B8  7C 7E 1B 78 */	mr r30, r3
/* 80A3F5BC  3C 60 80 A4 */	lis r3, mCcDObjData__10daNpc_Kn_c@ha /* 0x80A408C8@ha */
/* 80A3F5C0  3B E3 08 C8 */	addi r31, r3, mCcDObjData__10daNpc_Kn_c@l /* 0x80A408C8@l */
/* 80A3F5C4  A0 1E 0E 2A */	lhz r0, 0xe2a(r30)
/* 80A3F5C8  2C 00 00 02 */	cmpwi r0, 2
/* 80A3F5CC  41 82 00 B0 */	beq lbl_80A3F67C
/* 80A3F5D0  40 80 03 B0 */	bge lbl_80A3F980
/* 80A3F5D4  2C 00 00 00 */	cmpwi r0, 0
/* 80A3F5D8  40 80 00 0C */	bge lbl_80A3F5E4
/* 80A3F5DC  48 00 03 A4 */	b lbl_80A3F980
/* 80A3F5E0  48 00 03 A0 */	b lbl_80A3F980
lbl_80A3F5E4:
/* 80A3F5E4  80 1E 0B 8C */	lwz r0, 0xb8c(r30)
/* 80A3F5E8  2C 00 00 01 */	cmpwi r0, 1
/* 80A3F5EC  41 82 00 24 */	beq lbl_80A3F610
/* 80A3F5F0  83 BE 0B 90 */	lwz r29, 0xb90(r30)
/* 80A3F5F4  38 7E 0B 84 */	addi r3, r30, 0xb84
/* 80A3F5F8  4B 70 62 A1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3F5FC  93 BE 0B 90 */	stw r29, 0xb90(r30)
/* 80A3F600  38 00 00 01 */	li r0, 1
/* 80A3F604  90 1E 0B 8C */	stw r0, 0xb8c(r30)
/* 80A3F608  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A3F60C  D0 1E 0B 9C */	stfs f0, 0xb9c(r30)
lbl_80A3F610:
/* 80A3F610  80 1E 0B B0 */	lwz r0, 0xbb0(r30)
/* 80A3F614  2C 00 00 20 */	cmpwi r0, 0x20
/* 80A3F618  41 82 00 24 */	beq lbl_80A3F63C
/* 80A3F61C  83 BE 0B B4 */	lwz r29, 0xbb4(r30)
/* 80A3F620  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A3F624  4B 70 62 75 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3F628  93 BE 0B B4 */	stw r29, 0xbb4(r30)
/* 80A3F62C  38 00 00 20 */	li r0, 0x20
/* 80A3F630  90 1E 0B B0 */	stw r0, 0xbb0(r30)
/* 80A3F634  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A3F638  D0 1E 0B C0 */	stfs f0, 0xbc0(r30)
lbl_80A3F63C:
/* 80A3F63C  80 1E 0D 14 */	lwz r0, 0xd14(r30)
/* 80A3F640  2C 00 00 01 */	cmpwi r0, 1
/* 80A3F644  41 82 00 28 */	beq lbl_80A3F66C
/* 80A3F648  38 7E 0B DC */	addi r3, r30, 0xbdc
/* 80A3F64C  4B 70 60 B1 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A3F650  38 00 00 00 */	li r0, 0
/* 80A3F654  90 1E 0B FC */	stw r0, 0xbfc(r30)
/* 80A3F658  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A3F65C  D0 1E 0D 28 */	stfs f0, 0xd28(r30)
/* 80A3F660  98 1E 0D 33 */	stb r0, 0xd33(r30)
/* 80A3F664  38 00 00 01 */	li r0, 1
/* 80A3F668  90 1E 0D 14 */	stw r0, 0xd14(r30)
lbl_80A3F66C:
/* 80A3F66C  38 00 00 00 */	li r0, 0
/* 80A3F670  98 1E 0D 33 */	stb r0, 0xd33(r30)
/* 80A3F674  38 00 00 02 */	li r0, 2
/* 80A3F678  B0 1E 0E 2A */	sth r0, 0xe2a(r30)
lbl_80A3F67C:
/* 80A3F67C  38 7E 08 C4 */	addi r3, r30, 0x8c4
/* 80A3F680  4B 64 41 B1 */	bl Move__10dCcD_GSttsFv
/* 80A3F684  88 1E 15 BD */	lbz r0, 0x15bd(r30)
/* 80A3F688  28 00 00 00 */	cmplwi r0, 0
/* 80A3F68C  41 82 00 64 */	beq lbl_80A3F6F0
/* 80A3F690  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A3F694  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A3F698  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80A3F69C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A3F6A0  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80A3F6A4  7D 89 03 A6 */	mtctr r12
/* 80A3F6A8  4E 80 04 21 */	bctrl 
/* 80A3F6AC  28 03 00 00 */	cmplwi r3, 0
/* 80A3F6B0  40 82 02 D0 */	bne lbl_80A3F980
/* 80A3F6B4  38 00 00 02 */	li r0, 2
/* 80A3F6B8  B0 1E 0E 36 */	sth r0, 0xe36(r30)
/* 80A3F6BC  88 1E 15 BD */	lbz r0, 0x15bd(r30)
/* 80A3F6C0  28 00 00 01 */	cmplwi r0, 1
/* 80A3F6C4  40 82 00 10 */	bne lbl_80A3F6D4
/* 80A3F6C8  38 00 02 C4 */	li r0, 0x2c4
/* 80A3F6CC  90 1E 0A B0 */	stw r0, 0xab0(r30)
/* 80A3F6D0  48 00 00 14 */	b lbl_80A3F6E4
lbl_80A3F6D4:
/* 80A3F6D4  28 00 00 02 */	cmplwi r0, 2
/* 80A3F6D8  40 82 00 0C */	bne lbl_80A3F6E4
/* 80A3F6DC  38 00 02 C3 */	li r0, 0x2c3
/* 80A3F6E0  90 1E 0A B0 */	stw r0, 0xab0(r30)
lbl_80A3F6E4:
/* 80A3F6E4  38 00 00 00 */	li r0, 0
/* 80A3F6E8  98 1E 15 BD */	stb r0, 0x15bd(r30)
/* 80A3F6EC  48 00 02 94 */	b lbl_80A3F980
lbl_80A3F6F0:
/* 80A3F6F0  80 7E 04 A4 */	lwz r3, 0x4a4(r30)
/* 80A3F6F4  3C 03 00 01 */	addis r0, r3, 1
/* 80A3F6F8  28 00 FF FF */	cmplwi r0, 0xffff
/* 80A3F6FC  41 82 00 10 */	beq lbl_80A3F70C
/* 80A3F700  4B 5E 1C 59 */	bl fpcEx_SearchByID__FUi
/* 80A3F704  28 03 00 00 */	cmplwi r3, 0
/* 80A3F708  40 82 01 1C */	bne lbl_80A3F824
lbl_80A3F70C:
/* 80A3F70C  80 1E 0B B0 */	lwz r0, 0xbb0(r30)
/* 80A3F710  2C 00 00 19 */	cmpwi r0, 0x19
/* 80A3F714  40 82 00 C0 */	bne lbl_80A3F7D4
/* 80A3F718  80 1E 0B B8 */	lwz r0, 0xbb8(r30)
/* 80A3F71C  2C 00 00 00 */	cmpwi r0, 0
/* 80A3F720  40 82 00 B4 */	bne lbl_80A3F7D4
/* 80A3F724  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80A3F728  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80A3F72C  C0 1F 01 D8 */	lfs f0, 0x1d8(r31)
/* 80A3F730  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A3F734  4C 41 13 82 */	cror 2, 1, 2
/* 80A3F738  40 82 01 68 */	bne lbl_80A3F8A0
/* 80A3F73C  C0 1F 02 20 */	lfs f0, 0x220(r31)
/* 80A3F740  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A3F744  40 80 01 5C */	bge lbl_80A3F8A0
/* 80A3F748  C0 1F 01 DC */	lfs f0, 0x1dc(r31)
/* 80A3F74C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A3F750  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A3F754  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A3F758  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A3F75C  80 63 00 04 */	lwz r3, 4(r3)
/* 80A3F760  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A3F764  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A3F768  38 63 02 70 */	addi r3, r3, 0x270
/* 80A3F76C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A3F770  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A3F774  4B 90 6D 3D */	bl PSMTXCopy
/* 80A3F778  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A3F77C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A3F780  38 81 00 20 */	addi r4, r1, 0x20
/* 80A3F784  7C 85 23 78 */	mr r5, r4
/* 80A3F788  4B 90 75 E5 */	bl PSMTXMultVec
/* 80A3F78C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80A3F790  7C 07 07 74 */	extsb r7, r0
/* 80A3F794  38 00 00 00 */	li r0, 0
/* 80A3F798  90 01 00 08 */	stw r0, 8(r1)
/* 80A3F79C  38 60 02 5B */	li r3, 0x25b
/* 80A3F7A0  28 1E 00 00 */	cmplwi r30, 0
/* 80A3F7A4  41 82 00 0C */	beq lbl_80A3F7B0
/* 80A3F7A8  80 9E 00 04 */	lwz r4, 4(r30)
/* 80A3F7AC  48 00 00 08 */	b lbl_80A3F7B4
lbl_80A3F7B0:
/* 80A3F7B0  38 80 FF FF */	li r4, -1
lbl_80A3F7B4:
/* 80A3F7B4  38 A0 00 00 */	li r5, 0
/* 80A3F7B8  38 C1 00 20 */	addi r6, r1, 0x20
/* 80A3F7BC  39 1E 04 DC */	addi r8, r30, 0x4dc
/* 80A3F7C0  39 20 00 00 */	li r9, 0
/* 80A3F7C4  39 40 FF FF */	li r10, -1
/* 80A3F7C8  4B 5D A7 29 */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80A3F7CC  90 7E 04 A4 */	stw r3, 0x4a4(r30)
/* 80A3F7D0  48 00 00 D0 */	b lbl_80A3F8A0
lbl_80A3F7D4:
/* 80A3F7D4  83 BE 0B B4 */	lwz r29, 0xbb4(r30)
/* 80A3F7D8  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A3F7DC  4B 70 60 BD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3F7E0  93 BE 0B B4 */	stw r29, 0xbb4(r30)
/* 80A3F7E4  38 00 00 19 */	li r0, 0x19
/* 80A3F7E8  90 1E 0B B0 */	stw r0, 0xbb0(r30)
/* 80A3F7EC  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A3F7F0  D0 1E 0B C0 */	stfs f0, 0xbc0(r30)
/* 80A3F7F4  80 1E 0B 8C */	lwz r0, 0xb8c(r30)
/* 80A3F7F8  2C 00 00 01 */	cmpwi r0, 1
/* 80A3F7FC  41 82 00 A4 */	beq lbl_80A3F8A0
/* 80A3F800  83 BE 0B 90 */	lwz r29, 0xb90(r30)
/* 80A3F804  38 7E 0B 84 */	addi r3, r30, 0xb84
/* 80A3F808  4B 70 60 91 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3F80C  93 BE 0B 90 */	stw r29, 0xb90(r30)
/* 80A3F810  38 00 00 01 */	li r0, 1
/* 80A3F814  90 1E 0B 8C */	stw r0, 0xb8c(r30)
/* 80A3F818  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A3F81C  D0 1E 0B 9C */	stfs f0, 0xb9c(r30)
/* 80A3F820  48 00 00 80 */	b lbl_80A3F8A0
lbl_80A3F824:
/* 80A3F824  80 7E 04 A4 */	lwz r3, 0x4a4(r30)
/* 80A3F828  38 81 00 10 */	addi r4, r1, 0x10
/* 80A3F82C  4B 5D A1 91 */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80A3F830  2C 03 00 00 */	cmpwi r3, 0
/* 80A3F834  41 82 00 6C */	beq lbl_80A3F8A0
/* 80A3F838  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80A3F83C  28 04 00 00 */	cmplwi r4, 0
/* 80A3F840  41 82 00 60 */	beq lbl_80A3F8A0
/* 80A3F844  A8 04 00 08 */	lha r0, 8(r4)
/* 80A3F848  2C 00 02 5B */	cmpwi r0, 0x25b
/* 80A3F84C  40 82 00 54 */	bne lbl_80A3F8A0
/* 80A3F850  88 04 07 0C */	lbz r0, 0x70c(r4)
/* 80A3F854  28 00 00 00 */	cmplwi r0, 0
/* 80A3F858  40 82 00 48 */	bne lbl_80A3F8A0
/* 80A3F85C  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80A3F860  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80A3F864  C0 1F 02 24 */	lfs f0, 0x224(r31)
/* 80A3F868  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A3F86C  4C 41 13 82 */	cror 2, 1, 2
/* 80A3F870  40 82 00 30 */	bne lbl_80A3F8A0
/* 80A3F874  C0 1F 02 28 */	lfs f0, 0x228(r31)
/* 80A3F878  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A3F87C  40 80 00 24 */	bge lbl_80A3F8A0
/* 80A3F880  38 00 00 01 */	li r0, 1
/* 80A3F884  98 04 07 0C */	stb r0, 0x70c(r4)
/* 80A3F888  A8 1E 0D AE */	lha r0, 0xdae(r30)
/* 80A3F88C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80A3F890  B0 03 04 DE */	sth r0, 0x4de(r3)
/* 80A3F894  A8 1E 0D AE */	lha r0, 0xdae(r30)
/* 80A3F898  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80A3F89C  B0 03 04 E6 */	sth r0, 0x4e6(r3)
lbl_80A3F8A0:
/* 80A3F8A0  38 7E 11 DC */	addi r3, r30, 0x11dc
/* 80A3F8A4  4B 64 4B BD */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80A3F8A8  28 03 00 00 */	cmplwi r3, 0
/* 80A3F8AC  41 82 00 A0 */	beq lbl_80A3F94C
/* 80A3F8B0  38 7E 12 78 */	addi r3, r30, 0x1278
/* 80A3F8B4  4B 64 3D D5 */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 80A3F8B8  A8 03 00 08 */	lha r0, 8(r3)
/* 80A3F8BC  2C 00 02 5B */	cmpwi r0, 0x25b
/* 80A3F8C0  40 82 00 8C */	bne lbl_80A3F94C
/* 80A3F8C4  38 00 00 0B */	li r0, 0xb
/* 80A3F8C8  B0 1E 0E 36 */	sth r0, 0xe36(r30)
/* 80A3F8CC  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 80A3F8D0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80A3F8D4  4B 83 13 31 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80A3F8D8  7C 64 1B 78 */	mr r4, r3
/* 80A3F8DC  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A3F8E0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A3F8E4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A3F8E8  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 80A3F8EC  C0 03 00 98 */	lfs f0, 0x98(r3)
/* 80A3F8F0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A3F8F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A3F8F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A3F8FC  4B 5C CA E1 */	bl mDoMtx_YrotS__FPA4_fs
/* 80A3F900  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A3F904  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A3F908  38 81 00 14 */	addi r4, r1, 0x14
/* 80A3F90C  38 BE 15 B0 */	addi r5, r30, 0x15b0
/* 80A3F910  4B 90 74 5D */	bl PSMTXMultVec
/* 80A3F914  38 7E 15 B0 */	addi r3, r30, 0x15b0
/* 80A3F918  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80A3F91C  7C 65 1B 78 */	mr r5, r3
/* 80A3F920  4B 90 77 71 */	bl PSVECAdd
/* 80A3F924  38 00 00 01 */	li r0, 1
/* 80A3F928  98 1E 15 BC */	stb r0, 0x15bc(r30)
/* 80A3F92C  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80A3F930  3C 80 00 04 */	lis r4, 0x0004 /* 0x0004000D@ha */
/* 80A3F934  38 84 00 0D */	addi r4, r4, 0x000D /* 0x0004000D@l */
/* 80A3F938  38 A0 00 1E */	li r5, 0x1e
/* 80A3F93C  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 80A3F940  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80A3F944  7D 89 03 A6 */	mtctr r12
/* 80A3F948  4E 80 04 21 */	bctrl 
lbl_80A3F94C:
/* 80A3F94C  7F C3 F3 78 */	mr r3, r30
/* 80A3F950  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A3F954  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A3F958  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A3F95C  4B 5D AD B5 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A3F960  7C 64 1B 78 */	mr r4, r3
/* 80A3F964  38 7E 0D AE */	addi r3, r30, 0xdae
/* 80A3F968  38 A0 00 02 */	li r5, 2
/* 80A3F96C  38 C0 08 00 */	li r6, 0x800
/* 80A3F970  4B 83 0C 99 */	bl cLib_addCalcAngleS2__FPssss
/* 80A3F974  7F C3 F3 78 */	mr r3, r30
/* 80A3F978  A8 9E 0D AE */	lha r4, 0xdae(r30)
/* 80A3F97C  4B FF B1 75 */	bl setAngle__10daNpc_Kn_cFs
lbl_80A3F980:
/* 80A3F980  38 60 00 01 */	li r3, 1
/* 80A3F984  39 61 00 40 */	addi r11, r1, 0x40
/* 80A3F988  4B 92 28 A1 */	bl _restgpr_29
/* 80A3F98C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A3F990  7C 08 03 A6 */	mtlr r0
/* 80A3F994  38 21 00 40 */	addi r1, r1, 0x40
/* 80A3F998  4E 80 00 20 */	blr 

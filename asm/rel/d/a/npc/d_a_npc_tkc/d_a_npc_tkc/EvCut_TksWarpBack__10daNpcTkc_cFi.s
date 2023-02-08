lbl_80B0F5D4:
/* 80B0F5D4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B0F5D8  7C 08 02 A6 */	mflr r0
/* 80B0F5DC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B0F5E0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80B0F5E4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80B0F5E8  39 61 00 30 */	addi r11, r1, 0x30
/* 80B0F5EC  4B 85 2B E9 */	bl _savegpr_27
/* 80B0F5F0  7C 7D 1B 78 */	mr r29, r3
/* 80B0F5F4  7C 9B 23 78 */	mr r27, r4
/* 80B0F5F8  3C 60 80 B1 */	lis r3, m__16daNpcTkc_Param_c@ha /* 0x80B108B4@ha */
/* 80B0F5FC  3B C3 08 B4 */	addi r30, r3, m__16daNpcTkc_Param_c@l /* 0x80B108B4@l */
/* 80B0F600  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B0F604  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B0F608  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 80B0F60C  7F 83 E3 78 */	mr r3, r28
/* 80B0F610  3C A0 80 B1 */	lis r5, d_a_npc_tkc__stringBase0@ha /* 0x80B10A2C@ha */
/* 80B0F614  38 A5 0A 2C */	addi r5, r5, d_a_npc_tkc__stringBase0@l /* 0x80B10A2C@l */
/* 80B0F618  38 A5 00 2E */	addi r5, r5, 0x2e
/* 80B0F61C  38 C0 00 03 */	li r6, 3
/* 80B0F620  4B 53 8A CD */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B0F624  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B0F628  40 82 00 0C */	bne lbl_80B0F634
/* 80B0F62C  38 60 00 00 */	li r3, 0
/* 80B0F630  48 00 03 54 */	b lbl_80B0F984
lbl_80B0F634:
/* 80B0F634  7F 83 E3 78 */	mr r3, r28
/* 80B0F638  7F 64 DB 78 */	mr r4, r27
/* 80B0F63C  4B 53 87 11 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80B0F640  2C 03 00 00 */	cmpwi r3, 0
/* 80B0F644  41 82 00 EC */	beq lbl_80B0F730
/* 80B0F648  80 1F 00 00 */	lwz r0, 0(r31)
/* 80B0F64C  2C 00 00 02 */	cmpwi r0, 2
/* 80B0F650  41 82 00 4C */	beq lbl_80B0F69C
/* 80B0F654  40 80 00 10 */	bge lbl_80B0F664
/* 80B0F658  2C 00 00 01 */	cmpwi r0, 1
/* 80B0F65C  40 80 00 14 */	bge lbl_80B0F670
/* 80B0F660  48 00 00 D0 */	b lbl_80B0F730
lbl_80B0F664:
/* 80B0F664  2C 00 00 04 */	cmpwi r0, 4
/* 80B0F668  40 80 00 C8 */	bge lbl_80B0F730
/* 80B0F66C  48 00 00 70 */	b lbl_80B0F6DC
lbl_80B0F670:
/* 80B0F670  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 80B0F674  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 80B0F678  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80B0F67C  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 80B0F680  38 00 00 00 */	li r0, 0
/* 80B0F684  B0 1D 0D 78 */	sth r0, 0xd78(r29)
/* 80B0F688  98 1D 0D 7B */	stb r0, 0xd7b(r29)
/* 80B0F68C  80 1D 0C 14 */	lwz r0, 0xc14(r29)
/* 80B0F690  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80B0F694  90 1D 0C 14 */	stw r0, 0xc14(r29)
/* 80B0F698  48 00 00 98 */	b lbl_80B0F730
lbl_80B0F69C:
/* 80B0F69C  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 80B0F6A0  D0 1D 0D 6C */	stfs f0, 0xd6c(r29)
/* 80B0F6A4  38 00 00 00 */	li r0, 0
/* 80B0F6A8  B0 1D 0D 70 */	sth r0, 0xd70(r29)
/* 80B0F6AC  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060014@ha */
/* 80B0F6B0  38 03 00 14 */	addi r0, r3, 0x0014 /* 0x00060014@l */
/* 80B0F6B4  90 01 00 08 */	stw r0, 8(r1)
/* 80B0F6B8  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80B0F6BC  38 81 00 08 */	addi r4, r1, 8
/* 80B0F6C0  38 A0 00 00 */	li r5, 0
/* 80B0F6C4  38 C0 FF FF */	li r6, -1
/* 80B0F6C8  81 9D 0B 48 */	lwz r12, 0xb48(r29)
/* 80B0F6CC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80B0F6D0  7D 89 03 A6 */	mtctr r12
/* 80B0F6D4  4E 80 04 21 */	bctrl 
/* 80B0F6D8  48 00 00 58 */	b lbl_80B0F730
lbl_80B0F6DC:
/* 80B0F6DC  38 7E 00 00 */	addi r3, r30, 0
/* 80B0F6E0  C0 03 00 78 */	lfs f0, 0x78(r3)
/* 80B0F6E4  D0 1D 0D 68 */	stfs f0, 0xd68(r29)
/* 80B0F6E8  38 00 00 FF */	li r0, 0xff
/* 80B0F6EC  98 1D 0D 7B */	stb r0, 0xd7b(r29)
/* 80B0F6F0  88 1D 0D 7B */	lbz r0, 0xd7b(r29)
/* 80B0F6F4  B0 1D 04 64 */	sth r0, 0x464(r29)
/* 80B0F6F8  88 1D 0D 7B */	lbz r0, 0xd7b(r29)
/* 80B0F6FC  B0 1D 04 66 */	sth r0, 0x466(r29)
/* 80B0F700  88 1D 0D 7B */	lbz r0, 0xd7b(r29)
/* 80B0F704  B0 1D 04 68 */	sth r0, 0x468(r29)
/* 80B0F708  88 1D 0D 7B */	lbz r0, 0xd7b(r29)
/* 80B0F70C  B0 1D 04 6A */	sth r0, 0x46a(r29)
/* 80B0F710  88 1D 0D 7B */	lbz r0, 0xd7b(r29)
/* 80B0F714  98 1D 04 6C */	stb r0, 0x46c(r29)
/* 80B0F718  88 1D 0D 7B */	lbz r0, 0xd7b(r29)
/* 80B0F71C  98 1D 04 6D */	stb r0, 0x46d(r29)
/* 80B0F720  88 1D 0D 7B */	lbz r0, 0xd7b(r29)
/* 80B0F724  98 1D 04 6E */	stb r0, 0x46e(r29)
/* 80B0F728  88 1D 0D 7B */	lbz r0, 0xd7b(r29)
/* 80B0F72C  98 1D 04 6F */	stb r0, 0x46f(r29)
lbl_80B0F730:
/* 80B0F730  80 1F 00 00 */	lwz r0, 0(r31)
/* 80B0F734  2C 00 00 02 */	cmpwi r0, 2
/* 80B0F738  41 82 00 84 */	beq lbl_80B0F7BC
/* 80B0F73C  40 80 00 10 */	bge lbl_80B0F74C
/* 80B0F740  2C 00 00 01 */	cmpwi r0, 1
/* 80B0F744  40 80 00 14 */	bge lbl_80B0F758
/* 80B0F748  48 00 02 38 */	b lbl_80B0F980
lbl_80B0F74C:
/* 80B0F74C  2C 00 00 04 */	cmpwi r0, 4
/* 80B0F750  40 80 02 30 */	bge lbl_80B0F980
/* 80B0F754  48 00 01 88 */	b lbl_80B0F8DC
lbl_80B0F758:
/* 80B0F758  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B0F75C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B0F760  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B0F764  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80B0F768  D0 1D 0D 44 */	stfs f0, 0xd44(r29)
/* 80B0F76C  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80B0F770  D0 1D 0D 48 */	stfs f0, 0xd48(r29)
/* 80B0F774  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80B0F778  D0 1D 0D 4C */	stfs f0, 0xd4c(r29)
/* 80B0F77C  C0 3D 0D 48 */	lfs f1, 0xd48(r29)
/* 80B0F780  38 BE 00 00 */	addi r5, r30, 0
/* 80B0F784  C0 05 00 6C */	lfs f0, 0x6c(r5)
/* 80B0F788  EC 01 00 2A */	fadds f0, f1, f0
/* 80B0F78C  D0 1D 0D 48 */	stfs f0, 0xd48(r29)
/* 80B0F790  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80B0F794  38 9D 0D 44 */	addi r4, r29, 0xd44
/* 80B0F798  C0 25 00 7C */	lfs f1, 0x7c(r5)
/* 80B0F79C  C0 45 00 80 */	lfs f2, 0x80(r5)
/* 80B0F7A0  C0 65 00 84 */	lfs f3, 0x84(r5)
/* 80B0F7A4  4B 76 03 15 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80B0F7A8  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 80B0F7AC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B0F7B0  40 82 01 D0 */	bne lbl_80B0F980
/* 80B0F7B4  38 60 00 01 */	li r3, 1
/* 80B0F7B8  48 00 01 CC */	b lbl_80B0F984
lbl_80B0F7BC:
/* 80B0F7BC  38 7D 0D 7B */	addi r3, r29, 0xd7b
/* 80B0F7C0  38 80 00 FF */	li r4, 0xff
/* 80B0F7C4  38 A0 00 02 */	li r5, 2
/* 80B0F7C8  4B 76 0E 95 */	bl cLib_chaseUC__FPUcUcUc
/* 80B0F7CC  88 1D 0D 7B */	lbz r0, 0xd7b(r29)
/* 80B0F7D0  98 1D 04 6C */	stb r0, 0x46c(r29)
/* 80B0F7D4  88 1D 0D 7B */	lbz r0, 0xd7b(r29)
/* 80B0F7D8  98 1D 04 6D */	stb r0, 0x46d(r29)
/* 80B0F7DC  88 1D 0D 7B */	lbz r0, 0xd7b(r29)
/* 80B0F7E0  98 1D 04 6E */	stb r0, 0x46e(r29)
/* 80B0F7E4  88 1D 0D 7B */	lbz r0, 0xd7b(r29)
/* 80B0F7E8  98 1D 04 6F */	stb r0, 0x46f(r29)
/* 80B0F7EC  38 7D 0D 6C */	addi r3, r29, 0xd6c
/* 80B0F7F0  38 9E 00 00 */	addi r4, r30, 0
/* 80B0F7F4  C0 24 00 70 */	lfs f1, 0x70(r4)
/* 80B0F7F8  C0 5E 01 50 */	lfs f2, 0x150(r30)
/* 80B0F7FC  4B 76 0F 45 */	bl cLib_chaseF__FPfff
/* 80B0F800  38 7D 0D 70 */	addi r3, r29, 0xd70
/* 80B0F804  38 9E 00 00 */	addi r4, r30, 0
/* 80B0F808  A8 84 00 9E */	lha r4, 0x9e(r4)
/* 80B0F80C  38 A0 01 5E */	li r5, 0x15e
/* 80B0F810  4B 76 0E C1 */	bl cLib_chaseS__FPsss
/* 80B0F814  A8 1D 0D 78 */	lha r0, 0xd78(r29)
/* 80B0F818  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B0F81C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80B0F820  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80B0F824  7C 03 04 2E */	lfsx f0, r3, r0
/* 80B0F828  C0 3D 0D 44 */	lfs f1, 0xd44(r29)
/* 80B0F82C  38 9E 00 00 */	addi r4, r30, 0
/* 80B0F830  C0 44 00 78 */	lfs f2, 0x78(r4)
/* 80B0F834  EC 02 00 32 */	fmuls f0, f2, f0
/* 80B0F838  EC 01 00 2A */	fadds f0, f1, f0
/* 80B0F83C  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80B0F840  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80B0F844  C0 1D 0D 6C */	lfs f0, 0xd6c(r29)
/* 80B0F848  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B0F84C  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80B0F850  A8 1D 0D 78 */	lha r0, 0xd78(r29)
/* 80B0F854  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B0F858  7C 63 02 14 */	add r3, r3, r0
/* 80B0F85C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80B0F860  C0 3D 0D 4C */	lfs f1, 0xd4c(r29)
/* 80B0F864  EC 02 00 32 */	fmuls f0, f2, f0
/* 80B0F868  EC 01 00 2A */	fadds f0, f1, f0
/* 80B0F86C  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80B0F870  A8 7D 0D 78 */	lha r3, 0xd78(r29)
/* 80B0F874  A8 1D 0D 70 */	lha r0, 0xd70(r29)
/* 80B0F878  7C 03 02 14 */	add r0, r3, r0
/* 80B0F87C  B0 1D 0D 78 */	sth r0, 0xd78(r29)
/* 80B0F880  C0 3D 0D 48 */	lfs f1, 0xd48(r29)
/* 80B0F884  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80B0F888  EF E1 00 28 */	fsubs f31, f1, f0
/* 80B0F88C  C0 1E 01 60 */	lfs f0, 0x160(r30)
/* 80B0F890  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80B0F894  4C 40 13 82 */	cror 2, 0, 2
/* 80B0F898  40 82 00 20 */	bne lbl_80B0F8B8
/* 80B0F89C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B0F8A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B0F8A4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B0F8A8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80B0F8AC  81 8C 01 78 */	lwz r12, 0x178(r12)
/* 80B0F8B0  7D 89 03 A6 */	mtctr r12
/* 80B0F8B4  4E 80 04 21 */	bctrl 
lbl_80B0F8B8:
/* 80B0F8B8  38 7E 00 00 */	addi r3, r30, 0
/* 80B0F8BC  C0 23 00 6C */	lfs f1, 0x6c(r3)
/* 80B0F8C0  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80B0F8C4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B0F8C8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80B0F8CC  4C 41 13 82 */	cror 2, 1, 2
/* 80B0F8D0  40 82 00 B0 */	bne lbl_80B0F980
/* 80B0F8D4  38 60 00 01 */	li r3, 1
/* 80B0F8D8  48 00 00 AC */	b lbl_80B0F984
lbl_80B0F8DC:
/* 80B0F8DC  38 7D 0D 68 */	addi r3, r29, 0xd68
/* 80B0F8E0  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 80B0F8E4  C0 5E 01 64 */	lfs f2, 0x164(r30)
/* 80B0F8E8  4B 76 0E 59 */	bl cLib_chaseF__FPfff
/* 80B0F8EC  A8 1D 0D 78 */	lha r0, 0xd78(r29)
/* 80B0F8F0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B0F8F4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80B0F8F8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80B0F8FC  7C 43 04 2E */	lfsx f2, r3, r0
/* 80B0F900  C0 3D 0D 44 */	lfs f1, 0xd44(r29)
/* 80B0F904  C0 1D 0D 68 */	lfs f0, 0xd68(r29)
/* 80B0F908  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80B0F90C  EC 01 00 2A */	fadds f0, f1, f0
/* 80B0F910  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80B0F914  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80B0F918  38 9E 00 00 */	addi r4, r30, 0
/* 80B0F91C  C0 04 00 74 */	lfs f0, 0x74(r4)
/* 80B0F920  EC 01 00 2A */	fadds f0, f1, f0
/* 80B0F924  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80B0F928  A8 1D 0D 78 */	lha r0, 0xd78(r29)
/* 80B0F92C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B0F930  7C 63 02 14 */	add r3, r3, r0
/* 80B0F934  C0 43 00 04 */	lfs f2, 4(r3)
/* 80B0F938  C0 3D 0D 4C */	lfs f1, 0xd4c(r29)
/* 80B0F93C  C0 1D 0D 68 */	lfs f0, 0xd68(r29)
/* 80B0F940  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80B0F944  EC 01 00 2A */	fadds f0, f1, f0
/* 80B0F948  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80B0F94C  A8 7D 0D 78 */	lha r3, 0xd78(r29)
/* 80B0F950  A8 04 00 9E */	lha r0, 0x9e(r4)
/* 80B0F954  7C 03 02 14 */	add r0, r3, r0
/* 80B0F958  B0 1D 0D 78 */	sth r0, 0xd78(r29)
/* 80B0F95C  C0 3D 0D 48 */	lfs f1, 0xd48(r29)
/* 80B0F960  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80B0F964  EC 21 00 28 */	fsubs f1, f1, f0
/* 80B0F968  C0 1E 01 60 */	lfs f0, 0x160(r30)
/* 80B0F96C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B0F970  4C 40 13 82 */	cror 2, 0, 2
/* 80B0F974  40 82 00 0C */	bne lbl_80B0F980
/* 80B0F978  7F A3 EB 78 */	mr r3, r29
/* 80B0F97C  4B 50 A3 01 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80B0F980:
/* 80B0F980  38 60 00 00 */	li r3, 0
lbl_80B0F984:
/* 80B0F984  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80B0F988  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80B0F98C  39 61 00 30 */	addi r11, r1, 0x30
/* 80B0F990  4B 85 28 91 */	bl _restgpr_27
/* 80B0F994  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B0F998  7C 08 03 A6 */	mtlr r0
/* 80B0F99C  38 21 00 40 */	addi r1, r1, 0x40
/* 80B0F9A0  4E 80 00 20 */	blr 

lbl_80A2F600:
/* 80A2F600  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A2F604  7C 08 02 A6 */	mflr r0
/* 80A2F608  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A2F60C  39 61 00 30 */	addi r11, r1, 0x30
/* 80A2F610  4B 93 2B C4 */	b _savegpr_27
/* 80A2F614  7C 7D 1B 78 */	mr r29, r3
/* 80A2F618  3C 60 80 A4 */	lis r3, mCcDObjData__10daNpc_Kn_c@ha
/* 80A2F61C  3B C3 08 C8 */	addi r30, r3, mCcDObjData__10daNpc_Kn_c@l
/* 80A2F620  A0 1D 0E 2A */	lhz r0, 0xe2a(r29)
/* 80A2F624  2C 00 00 02 */	cmpwi r0, 2
/* 80A2F628  41 82 00 FC */	beq lbl_80A2F724
/* 80A2F62C  40 80 05 6C */	bge lbl_80A2FB98
/* 80A2F630  2C 00 00 00 */	cmpwi r0, 0
/* 80A2F634  40 80 00 0C */	bge lbl_80A2F640
/* 80A2F638  48 00 05 60 */	b lbl_80A2FB98
/* 80A2F63C  48 00 05 5C */	b lbl_80A2FB98
lbl_80A2F640:
/* 80A2F640  80 1D 0B 8C */	lwz r0, 0xb8c(r29)
/* 80A2F644  2C 00 00 01 */	cmpwi r0, 1
/* 80A2F648  41 82 00 24 */	beq lbl_80A2F66C
/* 80A2F64C  83 9D 0B 90 */	lwz r28, 0xb90(r29)
/* 80A2F650  38 7D 0B 84 */	addi r3, r29, 0xb84
/* 80A2F654  4B 71 62 44 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2F658  93 9D 0B 90 */	stw r28, 0xb90(r29)
/* 80A2F65C  38 00 00 01 */	li r0, 1
/* 80A2F660  90 1D 0B 8C */	stw r0, 0xb8c(r29)
/* 80A2F664  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A2F668  D0 1D 0B 9C */	stfs f0, 0xb9c(r29)
lbl_80A2F66C:
/* 80A2F66C  80 1D 0B B0 */	lwz r0, 0xbb0(r29)
/* 80A2F670  2C 00 00 09 */	cmpwi r0, 9
/* 80A2F674  41 82 00 24 */	beq lbl_80A2F698
/* 80A2F678  83 9D 0B B4 */	lwz r28, 0xbb4(r29)
/* 80A2F67C  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A2F680  4B 71 62 18 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2F684  93 9D 0B B4 */	stw r28, 0xbb4(r29)
/* 80A2F688  38 00 00 09 */	li r0, 9
/* 80A2F68C  90 1D 0B B0 */	stw r0, 0xbb0(r29)
/* 80A2F690  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A2F694  D0 1D 0B C0 */	stfs f0, 0xbc0(r29)
lbl_80A2F698:
/* 80A2F698  80 1D 0D 14 */	lwz r0, 0xd14(r29)
/* 80A2F69C  2C 00 00 01 */	cmpwi r0, 1
/* 80A2F6A0  41 82 00 28 */	beq lbl_80A2F6C8
/* 80A2F6A4  38 7D 0B DC */	addi r3, r29, 0xbdc
/* 80A2F6A8  4B 71 60 54 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A2F6AC  38 00 00 00 */	li r0, 0
/* 80A2F6B0  90 1D 0B FC */	stw r0, 0xbfc(r29)
/* 80A2F6B4  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A2F6B8  D0 1D 0D 28 */	stfs f0, 0xd28(r29)
/* 80A2F6BC  98 1D 0D 33 */	stb r0, 0xd33(r29)
/* 80A2F6C0  38 00 00 01 */	li r0, 1
/* 80A2F6C4  90 1D 0D 14 */	stw r0, 0xd14(r29)
lbl_80A2F6C8:
/* 80A2F6C8  38 60 00 00 */	li r3, 0
/* 80A2F6CC  98 7D 0D 33 */	stb r3, 0xd33(r29)
/* 80A2F6D0  38 9E 00 A8 */	addi r4, r30, 0xa8
/* 80A2F6D4  A8 04 00 8E */	lha r0, 0x8e(r4)
/* 80A2F6D8  90 1D 0D EC */	stw r0, 0xdec(r29)
/* 80A2F6DC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A2F6E0  D0 1D 15 B0 */	stfs f0, 0x15b0(r29)
/* 80A2F6E4  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80A2F6E8  D0 1D 15 B4 */	stfs f0, 0x15b4(r29)
/* 80A2F6EC  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A2F6F0  D0 1D 15 B8 */	stfs f0, 0x15b8(r29)
/* 80A2F6F4  98 7D 15 BC */	stb r3, 0x15bc(r29)
/* 80A2F6F8  A8 64 00 AC */	lha r3, 0xac(r4)
/* 80A2F6FC  A8 84 00 AE */	lha r4, 0xae(r4)
/* 80A2F700  48 00 C6 65 */	bl func_80A3BD64
/* 80A2F704  B0 7D 15 D0 */	sth r3, 0x15d0(r29)
/* 80A2F708  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A2F70C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A2F710  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 80A2F714  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80A2F718  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 80A2F71C  38 00 00 02 */	li r0, 2
/* 80A2F720  B0 1D 0E 2A */	sth r0, 0xe2a(r29)
lbl_80A2F724:
/* 80A2F724  7F A3 EB 78 */	mr r3, r29
/* 80A2F728  48 00 83 E1 */	bl calcSlip__10daNpc_Kn_cFv
/* 80A2F72C  38 7D 08 C4 */	addi r3, r29, 0x8c4
/* 80A2F730  4B 65 41 00 */	b Move__10dCcD_GSttsFv
/* 80A2F734  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A2F738  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80A2F73C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80A2F740  8B 83 05 68 */	lbz r28, 0x568(r3)
/* 80A2F744  2C 1C 00 1F */	cmpwi r28, 0x1f
/* 80A2F748  41 82 00 0C */	beq lbl_80A2F754
/* 80A2F74C  2C 1C 00 1A */	cmpwi r28, 0x1a
/* 80A2F750  40 82 00 1C */	bne lbl_80A2F76C
lbl_80A2F754:
/* 80A2F754  38 00 00 01 */	li r0, 1
/* 80A2F758  98 1D 12 96 */	stb r0, 0x1296(r29)
/* 80A2F75C  80 1D 12 78 */	lwz r0, 0x1278(r29)
/* 80A2F760  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80A2F764  90 1D 12 78 */	stw r0, 0x1278(r29)
/* 80A2F768  48 00 00 18 */	b lbl_80A2F780
lbl_80A2F76C:
/* 80A2F76C  38 00 00 02 */	li r0, 2
/* 80A2F770  98 1D 12 96 */	stb r0, 0x1296(r29)
/* 80A2F774  80 1D 12 78 */	lwz r0, 0x1278(r29)
/* 80A2F778  60 00 00 01 */	ori r0, r0, 1
/* 80A2F77C  90 1D 12 78 */	stw r0, 0x1278(r29)
lbl_80A2F780:
/* 80A2F780  38 7D 11 DC */	addi r3, r29, 0x11dc
/* 80A2F784  4B 65 4C DC */	b ChkTgHit__12dCcD_GObjInfFv
/* 80A2F788  28 03 00 00 */	cmplwi r3, 0
/* 80A2F78C  41 82 02 C8 */	beq lbl_80A2FA54
/* 80A2F790  2C 1C 00 1F */	cmpwi r28, 0x1f
/* 80A2F794  41 82 00 0C */	beq lbl_80A2F7A0
/* 80A2F798  2C 1C 00 1A */	cmpwi r28, 0x1a
/* 80A2F79C  40 82 02 08 */	bne lbl_80A2F9A4
lbl_80A2F7A0:
/* 80A2F7A0  88 1D 15 AC */	lbz r0, 0x15ac(r29)
/* 80A2F7A4  28 00 00 04 */	cmplwi r0, 4
/* 80A2F7A8  40 82 00 10 */	bne lbl_80A2F7B8
/* 80A2F7AC  38 00 00 13 */	li r0, 0x13
/* 80A2F7B0  B0 1D 0E 36 */	sth r0, 0xe36(r29)
/* 80A2F7B4  48 00 00 0C */	b lbl_80A2F7C0
lbl_80A2F7B8:
/* 80A2F7B8  38 00 00 14 */	li r0, 0x14
/* 80A2F7BC  B0 1D 0E 36 */	sth r0, 0xe36(r29)
lbl_80A2F7C0:
/* 80A2F7C0  7F A3 EB 78 */	mr r3, r29
/* 80A2F7C4  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A2F7C8  4B 5E AF 48 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A2F7CC  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A2F7D0  7C 00 18 50 */	subf r0, r0, r3
/* 80A2F7D4  7C 00 07 35 */	extsh. r0, r0
/* 80A2F7D8  40 80 00 08 */	bge lbl_80A2F7E0
/* 80A2F7DC  7C 00 00 D0 */	neg r0, r0
lbl_80A2F7E0:
/* 80A2F7E0  2C 00 40 00 */	cmpwi r0, 0x4000
/* 80A2F7E4  40 80 00 B0 */	bge lbl_80A2F894
/* 80A2F7E8  80 1D 0B 8C */	lwz r0, 0xb8c(r29)
/* 80A2F7EC  2C 00 00 01 */	cmpwi r0, 1
/* 80A2F7F0  41 82 00 24 */	beq lbl_80A2F814
/* 80A2F7F4  83 9D 0B 90 */	lwz r28, 0xb90(r29)
/* 80A2F7F8  38 7D 0B 84 */	addi r3, r29, 0xb84
/* 80A2F7FC  4B 71 60 9C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2F800  93 9D 0B 90 */	stw r28, 0xb90(r29)
/* 80A2F804  38 00 00 01 */	li r0, 1
/* 80A2F808  90 1D 0B 8C */	stw r0, 0xb8c(r29)
/* 80A2F80C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A2F810  D0 1D 0B 9C */	stfs f0, 0xb9c(r29)
lbl_80A2F814:
/* 80A2F814  80 1D 0B B0 */	lwz r0, 0xbb0(r29)
/* 80A2F818  2C 00 00 12 */	cmpwi r0, 0x12
/* 80A2F81C  41 82 00 24 */	beq lbl_80A2F840
/* 80A2F820  83 9D 0B B4 */	lwz r28, 0xbb4(r29)
/* 80A2F824  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A2F828  4B 71 60 70 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2F82C  93 9D 0B B4 */	stw r28, 0xbb4(r29)
/* 80A2F830  38 00 00 12 */	li r0, 0x12
/* 80A2F834  90 1D 0B B0 */	stw r0, 0xbb0(r29)
/* 80A2F838  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A2F83C  D0 1D 0B C0 */	stfs f0, 0xbc0(r29)
lbl_80A2F840:
/* 80A2F840  7F A3 EB 78 */	mr r3, r29
/* 80A2F844  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A2F848  4B 5E AE C8 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A2F84C  7C 64 1B 78 */	mr r4, r3
/* 80A2F850  7F A3 EB 78 */	mr r3, r29
/* 80A2F854  48 00 B2 9D */	bl setAngle__10daNpc_Kn_cFs
/* 80A2F858  38 7E 00 A8 */	addi r3, r30, 0xa8
/* 80A2F85C  C0 03 00 A0 */	lfs f0, 0xa0(r3)
/* 80A2F860  FC 00 00 50 */	fneg f0, f0
/* 80A2F864  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A2F868  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005004F@ha */
/* 80A2F86C  38 03 00 4F */	addi r0, r3, 0x004F /* 0x0005004F@l */
/* 80A2F870  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A2F874  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80A2F878  38 81 00 0C */	addi r4, r1, 0xc
/* 80A2F87C  38 A0 FF FF */	li r5, -1
/* 80A2F880  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 80A2F884  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A2F888  7D 89 03 A6 */	mtctr r12
/* 80A2F88C  4E 80 04 21 */	bctrl 
/* 80A2F890  48 00 00 B4 */	b lbl_80A2F944
lbl_80A2F894:
/* 80A2F894  80 1D 0B 8C */	lwz r0, 0xb8c(r29)
/* 80A2F898  2C 00 00 01 */	cmpwi r0, 1
/* 80A2F89C  41 82 00 24 */	beq lbl_80A2F8C0
/* 80A2F8A0  83 9D 0B 90 */	lwz r28, 0xb90(r29)
/* 80A2F8A4  38 7D 0B 84 */	addi r3, r29, 0xb84
/* 80A2F8A8  4B 71 5F F0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2F8AC  93 9D 0B 90 */	stw r28, 0xb90(r29)
/* 80A2F8B0  38 00 00 01 */	li r0, 1
/* 80A2F8B4  90 1D 0B 8C */	stw r0, 0xb8c(r29)
/* 80A2F8B8  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A2F8BC  D0 1D 0B 9C */	stfs f0, 0xb9c(r29)
lbl_80A2F8C0:
/* 80A2F8C0  80 1D 0B B0 */	lwz r0, 0xbb0(r29)
/* 80A2F8C4  2C 00 00 0E */	cmpwi r0, 0xe
/* 80A2F8C8  41 82 00 24 */	beq lbl_80A2F8EC
/* 80A2F8CC  83 9D 0B B4 */	lwz r28, 0xbb4(r29)
/* 80A2F8D0  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A2F8D4  4B 71 5F C4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2F8D8  93 9D 0B B4 */	stw r28, 0xbb4(r29)
/* 80A2F8DC  38 00 00 0E */	li r0, 0xe
/* 80A2F8E0  90 1D 0B B0 */	stw r0, 0xbb0(r29)
/* 80A2F8E4  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A2F8E8  D0 1D 0B C0 */	stfs f0, 0xbc0(r29)
lbl_80A2F8EC:
/* 80A2F8EC  7F A3 EB 78 */	mr r3, r29
/* 80A2F8F0  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A2F8F4  4B 5E AE 1C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A2F8F8  7C 64 1B 78 */	mr r4, r3
/* 80A2F8FC  7F A3 EB 78 */	mr r3, r29
/* 80A2F900  3C 84 00 01 */	addis r4, r4, 1
/* 80A2F904  38 04 80 00 */	addi r0, r4, -32768
/* 80A2F908  7C 04 07 34 */	extsh r4, r0
/* 80A2F90C  48 00 B1 E5 */	bl setAngle__10daNpc_Kn_cFs
/* 80A2F910  38 7E 00 A8 */	addi r3, r30, 0xa8
/* 80A2F914  C0 03 00 A0 */	lfs f0, 0xa0(r3)
/* 80A2F918  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A2F91C  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005004F@ha */
/* 80A2F920  38 03 00 4F */	addi r0, r3, 0x004F /* 0x0005004F@l */
/* 80A2F924  90 01 00 08 */	stw r0, 8(r1)
/* 80A2F928  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80A2F92C  38 81 00 08 */	addi r4, r1, 8
/* 80A2F930  38 A0 FF FF */	li r5, -1
/* 80A2F934  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 80A2F938  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A2F93C  7D 89 03 A6 */	mtctr r12
/* 80A2F940  4E 80 04 21 */	bctrl 
lbl_80A2F944:
/* 80A2F944  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80A2F948  3C 80 00 04 */	lis r4, 4
/* 80A2F94C  38 A0 00 1F */	li r5, 0x1f
/* 80A2F950  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 80A2F954  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80A2F958  7D 89 03 A6 */	mtctr r12
/* 80A2F95C  4E 80 04 21 */	bctrl 
/* 80A2F960  80 1D 0D 14 */	lwz r0, 0xd14(r29)
/* 80A2F964  2C 00 00 00 */	cmpwi r0, 0
/* 80A2F968  41 82 00 24 */	beq lbl_80A2F98C
/* 80A2F96C  38 7D 0B DC */	addi r3, r29, 0xbdc
/* 80A2F970  4B 71 5D 8C */	b remove__18daNpcT_ActorMngr_cFv
/* 80A2F974  38 00 00 00 */	li r0, 0
/* 80A2F978  90 1D 0B FC */	stw r0, 0xbfc(r29)
/* 80A2F97C  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A2F980  D0 1D 0D 28 */	stfs f0, 0xd28(r29)
/* 80A2F984  98 1D 0D 33 */	stb r0, 0xd33(r29)
/* 80A2F988  90 1D 0D 14 */	stw r0, 0xd14(r29)
lbl_80A2F98C:
/* 80A2F98C  38 00 00 00 */	li r0, 0
/* 80A2F990  98 1D 0D 33 */	stb r0, 0xd33(r29)
/* 80A2F994  38 7E 00 A8 */	addi r3, r30, 0xa8
/* 80A2F998  C0 03 00 A4 */	lfs f0, 0xa4(r3)
/* 80A2F99C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80A2F9A0  48 00 01 F8 */	b lbl_80A2FB98
lbl_80A2F9A4:
/* 80A2F9A4  7F A3 EB 78 */	mr r3, r29
/* 80A2F9A8  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A2F9AC  4B 5E AD 64 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A2F9B0  7C 64 1B 78 */	mr r4, r3
/* 80A2F9B4  7F A3 EB 78 */	mr r3, r29
/* 80A2F9B8  48 00 B1 39 */	bl setAngle__10daNpc_Kn_cFs
/* 80A2F9BC  80 1D 0B 8C */	lwz r0, 0xb8c(r29)
/* 80A2F9C0  2C 00 00 01 */	cmpwi r0, 1
/* 80A2F9C4  41 82 00 24 */	beq lbl_80A2F9E8
/* 80A2F9C8  83 FD 0B 90 */	lwz r31, 0xb90(r29)
/* 80A2F9CC  38 7D 0B 84 */	addi r3, r29, 0xb84
/* 80A2F9D0  4B 71 5E C8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2F9D4  93 FD 0B 90 */	stw r31, 0xb90(r29)
/* 80A2F9D8  38 00 00 01 */	li r0, 1
/* 80A2F9DC  90 1D 0B 8C */	stw r0, 0xb8c(r29)
/* 80A2F9E0  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A2F9E4  D0 1D 0B 9C */	stfs f0, 0xb9c(r29)
lbl_80A2F9E8:
/* 80A2F9E8  83 FD 0B B4 */	lwz r31, 0xbb4(r29)
/* 80A2F9EC  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A2F9F0  4B 71 5E A8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2F9F4  93 FD 0B B4 */	stw r31, 0xbb4(r29)
/* 80A2F9F8  38 00 00 1B */	li r0, 0x1b
/* 80A2F9FC  90 1D 0B B0 */	stw r0, 0xbb0(r29)
/* 80A2FA00  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A2FA04  D0 1D 0B C0 */	stfs f0, 0xbc0(r29)
/* 80A2FA08  2C 1C 00 29 */	cmpwi r28, 0x29
/* 80A2FA0C  40 82 00 28 */	bne lbl_80A2FA34
/* 80A2FA10  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80A2FA14  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040002@ha */
/* 80A2FA18  38 84 00 02 */	addi r4, r4, 0x0002 /* 0x00040002@l */
/* 80A2FA1C  38 A0 00 28 */	li r5, 0x28
/* 80A2FA20  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 80A2FA24  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80A2FA28  7D 89 03 A6 */	mtctr r12
/* 80A2FA2C  4E 80 04 21 */	bctrl 
/* 80A2FA30  48 00 01 68 */	b lbl_80A2FB98
lbl_80A2FA34:
/* 80A2FA34  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80A2FA38  3C 80 00 04 */	lis r4, 4
/* 80A2FA3C  38 A0 00 28 */	li r5, 0x28
/* 80A2FA40  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 80A2FA44  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80A2FA48  7D 89 03 A6 */	mtctr r12
/* 80A2FA4C  4E 80 04 21 */	bctrl 
/* 80A2FA50  48 00 01 48 */	b lbl_80A2FB98
lbl_80A2FA54:
/* 80A2FA54  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80A2FA58  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A2FA5C  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 80A2FA60  7D 89 03 A6 */	mtctr r12
/* 80A2FA64  4E 80 04 21 */	bctrl 
/* 80A2FA68  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A2FA6C  41 82 00 0C */	beq lbl_80A2FA78
/* 80A2FA70  38 00 00 01 */	li r0, 1
/* 80A2FA74  98 1D 15 CC */	stb r0, 0x15cc(r29)
lbl_80A2FA78:
/* 80A2FA78  7F A3 EB 78 */	mr r3, r29
/* 80A2FA7C  38 80 00 01 */	li r4, 1
/* 80A2FA80  48 00 82 A1 */	bl calcSwordAttackMove__10daNpc_Kn_cFi
/* 80A2FA84  38 7D 0D EC */	addi r3, r29, 0xdec
/* 80A2FA88  48 00 C2 C1 */	bl func_80A3BD48
/* 80A2FA8C  2C 03 00 00 */	cmpwi r3, 0
/* 80A2FA90  41 82 00 14 */	beq lbl_80A2FAA4
/* 80A2FA94  7F A3 EB 78 */	mr r3, r29
/* 80A2FA98  4B FF D0 99 */	bl checkCollisionSword__10daNpc_Kn_cFv
/* 80A2FA9C  2C 03 00 00 */	cmpwi r3, 0
/* 80A2FAA0  41 82 00 F8 */	beq lbl_80A2FB98
lbl_80A2FAA4:
/* 80A2FAA4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A2FAA8  D0 1D 15 B0 */	stfs f0, 0x15b0(r29)
/* 80A2FAAC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80A2FAB0  D0 1D 15 B4 */	stfs f0, 0x15b4(r29)
/* 80A2FAB4  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A2FAB8  D0 1D 15 B8 */	stfs f0, 0x15b8(r29)
/* 80A2FABC  38 00 00 00 */	li r0, 0
/* 80A2FAC0  98 1D 15 BC */	stb r0, 0x15bc(r29)
/* 80A2FAC4  3B 60 00 00 */	li r27, 0
/* 80A2FAC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A2FACC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A2FAD0  38 63 56 B8 */	addi r3, r3, 0x56b8
/* 80A2FAD4  4B 64 3D 10 */	b LockonTruth__12dAttention_cFv
/* 80A2FAD8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A2FADC  41 82 00 08 */	beq lbl_80A2FAE4
/* 80A2FAE0  3B 60 00 01 */	li r27, 1
lbl_80A2FAE4:
/* 80A2FAE4  7F A3 EB 78 */	mr r3, r29
/* 80A2FAE8  4B FF D0 49 */	bl checkCollisionSword__10daNpc_Kn_cFv
/* 80A2FAEC  2C 03 00 00 */	cmpwi r3, 0
/* 80A2FAF0  41 82 00 10 */	beq lbl_80A2FB00
/* 80A2FAF4  38 00 00 04 */	li r0, 4
/* 80A2FAF8  B0 1D 0E 36 */	sth r0, 0xe36(r29)
/* 80A2FAFC  48 00 00 0C */	b lbl_80A2FB08
lbl_80A2FB00:
/* 80A2FB00  38 00 00 01 */	li r0, 1
/* 80A2FB04  B0 1D 0E 36 */	sth r0, 0xe36(r29)
lbl_80A2FB08:
/* 80A2FB08  80 1D 0B 8C */	lwz r0, 0xb8c(r29)
/* 80A2FB0C  2C 00 00 01 */	cmpwi r0, 1
/* 80A2FB10  41 82 00 24 */	beq lbl_80A2FB34
/* 80A2FB14  83 9D 0B 90 */	lwz r28, 0xb90(r29)
/* 80A2FB18  38 7D 0B 84 */	addi r3, r29, 0xb84
/* 80A2FB1C  4B 71 5D 7C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2FB20  93 9D 0B 90 */	stw r28, 0xb90(r29)
/* 80A2FB24  38 00 00 01 */	li r0, 1
/* 80A2FB28  90 1D 0B 8C */	stw r0, 0xb8c(r29)
/* 80A2FB2C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A2FB30  D0 1D 0B 9C */	stfs f0, 0xb9c(r29)
lbl_80A2FB34:
/* 80A2FB34  83 9D 0B B4 */	lwz r28, 0xbb4(r29)
/* 80A2FB38  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A2FB3C  4B 71 5D 5C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2FB40  93 9D 0B B4 */	stw r28, 0xbb4(r29)
/* 80A2FB44  38 00 00 00 */	li r0, 0
/* 80A2FB48  90 1D 0B B0 */	stw r0, 0xbb0(r29)
/* 80A2FB4C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A2FB50  D0 1D 0B C0 */	stfs f0, 0xbc0(r29)
/* 80A2FB54  2C 1B 00 00 */	cmpwi r27, 0
/* 80A2FB58  41 82 00 10 */	beq lbl_80A2FB68
/* 80A2FB5C  38 00 02 EC */	li r0, 0x2ec
/* 80A2FB60  90 1D 0A B0 */	stw r0, 0xab0(r29)
/* 80A2FB64  48 00 00 34 */	b lbl_80A2FB98
lbl_80A2FB68:
/* 80A2FB68  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80A2FB6C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A2FB70  81 8C 02 88 */	lwz r12, 0x288(r12)
/* 80A2FB74  7D 89 03 A6 */	mtctr r12
/* 80A2FB78  4E 80 04 21 */	bctrl 
/* 80A2FB7C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A2FB80  40 82 00 10 */	bne lbl_80A2FB90
/* 80A2FB84  38 00 02 EA */	li r0, 0x2ea
/* 80A2FB88  90 1D 0A B0 */	stw r0, 0xab0(r29)
/* 80A2FB8C  48 00 00 0C */	b lbl_80A2FB98
lbl_80A2FB90:
/* 80A2FB90  38 00 02 EB */	li r0, 0x2eb
/* 80A2FB94  90 1D 0A B0 */	stw r0, 0xab0(r29)
lbl_80A2FB98:
/* 80A2FB98  38 60 00 01 */	li r3, 1
/* 80A2FB9C  39 61 00 30 */	addi r11, r1, 0x30
/* 80A2FBA0  4B 93 26 80 */	b _restgpr_27
/* 80A2FBA4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A2FBA8  7C 08 03 A6 */	mtlr r0
/* 80A2FBAC  38 21 00 30 */	addi r1, r1, 0x30
/* 80A2FBB0  4E 80 00 20 */	blr 

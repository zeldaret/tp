lbl_80A2E664:
/* 80A2E664  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A2E668  7C 08 02 A6 */	mflr r0
/* 80A2E66C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A2E670  39 61 00 20 */	addi r11, r1, 0x20
/* 80A2E674  4B 93 3B 65 */	bl _savegpr_28
/* 80A2E678  7C 7D 1B 78 */	mr r29, r3
/* 80A2E67C  3C 60 80 A4 */	lis r3, mCcDObjData__10daNpc_Kn_c@ha /* 0x80A408C8@ha */
/* 80A2E680  3B C3 08 C8 */	addi r30, r3, mCcDObjData__10daNpc_Kn_c@l /* 0x80A408C8@l */
/* 80A2E684  A0 1D 0E 2A */	lhz r0, 0xe2a(r29)
/* 80A2E688  2C 00 00 02 */	cmpwi r0, 2
/* 80A2E68C  41 82 01 04 */	beq lbl_80A2E790
/* 80A2E690  40 80 05 58 */	bge lbl_80A2EBE8
/* 80A2E694  2C 00 00 00 */	cmpwi r0, 0
/* 80A2E698  40 80 00 0C */	bge lbl_80A2E6A4
/* 80A2E69C  48 00 05 4C */	b lbl_80A2EBE8
/* 80A2E6A0  48 00 05 48 */	b lbl_80A2EBE8
lbl_80A2E6A4:
/* 80A2E6A4  80 1D 0B 8C */	lwz r0, 0xb8c(r29)
/* 80A2E6A8  2C 00 00 01 */	cmpwi r0, 1
/* 80A2E6AC  41 82 00 24 */	beq lbl_80A2E6D0
/* 80A2E6B0  83 9D 0B 90 */	lwz r28, 0xb90(r29)
/* 80A2E6B4  38 7D 0B 84 */	addi r3, r29, 0xb84
/* 80A2E6B8  4B 71 71 E1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2E6BC  93 9D 0B 90 */	stw r28, 0xb90(r29)
/* 80A2E6C0  38 00 00 01 */	li r0, 1
/* 80A2E6C4  90 1D 0B 8C */	stw r0, 0xb8c(r29)
/* 80A2E6C8  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A2E6CC  D0 1D 0B 9C */	stfs f0, 0xb9c(r29)
lbl_80A2E6D0:
/* 80A2E6D0  80 1D 0B B0 */	lwz r0, 0xbb0(r29)
/* 80A2E6D4  2C 00 00 09 */	cmpwi r0, 9
/* 80A2E6D8  41 82 00 24 */	beq lbl_80A2E6FC
/* 80A2E6DC  83 9D 0B B4 */	lwz r28, 0xbb4(r29)
/* 80A2E6E0  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A2E6E4  4B 71 71 B5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2E6E8  93 9D 0B B4 */	stw r28, 0xbb4(r29)
/* 80A2E6EC  38 00 00 09 */	li r0, 9
/* 80A2E6F0  90 1D 0B B0 */	stw r0, 0xbb0(r29)
/* 80A2E6F4  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A2E6F8  D0 1D 0B C0 */	stfs f0, 0xbc0(r29)
lbl_80A2E6FC:
/* 80A2E6FC  80 1D 0D 14 */	lwz r0, 0xd14(r29)
/* 80A2E700  2C 00 00 01 */	cmpwi r0, 1
/* 80A2E704  41 82 00 28 */	beq lbl_80A2E72C
/* 80A2E708  38 7D 0B DC */	addi r3, r29, 0xbdc
/* 80A2E70C  4B 71 6F F1 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A2E710  38 00 00 00 */	li r0, 0
/* 80A2E714  90 1D 0B FC */	stw r0, 0xbfc(r29)
/* 80A2E718  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A2E71C  D0 1D 0D 28 */	stfs f0, 0xd28(r29)
/* 80A2E720  98 1D 0D 33 */	stb r0, 0xd33(r29)
/* 80A2E724  38 00 00 01 */	li r0, 1
/* 80A2E728  90 1D 0D 14 */	stw r0, 0xd14(r29)
lbl_80A2E72C:
/* 80A2E72C  38 60 00 00 */	li r3, 0
/* 80A2E730  98 7D 0D 33 */	stb r3, 0xd33(r29)
/* 80A2E734  38 9E 00 A8 */	addi r4, r30, 0xa8
/* 80A2E738  A8 04 00 8E */	lha r0, 0x8e(r4)
/* 80A2E73C  90 1D 0D EC */	stw r0, 0xdec(r29)
/* 80A2E740  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A2E744  D0 1D 15 B0 */	stfs f0, 0x15b0(r29)
/* 80A2E748  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80A2E74C  D0 1D 15 B4 */	stfs f0, 0x15b4(r29)
/* 80A2E750  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A2E754  D0 1D 15 B8 */	stfs f0, 0x15b8(r29)
/* 80A2E758  98 7D 15 BC */	stb r3, 0x15bc(r29)
/* 80A2E75C  A8 64 00 AC */	lha r3, 0xac(r4)
/* 80A2E760  A8 84 00 AE */	lha r4, 0xae(r4)
/* 80A2E764  48 00 D6 01 */	bl func_80A3BD64
/* 80A2E768  B0 7D 15 D0 */	sth r3, 0x15d0(r29)
/* 80A2E76C  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A2E770  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A2E774  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 80A2E778  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80A2E77C  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 80A2E780  38 00 00 00 */	li r0, 0
/* 80A2E784  98 1D 15 CC */	stb r0, 0x15cc(r29)
/* 80A2E788  38 00 00 02 */	li r0, 2
/* 80A2E78C  B0 1D 0E 2A */	sth r0, 0xe2a(r29)
lbl_80A2E790:
/* 80A2E790  38 7D 08 C4 */	addi r3, r29, 0x8c4
/* 80A2E794  4B 65 50 9D */	bl Move__10dCcD_GSttsFv
/* 80A2E798  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A2E79C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A2E7A0  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80A2E7A4  8B 83 05 68 */	lbz r28, 0x568(r3)
/* 80A2E7A8  2C 1C 00 1E */	cmpwi r28, 0x1e
/* 80A2E7AC  40 82 00 1C */	bne lbl_80A2E7C8
/* 80A2E7B0  38 00 00 01 */	li r0, 1
/* 80A2E7B4  98 1D 12 96 */	stb r0, 0x1296(r29)
/* 80A2E7B8  80 1D 12 78 */	lwz r0, 0x1278(r29)
/* 80A2E7BC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80A2E7C0  90 1D 12 78 */	stw r0, 0x1278(r29)
/* 80A2E7C4  48 00 00 18 */	b lbl_80A2E7DC
lbl_80A2E7C8:
/* 80A2E7C8  38 00 00 02 */	li r0, 2
/* 80A2E7CC  98 1D 12 96 */	stb r0, 0x1296(r29)
/* 80A2E7D0  80 1D 12 78 */	lwz r0, 0x1278(r29)
/* 80A2E7D4  60 00 00 01 */	ori r0, r0, 1
/* 80A2E7D8  90 1D 12 78 */	stw r0, 0x1278(r29)
lbl_80A2E7DC:
/* 80A2E7DC  38 7D 11 DC */	addi r3, r29, 0x11dc
/* 80A2E7E0  4B 65 5C 81 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80A2E7E4  28 03 00 00 */	cmplwi r3, 0
/* 80A2E7E8  41 82 02 C8 */	beq lbl_80A2EAB0
/* 80A2E7EC  2C 1C 00 1E */	cmpwi r28, 0x1e
/* 80A2E7F0  40 82 02 10 */	bne lbl_80A2EA00
/* 80A2E7F4  88 1D 15 AC */	lbz r0, 0x15ac(r29)
/* 80A2E7F8  28 00 00 02 */	cmplwi r0, 2
/* 80A2E7FC  40 82 00 10 */	bne lbl_80A2E80C
/* 80A2E800  38 00 00 0E */	li r0, 0xe
/* 80A2E804  B0 1D 0E 36 */	sth r0, 0xe36(r29)
/* 80A2E808  48 00 00 14 */	b lbl_80A2E81C
lbl_80A2E80C:
/* 80A2E80C  28 00 00 03 */	cmplwi r0, 3
/* 80A2E810  40 82 00 0C */	bne lbl_80A2E81C
/* 80A2E814  38 00 00 0F */	li r0, 0xf
/* 80A2E818  B0 1D 0E 36 */	sth r0, 0xe36(r29)
lbl_80A2E81C:
/* 80A2E81C  7F A3 EB 78 */	mr r3, r29
/* 80A2E820  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A2E824  4B 5E BE ED */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A2E828  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A2E82C  7C 00 18 50 */	subf r0, r0, r3
/* 80A2E830  7C 00 07 35 */	extsh. r0, r0
/* 80A2E834  40 80 00 08 */	bge lbl_80A2E83C
/* 80A2E838  7C 00 00 D0 */	neg r0, r0
lbl_80A2E83C:
/* 80A2E83C  2C 00 40 00 */	cmpwi r0, 0x4000
/* 80A2E840  40 80 00 B0 */	bge lbl_80A2E8F0
/* 80A2E844  80 1D 0B 8C */	lwz r0, 0xb8c(r29)
/* 80A2E848  2C 00 00 01 */	cmpwi r0, 1
/* 80A2E84C  41 82 00 24 */	beq lbl_80A2E870
/* 80A2E850  83 9D 0B 90 */	lwz r28, 0xb90(r29)
/* 80A2E854  38 7D 0B 84 */	addi r3, r29, 0xb84
/* 80A2E858  4B 71 70 41 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2E85C  93 9D 0B 90 */	stw r28, 0xb90(r29)
/* 80A2E860  38 00 00 01 */	li r0, 1
/* 80A2E864  90 1D 0B 8C */	stw r0, 0xb8c(r29)
/* 80A2E868  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A2E86C  D0 1D 0B 9C */	stfs f0, 0xb9c(r29)
lbl_80A2E870:
/* 80A2E870  80 1D 0B B0 */	lwz r0, 0xbb0(r29)
/* 80A2E874  2C 00 00 12 */	cmpwi r0, 0x12
/* 80A2E878  41 82 00 24 */	beq lbl_80A2E89C
/* 80A2E87C  83 9D 0B B4 */	lwz r28, 0xbb4(r29)
/* 80A2E880  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A2E884  4B 71 70 15 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2E888  93 9D 0B B4 */	stw r28, 0xbb4(r29)
/* 80A2E88C  38 00 00 12 */	li r0, 0x12
/* 80A2E890  90 1D 0B B0 */	stw r0, 0xbb0(r29)
/* 80A2E894  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A2E898  D0 1D 0B C0 */	stfs f0, 0xbc0(r29)
lbl_80A2E89C:
/* 80A2E89C  7F A3 EB 78 */	mr r3, r29
/* 80A2E8A0  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A2E8A4  4B 5E BE 6D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A2E8A8  7C 64 1B 78 */	mr r4, r3
/* 80A2E8AC  7F A3 EB 78 */	mr r3, r29
/* 80A2E8B0  48 00 C2 41 */	bl setAngle__10daNpc_Kn_cFs
/* 80A2E8B4  38 7E 00 A8 */	addi r3, r30, 0xa8
/* 80A2E8B8  C0 03 00 A0 */	lfs f0, 0xa0(r3)
/* 80A2E8BC  FC 00 00 50 */	fneg f0, f0
/* 80A2E8C0  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A2E8C4  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005004F@ha */
/* 80A2E8C8  38 03 00 4F */	addi r0, r3, 0x004F /* 0x0005004F@l */
/* 80A2E8CC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A2E8D0  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80A2E8D4  38 81 00 0C */	addi r4, r1, 0xc
/* 80A2E8D8  38 A0 FF FF */	li r5, -1
/* 80A2E8DC  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 80A2E8E0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A2E8E4  7D 89 03 A6 */	mtctr r12
/* 80A2E8E8  4E 80 04 21 */	bctrl 
/* 80A2E8EC  48 00 00 B4 */	b lbl_80A2E9A0
lbl_80A2E8F0:
/* 80A2E8F0  80 1D 0B 8C */	lwz r0, 0xb8c(r29)
/* 80A2E8F4  2C 00 00 01 */	cmpwi r0, 1
/* 80A2E8F8  41 82 00 24 */	beq lbl_80A2E91C
/* 80A2E8FC  83 9D 0B 90 */	lwz r28, 0xb90(r29)
/* 80A2E900  38 7D 0B 84 */	addi r3, r29, 0xb84
/* 80A2E904  4B 71 6F 95 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2E908  93 9D 0B 90 */	stw r28, 0xb90(r29)
/* 80A2E90C  38 00 00 01 */	li r0, 1
/* 80A2E910  90 1D 0B 8C */	stw r0, 0xb8c(r29)
/* 80A2E914  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A2E918  D0 1D 0B 9C */	stfs f0, 0xb9c(r29)
lbl_80A2E91C:
/* 80A2E91C  80 1D 0B B0 */	lwz r0, 0xbb0(r29)
/* 80A2E920  2C 00 00 0E */	cmpwi r0, 0xe
/* 80A2E924  41 82 00 24 */	beq lbl_80A2E948
/* 80A2E928  83 9D 0B B4 */	lwz r28, 0xbb4(r29)
/* 80A2E92C  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A2E930  4B 71 6F 69 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2E934  93 9D 0B B4 */	stw r28, 0xbb4(r29)
/* 80A2E938  38 00 00 0E */	li r0, 0xe
/* 80A2E93C  90 1D 0B B0 */	stw r0, 0xbb0(r29)
/* 80A2E940  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A2E944  D0 1D 0B C0 */	stfs f0, 0xbc0(r29)
lbl_80A2E948:
/* 80A2E948  7F A3 EB 78 */	mr r3, r29
/* 80A2E94C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A2E950  4B 5E BD C1 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A2E954  7C 64 1B 78 */	mr r4, r3
/* 80A2E958  7F A3 EB 78 */	mr r3, r29
/* 80A2E95C  3C 84 00 01 */	addis r4, r4, 1
/* 80A2E960  38 04 80 00 */	addi r0, r4, -32768
/* 80A2E964  7C 04 07 34 */	extsh r4, r0
/* 80A2E968  48 00 C1 89 */	bl setAngle__10daNpc_Kn_cFs
/* 80A2E96C  38 7E 00 A8 */	addi r3, r30, 0xa8
/* 80A2E970  C0 03 00 A0 */	lfs f0, 0xa0(r3)
/* 80A2E974  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A2E978  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005004F@ha */
/* 80A2E97C  38 03 00 4F */	addi r0, r3, 0x004F /* 0x0005004F@l */
/* 80A2E980  90 01 00 08 */	stw r0, 8(r1)
/* 80A2E984  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80A2E988  38 81 00 08 */	addi r4, r1, 8
/* 80A2E98C  38 A0 FF FF */	li r5, -1
/* 80A2E990  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 80A2E994  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A2E998  7D 89 03 A6 */	mtctr r12
/* 80A2E99C  4E 80 04 21 */	bctrl 
lbl_80A2E9A0:
/* 80A2E9A0  80 1D 0D 14 */	lwz r0, 0xd14(r29)
/* 80A2E9A4  2C 00 00 00 */	cmpwi r0, 0
/* 80A2E9A8  41 82 00 24 */	beq lbl_80A2E9CC
/* 80A2E9AC  38 7D 0B DC */	addi r3, r29, 0xbdc
/* 80A2E9B0  4B 71 6D 4D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A2E9B4  38 00 00 00 */	li r0, 0
/* 80A2E9B8  90 1D 0B FC */	stw r0, 0xbfc(r29)
/* 80A2E9BC  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A2E9C0  D0 1D 0D 28 */	stfs f0, 0xd28(r29)
/* 80A2E9C4  98 1D 0D 33 */	stb r0, 0xd33(r29)
/* 80A2E9C8  90 1D 0D 14 */	stw r0, 0xd14(r29)
lbl_80A2E9CC:
/* 80A2E9CC  38 00 00 00 */	li r0, 0
/* 80A2E9D0  98 1D 0D 33 */	stb r0, 0xd33(r29)
/* 80A2E9D4  38 7E 00 A8 */	addi r3, r30, 0xa8
/* 80A2E9D8  C0 03 00 A4 */	lfs f0, 0xa4(r3)
/* 80A2E9DC  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80A2E9E0  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80A2E9E4  3C 80 00 04 */	lis r4, 4
/* 80A2E9E8  38 A0 00 1F */	li r5, 0x1f
/* 80A2E9EC  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 80A2E9F0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80A2E9F4  7D 89 03 A6 */	mtctr r12
/* 80A2E9F8  4E 80 04 21 */	bctrl 
/* 80A2E9FC  48 00 01 EC */	b lbl_80A2EBE8
lbl_80A2EA00:
/* 80A2EA00  7F A3 EB 78 */	mr r3, r29
/* 80A2EA04  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A2EA08  4B 5E BD 09 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A2EA0C  7C 64 1B 78 */	mr r4, r3
/* 80A2EA10  7F A3 EB 78 */	mr r3, r29
/* 80A2EA14  48 00 C0 DD */	bl setAngle__10daNpc_Kn_cFs
/* 80A2EA18  80 1D 0B 8C */	lwz r0, 0xb8c(r29)
/* 80A2EA1C  2C 00 00 01 */	cmpwi r0, 1
/* 80A2EA20  41 82 00 24 */	beq lbl_80A2EA44
/* 80A2EA24  83 FD 0B 90 */	lwz r31, 0xb90(r29)
/* 80A2EA28  38 7D 0B 84 */	addi r3, r29, 0xb84
/* 80A2EA2C  4B 71 6E 6D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2EA30  93 FD 0B 90 */	stw r31, 0xb90(r29)
/* 80A2EA34  38 00 00 01 */	li r0, 1
/* 80A2EA38  90 1D 0B 8C */	stw r0, 0xb8c(r29)
/* 80A2EA3C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A2EA40  D0 1D 0B 9C */	stfs f0, 0xb9c(r29)
lbl_80A2EA44:
/* 80A2EA44  83 FD 0B B4 */	lwz r31, 0xbb4(r29)
/* 80A2EA48  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A2EA4C  4B 71 6E 4D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2EA50  93 FD 0B B4 */	stw r31, 0xbb4(r29)
/* 80A2EA54  38 00 00 1B */	li r0, 0x1b
/* 80A2EA58  90 1D 0B B0 */	stw r0, 0xbb0(r29)
/* 80A2EA5C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A2EA60  D0 1D 0B C0 */	stfs f0, 0xbc0(r29)
/* 80A2EA64  2C 1C 00 29 */	cmpwi r28, 0x29
/* 80A2EA68  40 82 00 28 */	bne lbl_80A2EA90
/* 80A2EA6C  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80A2EA70  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040002@ha */
/* 80A2EA74  38 84 00 02 */	addi r4, r4, 0x0002 /* 0x00040002@l */
/* 80A2EA78  38 A0 00 28 */	li r5, 0x28
/* 80A2EA7C  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 80A2EA80  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80A2EA84  7D 89 03 A6 */	mtctr r12
/* 80A2EA88  4E 80 04 21 */	bctrl 
/* 80A2EA8C  48 00 01 5C */	b lbl_80A2EBE8
lbl_80A2EA90:
/* 80A2EA90  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80A2EA94  3C 80 00 04 */	lis r4, 4
/* 80A2EA98  38 A0 00 28 */	li r5, 0x28
/* 80A2EA9C  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 80A2EAA0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80A2EAA4  7D 89 03 A6 */	mtctr r12
/* 80A2EAA8  4E 80 04 21 */	bctrl 
/* 80A2EAAC  48 00 01 3C */	b lbl_80A2EBE8
lbl_80A2EAB0:
/* 80A2EAB0  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80A2EAB4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A2EAB8  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 80A2EABC  7D 89 03 A6 */	mtctr r12
/* 80A2EAC0  4E 80 04 21 */	bctrl 
/* 80A2EAC4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A2EAC8  41 82 00 0C */	beq lbl_80A2EAD4
/* 80A2EACC  38 00 00 01 */	li r0, 1
/* 80A2EAD0  98 1D 15 CC */	stb r0, 0x15cc(r29)
lbl_80A2EAD4:
/* 80A2EAD4  38 7D 0D EC */	addi r3, r29, 0xdec
/* 80A2EAD8  48 00 D2 71 */	bl func_80A3BD48
/* 80A2EADC  2C 03 00 00 */	cmpwi r3, 0
/* 80A2EAE0  41 82 00 14 */	beq lbl_80A2EAF4
/* 80A2EAE4  7F A3 EB 78 */	mr r3, r29
/* 80A2EAE8  4B FF E0 49 */	bl checkCollisionSword__10daNpc_Kn_cFv
/* 80A2EAEC  2C 03 00 00 */	cmpwi r3, 0
/* 80A2EAF0  41 82 00 EC */	beq lbl_80A2EBDC
lbl_80A2EAF4:
/* 80A2EAF4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A2EAF8  D0 1D 15 B0 */	stfs f0, 0x15b0(r29)
/* 80A2EAFC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80A2EB00  D0 1D 15 B4 */	stfs f0, 0x15b4(r29)
/* 80A2EB04  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A2EB08  D0 1D 15 B8 */	stfs f0, 0x15b8(r29)
/* 80A2EB0C  38 00 00 00 */	li r0, 0
/* 80A2EB10  98 1D 15 BC */	stb r0, 0x15bc(r29)
/* 80A2EB14  3B E0 00 00 */	li r31, 0
/* 80A2EB18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A2EB1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A2EB20  38 63 56 B8 */	addi r3, r3, 0x56b8
/* 80A2EB24  4B 64 4C C1 */	bl LockonTruth__12dAttention_cFv
/* 80A2EB28  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A2EB2C  41 82 00 08 */	beq lbl_80A2EB34
/* 80A2EB30  3B E0 00 01 */	li r31, 1
lbl_80A2EB34:
/* 80A2EB34  7F A3 EB 78 */	mr r3, r29
/* 80A2EB38  4B FF DF F9 */	bl checkCollisionSword__10daNpc_Kn_cFv
/* 80A2EB3C  2C 03 00 00 */	cmpwi r3, 0
/* 80A2EB40  41 82 00 10 */	beq lbl_80A2EB50
/* 80A2EB44  38 00 00 04 */	li r0, 4
/* 80A2EB48  B0 1D 0E 36 */	sth r0, 0xe36(r29)
/* 80A2EB4C  48 00 00 0C */	b lbl_80A2EB58
lbl_80A2EB50:
/* 80A2EB50  38 00 00 01 */	li r0, 1
/* 80A2EB54  B0 1D 0E 36 */	sth r0, 0xe36(r29)
lbl_80A2EB58:
/* 80A2EB58  80 1D 0B 8C */	lwz r0, 0xb8c(r29)
/* 80A2EB5C  2C 00 00 01 */	cmpwi r0, 1
/* 80A2EB60  41 82 00 24 */	beq lbl_80A2EB84
/* 80A2EB64  83 9D 0B 90 */	lwz r28, 0xb90(r29)
/* 80A2EB68  38 7D 0B 84 */	addi r3, r29, 0xb84
/* 80A2EB6C  4B 71 6D 2D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2EB70  93 9D 0B 90 */	stw r28, 0xb90(r29)
/* 80A2EB74  38 00 00 01 */	li r0, 1
/* 80A2EB78  90 1D 0B 8C */	stw r0, 0xb8c(r29)
/* 80A2EB7C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A2EB80  D0 1D 0B 9C */	stfs f0, 0xb9c(r29)
lbl_80A2EB84:
/* 80A2EB84  83 9D 0B B4 */	lwz r28, 0xbb4(r29)
/* 80A2EB88  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A2EB8C  4B 71 6D 0D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2EB90  93 9D 0B B4 */	stw r28, 0xbb4(r29)
/* 80A2EB94  38 00 00 00 */	li r0, 0
/* 80A2EB98  90 1D 0B B0 */	stw r0, 0xbb0(r29)
/* 80A2EB9C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A2EBA0  D0 1D 0B C0 */	stfs f0, 0xbc0(r29)
/* 80A2EBA4  88 1D 15 CC */	lbz r0, 0x15cc(r29)
/* 80A2EBA8  28 00 00 00 */	cmplwi r0, 0
/* 80A2EBAC  41 82 00 10 */	beq lbl_80A2EBBC
/* 80A2EBB0  38 00 02 E4 */	li r0, 0x2e4
/* 80A2EBB4  90 1D 0A B0 */	stw r0, 0xab0(r29)
/* 80A2EBB8  48 00 00 30 */	b lbl_80A2EBE8
lbl_80A2EBBC:
/* 80A2EBBC  2C 1F 00 00 */	cmpwi r31, 0
/* 80A2EBC0  41 82 00 10 */	beq lbl_80A2EBD0
/* 80A2EBC4  38 00 02 E2 */	li r0, 0x2e2
/* 80A2EBC8  90 1D 0A B0 */	stw r0, 0xab0(r29)
/* 80A2EBCC  48 00 00 1C */	b lbl_80A2EBE8
lbl_80A2EBD0:
/* 80A2EBD0  38 00 02 E3 */	li r0, 0x2e3
/* 80A2EBD4  90 1D 0A B0 */	stw r0, 0xab0(r29)
/* 80A2EBD8  48 00 00 10 */	b lbl_80A2EBE8
lbl_80A2EBDC:
/* 80A2EBDC  7F A3 EB 78 */	mr r3, r29
/* 80A2EBE0  38 80 00 00 */	li r4, 0
/* 80A2EBE4  48 00 91 3D */	bl calcSwordAttackMove__10daNpc_Kn_cFi
lbl_80A2EBE8:
/* 80A2EBE8  38 60 00 01 */	li r3, 1
/* 80A2EBEC  39 61 00 20 */	addi r11, r1, 0x20
/* 80A2EBF0  4B 93 36 35 */	bl _restgpr_28
/* 80A2EBF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A2EBF8  7C 08 03 A6 */	mtlr r0
/* 80A2EBFC  38 21 00 20 */	addi r1, r1, 0x20
/* 80A2EC00  4E 80 00 20 */	blr 

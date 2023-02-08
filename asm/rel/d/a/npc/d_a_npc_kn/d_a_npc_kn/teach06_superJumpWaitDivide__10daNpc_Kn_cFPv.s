lbl_80A30708:
/* 80A30708  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A3070C  7C 08 02 A6 */	mflr r0
/* 80A30710  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A30714  39 61 00 30 */	addi r11, r1, 0x30
/* 80A30718  4B 93 1A C1 */	bl _savegpr_28
/* 80A3071C  7C 7D 1B 78 */	mr r29, r3
/* 80A30720  3C 60 80 A4 */	lis r3, mCcDObjData__10daNpc_Kn_c@ha /* 0x80A408C8@ha */
/* 80A30724  3B C3 08 C8 */	addi r30, r3, mCcDObjData__10daNpc_Kn_c@l /* 0x80A408C8@l */
/* 80A30728  A0 1D 0E 2A */	lhz r0, 0xe2a(r29)
/* 80A3072C  2C 00 00 02 */	cmpwi r0, 2
/* 80A30730  41 82 00 FC */	beq lbl_80A3082C
/* 80A30734  40 80 05 F4 */	bge lbl_80A30D28
/* 80A30738  2C 00 00 00 */	cmpwi r0, 0
/* 80A3073C  40 80 00 0C */	bge lbl_80A30748
/* 80A30740  48 00 05 E8 */	b lbl_80A30D28
/* 80A30744  48 00 05 E4 */	b lbl_80A30D28
lbl_80A30748:
/* 80A30748  80 1D 0B 8C */	lwz r0, 0xb8c(r29)
/* 80A3074C  2C 00 00 01 */	cmpwi r0, 1
/* 80A30750  41 82 00 24 */	beq lbl_80A30774
/* 80A30754  83 9D 0B 90 */	lwz r28, 0xb90(r29)
/* 80A30758  38 7D 0B 84 */	addi r3, r29, 0xb84
/* 80A3075C  4B 71 51 3D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A30760  93 9D 0B 90 */	stw r28, 0xb90(r29)
/* 80A30764  38 00 00 01 */	li r0, 1
/* 80A30768  90 1D 0B 8C */	stw r0, 0xb8c(r29)
/* 80A3076C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A30770  D0 1D 0B 9C */	stfs f0, 0xb9c(r29)
lbl_80A30774:
/* 80A30774  80 1D 0B B0 */	lwz r0, 0xbb0(r29)
/* 80A30778  2C 00 00 09 */	cmpwi r0, 9
/* 80A3077C  41 82 00 24 */	beq lbl_80A307A0
/* 80A30780  83 9D 0B B4 */	lwz r28, 0xbb4(r29)
/* 80A30784  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A30788  4B 71 51 11 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3078C  93 9D 0B B4 */	stw r28, 0xbb4(r29)
/* 80A30790  38 00 00 09 */	li r0, 9
/* 80A30794  90 1D 0B B0 */	stw r0, 0xbb0(r29)
/* 80A30798  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A3079C  D0 1D 0B C0 */	stfs f0, 0xbc0(r29)
lbl_80A307A0:
/* 80A307A0  80 1D 0D 14 */	lwz r0, 0xd14(r29)
/* 80A307A4  2C 00 00 01 */	cmpwi r0, 1
/* 80A307A8  41 82 00 28 */	beq lbl_80A307D0
/* 80A307AC  38 7D 0B DC */	addi r3, r29, 0xbdc
/* 80A307B0  4B 71 4F 4D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A307B4  38 00 00 00 */	li r0, 0
/* 80A307B8  90 1D 0B FC */	stw r0, 0xbfc(r29)
/* 80A307BC  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A307C0  D0 1D 0D 28 */	stfs f0, 0xd28(r29)
/* 80A307C4  98 1D 0D 33 */	stb r0, 0xd33(r29)
/* 80A307C8  38 00 00 01 */	li r0, 1
/* 80A307CC  90 1D 0D 14 */	stw r0, 0xd14(r29)
lbl_80A307D0:
/* 80A307D0  38 60 00 00 */	li r3, 0
/* 80A307D4  98 7D 0D 33 */	stb r3, 0xd33(r29)
/* 80A307D8  38 00 00 01 */	li r0, 1
/* 80A307DC  98 1D 15 AF */	stb r0, 0x15af(r29)
/* 80A307E0  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A307E4  D0 1D 15 B0 */	stfs f0, 0x15b0(r29)
/* 80A307E8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80A307EC  D0 1D 15 B4 */	stfs f0, 0x15b4(r29)
/* 80A307F0  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A307F4  D0 1D 15 B8 */	stfs f0, 0x15b8(r29)
/* 80A307F8  98 7D 15 BC */	stb r3, 0x15bc(r29)
/* 80A307FC  38 9E 00 A8 */	addi r4, r30, 0xa8
/* 80A30800  A8 64 00 AC */	lha r3, 0xac(r4)
/* 80A30804  A8 84 00 AE */	lha r4, 0xae(r4)
/* 80A30808  48 00 B5 5D */	bl func_80A3BD64
/* 80A3080C  B0 7D 15 D0 */	sth r3, 0x15d0(r29)
/* 80A30810  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A30814  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A30818  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 80A3081C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80A30820  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 80A30824  38 00 00 02 */	li r0, 2
/* 80A30828  B0 1D 0E 2A */	sth r0, 0xe2a(r29)
lbl_80A3082C:
/* 80A3082C  7F A3 EB 78 */	mr r3, r29
/* 80A30830  48 00 72 D9 */	bl calcSlip__10daNpc_Kn_cFv
/* 80A30834  38 7D 08 C4 */	addi r3, r29, 0x8c4
/* 80A30838  4B 65 2F F9 */	bl Move__10dCcD_GSttsFv
/* 80A3083C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A30840  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A30844  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80A30848  8B 83 05 68 */	lbz r28, 0x568(r3)
/* 80A3084C  38 1C FF EE */	addi r0, r28, -18
/* 80A30850  28 00 00 01 */	cmplwi r0, 1
/* 80A30854  40 81 00 0C */	ble lbl_80A30860
/* 80A30858  2C 1C 00 14 */	cmpwi r28, 0x14
/* 80A3085C  40 82 00 1C */	bne lbl_80A30878
lbl_80A30860:
/* 80A30860  38 00 00 01 */	li r0, 1
/* 80A30864  98 1D 12 96 */	stb r0, 0x1296(r29)
/* 80A30868  80 1D 12 78 */	lwz r0, 0x1278(r29)
/* 80A3086C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80A30870  90 1D 12 78 */	stw r0, 0x1278(r29)
/* 80A30874  48 00 00 18 */	b lbl_80A3088C
lbl_80A30878:
/* 80A30878  38 00 00 02 */	li r0, 2
/* 80A3087C  98 1D 12 96 */	stb r0, 0x1296(r29)
/* 80A30880  80 1D 12 78 */	lwz r0, 0x1278(r29)
/* 80A30884  60 00 00 01 */	ori r0, r0, 1
/* 80A30888  90 1D 12 78 */	stw r0, 0x1278(r29)
lbl_80A3088C:
/* 80A3088C  38 7D 11 DC */	addi r3, r29, 0x11dc
/* 80A30890  4B 65 3B D1 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80A30894  28 03 00 00 */	cmplwi r3, 0
/* 80A30898  41 82 03 B8 */	beq lbl_80A30C50
/* 80A3089C  2C 1C 00 13 */	cmpwi r28, 0x13
/* 80A308A0  41 82 00 0C */	beq lbl_80A308AC
/* 80A308A4  2C 1C 00 14 */	cmpwi r28, 0x14
/* 80A308A8  40 82 02 08 */	bne lbl_80A30AB0
lbl_80A308AC:
/* 80A308AC  38 00 00 10 */	li r0, 0x10
/* 80A308B0  98 1D 15 AE */	stb r0, 0x15ae(r29)
/* 80A308B4  80 7D 04 A4 */	lwz r3, 0x4a4(r29)
/* 80A308B8  4B 5F 0A A1 */	bl fpcEx_SearchByID__FUi
/* 80A308BC  28 03 00 00 */	cmplwi r3, 0
/* 80A308C0  41 82 00 0C */	beq lbl_80A308CC
/* 80A308C4  38 00 00 02 */	li r0, 2
/* 80A308C8  98 03 15 BD */	stb r0, 0x15bd(r3)
lbl_80A308CC:
/* 80A308CC  7F A3 EB 78 */	mr r3, r29
/* 80A308D0  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A308D4  4B 5E 9E 3D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A308D8  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A308DC  7C 00 18 50 */	subf r0, r0, r3
/* 80A308E0  7C 00 07 35 */	extsh. r0, r0
/* 80A308E4  40 80 00 08 */	bge lbl_80A308EC
/* 80A308E8  7C 00 00 D0 */	neg r0, r0
lbl_80A308EC:
/* 80A308EC  2C 00 40 00 */	cmpwi r0, 0x4000
/* 80A308F0  40 80 00 B0 */	bge lbl_80A309A0
/* 80A308F4  80 1D 0B 8C */	lwz r0, 0xb8c(r29)
/* 80A308F8  2C 00 00 01 */	cmpwi r0, 1
/* 80A308FC  41 82 00 24 */	beq lbl_80A30920
/* 80A30900  83 9D 0B 90 */	lwz r28, 0xb90(r29)
/* 80A30904  38 7D 0B 84 */	addi r3, r29, 0xb84
/* 80A30908  4B 71 4F 91 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3090C  93 9D 0B 90 */	stw r28, 0xb90(r29)
/* 80A30910  38 00 00 01 */	li r0, 1
/* 80A30914  90 1D 0B 8C */	stw r0, 0xb8c(r29)
/* 80A30918  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A3091C  D0 1D 0B 9C */	stfs f0, 0xb9c(r29)
lbl_80A30920:
/* 80A30920  80 1D 0B B0 */	lwz r0, 0xbb0(r29)
/* 80A30924  2C 00 00 12 */	cmpwi r0, 0x12
/* 80A30928  41 82 00 24 */	beq lbl_80A3094C
/* 80A3092C  83 9D 0B B4 */	lwz r28, 0xbb4(r29)
/* 80A30930  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A30934  4B 71 4F 65 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A30938  93 9D 0B B4 */	stw r28, 0xbb4(r29)
/* 80A3093C  38 00 00 12 */	li r0, 0x12
/* 80A30940  90 1D 0B B0 */	stw r0, 0xbb0(r29)
/* 80A30944  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A30948  D0 1D 0B C0 */	stfs f0, 0xbc0(r29)
lbl_80A3094C:
/* 80A3094C  7F A3 EB 78 */	mr r3, r29
/* 80A30950  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A30954  4B 5E 9D BD */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A30958  7C 64 1B 78 */	mr r4, r3
/* 80A3095C  7F A3 EB 78 */	mr r3, r29
/* 80A30960  48 00 A1 91 */	bl setAngle__10daNpc_Kn_cFs
/* 80A30964  38 7E 00 A8 */	addi r3, r30, 0xa8
/* 80A30968  C0 03 00 A0 */	lfs f0, 0xa0(r3)
/* 80A3096C  FC 00 00 50 */	fneg f0, f0
/* 80A30970  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A30974  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005004F@ha */
/* 80A30978  38 03 00 4F */	addi r0, r3, 0x004F /* 0x0005004F@l */
/* 80A3097C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A30980  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80A30984  38 81 00 0C */	addi r4, r1, 0xc
/* 80A30988  38 A0 FF FF */	li r5, -1
/* 80A3098C  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 80A30990  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A30994  7D 89 03 A6 */	mtctr r12
/* 80A30998  4E 80 04 21 */	bctrl 
/* 80A3099C  48 00 00 B4 */	b lbl_80A30A50
lbl_80A309A0:
/* 80A309A0  80 1D 0B 8C */	lwz r0, 0xb8c(r29)
/* 80A309A4  2C 00 00 01 */	cmpwi r0, 1
/* 80A309A8  41 82 00 24 */	beq lbl_80A309CC
/* 80A309AC  83 9D 0B 90 */	lwz r28, 0xb90(r29)
/* 80A309B0  38 7D 0B 84 */	addi r3, r29, 0xb84
/* 80A309B4  4B 71 4E E5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A309B8  93 9D 0B 90 */	stw r28, 0xb90(r29)
/* 80A309BC  38 00 00 01 */	li r0, 1
/* 80A309C0  90 1D 0B 8C */	stw r0, 0xb8c(r29)
/* 80A309C4  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A309C8  D0 1D 0B 9C */	stfs f0, 0xb9c(r29)
lbl_80A309CC:
/* 80A309CC  80 1D 0B B0 */	lwz r0, 0xbb0(r29)
/* 80A309D0  2C 00 00 0E */	cmpwi r0, 0xe
/* 80A309D4  41 82 00 24 */	beq lbl_80A309F8
/* 80A309D8  83 9D 0B B4 */	lwz r28, 0xbb4(r29)
/* 80A309DC  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A309E0  4B 71 4E B9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A309E4  93 9D 0B B4 */	stw r28, 0xbb4(r29)
/* 80A309E8  38 00 00 0E */	li r0, 0xe
/* 80A309EC  90 1D 0B B0 */	stw r0, 0xbb0(r29)
/* 80A309F0  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A309F4  D0 1D 0B C0 */	stfs f0, 0xbc0(r29)
lbl_80A309F8:
/* 80A309F8  7F A3 EB 78 */	mr r3, r29
/* 80A309FC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A30A00  4B 5E 9D 11 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A30A04  7C 64 1B 78 */	mr r4, r3
/* 80A30A08  7F A3 EB 78 */	mr r3, r29
/* 80A30A0C  3C 84 00 01 */	addis r4, r4, 1
/* 80A30A10  38 04 80 00 */	addi r0, r4, -32768
/* 80A30A14  7C 04 07 34 */	extsh r4, r0
/* 80A30A18  48 00 A0 D9 */	bl setAngle__10daNpc_Kn_cFs
/* 80A30A1C  38 7E 00 A8 */	addi r3, r30, 0xa8
/* 80A30A20  C0 03 00 A0 */	lfs f0, 0xa0(r3)
/* 80A30A24  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A30A28  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005004F@ha */
/* 80A30A2C  38 03 00 4F */	addi r0, r3, 0x004F /* 0x0005004F@l */
/* 80A30A30  90 01 00 08 */	stw r0, 8(r1)
/* 80A30A34  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80A30A38  38 81 00 08 */	addi r4, r1, 8
/* 80A30A3C  38 A0 FF FF */	li r5, -1
/* 80A30A40  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 80A30A44  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A30A48  7D 89 03 A6 */	mtctr r12
/* 80A30A4C  4E 80 04 21 */	bctrl 
lbl_80A30A50:
/* 80A30A50  80 1D 0D 14 */	lwz r0, 0xd14(r29)
/* 80A30A54  2C 00 00 00 */	cmpwi r0, 0
/* 80A30A58  41 82 00 24 */	beq lbl_80A30A7C
/* 80A30A5C  38 7D 0B DC */	addi r3, r29, 0xbdc
/* 80A30A60  4B 71 4C 9D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A30A64  38 00 00 00 */	li r0, 0
/* 80A30A68  90 1D 0B FC */	stw r0, 0xbfc(r29)
/* 80A30A6C  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A30A70  D0 1D 0D 28 */	stfs f0, 0xd28(r29)
/* 80A30A74  98 1D 0D 33 */	stb r0, 0xd33(r29)
/* 80A30A78  90 1D 0D 14 */	stw r0, 0xd14(r29)
lbl_80A30A7C:
/* 80A30A7C  38 00 00 00 */	li r0, 0
/* 80A30A80  98 1D 0D 33 */	stb r0, 0xd33(r29)
/* 80A30A84  38 7E 00 A8 */	addi r3, r30, 0xa8
/* 80A30A88  C0 03 00 A4 */	lfs f0, 0xa4(r3)
/* 80A30A8C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80A30A90  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80A30A94  3C 80 00 04 */	lis r4, 4
/* 80A30A98  38 A0 00 1F */	li r5, 0x1f
/* 80A30A9C  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 80A30AA0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80A30AA4  7D 89 03 A6 */	mtctr r12
/* 80A30AA8  4E 80 04 21 */	bctrl 
/* 80A30AAC  48 00 02 7C */	b lbl_80A30D28
lbl_80A30AB0:
/* 80A30AB0  2C 1C 00 12 */	cmpwi r28, 0x12
/* 80A30AB4  40 82 00 EC */	bne lbl_80A30BA0
/* 80A30AB8  38 7D 12 78 */	addi r3, r29, 0x1278
/* 80A30ABC  4B 65 2B CD */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 80A30AC0  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 80A30AC4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A30AC8  4B 84 01 3D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80A30ACC  7C 64 1B 78 */	mr r4, r3
/* 80A30AD0  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A30AD4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A30AD8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A30ADC  38 7E 00 A8 */	addi r3, r30, 0xa8
/* 80A30AE0  C0 03 00 94 */	lfs f0, 0x94(r3)
/* 80A30AE4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A30AE8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A30AEC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A30AF0  4B 5D B8 ED */	bl mDoMtx_YrotS__FPA4_fs
/* 80A30AF4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A30AF8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A30AFC  38 81 00 10 */	addi r4, r1, 0x10
/* 80A30B00  38 BD 15 B0 */	addi r5, r29, 0x15b0
/* 80A30B04  4B 91 62 69 */	bl PSMTXMultVec
/* 80A30B08  38 7D 15 B0 */	addi r3, r29, 0x15b0
/* 80A30B0C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A30B10  7C 65 1B 78 */	mr r5, r3
/* 80A30B14  4B 91 65 7D */	bl PSVECAdd
/* 80A30B18  38 00 00 01 */	li r0, 1
/* 80A30B1C  98 1D 15 BC */	stb r0, 0x15bc(r29)
/* 80A30B20  38 7D 11 DC */	addi r3, r29, 0x11dc
/* 80A30B24  81 9D 12 18 */	lwz r12, 0x1218(r29)
/* 80A30B28  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80A30B2C  7D 89 03 A6 */	mtctr r12
/* 80A30B30  4E 80 04 21 */	bctrl 
/* 80A30B34  80 1D 0B 8C */	lwz r0, 0xb8c(r29)
/* 80A30B38  2C 00 00 01 */	cmpwi r0, 1
/* 80A30B3C  41 82 00 24 */	beq lbl_80A30B60
/* 80A30B40  83 9D 0B 90 */	lwz r28, 0xb90(r29)
/* 80A30B44  38 7D 0B 84 */	addi r3, r29, 0xb84
/* 80A30B48  4B 71 4D 51 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A30B4C  93 9D 0B 90 */	stw r28, 0xb90(r29)
/* 80A30B50  38 00 00 01 */	li r0, 1
/* 80A30B54  90 1D 0B 8C */	stw r0, 0xb8c(r29)
/* 80A30B58  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A30B5C  D0 1D 0B 9C */	stfs f0, 0xb9c(r29)
lbl_80A30B60:
/* 80A30B60  83 9D 0B B4 */	lwz r28, 0xbb4(r29)
/* 80A30B64  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A30B68  4B 71 4D 31 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A30B6C  93 9D 0B B4 */	stw r28, 0xbb4(r29)
/* 80A30B70  38 00 00 1E */	li r0, 0x1e
/* 80A30B74  90 1D 0B B0 */	stw r0, 0xbb0(r29)
/* 80A30B78  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A30B7C  D0 1D 0B C0 */	stfs f0, 0xbc0(r29)
/* 80A30B80  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80A30B84  3C 80 00 04 */	lis r4, 4
/* 80A30B88  38 A0 00 1E */	li r5, 0x1e
/* 80A30B8C  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 80A30B90  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80A30B94  7D 89 03 A6 */	mtctr r12
/* 80A30B98  4E 80 04 21 */	bctrl 
/* 80A30B9C  48 00 01 8C */	b lbl_80A30D28
lbl_80A30BA0:
/* 80A30BA0  7F A3 EB 78 */	mr r3, r29
/* 80A30BA4  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A30BA8  4B 5E 9B 69 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A30BAC  7C 64 1B 78 */	mr r4, r3
/* 80A30BB0  7F A3 EB 78 */	mr r3, r29
/* 80A30BB4  48 00 9F 3D */	bl setAngle__10daNpc_Kn_cFs
/* 80A30BB8  80 1D 0B 8C */	lwz r0, 0xb8c(r29)
/* 80A30BBC  2C 00 00 01 */	cmpwi r0, 1
/* 80A30BC0  41 82 00 24 */	beq lbl_80A30BE4
/* 80A30BC4  83 FD 0B 90 */	lwz r31, 0xb90(r29)
/* 80A30BC8  38 7D 0B 84 */	addi r3, r29, 0xb84
/* 80A30BCC  4B 71 4C CD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A30BD0  93 FD 0B 90 */	stw r31, 0xb90(r29)
/* 80A30BD4  38 00 00 01 */	li r0, 1
/* 80A30BD8  90 1D 0B 8C */	stw r0, 0xb8c(r29)
/* 80A30BDC  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A30BE0  D0 1D 0B 9C */	stfs f0, 0xb9c(r29)
lbl_80A30BE4:
/* 80A30BE4  83 FD 0B B4 */	lwz r31, 0xbb4(r29)
/* 80A30BE8  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A30BEC  4B 71 4C AD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A30BF0  93 FD 0B B4 */	stw r31, 0xbb4(r29)
/* 80A30BF4  38 00 00 1B */	li r0, 0x1b
/* 80A30BF8  90 1D 0B B0 */	stw r0, 0xbb0(r29)
/* 80A30BFC  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A30C00  D0 1D 0B C0 */	stfs f0, 0xbc0(r29)
/* 80A30C04  2C 1C 00 29 */	cmpwi r28, 0x29
/* 80A30C08  40 82 00 28 */	bne lbl_80A30C30
/* 80A30C0C  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80A30C10  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040002@ha */
/* 80A30C14  38 84 00 02 */	addi r4, r4, 0x0002 /* 0x00040002@l */
/* 80A30C18  38 A0 00 28 */	li r5, 0x28
/* 80A30C1C  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 80A30C20  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80A30C24  7D 89 03 A6 */	mtctr r12
/* 80A30C28  4E 80 04 21 */	bctrl 
/* 80A30C2C  48 00 00 FC */	b lbl_80A30D28
lbl_80A30C30:
/* 80A30C30  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80A30C34  3C 80 00 04 */	lis r4, 4
/* 80A30C38  38 A0 00 28 */	li r5, 0x28
/* 80A30C3C  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 80A30C40  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80A30C44  7D 89 03 A6 */	mtctr r12
/* 80A30C48  4E 80 04 21 */	bctrl 
/* 80A30C4C  48 00 00 DC */	b lbl_80A30D28
lbl_80A30C50:
/* 80A30C50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A30C54  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A30C58  88 1C 4F AD */	lbz r0, 0x4fad(r28)
/* 80A30C5C  28 00 00 00 */	cmplwi r0, 0
/* 80A30C60  41 82 00 1C */	beq lbl_80A30C7C
/* 80A30C64  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A30C68  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A30C6C  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 80A30C70  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80A30C74  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 80A30C78  48 00 00 10 */	b lbl_80A30C88
lbl_80A30C7C:
/* 80A30C7C  7F A3 EB 78 */	mr r3, r29
/* 80A30C80  38 80 00 01 */	li r4, 1
/* 80A30C84  48 00 70 9D */	bl calcSwordAttackMove__10daNpc_Kn_cFi
lbl_80A30C88:
/* 80A30C88  7F A3 EB 78 */	mr r3, r29
/* 80A30C8C  4B FF BE A5 */	bl checkCollisionSword__10daNpc_Kn_cFv
/* 80A30C90  2C 03 00 00 */	cmpwi r3, 0
/* 80A30C94  41 82 00 28 */	beq lbl_80A30CBC
/* 80A30C98  80 7D 04 A4 */	lwz r3, 0x4a4(r29)
/* 80A30C9C  4B 5F 06 BD */	bl fpcEx_SearchByID__FUi
/* 80A30CA0  28 03 00 00 */	cmplwi r3, 0
/* 80A30CA4  41 82 00 84 */	beq lbl_80A30D28
/* 80A30CA8  38 00 00 01 */	li r0, 1
/* 80A30CAC  98 03 15 BD */	stb r0, 0x15bd(r3)
/* 80A30CB0  80 1D 0A B0 */	lwz r0, 0xab0(r29)
/* 80A30CB4  90 03 0A B0 */	stw r0, 0xab0(r3)
/* 80A30CB8  48 00 00 70 */	b lbl_80A30D28
lbl_80A30CBC:
/* 80A30CBC  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80A30CC0  80 03 05 84 */	lwz r0, 0x584(r3)
/* 80A30CC4  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 80A30CC8  40 82 00 60 */	bne lbl_80A30D28
/* 80A30CCC  3B C0 00 00 */	li r30, 0
/* 80A30CD0  38 7C 56 B8 */	addi r3, r28, 0x56b8
/* 80A30CD4  4B 64 2B 11 */	bl LockonTruth__12dAttention_cFv
/* 80A30CD8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A30CDC  41 82 00 08 */	beq lbl_80A30CE4
/* 80A30CE0  3B C0 00 01 */	li r30, 1
lbl_80A30CE4:
/* 80A30CE4  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80A30CE8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A30CEC  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80A30CF0  7D 89 03 A6 */	mtctr r12
/* 80A30CF4  4E 80 04 21 */	bctrl 
/* 80A30CF8  2C 03 00 00 */	cmpwi r3, 0
/* 80A30CFC  41 82 00 10 */	beq lbl_80A30D0C
/* 80A30D00  38 00 02 FB */	li r0, 0x2fb
/* 80A30D04  90 1D 0A B0 */	stw r0, 0xab0(r29)
/* 80A30D08  48 00 00 20 */	b lbl_80A30D28
lbl_80A30D0C:
/* 80A30D0C  2C 1E 00 00 */	cmpwi r30, 0
/* 80A30D10  41 82 00 10 */	beq lbl_80A30D20
/* 80A30D14  38 00 02 FC */	li r0, 0x2fc
/* 80A30D18  90 1D 0A B0 */	stw r0, 0xab0(r29)
/* 80A30D1C  48 00 00 0C */	b lbl_80A30D28
lbl_80A30D20:
/* 80A30D20  38 00 02 FD */	li r0, 0x2fd
/* 80A30D24  90 1D 0A B0 */	stw r0, 0xab0(r29)
lbl_80A30D28:
/* 80A30D28  38 60 00 01 */	li r3, 1
/* 80A30D2C  39 61 00 30 */	addi r11, r1, 0x30
/* 80A30D30  4B 93 14 F5 */	bl _restgpr_28
/* 80A30D34  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A30D38  7C 08 03 A6 */	mtlr r0
/* 80A30D3C  38 21 00 30 */	addi r1, r1, 0x30
/* 80A30D40  4E 80 00 20 */	blr 

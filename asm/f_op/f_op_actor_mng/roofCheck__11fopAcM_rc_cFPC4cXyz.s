lbl_8001DD1C:
/* 8001DD1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001DD20  7C 08 02 A6 */	mflr r0
/* 8001DD24  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001DD28  C0 03 00 00 */	lfs f0, 0(r3)
/* 8001DD2C  3C 80 80 3F */	lis r4, mRoofCheck__11fopAcM_rc_c@ha /* 0x803F1D24@ha */
/* 8001DD30  38 84 1D 24 */	addi r4, r4, mRoofCheck__11fopAcM_rc_c@l /* 0x803F1D24@l */
/* 8001DD34  D0 04 00 3C */	stfs f0, 0x3c(r4)
/* 8001DD38  C0 03 00 04 */	lfs f0, 4(r3)
/* 8001DD3C  D0 04 00 40 */	stfs f0, 0x40(r4)
/* 8001DD40  C0 03 00 08 */	lfs f0, 8(r3)
/* 8001DD44  D0 04 00 44 */	stfs f0, 0x44(r4)
/* 8001DD48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8001DD4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8001DD50  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8001DD54  48 05 77 49 */	bl RoofChk__4dBgSFP12dBgS_RoofChk
/* 8001DD58  D0 2D 87 54 */	stfs f1, mRoofY__11fopAcM_rc_c(r13)
/* 8001DD5C  C0 42 82 5C */	lfs f2, lit_6517(r2)
/* 8001DD60  FC 00 08 18 */	frsp f0, f1
/* 8001DD64  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 8001DD68  7C 00 00 26 */	mfcr r0
/* 8001DD6C  54 00 1F FE */	rlwinm r0, r0, 3, 0x1f, 0x1f
/* 8001DD70  68 03 00 01 */	xori r3, r0, 1
/* 8001DD74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001DD78  7C 08 03 A6 */	mtlr r0
/* 8001DD7C  38 21 00 10 */	addi r1, r1, 0x10
/* 8001DD80  4E 80 00 20 */	blr 

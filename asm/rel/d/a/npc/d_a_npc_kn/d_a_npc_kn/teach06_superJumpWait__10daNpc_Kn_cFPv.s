lbl_80A2FC80:
/* 80A2FC80  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A2FC84  7C 08 02 A6 */	mflr r0
/* 80A2FC88  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A2FC8C  39 61 00 30 */	addi r11, r1, 0x30
/* 80A2FC90  4B 93 25 48 */	b _savegpr_28
/* 80A2FC94  7C 7D 1B 78 */	mr r29, r3
/* 80A2FC98  3C 60 80 A4 */	lis r3, mCcDObjData__10daNpc_Kn_c@ha
/* 80A2FC9C  3B C3 08 C8 */	addi r30, r3, mCcDObjData__10daNpc_Kn_c@l
/* 80A2FCA0  A0 1D 0E 2A */	lhz r0, 0xe2a(r29)
/* 80A2FCA4  2C 00 00 02 */	cmpwi r0, 2
/* 80A2FCA8  41 82 01 04 */	beq lbl_80A2FDAC
/* 80A2FCAC  40 80 06 D0 */	bge lbl_80A3037C
/* 80A2FCB0  2C 00 00 00 */	cmpwi r0, 0
/* 80A2FCB4  40 80 00 0C */	bge lbl_80A2FCC0
/* 80A2FCB8  48 00 06 C4 */	b lbl_80A3037C
/* 80A2FCBC  48 00 06 C0 */	b lbl_80A3037C
lbl_80A2FCC0:
/* 80A2FCC0  80 1D 0B 8C */	lwz r0, 0xb8c(r29)
/* 80A2FCC4  2C 00 00 01 */	cmpwi r0, 1
/* 80A2FCC8  41 82 00 24 */	beq lbl_80A2FCEC
/* 80A2FCCC  83 9D 0B 90 */	lwz r28, 0xb90(r29)
/* 80A2FCD0  38 7D 0B 84 */	addi r3, r29, 0xb84
/* 80A2FCD4  4B 71 5B C4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2FCD8  93 9D 0B 90 */	stw r28, 0xb90(r29)
/* 80A2FCDC  38 00 00 01 */	li r0, 1
/* 80A2FCE0  90 1D 0B 8C */	stw r0, 0xb8c(r29)
/* 80A2FCE4  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A2FCE8  D0 1D 0B 9C */	stfs f0, 0xb9c(r29)
lbl_80A2FCEC:
/* 80A2FCEC  80 1D 0B B0 */	lwz r0, 0xbb0(r29)
/* 80A2FCF0  2C 00 00 09 */	cmpwi r0, 9
/* 80A2FCF4  41 82 00 24 */	beq lbl_80A2FD18
/* 80A2FCF8  83 9D 0B B4 */	lwz r28, 0xbb4(r29)
/* 80A2FCFC  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A2FD00  4B 71 5B 98 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2FD04  93 9D 0B B4 */	stw r28, 0xbb4(r29)
/* 80A2FD08  38 00 00 09 */	li r0, 9
/* 80A2FD0C  90 1D 0B B0 */	stw r0, 0xbb0(r29)
/* 80A2FD10  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A2FD14  D0 1D 0B C0 */	stfs f0, 0xbc0(r29)
lbl_80A2FD18:
/* 80A2FD18  80 1D 0D 14 */	lwz r0, 0xd14(r29)
/* 80A2FD1C  2C 00 00 01 */	cmpwi r0, 1
/* 80A2FD20  41 82 00 28 */	beq lbl_80A2FD48
/* 80A2FD24  38 7D 0B DC */	addi r3, r29, 0xbdc
/* 80A2FD28  4B 71 59 D4 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A2FD2C  38 00 00 00 */	li r0, 0
/* 80A2FD30  90 1D 0B FC */	stw r0, 0xbfc(r29)
/* 80A2FD34  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A2FD38  D0 1D 0D 28 */	stfs f0, 0xd28(r29)
/* 80A2FD3C  98 1D 0D 33 */	stb r0, 0xd33(r29)
/* 80A2FD40  38 00 00 01 */	li r0, 1
/* 80A2FD44  90 1D 0D 14 */	stw r0, 0xd14(r29)
lbl_80A2FD48:
/* 80A2FD48  38 60 00 00 */	li r3, 0
/* 80A2FD4C  98 7D 0D 33 */	stb r3, 0xd33(r29)
/* 80A2FD50  38 9E 00 A8 */	addi r4, r30, 0xa8
/* 80A2FD54  A8 04 00 8E */	lha r0, 0x8e(r4)
/* 80A2FD58  90 1D 0D EC */	stw r0, 0xdec(r29)
/* 80A2FD5C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A2FD60  D0 1D 15 B0 */	stfs f0, 0x15b0(r29)
/* 80A2FD64  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80A2FD68  D0 1D 15 B4 */	stfs f0, 0x15b4(r29)
/* 80A2FD6C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A2FD70  D0 1D 15 B8 */	stfs f0, 0x15b8(r29)
/* 80A2FD74  98 7D 15 BC */	stb r3, 0x15bc(r29)
/* 80A2FD78  A8 64 00 AC */	lha r3, 0xac(r4)
/* 80A2FD7C  A8 84 00 AE */	lha r4, 0xae(r4)
/* 80A2FD80  48 00 BF E5 */	bl func_80A3BD64
/* 80A2FD84  B0 7D 15 D0 */	sth r3, 0x15d0(r29)
/* 80A2FD88  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A2FD8C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A2FD90  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 80A2FD94  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80A2FD98  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 80A2FD9C  38 00 00 00 */	li r0, 0
/* 80A2FDA0  98 1D 15 BD */	stb r0, 0x15bd(r29)
/* 80A2FDA4  38 00 00 02 */	li r0, 2
/* 80A2FDA8  B0 1D 0E 2A */	sth r0, 0xe2a(r29)
lbl_80A2FDAC:
/* 80A2FDAC  7F A3 EB 78 */	mr r3, r29
/* 80A2FDB0  48 00 7D 59 */	bl calcSlip__10daNpc_Kn_cFv
/* 80A2FDB4  38 7D 08 C4 */	addi r3, r29, 0x8c4
/* 80A2FDB8  4B 65 3A 78 */	b Move__10dCcD_GSttsFv
/* 80A2FDBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A2FDC0  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80A2FDC4  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80A2FDC8  8B 83 05 68 */	lbz r28, 0x568(r3)
/* 80A2FDCC  38 1C FF EE */	addi r0, r28, -18
/* 80A2FDD0  28 00 00 01 */	cmplwi r0, 1
/* 80A2FDD4  40 81 00 0C */	ble lbl_80A2FDE0
/* 80A2FDD8  2C 1C 00 14 */	cmpwi r28, 0x14
/* 80A2FDDC  40 82 00 1C */	bne lbl_80A2FDF8
lbl_80A2FDE0:
/* 80A2FDE0  38 00 00 01 */	li r0, 1
/* 80A2FDE4  98 1D 12 96 */	stb r0, 0x1296(r29)
/* 80A2FDE8  80 1D 12 78 */	lwz r0, 0x1278(r29)
/* 80A2FDEC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80A2FDF0  90 1D 12 78 */	stw r0, 0x1278(r29)
/* 80A2FDF4  48 00 00 18 */	b lbl_80A2FE0C
lbl_80A2FDF8:
/* 80A2FDF8  38 00 00 02 */	li r0, 2
/* 80A2FDFC  98 1D 12 96 */	stb r0, 0x1296(r29)
/* 80A2FE00  80 1D 12 78 */	lwz r0, 0x1278(r29)
/* 80A2FE04  60 00 00 01 */	ori r0, r0, 1
/* 80A2FE08  90 1D 12 78 */	stw r0, 0x1278(r29)
lbl_80A2FE0C:
/* 80A2FE0C  38 7D 11 DC */	addi r3, r29, 0x11dc
/* 80A2FE10  4B 65 46 50 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80A2FE14  28 03 00 00 */	cmplwi r3, 0
/* 80A2FE18  41 82 03 B8 */	beq lbl_80A301D0
/* 80A2FE1C  2C 1C 00 13 */	cmpwi r28, 0x13
/* 80A2FE20  41 82 00 0C */	beq lbl_80A2FE2C
/* 80A2FE24  2C 1C 00 14 */	cmpwi r28, 0x14
/* 80A2FE28  40 82 02 08 */	bne lbl_80A30030
lbl_80A2FE2C:
/* 80A2FE2C  88 1D 15 AC */	lbz r0, 0x15ac(r29)
/* 80A2FE30  28 00 00 05 */	cmplwi r0, 5
/* 80A2FE34  40 82 00 10 */	bne lbl_80A2FE44
/* 80A2FE38  38 00 00 15 */	li r0, 0x15
/* 80A2FE3C  B0 1D 0E 36 */	sth r0, 0xe36(r29)
/* 80A2FE40  48 00 00 0C */	b lbl_80A2FE4C
lbl_80A2FE44:
/* 80A2FE44  38 00 00 17 */	li r0, 0x17
/* 80A2FE48  B0 1D 0E 36 */	sth r0, 0xe36(r29)
lbl_80A2FE4C:
/* 80A2FE4C  7F A3 EB 78 */	mr r3, r29
/* 80A2FE50  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A2FE54  4B 5E A8 BC */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A2FE58  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A2FE5C  7C 00 18 50 */	subf r0, r0, r3
/* 80A2FE60  7C 00 07 35 */	extsh. r0, r0
/* 80A2FE64  40 80 00 08 */	bge lbl_80A2FE6C
/* 80A2FE68  7C 00 00 D0 */	neg r0, r0
lbl_80A2FE6C:
/* 80A2FE6C  2C 00 40 00 */	cmpwi r0, 0x4000
/* 80A2FE70  40 80 00 B0 */	bge lbl_80A2FF20
/* 80A2FE74  80 1D 0B 8C */	lwz r0, 0xb8c(r29)
/* 80A2FE78  2C 00 00 01 */	cmpwi r0, 1
/* 80A2FE7C  41 82 00 24 */	beq lbl_80A2FEA0
/* 80A2FE80  83 9D 0B 90 */	lwz r28, 0xb90(r29)
/* 80A2FE84  38 7D 0B 84 */	addi r3, r29, 0xb84
/* 80A2FE88  4B 71 5A 10 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2FE8C  93 9D 0B 90 */	stw r28, 0xb90(r29)
/* 80A2FE90  38 00 00 01 */	li r0, 1
/* 80A2FE94  90 1D 0B 8C */	stw r0, 0xb8c(r29)
/* 80A2FE98  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A2FE9C  D0 1D 0B 9C */	stfs f0, 0xb9c(r29)
lbl_80A2FEA0:
/* 80A2FEA0  80 1D 0B B0 */	lwz r0, 0xbb0(r29)
/* 80A2FEA4  2C 00 00 12 */	cmpwi r0, 0x12
/* 80A2FEA8  41 82 00 24 */	beq lbl_80A2FECC
/* 80A2FEAC  83 9D 0B B4 */	lwz r28, 0xbb4(r29)
/* 80A2FEB0  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A2FEB4  4B 71 59 E4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2FEB8  93 9D 0B B4 */	stw r28, 0xbb4(r29)
/* 80A2FEBC  38 00 00 12 */	li r0, 0x12
/* 80A2FEC0  90 1D 0B B0 */	stw r0, 0xbb0(r29)
/* 80A2FEC4  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A2FEC8  D0 1D 0B C0 */	stfs f0, 0xbc0(r29)
lbl_80A2FECC:
/* 80A2FECC  7F A3 EB 78 */	mr r3, r29
/* 80A2FED0  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A2FED4  4B 5E A8 3C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A2FED8  7C 64 1B 78 */	mr r4, r3
/* 80A2FEDC  7F A3 EB 78 */	mr r3, r29
/* 80A2FEE0  48 00 AC 11 */	bl setAngle__10daNpc_Kn_cFs
/* 80A2FEE4  38 7E 00 A8 */	addi r3, r30, 0xa8
/* 80A2FEE8  C0 03 00 A0 */	lfs f0, 0xa0(r3)
/* 80A2FEEC  FC 00 00 50 */	fneg f0, f0
/* 80A2FEF0  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A2FEF4  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005004F@ha */
/* 80A2FEF8  38 03 00 4F */	addi r0, r3, 0x004F /* 0x0005004F@l */
/* 80A2FEFC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A2FF00  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80A2FF04  38 81 00 0C */	addi r4, r1, 0xc
/* 80A2FF08  38 A0 FF FF */	li r5, -1
/* 80A2FF0C  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 80A2FF10  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A2FF14  7D 89 03 A6 */	mtctr r12
/* 80A2FF18  4E 80 04 21 */	bctrl 
/* 80A2FF1C  48 00 00 B4 */	b lbl_80A2FFD0
lbl_80A2FF20:
/* 80A2FF20  80 1D 0B 8C */	lwz r0, 0xb8c(r29)
/* 80A2FF24  2C 00 00 01 */	cmpwi r0, 1
/* 80A2FF28  41 82 00 24 */	beq lbl_80A2FF4C
/* 80A2FF2C  83 9D 0B 90 */	lwz r28, 0xb90(r29)
/* 80A2FF30  38 7D 0B 84 */	addi r3, r29, 0xb84
/* 80A2FF34  4B 71 59 64 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2FF38  93 9D 0B 90 */	stw r28, 0xb90(r29)
/* 80A2FF3C  38 00 00 01 */	li r0, 1
/* 80A2FF40  90 1D 0B 8C */	stw r0, 0xb8c(r29)
/* 80A2FF44  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A2FF48  D0 1D 0B 9C */	stfs f0, 0xb9c(r29)
lbl_80A2FF4C:
/* 80A2FF4C  80 1D 0B B0 */	lwz r0, 0xbb0(r29)
/* 80A2FF50  2C 00 00 0E */	cmpwi r0, 0xe
/* 80A2FF54  41 82 00 24 */	beq lbl_80A2FF78
/* 80A2FF58  83 9D 0B B4 */	lwz r28, 0xbb4(r29)
/* 80A2FF5C  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A2FF60  4B 71 59 38 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2FF64  93 9D 0B B4 */	stw r28, 0xbb4(r29)
/* 80A2FF68  38 00 00 0E */	li r0, 0xe
/* 80A2FF6C  90 1D 0B B0 */	stw r0, 0xbb0(r29)
/* 80A2FF70  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A2FF74  D0 1D 0B C0 */	stfs f0, 0xbc0(r29)
lbl_80A2FF78:
/* 80A2FF78  7F A3 EB 78 */	mr r3, r29
/* 80A2FF7C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A2FF80  4B 5E A7 90 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A2FF84  7C 64 1B 78 */	mr r4, r3
/* 80A2FF88  7F A3 EB 78 */	mr r3, r29
/* 80A2FF8C  3C 84 00 01 */	addis r4, r4, 1
/* 80A2FF90  38 04 80 00 */	addi r0, r4, -32768
/* 80A2FF94  7C 04 07 34 */	extsh r4, r0
/* 80A2FF98  48 00 AB 59 */	bl setAngle__10daNpc_Kn_cFs
/* 80A2FF9C  38 7E 00 A8 */	addi r3, r30, 0xa8
/* 80A2FFA0  C0 03 00 A0 */	lfs f0, 0xa0(r3)
/* 80A2FFA4  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A2FFA8  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005004F@ha */
/* 80A2FFAC  38 03 00 4F */	addi r0, r3, 0x004F /* 0x0005004F@l */
/* 80A2FFB0  90 01 00 08 */	stw r0, 8(r1)
/* 80A2FFB4  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80A2FFB8  38 81 00 08 */	addi r4, r1, 8
/* 80A2FFBC  38 A0 FF FF */	li r5, -1
/* 80A2FFC0  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 80A2FFC4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A2FFC8  7D 89 03 A6 */	mtctr r12
/* 80A2FFCC  4E 80 04 21 */	bctrl 
lbl_80A2FFD0:
/* 80A2FFD0  80 1D 0D 14 */	lwz r0, 0xd14(r29)
/* 80A2FFD4  2C 00 00 00 */	cmpwi r0, 0
/* 80A2FFD8  41 82 00 24 */	beq lbl_80A2FFFC
/* 80A2FFDC  38 7D 0B DC */	addi r3, r29, 0xbdc
/* 80A2FFE0  4B 71 57 1C */	b remove__18daNpcT_ActorMngr_cFv
/* 80A2FFE4  38 00 00 00 */	li r0, 0
/* 80A2FFE8  90 1D 0B FC */	stw r0, 0xbfc(r29)
/* 80A2FFEC  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A2FFF0  D0 1D 0D 28 */	stfs f0, 0xd28(r29)
/* 80A2FFF4  98 1D 0D 33 */	stb r0, 0xd33(r29)
/* 80A2FFF8  90 1D 0D 14 */	stw r0, 0xd14(r29)
lbl_80A2FFFC:
/* 80A2FFFC  38 00 00 00 */	li r0, 0
/* 80A30000  98 1D 0D 33 */	stb r0, 0xd33(r29)
/* 80A30004  38 7E 00 A8 */	addi r3, r30, 0xa8
/* 80A30008  C0 03 00 A4 */	lfs f0, 0xa4(r3)
/* 80A3000C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80A30010  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80A30014  3C 80 00 04 */	lis r4, 4
/* 80A30018  38 A0 00 1F */	li r5, 0x1f
/* 80A3001C  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 80A30020  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80A30024  7D 89 03 A6 */	mtctr r12
/* 80A30028  4E 80 04 21 */	bctrl 
/* 80A3002C  48 00 03 50 */	b lbl_80A3037C
lbl_80A30030:
/* 80A30030  2C 1C 00 12 */	cmpwi r28, 0x12
/* 80A30034  40 82 00 EC */	bne lbl_80A30120
/* 80A30038  38 7D 12 78 */	addi r3, r29, 0x1278
/* 80A3003C  4B 65 36 4C */	b GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 80A30040  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 80A30044  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A30048  4B 84 0B BC */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80A3004C  7C 64 1B 78 */	mr r4, r3
/* 80A30050  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A30054  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A30058  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A3005C  38 7E 00 A8 */	addi r3, r30, 0xa8
/* 80A30060  C0 03 00 94 */	lfs f0, 0x94(r3)
/* 80A30064  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A30068  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A3006C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A30070  4B 5D C3 6C */	b mDoMtx_YrotS__FPA4_fs
/* 80A30074  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A30078  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A3007C  38 81 00 10 */	addi r4, r1, 0x10
/* 80A30080  38 BD 15 B0 */	addi r5, r29, 0x15b0
/* 80A30084  4B 91 6C E8 */	b PSMTXMultVec
/* 80A30088  38 7D 15 B0 */	addi r3, r29, 0x15b0
/* 80A3008C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A30090  7C 65 1B 78 */	mr r5, r3
/* 80A30094  4B 91 6F FC */	b PSVECAdd
/* 80A30098  38 00 00 01 */	li r0, 1
/* 80A3009C  98 1D 15 BC */	stb r0, 0x15bc(r29)
/* 80A300A0  38 7D 11 DC */	addi r3, r29, 0x11dc
/* 80A300A4  81 9D 12 18 */	lwz r12, 0x1218(r29)
/* 80A300A8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80A300AC  7D 89 03 A6 */	mtctr r12
/* 80A300B0  4E 80 04 21 */	bctrl 
/* 80A300B4  80 1D 0B 8C */	lwz r0, 0xb8c(r29)
/* 80A300B8  2C 00 00 01 */	cmpwi r0, 1
/* 80A300BC  41 82 00 24 */	beq lbl_80A300E0
/* 80A300C0  83 9D 0B 90 */	lwz r28, 0xb90(r29)
/* 80A300C4  38 7D 0B 84 */	addi r3, r29, 0xb84
/* 80A300C8  4B 71 57 D0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A300CC  93 9D 0B 90 */	stw r28, 0xb90(r29)
/* 80A300D0  38 00 00 01 */	li r0, 1
/* 80A300D4  90 1D 0B 8C */	stw r0, 0xb8c(r29)
/* 80A300D8  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A300DC  D0 1D 0B 9C */	stfs f0, 0xb9c(r29)
lbl_80A300E0:
/* 80A300E0  83 9D 0B B4 */	lwz r28, 0xbb4(r29)
/* 80A300E4  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A300E8  4B 71 57 B0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A300EC  93 9D 0B B4 */	stw r28, 0xbb4(r29)
/* 80A300F0  38 00 00 1E */	li r0, 0x1e
/* 80A300F4  90 1D 0B B0 */	stw r0, 0xbb0(r29)
/* 80A300F8  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A300FC  D0 1D 0B C0 */	stfs f0, 0xbc0(r29)
/* 80A30100  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80A30104  3C 80 00 04 */	lis r4, 4
/* 80A30108  38 A0 00 1E */	li r5, 0x1e
/* 80A3010C  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 80A30110  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80A30114  7D 89 03 A6 */	mtctr r12
/* 80A30118  4E 80 04 21 */	bctrl 
/* 80A3011C  48 00 02 60 */	b lbl_80A3037C
lbl_80A30120:
/* 80A30120  7F A3 EB 78 */	mr r3, r29
/* 80A30124  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A30128  4B 5E A5 E8 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A3012C  7C 64 1B 78 */	mr r4, r3
/* 80A30130  7F A3 EB 78 */	mr r3, r29
/* 80A30134  48 00 A9 BD */	bl setAngle__10daNpc_Kn_cFs
/* 80A30138  80 1D 0B 8C */	lwz r0, 0xb8c(r29)
/* 80A3013C  2C 00 00 01 */	cmpwi r0, 1
/* 80A30140  41 82 00 24 */	beq lbl_80A30164
/* 80A30144  83 FD 0B 90 */	lwz r31, 0xb90(r29)
/* 80A30148  38 7D 0B 84 */	addi r3, r29, 0xb84
/* 80A3014C  4B 71 57 4C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A30150  93 FD 0B 90 */	stw r31, 0xb90(r29)
/* 80A30154  38 00 00 01 */	li r0, 1
/* 80A30158  90 1D 0B 8C */	stw r0, 0xb8c(r29)
/* 80A3015C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A30160  D0 1D 0B 9C */	stfs f0, 0xb9c(r29)
lbl_80A30164:
/* 80A30164  83 FD 0B B4 */	lwz r31, 0xbb4(r29)
/* 80A30168  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A3016C  4B 71 57 2C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A30170  93 FD 0B B4 */	stw r31, 0xbb4(r29)
/* 80A30174  38 00 00 1B */	li r0, 0x1b
/* 80A30178  90 1D 0B B0 */	stw r0, 0xbb0(r29)
/* 80A3017C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A30180  D0 1D 0B C0 */	stfs f0, 0xbc0(r29)
/* 80A30184  2C 1C 00 29 */	cmpwi r28, 0x29
/* 80A30188  40 82 00 28 */	bne lbl_80A301B0
/* 80A3018C  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80A30190  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040002@ha */
/* 80A30194  38 84 00 02 */	addi r4, r4, 0x0002 /* 0x00040002@l */
/* 80A30198  38 A0 00 28 */	li r5, 0x28
/* 80A3019C  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 80A301A0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80A301A4  7D 89 03 A6 */	mtctr r12
/* 80A301A8  4E 80 04 21 */	bctrl 
/* 80A301AC  48 00 01 D0 */	b lbl_80A3037C
lbl_80A301B0:
/* 80A301B0  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80A301B4  3C 80 00 04 */	lis r4, 4
/* 80A301B8  38 A0 00 28 */	li r5, 0x28
/* 80A301BC  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 80A301C0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80A301C4  7D 89 03 A6 */	mtctr r12
/* 80A301C8  4E 80 04 21 */	bctrl 
/* 80A301CC  48 00 01 B0 */	b lbl_80A3037C
lbl_80A301D0:
/* 80A301D0  88 1D 15 BD */	lbz r0, 0x15bd(r29)
/* 80A301D4  28 00 00 02 */	cmplwi r0, 2
/* 80A301D8  40 82 00 2C */	bne lbl_80A30204
/* 80A301DC  38 1C FF ED */	addi r0, r28, -19
/* 80A301E0  28 00 00 01 */	cmplwi r0, 1
/* 80A301E4  40 81 00 20 */	ble lbl_80A30204
/* 80A301E8  38 00 00 16 */	li r0, 0x16
/* 80A301EC  B0 1D 0E 36 */	sth r0, 0xe36(r29)
/* 80A301F0  3C 60 80 A3 */	lis r3, s_subEnd6__FPvPv@ha
/* 80A301F4  38 63 FC 14 */	addi r3, r3, s_subEnd6__FPvPv@l
/* 80A301F8  7F A4 EB 78 */	mr r4, r29
/* 80A301FC  4B 5F 11 3C */	b fpcEx_Search__FPFPvPv_PvPv
/* 80A30200  48 00 01 7C */	b lbl_80A3037C
lbl_80A30204:
/* 80A30204  7F A3 EB 78 */	mr r3, r29
/* 80A30208  38 80 00 01 */	li r4, 1
/* 80A3020C  48 00 7B 15 */	bl calcSwordAttackMove__10daNpc_Kn_cFi
/* 80A30210  88 1D 15 BD */	lbz r0, 0x15bd(r29)
/* 80A30214  28 00 00 02 */	cmplwi r0, 2
/* 80A30218  41 82 00 F0 */	beq lbl_80A30308
/* 80A3021C  38 7D 0D EC */	addi r3, r29, 0xdec
/* 80A30220  48 00 BB 29 */	bl func_80A3BD48
/* 80A30224  2C 03 00 00 */	cmpwi r3, 0
/* 80A30228  41 82 00 20 */	beq lbl_80A30248
/* 80A3022C  7F A3 EB 78 */	mr r3, r29
/* 80A30230  4B FF C9 01 */	bl checkCollisionSword__10daNpc_Kn_cFv
/* 80A30234  2C 03 00 00 */	cmpwi r3, 0
/* 80A30238  40 82 00 10 */	bne lbl_80A30248
/* 80A3023C  88 1D 15 BD */	lbz r0, 0x15bd(r29)
/* 80A30240  28 00 00 01 */	cmplwi r0, 1
/* 80A30244  40 82 00 C4 */	bne lbl_80A30308
lbl_80A30248:
/* 80A30248  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A3024C  D0 1D 15 B0 */	stfs f0, 0x15b0(r29)
/* 80A30250  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80A30254  D0 1D 15 B4 */	stfs f0, 0x15b4(r29)
/* 80A30258  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A3025C  D0 1D 15 B8 */	stfs f0, 0x15b8(r29)
/* 80A30260  38 00 00 00 */	li r0, 0
/* 80A30264  98 1D 15 BC */	stb r0, 0x15bc(r29)
/* 80A30268  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A3026C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A30270  38 63 56 B8 */	addi r3, r3, 0x56b8
/* 80A30274  4B 64 35 70 */	b LockonTruth__12dAttention_cFv
/* 80A30278  7F A3 EB 78 */	mr r3, r29
/* 80A3027C  4B FF C8 B5 */	bl checkCollisionSword__10daNpc_Kn_cFv
/* 80A30280  2C 03 00 00 */	cmpwi r3, 0
/* 80A30284  40 82 00 10 */	bne lbl_80A30294
/* 80A30288  88 1D 15 BD */	lbz r0, 0x15bd(r29)
/* 80A3028C  28 00 00 01 */	cmplwi r0, 1
/* 80A30290  40 82 00 10 */	bne lbl_80A302A0
lbl_80A30294:
/* 80A30294  38 00 00 04 */	li r0, 4
/* 80A30298  B0 1D 0E 36 */	sth r0, 0xe36(r29)
/* 80A3029C  48 00 00 0C */	b lbl_80A302A8
lbl_80A302A0:
/* 80A302A0  38 00 00 01 */	li r0, 1
/* 80A302A4  B0 1D 0E 36 */	sth r0, 0xe36(r29)
lbl_80A302A8:
/* 80A302A8  80 1D 0B 8C */	lwz r0, 0xb8c(r29)
/* 80A302AC  2C 00 00 01 */	cmpwi r0, 1
/* 80A302B0  41 82 00 24 */	beq lbl_80A302D4
/* 80A302B4  83 9D 0B 90 */	lwz r28, 0xb90(r29)
/* 80A302B8  38 7D 0B 84 */	addi r3, r29, 0xb84
/* 80A302BC  4B 71 55 DC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A302C0  93 9D 0B 90 */	stw r28, 0xb90(r29)
/* 80A302C4  38 00 00 01 */	li r0, 1
/* 80A302C8  90 1D 0B 8C */	stw r0, 0xb8c(r29)
/* 80A302CC  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A302D0  D0 1D 0B 9C */	stfs f0, 0xb9c(r29)
lbl_80A302D4:
/* 80A302D4  83 9D 0B B4 */	lwz r28, 0xbb4(r29)
/* 80A302D8  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A302DC  4B 71 55 BC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A302E0  93 9D 0B B4 */	stw r28, 0xbb4(r29)
/* 80A302E4  38 00 00 00 */	li r0, 0
/* 80A302E8  90 1D 0B B0 */	stw r0, 0xbb0(r29)
/* 80A302EC  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A302F0  D0 1D 0B C0 */	stfs f0, 0xbc0(r29)
/* 80A302F4  3C 60 80 A3 */	lis r3, s_sub6__FPvPv@ha
/* 80A302F8  38 63 FB B4 */	addi r3, r3, s_sub6__FPvPv@l
/* 80A302FC  7F A4 EB 78 */	mr r4, r29
/* 80A30300  4B 5F 10 38 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80A30304  48 00 00 78 */	b lbl_80A3037C
lbl_80A30308:
/* 80A30308  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80A3030C  80 03 05 84 */	lwz r0, 0x584(r3)
/* 80A30310  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 80A30314  40 82 00 68 */	bne lbl_80A3037C
/* 80A30318  3B 80 00 00 */	li r28, 0
/* 80A3031C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A30320  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A30324  38 63 56 B8 */	addi r3, r3, 0x56b8
/* 80A30328  4B 64 34 BC */	b LockonTruth__12dAttention_cFv
/* 80A3032C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A30330  41 82 00 08 */	beq lbl_80A30338
/* 80A30334  3B 80 00 01 */	li r28, 1
lbl_80A30338:
/* 80A30338  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80A3033C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A30340  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80A30344  7D 89 03 A6 */	mtctr r12
/* 80A30348  4E 80 04 21 */	bctrl 
/* 80A3034C  2C 03 00 00 */	cmpwi r3, 0
/* 80A30350  41 82 00 10 */	beq lbl_80A30360
/* 80A30354  38 00 02 FB */	li r0, 0x2fb
/* 80A30358  90 1D 0A B0 */	stw r0, 0xab0(r29)
/* 80A3035C  48 00 00 20 */	b lbl_80A3037C
lbl_80A30360:
/* 80A30360  2C 1C 00 00 */	cmpwi r28, 0
/* 80A30364  41 82 00 10 */	beq lbl_80A30374
/* 80A30368  38 00 02 FC */	li r0, 0x2fc
/* 80A3036C  90 1D 0A B0 */	stw r0, 0xab0(r29)
/* 80A30370  48 00 00 0C */	b lbl_80A3037C
lbl_80A30374:
/* 80A30374  38 00 02 FD */	li r0, 0x2fd
/* 80A30378  90 1D 0A B0 */	stw r0, 0xab0(r29)
lbl_80A3037C:
/* 80A3037C  38 60 00 01 */	li r3, 1
/* 80A30380  39 61 00 30 */	addi r11, r1, 0x30
/* 80A30384  4B 93 1E A0 */	b _restgpr_28
/* 80A30388  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A3038C  7C 08 03 A6 */	mtlr r0
/* 80A30390  38 21 00 30 */	addi r1, r1, 0x30
/* 80A30394  4E 80 00 20 */	blr 

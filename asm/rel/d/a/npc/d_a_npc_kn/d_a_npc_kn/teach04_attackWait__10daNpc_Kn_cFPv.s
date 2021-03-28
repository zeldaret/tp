lbl_80A2EC04:
/* 80A2EC04  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A2EC08  7C 08 02 A6 */	mflr r0
/* 80A2EC0C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A2EC10  39 61 00 30 */	addi r11, r1, 0x30
/* 80A2EC14  4B 93 35 C4 */	b _savegpr_28
/* 80A2EC18  7C 7E 1B 78 */	mr r30, r3
/* 80A2EC1C  3C 60 80 A4 */	lis r3, mCcDObjData__10daNpc_Kn_c@ha
/* 80A2EC20  3B E3 08 C8 */	addi r31, r3, mCcDObjData__10daNpc_Kn_c@l
/* 80A2EC24  A0 1E 0E 2A */	lhz r0, 0xe2a(r30)
/* 80A2EC28  2C 00 00 02 */	cmpwi r0, 2
/* 80A2EC2C  41 82 00 FC */	beq lbl_80A2ED28
/* 80A2EC30  40 80 03 40 */	bge lbl_80A2EF70
/* 80A2EC34  2C 00 00 00 */	cmpwi r0, 0
/* 80A2EC38  40 80 00 0C */	bge lbl_80A2EC44
/* 80A2EC3C  48 00 03 34 */	b lbl_80A2EF70
/* 80A2EC40  48 00 03 30 */	b lbl_80A2EF70
lbl_80A2EC44:
/* 80A2EC44  80 1E 0B 8C */	lwz r0, 0xb8c(r30)
/* 80A2EC48  2C 00 00 01 */	cmpwi r0, 1
/* 80A2EC4C  41 82 00 24 */	beq lbl_80A2EC70
/* 80A2EC50  83 BE 0B 90 */	lwz r29, 0xb90(r30)
/* 80A2EC54  38 7E 0B 84 */	addi r3, r30, 0xb84
/* 80A2EC58  4B 71 6C 40 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2EC5C  93 BE 0B 90 */	stw r29, 0xb90(r30)
/* 80A2EC60  38 00 00 01 */	li r0, 1
/* 80A2EC64  90 1E 0B 8C */	stw r0, 0xb8c(r30)
/* 80A2EC68  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A2EC6C  D0 1E 0B 9C */	stfs f0, 0xb9c(r30)
lbl_80A2EC70:
/* 80A2EC70  80 1E 0B B0 */	lwz r0, 0xbb0(r30)
/* 80A2EC74  2C 00 00 09 */	cmpwi r0, 9
/* 80A2EC78  41 82 00 24 */	beq lbl_80A2EC9C
/* 80A2EC7C  83 BE 0B B4 */	lwz r29, 0xbb4(r30)
/* 80A2EC80  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A2EC84  4B 71 6C 14 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2EC88  93 BE 0B B4 */	stw r29, 0xbb4(r30)
/* 80A2EC8C  38 00 00 09 */	li r0, 9
/* 80A2EC90  90 1E 0B B0 */	stw r0, 0xbb0(r30)
/* 80A2EC94  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A2EC98  D0 1E 0B C0 */	stfs f0, 0xbc0(r30)
lbl_80A2EC9C:
/* 80A2EC9C  80 1E 0D 14 */	lwz r0, 0xd14(r30)
/* 80A2ECA0  2C 00 00 01 */	cmpwi r0, 1
/* 80A2ECA4  41 82 00 28 */	beq lbl_80A2ECCC
/* 80A2ECA8  38 7E 0B DC */	addi r3, r30, 0xbdc
/* 80A2ECAC  4B 71 6A 50 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A2ECB0  38 00 00 00 */	li r0, 0
/* 80A2ECB4  90 1E 0B FC */	stw r0, 0xbfc(r30)
/* 80A2ECB8  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A2ECBC  D0 1E 0D 28 */	stfs f0, 0xd28(r30)
/* 80A2ECC0  98 1E 0D 33 */	stb r0, 0xd33(r30)
/* 80A2ECC4  38 00 00 01 */	li r0, 1
/* 80A2ECC8  90 1E 0D 14 */	stw r0, 0xd14(r30)
lbl_80A2ECCC:
/* 80A2ECCC  38 60 00 00 */	li r3, 0
/* 80A2ECD0  98 7E 0D 33 */	stb r3, 0xd33(r30)
/* 80A2ECD4  38 9F 00 A8 */	addi r4, r31, 0xa8
/* 80A2ECD8  A8 04 00 8E */	lha r0, 0x8e(r4)
/* 80A2ECDC  90 1E 0D EC */	stw r0, 0xdec(r30)
/* 80A2ECE0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80A2ECE4  D0 1E 15 B0 */	stfs f0, 0x15b0(r30)
/* 80A2ECE8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80A2ECEC  D0 1E 15 B4 */	stfs f0, 0x15b4(r30)
/* 80A2ECF0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80A2ECF4  D0 1E 15 B8 */	stfs f0, 0x15b8(r30)
/* 80A2ECF8  98 7E 15 BC */	stb r3, 0x15bc(r30)
/* 80A2ECFC  A8 64 00 AC */	lha r3, 0xac(r4)
/* 80A2ED00  A8 84 00 AE */	lha r4, 0xae(r4)
/* 80A2ED04  48 00 D0 61 */	bl func_80A3BD64
/* 80A2ED08  B0 7E 15 D0 */	sth r3, 0x15d0(r30)
/* 80A2ED0C  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A2ED10  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80A2ED14  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 80A2ED18  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80A2ED1C  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 80A2ED20  38 00 00 02 */	li r0, 2
/* 80A2ED24  B0 1E 0E 2A */	sth r0, 0xe2a(r30)
lbl_80A2ED28:
/* 80A2ED28  7F C3 F3 78 */	mr r3, r30
/* 80A2ED2C  48 00 8D DD */	bl calcSlip__10daNpc_Kn_cFv
/* 80A2ED30  38 7E 08 C4 */	addi r3, r30, 0x8c4
/* 80A2ED34  4B 65 4A FC */	b Move__10dCcD_GSttsFv
/* 80A2ED38  80 1E 12 7C */	lwz r0, 0x127c(r30)
/* 80A2ED3C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80A2ED40  41 82 00 C4 */	beq lbl_80A2EE04
/* 80A2ED44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A2ED48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A2ED4C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80A2ED50  88 03 05 68 */	lbz r0, 0x568(r3)
/* 80A2ED54  28 00 00 29 */	cmplwi r0, 0x29
/* 80A2ED58  40 82 00 AC */	bne lbl_80A2EE04
/* 80A2ED5C  38 7E 12 78 */	addi r3, r30, 0x1278
/* 80A2ED60  4B 65 49 28 */	b GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 80A2ED64  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 80A2ED68  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80A2ED6C  4B 84 1E 98 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80A2ED70  7C 64 1B 78 */	mr r4, r3
/* 80A2ED74  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A2ED78  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A2ED7C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A2ED80  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 80A2ED84  C0 03 00 94 */	lfs f0, 0x94(r3)
/* 80A2ED88  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A2ED8C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A2ED90  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A2ED94  4B 5D D6 48 */	b mDoMtx_YrotS__FPA4_fs
/* 80A2ED98  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A2ED9C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A2EDA0  38 81 00 08 */	addi r4, r1, 8
/* 80A2EDA4  38 BE 15 B0 */	addi r5, r30, 0x15b0
/* 80A2EDA8  4B 91 7F C4 */	b PSMTXMultVec
/* 80A2EDAC  38 7E 15 B0 */	addi r3, r30, 0x15b0
/* 80A2EDB0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80A2EDB4  7C 65 1B 78 */	mr r5, r3
/* 80A2EDB8  4B 91 82 D8 */	b PSVECAdd
/* 80A2EDBC  38 00 00 01 */	li r0, 1
/* 80A2EDC0  98 1E 15 BC */	stb r0, 0x15bc(r30)
/* 80A2EDC4  38 7E 11 DC */	addi r3, r30, 0x11dc
/* 80A2EDC8  81 9E 12 18 */	lwz r12, 0x1218(r30)
/* 80A2EDCC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80A2EDD0  7D 89 03 A6 */	mtctr r12
/* 80A2EDD4  4E 80 04 21 */	bctrl 
/* 80A2EDD8  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80A2EDDC  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040002@ha */
/* 80A2EDE0  38 84 00 02 */	addi r4, r4, 0x0002 /* 0x00040002@l */
/* 80A2EDE4  38 A0 00 28 */	li r5, 0x28
/* 80A2EDE8  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 80A2EDEC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80A2EDF0  7D 89 03 A6 */	mtctr r12
/* 80A2EDF4  4E 80 04 21 */	bctrl 
/* 80A2EDF8  38 00 00 0A */	li r0, 0xa
/* 80A2EDFC  98 1E 15 AE */	stb r0, 0x15ae(r30)
/* 80A2EE00  48 00 01 70 */	b lbl_80A2EF70
lbl_80A2EE04:
/* 80A2EE04  38 7E 0D EC */	addi r3, r30, 0xdec
/* 80A2EE08  48 00 CF 41 */	bl func_80A3BD48
/* 80A2EE0C  2C 03 00 00 */	cmpwi r3, 0
/* 80A2EE10  41 82 00 14 */	beq lbl_80A2EE24
/* 80A2EE14  7F C3 F3 78 */	mr r3, r30
/* 80A2EE18  4B FF DD 19 */	bl checkCollisionSword__10daNpc_Kn_cFv
/* 80A2EE1C  2C 03 00 00 */	cmpwi r3, 0
/* 80A2EE20  41 82 00 B4 */	beq lbl_80A2EED4
lbl_80A2EE24:
/* 80A2EE24  3B 80 00 00 */	li r28, 0
/* 80A2EE28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A2EE2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A2EE30  38 63 56 B8 */	addi r3, r3, 0x56b8
/* 80A2EE34  4B 64 49 B0 */	b LockonTruth__12dAttention_cFv
/* 80A2EE38  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A2EE3C  41 82 00 08 */	beq lbl_80A2EE44
/* 80A2EE40  3B 80 00 01 */	li r28, 1
lbl_80A2EE44:
/* 80A2EE44  7F C3 F3 78 */	mr r3, r30
/* 80A2EE48  4B FF DC E9 */	bl checkCollisionSword__10daNpc_Kn_cFv
/* 80A2EE4C  2C 03 00 00 */	cmpwi r3, 0
/* 80A2EE50  41 82 00 10 */	beq lbl_80A2EE60
/* 80A2EE54  38 00 00 04 */	li r0, 4
/* 80A2EE58  B0 1E 0E 36 */	sth r0, 0xe36(r30)
/* 80A2EE5C  48 00 00 0C */	b lbl_80A2EE68
lbl_80A2EE60:
/* 80A2EE60  38 00 00 01 */	li r0, 1
/* 80A2EE64  B0 1E 0E 36 */	sth r0, 0xe36(r30)
lbl_80A2EE68:
/* 80A2EE68  80 1E 0B 8C */	lwz r0, 0xb8c(r30)
/* 80A2EE6C  2C 00 00 01 */	cmpwi r0, 1
/* 80A2EE70  41 82 00 24 */	beq lbl_80A2EE94
/* 80A2EE74  83 BE 0B 90 */	lwz r29, 0xb90(r30)
/* 80A2EE78  38 7E 0B 84 */	addi r3, r30, 0xb84
/* 80A2EE7C  4B 71 6A 1C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2EE80  93 BE 0B 90 */	stw r29, 0xb90(r30)
/* 80A2EE84  38 00 00 01 */	li r0, 1
/* 80A2EE88  90 1E 0B 8C */	stw r0, 0xb8c(r30)
/* 80A2EE8C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A2EE90  D0 1E 0B 9C */	stfs f0, 0xb9c(r30)
lbl_80A2EE94:
/* 80A2EE94  83 BE 0B B4 */	lwz r29, 0xbb4(r30)
/* 80A2EE98  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A2EE9C  4B 71 69 FC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2EEA0  93 BE 0B B4 */	stw r29, 0xbb4(r30)
/* 80A2EEA4  38 00 00 00 */	li r0, 0
/* 80A2EEA8  90 1E 0B B0 */	stw r0, 0xbb0(r30)
/* 80A2EEAC  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A2EEB0  D0 1E 0B C0 */	stfs f0, 0xbc0(r30)
/* 80A2EEB4  2C 1C 00 00 */	cmpwi r28, 0
/* 80A2EEB8  41 82 00 10 */	beq lbl_80A2EEC8
/* 80A2EEBC  38 00 02 F3 */	li r0, 0x2f3
/* 80A2EEC0  90 1E 0A B0 */	stw r0, 0xab0(r30)
/* 80A2EEC4  48 00 00 AC */	b lbl_80A2EF70
lbl_80A2EEC8:
/* 80A2EEC8  38 00 02 F4 */	li r0, 0x2f4
/* 80A2EECC  90 1E 0A B0 */	stw r0, 0xab0(r30)
/* 80A2EED0  48 00 00 A0 */	b lbl_80A2EF70
lbl_80A2EED4:
/* 80A2EED4  38 7E 11 DC */	addi r3, r30, 0x11dc
/* 80A2EED8  4B 65 55 88 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80A2EEDC  28 03 00 00 */	cmplwi r3, 0
/* 80A2EEE0  41 82 00 84 */	beq lbl_80A2EF64
/* 80A2EEE4  38 7E 11 DC */	addi r3, r30, 0x11dc
/* 80A2EEE8  4B 65 56 10 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80A2EEEC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80A2EEF0  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80A2EEF4  40 82 00 70 */	bne lbl_80A2EF64
/* 80A2EEF8  80 1E 0B 8C */	lwz r0, 0xb8c(r30)
/* 80A2EEFC  2C 00 00 01 */	cmpwi r0, 1
/* 80A2EF00  41 82 00 24 */	beq lbl_80A2EF24
/* 80A2EF04  83 BE 0B 90 */	lwz r29, 0xb90(r30)
/* 80A2EF08  38 7E 0B 84 */	addi r3, r30, 0xb84
/* 80A2EF0C  4B 71 69 8C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2EF10  93 BE 0B 90 */	stw r29, 0xb90(r30)
/* 80A2EF14  38 00 00 01 */	li r0, 1
/* 80A2EF18  90 1E 0B 8C */	stw r0, 0xb8c(r30)
/* 80A2EF1C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A2EF20  D0 1E 0B 9C */	stfs f0, 0xb9c(r30)
lbl_80A2EF24:
/* 80A2EF24  83 BE 0B B4 */	lwz r29, 0xbb4(r30)
/* 80A2EF28  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A2EF2C  4B 71 69 6C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2EF30  93 BE 0B B4 */	stw r29, 0xbb4(r30)
/* 80A2EF34  38 00 00 1B */	li r0, 0x1b
/* 80A2EF38  90 1E 0B B0 */	stw r0, 0xbb0(r30)
/* 80A2EF3C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A2EF40  D0 1E 0B C0 */	stfs f0, 0xbc0(r30)
/* 80A2EF44  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80A2EF48  3C 80 00 04 */	lis r4, 4
/* 80A2EF4C  38 A0 00 28 */	li r5, 0x28
/* 80A2EF50  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 80A2EF54  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80A2EF58  7D 89 03 A6 */	mtctr r12
/* 80A2EF5C  4E 80 04 21 */	bctrl 
/* 80A2EF60  48 00 00 10 */	b lbl_80A2EF70
lbl_80A2EF64:
/* 80A2EF64  7F C3 F3 78 */	mr r3, r30
/* 80A2EF68  38 80 00 01 */	li r4, 1
/* 80A2EF6C  48 00 8D B5 */	bl calcSwordAttackMove__10daNpc_Kn_cFi
lbl_80A2EF70:
/* 80A2EF70  38 60 00 01 */	li r3, 1
/* 80A2EF74  39 61 00 30 */	addi r11, r1, 0x30
/* 80A2EF78  4B 93 32 AC */	b _restgpr_28
/* 80A2EF7C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A2EF80  7C 08 03 A6 */	mtlr r0
/* 80A2EF84  38 21 00 30 */	addi r1, r1, 0x30
/* 80A2EF88  4E 80 00 20 */	blr 

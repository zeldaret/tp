lbl_80C237B0:
/* 80C237B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C237B4  7C 08 02 A6 */	mflr r0
/* 80C237B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C237BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C237C0  93 C1 00 08 */	stw r30, 8(r1)
/* 80C237C4  7C 7E 1B 78 */	mr r30, r3
/* 80C237C8  83 E3 09 54 */	lwz r31, 0x954(r3)
/* 80C237CC  38 00 00 00 */	li r0, 0
/* 80C237D0  90 03 09 54 */	stw r0, 0x954(r3)
/* 80C237D4  4B FF FE F5 */	bl checkBgHit__13daObjIceBlk_cFv
/* 80C237D8  C0 3E 09 58 */	lfs f1, 0x958(r30)
/* 80C237DC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C237E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C237E4  40 81 00 50 */	ble lbl_80C23834
/* 80C237E8  D0 3E 04 D4 */	stfs f1, 0x4d4(r30)
/* 80C237EC  3C 60 80 C2 */	lis r3, lit_3936@ha /* 0x80C24370@ha */
/* 80C237F0  C0 03 43 70 */	lfs f0, lit_3936@l(r3)  /* 0x80C24370@l */
/* 80C237F4  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80C237F8  57 E0 07 BD */	rlwinm. r0, r31, 0, 0x1e, 0x1e
/* 80C237FC  40 82 00 10 */	bne lbl_80C2380C
/* 80C23800  80 1E 09 54 */	lwz r0, 0x954(r30)
/* 80C23804  60 00 00 01 */	ori r0, r0, 1
/* 80C23808  90 1E 09 54 */	stw r0, 0x954(r30)
lbl_80C2380C:
/* 80C2380C  80 1E 09 54 */	lwz r0, 0x954(r30)
/* 80C23810  60 00 00 02 */	ori r0, r0, 2
/* 80C23814  90 1E 09 54 */	stw r0, 0x954(r30)
/* 80C23818  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C2381C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C23820  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C23824  38 9E 09 7C */	addi r4, r30, 0x97c
/* 80C23828  7F C5 F3 78 */	mr r5, r30
/* 80C2382C  4B 45 23 59 */	bl RideCallBack__4dBgSFRC13cBgS_PolyInfoP10fopAc_ac_c
/* 80C23830  48 00 00 18 */	b lbl_80C23848
lbl_80C23834:
/* 80C23834  57 E0 07 BD */	rlwinm. r0, r31, 0, 0x1e, 0x1e
/* 80C23838  41 82 00 10 */	beq lbl_80C23848
/* 80C2383C  80 1E 09 54 */	lwz r0, 0x954(r30)
/* 80C23840  60 00 00 04 */	ori r0, r0, 4
/* 80C23844  90 1E 09 54 */	stw r0, 0x954(r30)
lbl_80C23848:
/* 80C23848  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C2384C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C23850  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C23854  7C 08 03 A6 */	mtlr r0
/* 80C23858  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2385C  4E 80 00 20 */	blr 

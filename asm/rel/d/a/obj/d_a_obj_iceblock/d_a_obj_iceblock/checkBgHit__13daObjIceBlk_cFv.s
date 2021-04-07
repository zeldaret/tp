lbl_80C236C8:
/* 80C236C8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80C236CC  7C 08 02 A6 */	mflr r0
/* 80C236D0  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C236D4  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80C236D8  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80C236DC  39 61 00 40 */	addi r11, r1, 0x40
/* 80C236E0  4B 73 EA F1 */	bl _savegpr_26
/* 80C236E4  7C 7A 1B 78 */	mr r26, r3
/* 80C236E8  3C 60 80 C2 */	lis r3, l_dir_vec@ha /* 0x80C242F4@ha */
/* 80C236EC  3B C3 42 F4 */	addi r30, r3, l_dir_vec@l /* 0x80C242F4@l */
/* 80C236F0  C0 1E 01 60 */	lfs f0, 0x160(r30)
/* 80C236F4  D0 1A 09 58 */	stfs f0, 0x958(r26)
/* 80C236F8  3B 80 FF FF */	li r28, -1
/* 80C236FC  80 1A 00 04 */	lwz r0, 4(r26)
/* 80C23700  90 1A 09 70 */	stw r0, 0x970(r26)
/* 80C23704  3B 60 00 00 */	li r27, 0
/* 80C23708  3B E0 00 00 */	li r31, 0
/* 80C2370C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C23710  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C23714  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80C23718  C3 FE 01 64 */	lfs f31, 0x164(r30)
lbl_80C2371C:
/* 80C2371C  38 61 00 08 */	addi r3, r1, 8
/* 80C23720  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80C23724  38 BE 01 24 */	addi r5, r30, 0x124
/* 80C23728  7C A5 FA 14 */	add r5, r5, r31
/* 80C2372C  4B 64 33 B9 */	bl __pl__4cXyzCFRC3Vec
/* 80C23730  C0 01 00 08 */	lfs f0, 8(r1)
/* 80C23734  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C23738  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80C2373C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80C23740  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80C23744  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C23748  EC 01 F8 2A */	fadds f0, f1, f31
/* 80C2374C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C23750  38 7A 09 68 */	addi r3, r26, 0x968
/* 80C23754  38 81 00 14 */	addi r4, r1, 0x14
/* 80C23758  4B 64 45 D1 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80C2375C  7F A3 EB 78 */	mr r3, r29
/* 80C23760  38 9A 09 68 */	addi r4, r26, 0x968
/* 80C23764  4B 45 0D 3D */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80C23768  C0 1A 09 58 */	lfs f0, 0x958(r26)
/* 80C2376C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C23770  40 81 00 0C */	ble lbl_80C2377C
/* 80C23774  D0 3A 09 58 */	stfs f1, 0x958(r26)
/* 80C23778  7F 7C DB 78 */	mr r28, r27
lbl_80C2377C:
/* 80C2377C  3B 7B 00 01 */	addi r27, r27, 1
/* 80C23780  2C 1B 00 05 */	cmpwi r27, 5
/* 80C23784  3B FF 00 0C */	addi r31, r31, 0xc
/* 80C23788  41 80 FF 94 */	blt lbl_80C2371C
/* 80C2378C  7F 83 E3 78 */	mr r3, r28
/* 80C23790  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80C23794  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80C23798  39 61 00 40 */	addi r11, r1, 0x40
/* 80C2379C  4B 73 EA 81 */	bl _restgpr_26
/* 80C237A0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80C237A4  7C 08 03 A6 */	mtlr r0
/* 80C237A8  38 21 00 50 */	addi r1, r1, 0x50
/* 80C237AC  4E 80 00 20 */	blr 

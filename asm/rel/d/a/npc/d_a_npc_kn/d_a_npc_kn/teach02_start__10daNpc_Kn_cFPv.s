lbl_80A2E528:
/* 80A2E528  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A2E52C  7C 08 02 A6 */	mflr r0
/* 80A2E530  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A2E534  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A2E538  93 C1 00 08 */	stw r30, 8(r1)
/* 80A2E53C  7C 7F 1B 78 */	mr r31, r3
/* 80A2E540  A0 03 0E 2A */	lhz r0, 0xe2a(r3)
/* 80A2E544  2C 00 00 02 */	cmpwi r0, 2
/* 80A2E548  41 82 00 BC */	beq lbl_80A2E604
/* 80A2E54C  40 80 00 FC */	bge lbl_80A2E648
/* 80A2E550  2C 00 00 00 */	cmpwi r0, 0
/* 80A2E554  40 80 00 0C */	bge lbl_80A2E560
/* 80A2E558  48 00 00 F0 */	b lbl_80A2E648
/* 80A2E55C  48 00 00 EC */	b lbl_80A2E648
lbl_80A2E560:
/* 80A2E560  80 1F 0B 8C */	lwz r0, 0xb8c(r31)
/* 80A2E564  2C 00 00 01 */	cmpwi r0, 1
/* 80A2E568  41 82 00 28 */	beq lbl_80A2E590
/* 80A2E56C  83 DF 0B 90 */	lwz r30, 0xb90(r31)
/* 80A2E570  38 7F 0B 84 */	addi r3, r31, 0xb84
/* 80A2E574  4B 71 73 24 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2E578  93 DF 0B 90 */	stw r30, 0xb90(r31)
/* 80A2E57C  38 00 00 01 */	li r0, 1
/* 80A2E580  90 1F 0B 8C */	stw r0, 0xb8c(r31)
/* 80A2E584  3C 60 80 A4 */	lis r3, lit_4613@ha
/* 80A2E588  C0 03 09 14 */	lfs f0, lit_4613@l(r3)
/* 80A2E58C  D0 1F 0B 9C */	stfs f0, 0xb9c(r31)
lbl_80A2E590:
/* 80A2E590  80 1F 0B B0 */	lwz r0, 0xbb0(r31)
/* 80A2E594  2C 00 00 00 */	cmpwi r0, 0
/* 80A2E598  41 82 00 28 */	beq lbl_80A2E5C0
/* 80A2E59C  83 DF 0B B4 */	lwz r30, 0xbb4(r31)
/* 80A2E5A0  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A2E5A4  4B 71 72 F4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2E5A8  93 DF 0B B4 */	stw r30, 0xbb4(r31)
/* 80A2E5AC  38 00 00 00 */	li r0, 0
/* 80A2E5B0  90 1F 0B B0 */	stw r0, 0xbb0(r31)
/* 80A2E5B4  3C 60 80 A4 */	lis r3, lit_4613@ha
/* 80A2E5B8  C0 03 09 14 */	lfs f0, lit_4613@l(r3)
/* 80A2E5BC  D0 1F 0B C0 */	stfs f0, 0xbc0(r31)
lbl_80A2E5C0:
/* 80A2E5C0  80 1F 0D 14 */	lwz r0, 0xd14(r31)
/* 80A2E5C4  2C 00 00 01 */	cmpwi r0, 1
/* 80A2E5C8  41 82 00 2C */	beq lbl_80A2E5F4
/* 80A2E5CC  38 7F 0B DC */	addi r3, r31, 0xbdc
/* 80A2E5D0  4B 71 71 2C */	b remove__18daNpcT_ActorMngr_cFv
/* 80A2E5D4  38 00 00 00 */	li r0, 0
/* 80A2E5D8  90 1F 0B FC */	stw r0, 0xbfc(r31)
/* 80A2E5DC  3C 60 80 A4 */	lis r3, lit_4204@ha
/* 80A2E5E0  C0 03 09 00 */	lfs f0, lit_4204@l(r3)
/* 80A2E5E4  D0 1F 0D 28 */	stfs f0, 0xd28(r31)
/* 80A2E5E8  98 1F 0D 33 */	stb r0, 0xd33(r31)
/* 80A2E5EC  38 00 00 01 */	li r0, 1
/* 80A2E5F0  90 1F 0D 14 */	stw r0, 0xd14(r31)
lbl_80A2E5F4:
/* 80A2E5F4  38 00 00 00 */	li r0, 0
/* 80A2E5F8  98 1F 0D 33 */	stb r0, 0xd33(r31)
/* 80A2E5FC  38 00 00 02 */	li r0, 2
/* 80A2E600  B0 1F 0E 2A */	sth r0, 0xe2a(r31)
lbl_80A2E604:
/* 80A2E604  38 00 00 08 */	li r0, 8
/* 80A2E608  B0 1F 0E 36 */	sth r0, 0xe36(r31)
/* 80A2E60C  38 00 00 01 */	li r0, 1
/* 80A2E610  98 1F 0E 39 */	stb r0, 0xe39(r31)
/* 80A2E614  7F E3 FB 78 */	mr r3, r31
/* 80A2E618  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A2E61C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A2E620  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A2E624  4B 5E C0 EC */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A2E628  7C 64 1B 78 */	mr r4, r3
/* 80A2E62C  38 7F 0D AE */	addi r3, r31, 0xdae
/* 80A2E630  38 A0 00 02 */	li r5, 2
/* 80A2E634  38 C0 08 00 */	li r6, 0x800
/* 80A2E638  4B 84 1F D0 */	b cLib_addCalcAngleS2__FPssss
/* 80A2E63C  7F E3 FB 78 */	mr r3, r31
/* 80A2E640  A8 9F 0D AE */	lha r4, 0xdae(r31)
/* 80A2E644  48 00 C4 AD */	bl setAngle__10daNpc_Kn_cFs
lbl_80A2E648:
/* 80A2E648  38 60 00 01 */	li r3, 1
/* 80A2E64C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A2E650  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A2E654  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A2E658  7C 08 03 A6 */	mtlr r0
/* 80A2E65C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A2E660  4E 80 00 20 */	blr 

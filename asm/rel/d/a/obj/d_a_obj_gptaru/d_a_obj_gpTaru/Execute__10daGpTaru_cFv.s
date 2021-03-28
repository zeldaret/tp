lbl_8057E224:
/* 8057E224  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057E228  7C 08 02 A6 */	mflr r0
/* 8057E22C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057E230  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8057E234  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8057E238  7C 7E 1B 78 */	mr r30, r3
/* 8057E23C  3C 80 80 58 */	lis r4, lit_3656@ha
/* 8057E240  3B E4 F5 70 */	addi r31, r4, lit_3656@l
/* 8057E244  C0 03 04 F8 */	lfs f0, 0x4f8(r3)
/* 8057E248  D0 03 05 94 */	stfs f0, 0x594(r3)
/* 8057E24C  C0 03 04 FC */	lfs f0, 0x4fc(r3)
/* 8057E250  D0 03 05 98 */	stfs f0, 0x598(r3)
/* 8057E254  C0 03 05 00 */	lfs f0, 0x500(r3)
/* 8057E258  D0 03 05 9C */	stfs f0, 0x59c(r3)
/* 8057E25C  48 00 02 39 */	bl mode_proc_call__10daGpTaru_cFv
/* 8057E260  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8057E264  D0 1E 05 88 */	stfs f0, 0x588(r30)
/* 8057E268  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8057E26C  D0 1E 05 8C */	stfs f0, 0x58c(r30)
/* 8057E270  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8057E274  D0 1E 05 90 */	stfs f0, 0x590(r30)
/* 8057E278  38 7E 05 A4 */	addi r3, r30, 0x5a4
/* 8057E27C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8057E280  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8057E284  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8057E288  4B AF 88 24 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 8057E28C  38 61 00 0C */	addi r3, r1, 0xc
/* 8057E290  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8057E294  38 BE 05 88 */	addi r5, r30, 0x588
/* 8057E298  4B CE 88 9C */	b __mi__4cXyzCFRC3Vec
/* 8057E29C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8057E2A0  D0 1E 05 7C */	stfs f0, 0x57c(r30)
/* 8057E2A4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8057E2A8  D0 1E 05 80 */	stfs f0, 0x580(r30)
/* 8057E2AC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8057E2B0  D0 1E 05 84 */	stfs f0, 0x584(r30)
/* 8057E2B4  88 1E 05 78 */	lbz r0, 0x578(r30)
/* 8057E2B8  28 00 00 01 */	cmplwi r0, 1
/* 8057E2BC  40 82 00 1C */	bne lbl_8057E2D8
/* 8057E2C0  C0 1E 05 88 */	lfs f0, 0x588(r30)
/* 8057E2C4  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 8057E2C8  C0 1E 05 8C */	lfs f0, 0x58c(r30)
/* 8057E2CC  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8057E2D0  C0 1E 05 90 */	lfs f0, 0x590(r30)
/* 8057E2D4  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
lbl_8057E2D8:
/* 8057E2D8  7F C3 F3 78 */	mr r3, r30
/* 8057E2DC  4B FF F8 A9 */	bl bgCheck__10daGpTaru_cFv
/* 8057E2E0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8057E2E4  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 8057E2E8  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 8057E2EC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8057E2F0  EC 01 00 2A */	fadds f0, f1, f0
/* 8057E2F4  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 8057E2F8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8057E2FC  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 8057E300  C0 1E 05 50 */	lfs f0, 0x550(r30)
/* 8057E304  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 8057E308  C0 1E 05 54 */	lfs f0, 0x554(r30)
/* 8057E30C  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 8057E310  C0 1E 05 58 */	lfs f0, 0x558(r30)
/* 8057E314  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 8057E318  80 1E 05 D0 */	lwz r0, 0x5d0(r30)
/* 8057E31C  54 00 A7 FE */	rlwinm r0, r0, 0x14, 0x1f, 0x1f
/* 8057E320  98 1E 05 A0 */	stb r0, 0x5a0(r30)
/* 8057E324  7F C3 F3 78 */	mr r3, r30
/* 8057E328  4B FF EE D1 */	bl setBaseMtx__10daGpTaru_cFv
/* 8057E32C  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 8057E330  4B B0 61 30 */	b ChkTgHit__12dCcD_GObjInfFv
/* 8057E334  28 03 00 00 */	cmplwi r3, 0
/* 8057E338  41 82 00 B4 */	beq lbl_8057E3EC
/* 8057E33C  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 8057E340  4B B0 62 08 */	b GetTgHitGObj__12dCcD_GObjInfFv
/* 8057E344  80 83 00 10 */	lwz r4, 0x10(r3)
/* 8057E348  3C 60 D8 FB */	lis r3, 0xD8FB /* 0xD8FAFDBF@ha */
/* 8057E34C  38 03 FD BF */	addi r0, r3, 0xFDBF /* 0xD8FAFDBF@l */
/* 8057E350  7C 80 00 39 */	and. r0, r4, r0
/* 8057E354  41 82 00 70 */	beq lbl_8057E3C4
/* 8057E358  88 1E 09 55 */	lbz r0, 0x955(r30)
/* 8057E35C  28 00 00 00 */	cmplwi r0, 0
/* 8057E360  41 82 00 8C */	beq lbl_8057E3EC
/* 8057E364  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8057E368  7C 03 07 74 */	extsb r3, r0
/* 8057E36C  4B AA ED 00 */	b dComIfGp_getReverb__Fi
/* 8057E370  7C 67 1B 78 */	mr r7, r3
/* 8057E374  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080139@ha */
/* 8057E378  38 03 01 39 */	addi r0, r3, 0x0139 /* 0x00080139@l */
/* 8057E37C  90 01 00 08 */	stw r0, 8(r1)
/* 8057E380  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8057E384  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8057E388  80 63 00 00 */	lwz r3, 0(r3)
/* 8057E38C  38 81 00 08 */	addi r4, r1, 8
/* 8057E390  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8057E394  38 C0 00 00 */	li r6, 0
/* 8057E398  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8057E39C  FC 40 08 90 */	fmr f2, f1
/* 8057E3A0  C0 7F 00 8C */	lfs f3, 0x8c(r31)
/* 8057E3A4  FC 80 18 90 */	fmr f4, f3
/* 8057E3A8  39 00 00 00 */	li r8, 0
/* 8057E3AC  4B D2 D5 D8 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8057E3B0  7F C3 F3 78 */	mr r3, r30
/* 8057E3B4  48 00 07 F1 */	bl mode_init_exploInit__10daGpTaru_cFv
/* 8057E3B8  38 00 00 00 */	li r0, 0
/* 8057E3BC  98 1E 09 55 */	stb r0, 0x955(r30)
/* 8057E3C0  48 00 00 2C */	b lbl_8057E3EC
lbl_8057E3C4:
/* 8057E3C4  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 8057E3C8  4B B0 61 30 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 8057E3CC  4B CE 56 7C */	b GetAc__8cCcD_ObjFv
/* 8057E3D0  28 03 00 00 */	cmplwi r3, 0
/* 8057E3D4  41 82 00 18 */	beq lbl_8057E3EC
/* 8057E3D8  A8 03 00 08 */	lha r0, 8(r3)
/* 8057E3DC  2C 00 00 EF */	cmpwi r0, 0xef
/* 8057E3E0  40 82 00 0C */	bne lbl_8057E3EC
/* 8057E3E4  7F C3 F3 78 */	mr r3, r30
/* 8057E3E8  48 00 0A 45 */	bl mode_init_explosion__10daGpTaru_cFv
lbl_8057E3EC:
/* 8057E3EC  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 8057E3F0  4B B0 62 68 */	b ChkCoHit__12dCcD_GObjInfFv
/* 8057E3F4  28 03 00 00 */	cmplwi r3, 0
/* 8057E3F8  41 82 00 40 */	beq lbl_8057E438
/* 8057E3FC  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 8057E400  4B B0 62 F0 */	b GetCoHitObj__12dCcD_GObjInfFv
/* 8057E404  4B CE 56 44 */	b GetAc__8cCcD_ObjFv
/* 8057E408  28 03 00 00 */	cmplwi r3, 0
/* 8057E40C  41 82 00 2C */	beq lbl_8057E438
/* 8057E410  A8 03 00 08 */	lha r0, 8(r3)
/* 8057E414  2C 00 00 EF */	cmpwi r0, 0xef
/* 8057E418  40 82 00 20 */	bne lbl_8057E438
/* 8057E41C  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 8057E420  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 8057E424  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8057E428  4C 41 13 82 */	cror 2, 1, 2
/* 8057E42C  40 82 00 0C */	bne lbl_8057E438
/* 8057E430  7F C3 F3 78 */	mr r3, r30
/* 8057E434  48 00 09 F9 */	bl mode_init_explosion__10daGpTaru_cFv
lbl_8057E438:
/* 8057E438  38 7E 09 1C */	addi r3, r30, 0x91c
/* 8057E43C  C0 3E 09 48 */	lfs f1, 0x948(r30)
/* 8057E440  4B CF 0D C0 */	b SetR__8cM3dGCylFf
/* 8057E444  38 7E 09 1C */	addi r3, r30, 0x91c
/* 8057E448  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 8057E44C  4B CF 0D AC */	b SetH__8cM3dGCylFf
/* 8057E450  38 7E 09 1C */	addi r3, r30, 0x91c
/* 8057E454  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8057E458  4B CF 0D 84 */	b SetC__8cM3dGCylFRC4cXyz
/* 8057E45C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8057E460  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8057E464  38 63 23 3C */	addi r3, r3, 0x233c
/* 8057E468  38 9E 07 F8 */	addi r4, r30, 0x7f8
/* 8057E46C  4B CE 67 3C */	b Set__4cCcSFP8cCcD_Obj
/* 8057E470  38 7E 07 D8 */	addi r3, r30, 0x7d8
/* 8057E474  4B B0 53 BC */	b Move__10dCcD_GSttsFv
/* 8057E478  38 60 00 01 */	li r3, 1
/* 8057E47C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8057E480  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8057E484  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057E488  7C 08 03 A6 */	mtlr r0
/* 8057E48C  38 21 00 20 */	addi r1, r1, 0x20
/* 8057E490  4E 80 00 20 */	blr 

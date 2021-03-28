lbl_80CE9BA0:
/* 80CE9BA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CE9BA4  7C 08 02 A6 */	mflr r0
/* 80CE9BA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CE9BAC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CE9BB0  7C 7F 1B 78 */	mr r31, r3
/* 80CE9BB4  88 03 09 06 */	lbz r0, 0x906(r3)
/* 80CE9BB8  3C 80 80 CF */	lis r4, l_weight@ha
/* 80CE9BBC  38 84 CB 24 */	addi r4, r4, l_weight@l
/* 80CE9BC0  7C 04 00 AE */	lbzx r0, r4, r0
/* 80CE9BC4  98 03 07 A0 */	stb r0, 0x7a0(r3)
/* 80CE9BC8  3C 80 80 CF */	lis r4, lit_4010@ha
/* 80CE9BCC  C0 04 CB BC */	lfs f0, lit_4010@l(r4)
/* 80CE9BD0  D0 03 05 30 */	stfs f0, 0x530(r3)
/* 80CE9BD4  48 00 01 25 */	bl mode_proc_call__12daObjStone_cFv
/* 80CE9BD8  38 7F 07 C8 */	addi r3, r31, 0x7c8
/* 80CE9BDC  4B 39 A8 84 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80CE9BE0  28 03 00 00 */	cmplwi r3, 0
/* 80CE9BE4  41 82 00 38 */	beq lbl_80CE9C1C
/* 80CE9BE8  38 7F 07 C8 */	addi r3, r31, 0x7c8
/* 80CE9BEC  4B 39 A9 0C */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80CE9BF0  28 03 00 00 */	cmplwi r3, 0
/* 80CE9BF4  41 82 00 28 */	beq lbl_80CE9C1C
/* 80CE9BF8  38 7F 07 C8 */	addi r3, r31, 0x7c8
/* 80CE9BFC  4B 39 A9 80 */	b GetTgHitObjSe__12dCcD_GObjInfFv
/* 80CE9C00  38 80 00 01 */	li r4, 1
/* 80CE9C04  4B 39 A9 AC */	b getHitSeID__12dCcD_GObjInfFUci
/* 80CE9C08  7C 64 1B 78 */	mr r4, r3
/* 80CE9C0C  38 7F 09 70 */	addi r3, r31, 0x970
/* 80CE9C10  38 A0 00 02 */	li r5, 2
/* 80CE9C14  38 C0 00 00 */	li r6, 0
/* 80CE9C18  4B 5D 48 8C */	b startCollisionSE__14Z2SoundObjBaseFUlUlP14Z2SoundObjBase
lbl_80CE9C1C:
/* 80CE9C1C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CE9C20  7C 03 07 74 */	extsb r3, r0
/* 80CE9C24  4B 34 34 48 */	b dComIfGp_getReverb__Fi
/* 80CE9C28  7C 65 1B 78 */	mr r5, r3
/* 80CE9C2C  38 7F 09 70 */	addi r3, r31, 0x970
/* 80CE9C30  38 80 00 00 */	li r4, 0
/* 80CE9C34  81 9F 09 80 */	lwz r12, 0x980(r31)
/* 80CE9C38  81 8C 00 08 */	lwz r12, 8(r12)
/* 80CE9C3C  7D 89 03 A6 */	mtctr r12
/* 80CE9C40  4E 80 04 21 */	bctrl 
/* 80CE9C44  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80CE9C48  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80CE9C4C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80CE9C50  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80CE9C54  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80CE9C58  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80CE9C5C  C0 1F 05 50 */	lfs f0, 0x550(r31)
/* 80CE9C60  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80CE9C64  C0 1F 05 54 */	lfs f0, 0x554(r31)
/* 80CE9C68  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80CE9C6C  C0 1F 05 58 */	lfs f0, 0x558(r31)
/* 80CE9C70  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80CE9C74  7F E3 FB 78 */	mr r3, r31
/* 80CE9C78  4B FF F7 F1 */	bl setBaseMtx__12daObjStone_cFv
/* 80CE9C7C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80CE9C80  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CE9C84  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80CE9C88  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80CE9C8C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80CE9C90  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CE9C94  C0 1F 09 40 */	lfs f0, 0x940(r31)
/* 80CE9C98  EC 01 00 2A */	fadds f0, f1, f0
/* 80CE9C9C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CE9CA0  38 7F 08 EC */	addi r3, r31, 0x8ec
/* 80CE9CA4  38 81 00 08 */	addi r4, r1, 8
/* 80CE9CA8  4B 58 59 A0 */	b SetC__8cM3dGSphFRC4cXyz
/* 80CE9CAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CE9CB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CE9CB4  38 63 23 3C */	addi r3, r3, 0x233c
/* 80CE9CB8  38 9F 07 C8 */	addi r4, r31, 0x7c8
/* 80CE9CBC  4B 57 AE EC */	b Set__4cCcSFP8cCcD_Obj
/* 80CE9CC0  80 1F 05 A0 */	lwz r0, 0x5a0(r31)
/* 80CE9CC4  54 00 04 E2 */	rlwinm r0, r0, 0, 0x13, 0x11
/* 80CE9CC8  90 1F 05 A0 */	stw r0, 0x5a0(r31)
/* 80CE9CCC  88 1F 09 4E */	lbz r0, 0x94e(r31)
/* 80CE9CD0  98 1F 09 4F */	stb r0, 0x94f(r31)
/* 80CE9CD4  7F E3 FB 78 */	mr r3, r31
/* 80CE9CD8  38 80 00 00 */	li r4, 0
/* 80CE9CDC  48 00 2B 01 */	bl effect_delete__12daObjStone_cFb
/* 80CE9CE0  38 60 00 01 */	li r3, 1
/* 80CE9CE4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CE9CE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CE9CEC  7C 08 03 A6 */	mtlr r0
/* 80CE9CF0  38 21 00 20 */	addi r1, r1, 0x20
/* 80CE9CF4  4E 80 00 20 */	blr 

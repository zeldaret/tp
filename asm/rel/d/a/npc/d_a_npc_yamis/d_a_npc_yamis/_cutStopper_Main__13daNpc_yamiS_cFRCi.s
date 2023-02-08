lbl_80B48238:
/* 80B48238  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B4823C  7C 08 02 A6 */	mflr r0
/* 80B48240  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B48244  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B48248  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80B4824C  7C 7E 1B 78 */	mr r30, r3
/* 80B48250  3B E0 00 00 */	li r31, 0
/* 80B48254  80 04 00 00 */	lwz r0, 0(r4)
/* 80B48258  2C 00 00 14 */	cmpwi r0, 0x14
/* 80B4825C  41 82 00 B0 */	beq lbl_80B4830C
/* 80B48260  40 80 00 E8 */	bge lbl_80B48348
/* 80B48264  2C 00 00 0A */	cmpwi r0, 0xa
/* 80B48268  41 82 00 08 */	beq lbl_80B48270
/* 80B4826C  48 00 00 DC */	b lbl_80B48348
lbl_80B48270:
/* 80B48270  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B48274  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B48278  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B4827C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80B48280  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B48284  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80B48288  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B4828C  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80B48290  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B48294  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80B48298  38 81 00 08 */	addi r4, r1, 8
/* 80B4829C  4B 72 89 69 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80B482A0  7C 64 1B 78 */	mr r4, r3
/* 80B482A4  38 7E 0D 7A */	addi r3, r30, 0xd7a
/* 80B482A8  38 A0 06 00 */	li r5, 0x600
/* 80B482AC  4B 72 88 E5 */	bl cLib_chaseAngleS__FPsss
/* 80B482B0  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80B482B4  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80B482B8  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80B482BC  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80B482C0  2C 03 00 00 */	cmpwi r3, 0
/* 80B482C4  41 82 00 84 */	beq lbl_80B48348
/* 80B482C8  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80B482CC  2C 00 00 01 */	cmpwi r0, 1
/* 80B482D0  41 82 00 2C */	beq lbl_80B482FC
/* 80B482D4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B482D8  4B 5F D4 25 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B482DC  38 00 00 00 */	li r0, 0
/* 80B482E0  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80B482E4  3C 60 80 B5 */	lis r3, lit_4194@ha /* 0x80B49754@ha */
/* 80B482E8  C0 03 97 54 */	lfs f0, lit_4194@l(r3)  /* 0x80B49754@l */
/* 80B482EC  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80B482F0  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B482F4  38 00 00 01 */	li r0, 1
/* 80B482F8  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80B482FC:
/* 80B482FC  38 00 00 00 */	li r0, 0
/* 80B48300  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B48304  3B E0 00 01 */	li r31, 1
/* 80B48308  48 00 00 40 */	b lbl_80B48348
lbl_80B4830C:
/* 80B4830C  38 80 00 00 */	li r4, 0
/* 80B48310  38 A0 00 00 */	li r5, 0
/* 80B48314  38 C0 00 00 */	li r6, 0
/* 80B48318  38 E0 00 00 */	li r7, 0
/* 80B4831C  4B 60 39 5D */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B48320  2C 03 00 00 */	cmpwi r3, 0
/* 80B48324  41 82 00 24 */	beq lbl_80B48348
/* 80B48328  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B4832C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B48330  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80B48334  7C 64 1B 78 */	mr r4, r3
/* 80B48338  4B 4D 23 D9 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B4833C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B48340  B0 64 06 06 */	sth r3, 0x606(r4)
/* 80B48344  3B E0 00 01 */	li r31, 1
lbl_80B48348:
/* 80B48348  7F E3 FB 78 */	mr r3, r31
/* 80B4834C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B48350  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80B48354  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B48358  7C 08 03 A6 */	mtlr r0
/* 80B4835C  38 21 00 20 */	addi r1, r1, 0x20
/* 80B48360  4E 80 00 20 */	blr 

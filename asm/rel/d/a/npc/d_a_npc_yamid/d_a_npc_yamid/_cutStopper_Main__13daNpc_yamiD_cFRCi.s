lbl_80B44BD4:
/* 80B44BD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B44BD8  7C 08 02 A6 */	mflr r0
/* 80B44BDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B44BE0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B44BE4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80B44BE8  7C 7E 1B 78 */	mr r30, r3
/* 80B44BEC  3B E0 00 00 */	li r31, 0
/* 80B44BF0  80 04 00 00 */	lwz r0, 0(r4)
/* 80B44BF4  2C 00 00 14 */	cmpwi r0, 0x14
/* 80B44BF8  41 82 00 B0 */	beq lbl_80B44CA8
/* 80B44BFC  40 80 00 E8 */	bge lbl_80B44CE4
/* 80B44C00  2C 00 00 0A */	cmpwi r0, 0xa
/* 80B44C04  41 82 00 08 */	beq lbl_80B44C0C
/* 80B44C08  48 00 00 DC */	b lbl_80B44CE4
lbl_80B44C0C:
/* 80B44C0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B44C10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B44C14  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B44C18  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80B44C1C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B44C20  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80B44C24  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B44C28  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80B44C2C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B44C30  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80B44C34  38 81 00 08 */	addi r4, r1, 8
/* 80B44C38  4B 72 BF CC */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B44C3C  7C 64 1B 78 */	mr r4, r3
/* 80B44C40  38 7E 0D 7A */	addi r3, r30, 0xd7a
/* 80B44C44  38 A0 06 00 */	li r5, 0x600
/* 80B44C48  4B 72 BF 48 */	b cLib_chaseAngleS__FPsss
/* 80B44C4C  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80B44C50  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80B44C54  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80B44C58  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80B44C5C  2C 03 00 00 */	cmpwi r3, 0
/* 80B44C60  41 82 00 84 */	beq lbl_80B44CE4
/* 80B44C64  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80B44C68  2C 00 00 01 */	cmpwi r0, 1
/* 80B44C6C  41 82 00 2C */	beq lbl_80B44C98
/* 80B44C70  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B44C74  4B 60 0A 88 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B44C78  38 00 00 00 */	li r0, 0
/* 80B44C7C  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80B44C80  3C 60 80 B4 */	lis r3, lit_4194@ha
/* 80B44C84  C0 03 60 F0 */	lfs f0, lit_4194@l(r3)
/* 80B44C88  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80B44C8C  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B44C90  38 00 00 01 */	li r0, 1
/* 80B44C94  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80B44C98:
/* 80B44C98  38 00 00 00 */	li r0, 0
/* 80B44C9C  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B44CA0  3B E0 00 01 */	li r31, 1
/* 80B44CA4  48 00 00 40 */	b lbl_80B44CE4
lbl_80B44CA8:
/* 80B44CA8  38 80 00 00 */	li r4, 0
/* 80B44CAC  38 A0 00 00 */	li r5, 0
/* 80B44CB0  38 C0 00 00 */	li r6, 0
/* 80B44CB4  38 E0 00 00 */	li r7, 0
/* 80B44CB8  4B 60 6F C0 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B44CBC  2C 03 00 00 */	cmpwi r3, 0
/* 80B44CC0  41 82 00 24 */	beq lbl_80B44CE4
/* 80B44CC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B44CC8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80B44CCC  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80B44CD0  7C 64 1B 78 */	mr r4, r3
/* 80B44CD4  4B 4D 5A 3C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B44CD8  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B44CDC  B0 64 06 06 */	sth r3, 0x606(r4)
/* 80B44CE0  3B E0 00 01 */	li r31, 1
lbl_80B44CE4:
/* 80B44CE4  7F E3 FB 78 */	mr r3, r31
/* 80B44CE8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B44CEC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80B44CF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B44CF4  7C 08 03 A6 */	mtlr r0
/* 80B44CF8  38 21 00 20 */	addi r1, r1, 0x20
/* 80B44CFC  4E 80 00 20 */	blr 

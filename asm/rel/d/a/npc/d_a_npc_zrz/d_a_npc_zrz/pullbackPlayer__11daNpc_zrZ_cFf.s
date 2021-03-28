lbl_80B98C34:
/* 80B98C34  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B98C38  7C 08 02 A6 */	mflr r0
/* 80B98C3C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B98C40  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80B98C44  7C 7F 1B 78 */	mr r31, r3
/* 80B98C48  38 7F 0C 90 */	addi r3, r31, 0xc90
/* 80B98C4C  4B 5B 80 14 */	b getBeforeIdx__13daNpcF_Path_cFv
/* 80B98C50  80 9F 0C 94 */	lwz r4, 0xc94(r31)
/* 80B98C54  80 84 00 08 */	lwz r4, 8(r4)
/* 80B98C58  54 60 20 36 */	slwi r0, r3, 4
/* 80B98C5C  7C 84 02 14 */	add r4, r4, r0
/* 80B98C60  80 64 00 04 */	lwz r3, 4(r4)
/* 80B98C64  80 04 00 08 */	lwz r0, 8(r4)
/* 80B98C68  90 61 00 08 */	stw r3, 8(r1)
/* 80B98C6C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B98C70  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80B98C74  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B98C78  C0 01 00 08 */	lfs f0, 8(r1)
/* 80B98C7C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B98C80  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80B98C84  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80B98C88  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80B98C8C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B98C90  3C 60 80 BA */	lis r3, lit_6287@ha
/* 80B98C94  C0 03 B2 0C */	lfs f0, lit_6287@l(r3)
/* 80B98C98  EC 01 00 2A */	fadds f0, f1, f0
/* 80B98C9C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B98CA0  38 61 00 14 */	addi r3, r1, 0x14
/* 80B98CA4  4B 48 50 18 */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80B98CA8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B98CAC  41 82 00 10 */	beq lbl_80B98CBC
/* 80B98CB0  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 80B98CB4  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 80B98CB8  D0 01 00 18 */	stfs f0, 0x18(r1)
lbl_80B98CBC:
/* 80B98CBC  38 61 00 14 */	addi r3, r1, 0x14
/* 80B98CC0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80B98CC4  4B 6D 7F 40 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B98CC8  7C 65 1B 78 */	mr r5, r3
/* 80B98CCC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B98CD0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B98CD4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B98CD8  38 81 00 14 */	addi r4, r1, 0x14
/* 80B98CDC  38 C0 00 00 */	li r6, 0
/* 80B98CE0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80B98CE4  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80B98CE8  7D 89 03 A6 */	mtctr r12
/* 80B98CEC  4E 80 04 21 */	bctrl 
/* 80B98CF0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80B98CF4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B98CF8  7C 08 03 A6 */	mtlr r0
/* 80B98CFC  38 21 00 30 */	addi r1, r1, 0x30
/* 80B98D00  4E 80 00 20 */	blr 

lbl_805894A4:
/* 805894A4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805894A8  7C 08 02 A6 */	mflr r0
/* 805894AC  90 01 00 74 */	stw r0, 0x74(r1)
/* 805894B0  39 61 00 70 */	addi r11, r1, 0x70
/* 805894B4  4B DD 8D 29 */	bl _savegpr_29
/* 805894B8  7C 7D 1B 78 */	mr r29, r3
/* 805894BC  3C 60 80 59 */	lis r3, l_gateBmdIdx@ha /* 0x8058AB30@ha */
/* 805894C0  3B E3 AB 30 */	addi r31, r3, l_gateBmdIdx@l /* 0x8058AB30@l */
/* 805894C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805894C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805894CC  88 03 09 74 */	lbz r0, 0x974(r3)
/* 805894D0  28 00 00 00 */	cmplwi r0, 0
/* 805894D4  40 82 00 0C */	bne lbl_805894E0
/* 805894D8  38 60 00 00 */	li r3, 0
/* 805894DC  48 00 00 DC */	b lbl_805895B8
lbl_805894E0:
/* 805894E0  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 805894E4  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 805894E8  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 805894EC  7C 03 00 50 */	subf r0, r3, r0
/* 805894F0  7C 03 07 34 */	extsh r3, r0
/* 805894F4  4B DD BB DD */	bl abs
/* 805894F8  2C 03 50 00 */	cmpwi r3, 0x5000
/* 805894FC  40 80 00 0C */	bge lbl_80589508
/* 80589500  38 60 00 00 */	li r3, 0
/* 80589504  48 00 00 B4 */	b lbl_805895B8
lbl_80589508:
/* 80589508  38 7D 0B 18 */	addi r3, r29, 0xb18
/* 8058950C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80589510  4B DB D0 A1 */	bl PSMTXInverse
/* 80589514  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80589518  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8058951C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80589520  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80589524  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80589528  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8058952C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80589530  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80589534  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80589538  4B DB CF 79 */	bl PSMTXCopy
/* 8058953C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80589540  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80589544  38 81 00 20 */	addi r4, r1, 0x20
/* 80589548  7C 85 23 78 */	mr r5, r4
/* 8058954C  4B DB D8 21 */	bl PSMTXMultVec
/* 80589550  C0 5F 00 FC */	lfs f2, 0xfc(r31)
/* 80589554  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80589558  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 8058955C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80589560  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80589564  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 80589568  D0 01 00 08 */	stfs f0, 8(r1)
/* 8058956C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80589570  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80589574  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 80589578  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 8058957C  4C 40 13 82 */	cror 2, 0, 2
/* 80589580  40 82 00 34 */	bne lbl_805895B4
/* 80589584  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80589588  4C 40 13 82 */	cror 2, 0, 2
/* 8058958C  40 82 00 28 */	bne lbl_805895B4
/* 80589590  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 80589594  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 80589598  4C 40 13 82 */	cror 2, 0, 2
/* 8058959C  40 82 00 18 */	bne lbl_805895B4
/* 805895A0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805895A4  4C 40 13 82 */	cror 2, 0, 2
/* 805895A8  40 82 00 0C */	bne lbl_805895B4
/* 805895AC  38 60 00 01 */	li r3, 1
/* 805895B0  48 00 00 08 */	b lbl_805895B8
lbl_805895B4:
/* 805895B4  38 60 00 00 */	li r3, 0
lbl_805895B8:
/* 805895B8  39 61 00 70 */	addi r11, r1, 0x70
/* 805895BC  4B DD 8C 6D */	bl _restgpr_29
/* 805895C0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805895C4  7C 08 03 A6 */	mtlr r0
/* 805895C8  38 21 00 70 */	addi r1, r1, 0x70
/* 805895CC  4E 80 00 20 */	blr 

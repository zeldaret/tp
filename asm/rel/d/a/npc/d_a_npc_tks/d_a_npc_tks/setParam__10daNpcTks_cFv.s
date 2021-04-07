lbl_80B1C480:
/* 80B1C480  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B1C484  7C 08 02 A6 */	mflr r0
/* 80B1C488  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1C48C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B1C490  93 C1 00 08 */	stw r30, 8(r1)
/* 80B1C494  7C 7E 1B 78 */	mr r30, r3
/* 80B1C498  3C 60 80 B2 */	lis r3, m__16daNpcTks_Param_c@ha /* 0x80B1DD58@ha */
/* 80B1C49C  3B E3 DD 58 */	addi r31, r3, m__16daNpcTks_Param_c@l /* 0x80B1DD58@l */
/* 80B1C4A0  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 80B1C4A4  38 9F 00 00 */	addi r4, r31, 0
/* 80B1C4A8  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80B1C4AC  4B 55 9A 95 */	bl SetWallR__12dBgS_AcchCirFf
/* 80B1C4B0  38 7F 00 00 */	addi r3, r31, 0
/* 80B1C4B4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80B1C4B8  D0 1E 08 14 */	stfs f0, 0x814(r30)
/* 80B1C4BC  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80B1C4C0  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80B1C4C4  41 82 00 0C */	beq lbl_80B1C4D0
/* 80B1C4C8  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80B1C4CC  48 00 00 08 */	b lbl_80B1C4D4
lbl_80B1C4D0:
/* 80B1C4D0  C0 03 00 04 */	lfs f0, 4(r3)
lbl_80B1C4D4:
/* 80B1C4D4  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80B1C4D8  C0 1F 02 E4 */	lfs f0, 0x2e4(r31)
/* 80B1C4DC  D0 1E 05 34 */	stfs f0, 0x534(r30)
/* 80B1C4E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B1C4E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B1C4E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B1C4EC  7C 08 03 A6 */	mtlr r0
/* 80B1C4F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B1C4F4  4E 80 00 20 */	blr 

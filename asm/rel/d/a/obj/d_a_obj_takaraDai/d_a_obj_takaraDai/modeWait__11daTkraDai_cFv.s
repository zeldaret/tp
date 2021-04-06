lbl_80D07528:
/* 80D07528  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0752C  7C 08 02 A6 */	mflr r0
/* 80D07530  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D07534  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D07538  7C 7F 1B 78 */	mr r31, r3
/* 80D0753C  3C 60 80 D0 */	lis r3, l_HIO@ha /* 0x80D0791C@ha */
/* 80D07540  38 63 79 1C */	addi r3, r3, l_HIO@l /* 0x80D0791C@l */
/* 80D07544  C0 03 00 08 */	lfs f0, 8(r3)
/* 80D07548  D0 1F 05 DC */	stfs f0, 0x5dc(r31)
/* 80D0754C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80D07550  D0 1F 05 E4 */	stfs f0, 0x5e4(r31)
/* 80D07554  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80D07558  D0 1F 05 E0 */	stfs f0, 0x5e0(r31)
/* 80D0755C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D07560  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D07564  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D07568  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D0756C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D07570  7C 05 07 74 */	extsb r5, r0
/* 80D07574  4B 32 DD ED */	bl isSwitch__10dSv_info_cCFii
/* 80D07578  2C 03 00 00 */	cmpwi r3, 0
/* 80D0757C  40 82 00 14 */	bne lbl_80D07590
/* 80D07580  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 80D07584  A8 1F 06 1A */	lha r0, 0x61a(r31)
/* 80D07588  7C 03 02 14 */	add r0, r3, r0
/* 80D0758C  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
lbl_80D07590:
/* 80D07590  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D07594  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D07598  7C 08 03 A6 */	mtlr r0
/* 80D0759C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D075A0  4E 80 00 20 */	blr 

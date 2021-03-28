lbl_80CA72BC:
/* 80CA72BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA72C0  7C 08 02 A6 */	mflr r0
/* 80CA72C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA72C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA72CC  93 C1 00 08 */	stw r30, 8(r1)
/* 80CA72D0  7C 7E 1B 78 */	mr r30, r3
/* 80CA72D4  3C 60 80 CA */	lis r3, mCcDObjInfo__15daObj_Oiltubo_c@ha
/* 80CA72D8  3B E3 78 F4 */	addi r31, r3, mCcDObjInfo__15daObj_Oiltubo_c@l
/* 80CA72DC  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80CA72E0  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 80CA72E4  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
/* 80CA72E8  D0 1E 04 F4 */	stfs f0, 0x4f4(r30)
/* 80CA72EC  38 7E 07 A4 */	addi r3, r30, 0x7a4
/* 80CA72F0  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80CA72F4  4B 3C EC 4C */	b SetWallR__12dBgS_AcchCirFf
/* 80CA72F8  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80CA72FC  D0 1E 07 D4 */	stfs f0, 0x7d4(r30)
/* 80CA7300  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA7304  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CA7308  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA730C  7C 08 03 A6 */	mtlr r0
/* 80CA7310  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA7314  4E 80 00 20 */	blr 

lbl_80CC1558:
/* 80CC1558  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC155C  7C 08 02 A6 */	mflr r0
/* 80CC1560  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC1564  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC1568  7C 7F 1B 78 */	mr r31, r3
/* 80CC156C  80 83 05 AC */	lwz r4, 0x5ac(r3)
/* 80CC1570  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80CC1574  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80CC1578  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80CC157C  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80CC1580  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80CC1584  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80CC1588  80 83 05 B0 */	lwz r4, 0x5b0(r3)
/* 80CC158C  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80CC1590  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80CC1594  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80CC1598  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80CC159C  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80CC15A0  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80CC15A4  80 83 05 A8 */	lwz r4, 0x5a8(r3)
/* 80CC15A8  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80CC15AC  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80CC15B0  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80CC15B4  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80CC15B8  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80CC15BC  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80CC15C0  48 00 00 55 */	bl setBaseMtx__15daObjRotStair_cFv
/* 80CC15C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CC15C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CC15CC  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80CC15D0  38 84 00 24 */	addi r4, r4, 0x24
/* 80CC15D4  4B 68 4E DC */	b PSMTXCopy
/* 80CC15D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CC15DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CC15E0  80 9F 05 AC */	lwz r4, 0x5ac(r31)
/* 80CC15E4  38 84 00 24 */	addi r4, r4, 0x24
/* 80CC15E8  4B 68 4E C8 */	b PSMTXCopy
/* 80CC15EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CC15F0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CC15F4  80 9F 05 B0 */	lwz r4, 0x5b0(r31)
/* 80CC15F8  38 84 00 24 */	addi r4, r4, 0x24
/* 80CC15FC  4B 68 4E B4 */	b PSMTXCopy
/* 80CC1600  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC1604  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC1608  7C 08 03 A6 */	mtlr r0
/* 80CC160C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC1610  4E 80 00 20 */	blr 

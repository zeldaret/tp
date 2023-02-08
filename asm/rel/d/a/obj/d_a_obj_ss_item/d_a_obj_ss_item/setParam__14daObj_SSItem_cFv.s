lbl_80CE7BB4:
/* 80CE7BB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE7BB8  7C 08 02 A6 */	mflr r0
/* 80CE7BBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE7BC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE7BC4  93 C1 00 08 */	stw r30, 8(r1)
/* 80CE7BC8  7C 7E 1B 78 */	mr r30, r3
/* 80CE7BCC  3C 60 80 CE */	lis r3, mCcDObjInfo__14daObj_SSItem_c@ha /* 0x80CE7EB0@ha */
/* 80CE7BD0  3B E3 7E B0 */	addi r31, r3, mCcDObjInfo__14daObj_SSItem_c@l /* 0x80CE7EB0@l */
/* 80CE7BD4  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80CE7BD8  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 80CE7BDC  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
/* 80CE7BE0  D0 1E 04 F4 */	stfs f0, 0x4f4(r30)
/* 80CE7BE4  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 80CE7BE8  60 00 00 10 */	ori r0, r0, 0x10
/* 80CE7BEC  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80CE7BF0  38 7E 07 98 */	addi r3, r30, 0x798
/* 80CE7BF4  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80CE7BF8  4B 38 E3 49 */	bl SetWallR__12dBgS_AcchCirFf
/* 80CE7BFC  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80CE7C00  D0 1E 07 C8 */	stfs f0, 0x7c8(r30)
/* 80CE7C04  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80CE7C08  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80CE7C0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE7C10  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CE7C14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE7C18  7C 08 03 A6 */	mtlr r0
/* 80CE7C1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE7C20  4E 80 00 20 */	blr 

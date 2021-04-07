lbl_80BED3B8:
/* 80BED3B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BED3BC  7C 08 02 A6 */	mflr r0
/* 80BED3C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BED3C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BED3C8  93 C1 00 08 */	stw r30, 8(r1)
/* 80BED3CC  7C 7E 1B 78 */	mr r30, r3
/* 80BED3D0  3C 60 80 BF */	lis r3, M_attr__12daObjFlag2_c@ha /* 0x80BEE0DC@ha */
/* 80BED3D4  3B E3 E0 DC */	addi r31, r3, M_attr__12daObjFlag2_c@l /* 0x80BEE0DC@l */
/* 80BED3D8  38 7E 05 7C */	addi r3, r30, 0x57c
/* 80BED3DC  38 80 00 FF */	li r4, 0xff
/* 80BED3E0  38 A0 00 FF */	li r5, 0xff
/* 80BED3E4  7F C6 F3 78 */	mr r6, r30
/* 80BED3E8  4B 49 64 79 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80BED3EC  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 80BED3F0  38 9F 00 A0 */	addi r4, r31, 0xa0
/* 80BED3F4  4B 49 74 C1 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80BED3F8  38 1E 05 7C */	addi r0, r30, 0x57c
/* 80BED3FC  90 1E 05 FC */	stw r0, 0x5fc(r30)
/* 80BED400  38 7E 06 DC */	addi r3, r30, 0x6dc
/* 80BED404  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80BED408  4B 68 1D D5 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80BED40C  38 7E 06 DC */	addi r3, r30, 0x6dc
/* 80BED410  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 80BED414  4B 68 1D ED */	bl SetR__8cM3dGCylFf
/* 80BED418  38 7E 06 DC */	addi r3, r30, 0x6dc
/* 80BED41C  C0 3F 00 E8 */	lfs f1, 0xe8(r31)
/* 80BED420  C0 1E 10 A4 */	lfs f0, 0x10a4(r30)
/* 80BED424  EC 21 00 2A */	fadds f1, f1, f0
/* 80BED428  4B 68 1D D1 */	bl SetH__8cM3dGCylFf
/* 80BED42C  7F C3 F3 78 */	mr r3, r30
/* 80BED430  48 00 00 1D */	bl setCollision__12daObjFlag2_cFv
/* 80BED434  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BED438  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BED43C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BED440  7C 08 03 A6 */	mtlr r0
/* 80BED444  38 21 00 10 */	addi r1, r1, 0x10
/* 80BED448  4E 80 00 20 */	blr 

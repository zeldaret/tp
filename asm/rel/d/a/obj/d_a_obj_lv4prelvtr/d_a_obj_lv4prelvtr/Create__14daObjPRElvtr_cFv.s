lbl_80C68768:
/* 80C68768  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6876C  7C 08 02 A6 */	mflr r0
/* 80C68770  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C68774  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C68778  7C 7F 1B 78 */	mr r31, r3
/* 80C6877C  38 7F 05 D8 */	addi r3, r31, 0x5d8
/* 80C68780  80 9F 06 08 */	lwz r4, 0x608(r31)
/* 80C68784  38 84 00 24 */	addi r4, r4, 0x24
/* 80C68788  4B 6D DD 28 */	b PSMTXCopy
/* 80C6878C  38 1F 05 D8 */	addi r0, r31, 0x5d8
/* 80C68790  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80C68794  7F E3 FB 78 */	mr r3, r31
/* 80C68798  3C 80 80 C7 */	lis r4, l_cull_box@ha
/* 80C6879C  C4 24 8B 68 */	lfsu f1, l_cull_box@l(r4)
/* 80C687A0  C0 44 00 04 */	lfs f2, 4(r4)
/* 80C687A4  C0 64 00 08 */	lfs f3, 8(r4)
/* 80C687A8  C0 84 00 0C */	lfs f4, 0xc(r4)
/* 80C687AC  C0 A4 00 10 */	lfs f5, 0x10(r4)
/* 80C687B0  C0 C4 00 14 */	lfs f6, 0x14(r4)
/* 80C687B4  4B 3B 1D 94 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80C687B8  38 60 00 01 */	li r3, 1
/* 80C687BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C687C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C687C4  7C 08 03 A6 */	mtlr r0
/* 80C687C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C687CC  4E 80 00 20 */	blr 

lbl_8032EC28:
/* 8032EC28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032EC2C  7C 08 02 A6 */	mflr r0
/* 8032EC30  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032EC34  C0 23 00 00 */	lfs f1, 0(r3)
/* 8032EC38  3C A0 80 43 */	lis r5, mCurrentS__6J3DSys@ha /* 0x80434C14@ha */
/* 8032EC3C  D4 25 4C 14 */	stfsu f1, mCurrentS__6J3DSys@l(r5)  /* 0x80434C14@l */
/* 8032EC40  C0 43 00 04 */	lfs f2, 4(r3)
/* 8032EC44  D0 45 00 04 */	stfs f2, 4(r5)
/* 8032EC48  C0 63 00 08 */	lfs f3, 8(r3)
/* 8032EC4C  D0 65 00 08 */	stfs f3, 8(r5)
/* 8032EC50  3C 60 80 3A */	lis r3, lit_882@ha /* 0x803A2068@ha */
/* 8032EC54  38 A3 20 68 */	addi r5, r3, lit_882@l /* 0x803A2068@l */
/* 8032EC58  80 65 00 00 */	lwz r3, 0(r5)
/* 8032EC5C  80 05 00 04 */	lwz r0, 4(r5)
/* 8032EC60  90 61 00 08 */	stw r3, 8(r1)
/* 8032EC64  90 01 00 0C */	stw r0, 0xc(r1)
/* 8032EC68  80 05 00 08 */	lwz r0, 8(r5)
/* 8032EC6C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8032EC70  C0 01 00 08 */	lfs f0, 8(r1)
/* 8032EC74  3C 60 80 43 */	lis r3, mParentS__6J3DSys@ha /* 0x80434C20@ha */
/* 8032EC78  D4 03 4C 20 */	stfsu f0, mParentS__6J3DSys@l(r3)  /* 0x80434C20@l */
/* 8032EC7C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8032EC80  D0 03 00 04 */	stfs f0, 4(r3)
/* 8032EC84  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8032EC88  D0 03 00 08 */	stfs f0, 8(r3)
/* 8032EC8C  7C 83 23 78 */	mr r3, r4
/* 8032EC90  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 8032EC94  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 8032EC98  48 00 AD ED */	bl JMAMTXApplyScale__FPA4_CfPA4_ffff
/* 8032EC9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032ECA0  7C 08 03 A6 */	mtlr r0
/* 8032ECA4  38 21 00 20 */	addi r1, r1, 0x20
/* 8032ECA8  4E 80 00 20 */	blr 

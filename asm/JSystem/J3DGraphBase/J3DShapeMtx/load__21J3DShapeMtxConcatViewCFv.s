lbl_80313C54:
/* 80313C54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80313C58  7C 08 02 A6 */	mflr r0
/* 80313C5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80313C60  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80313C64  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80313C68  7C 7F 1B 78 */	mr r31, r3
/* 80313C6C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80313C70  3B C3 4A C8 */	addi r30, r3, j3dSys@l /* 0x80434AC8@l */
/* 80313C74  80 DE 00 38 */	lwz r6, 0x38(r30)
/* 80313C78  80 66 00 84 */	lwz r3, 0x84(r6)
/* 80313C7C  80 03 00 34 */	lwz r0, 0x34(r3)
/* 80313C80  90 0D 90 38 */	stw r0, sMtxPtrTbl__21J3DShapeMtxConcatView(r13)
/* 80313C84  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80313C88  38 AD 90 38 */	la r5, sMtxPtrTbl__21J3DShapeMtxConcatView(r13) /* 804515B8-_SDA_BASE_ */
/* 80313C8C  90 05 00 04 */	stw r0, 4(r5)
/* 80313C90  80 0D 90 28 */	lwz r0, sCurrentPipeline__11J3DShapeMtx(r13)
/* 80313C94  1C 80 00 0C */	mulli r4, r0, 0xc
/* 80313C98  3C 60 80 3D */	lis r3, sMtxLoadPipeline__21J3DShapeMtxConcatView@ha /* 0x803CDA20@ha */
/* 80313C9C  38 03 DA 20 */	addi r0, r3, sMtxLoadPipeline__21J3DShapeMtxConcatView@l /* 0x803CDA20@l */
/* 80313CA0  7C 80 22 14 */	add r4, r0, r4
/* 80313CA4  80 64 00 00 */	lwz r3, 0(r4)
/* 80313CA8  80 04 00 04 */	lwz r0, 4(r4)
/* 80313CAC  90 61 00 08 */	stw r3, 8(r1)
/* 80313CB0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80313CB4  80 04 00 08 */	lwz r0, 8(r4)
/* 80313CB8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80313CBC  80 66 00 04 */	lwz r3, 4(r6)
/* 80313CC0  80 63 00 48 */	lwz r3, 0x48(r3)
/* 80313CC4  A0 1F 00 04 */	lhz r0, 4(r31)
/* 80313CC8  7C 03 00 AE */	lbzx r0, r3, r0
/* 80313CCC  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 80313CD0  7C 85 00 2E */	lwzx r4, r5, r0
/* 80313CD4  90 9E 01 04 */	stw r4, 0x104(r30)
/* 80313CD8  38 60 00 15 */	li r3, 0x15
/* 80313CDC  38 A0 00 30 */	li r5, 0x30
/* 80313CE0  48 04 7E 49 */	bl GXSetArray
/* 80313CE4  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 80313CE8  80 63 00 04 */	lwz r3, 4(r3)
/* 80313CEC  80 63 00 4C */	lwz r3, 0x4c(r3)
/* 80313CF0  A0 1F 00 04 */	lhz r0, 4(r31)
/* 80313CF4  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 80313CF8  7C A3 02 2E */	lhzx r5, r3, r0
/* 80313CFC  7F E3 FB 78 */	mr r3, r31
/* 80313D00  38 80 00 00 */	li r4, 0
/* 80313D04  39 81 00 08 */	addi r12, r1, 8
/* 80313D08  48 04 E3 7D */	bl __ptmf_scall
/* 80313D0C  60 00 00 00 */	nop 
/* 80313D10  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80313D14  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80313D18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80313D1C  7C 08 03 A6 */	mtlr r0
/* 80313D20  38 21 00 20 */	addi r1, r1, 0x20
/* 80313D24  4E 80 00 20 */	blr 

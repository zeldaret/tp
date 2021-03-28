lbl_803238C4:
/* 803238C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803238C8  7C 08 02 A6 */	mflr r0
/* 803238CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803238D0  3C A0 80 43 */	lis r5, j3dSys@ha
/* 803238D4  38 A5 4A C8 */	addi r5, r5, j3dSys@l
/* 803238D8  80 05 00 34 */	lwz r0, 0x34(r5)
/* 803238DC  54 00 00 43 */	rlwinm. r0, r0, 0, 1, 1
/* 803238E0  41 82 00 0C */	beq lbl_803238EC
/* 803238E4  48 00 0A D9 */	bl loadPostTexMtx__9J3DTexMtxCFUl
/* 803238E8  48 00 00 08 */	b lbl_803238F0
lbl_803238EC:
/* 803238EC  48 00 0A 6D */	bl loadTexMtx__9J3DTexMtxCFUl
lbl_803238F0:
/* 803238F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803238F4  7C 08 03 A6 */	mtlr r0
/* 803238F8  38 21 00 10 */	addi r1, r1, 0x10
/* 803238FC  4E 80 00 20 */	blr 

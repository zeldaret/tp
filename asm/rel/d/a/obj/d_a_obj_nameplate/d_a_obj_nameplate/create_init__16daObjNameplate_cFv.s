lbl_80594098:
/* 80594098  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059409C  7C 08 02 A6 */	mflr r0
/* 805940A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805940A4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805940A8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805940AC  7C 7E 1B 78 */	mr r30, r3
/* 805940B0  3C 80 80 59 */	lis r4, M_attr__16daObjNameplate_c@ha /* 0x80594E74@ha */
/* 805940B4  3B E4 4E 74 */	addi r31, r4, M_attr__16daObjNameplate_c@l /* 0x80594E74@l */
/* 805940B8  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 805940BC  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 805940C0  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 805940C4  C0 9F 00 2C */	lfs f4, 0x2c(r31)
/* 805940C8  C0 BF 00 30 */	lfs f5, 0x30(r31)
/* 805940CC  C0 DF 00 34 */	lfs f6, 0x34(r31)
/* 805940D0  4B A8 64 79 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 805940D4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 805940D8  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 805940DC  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 805940E0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805940E4  7C 64 02 14 */	add r3, r4, r0
/* 805940E8  C0 43 00 04 */	lfs f2, 4(r3)
/* 805940EC  7C 04 04 2E */	lfsx f0, r4, r0
/* 805940F0  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 805940F4  EC 01 00 32 */	fmuls f0, f1, f0
/* 805940F8  D0 01 00 08 */	stfs f0, 8(r1)
/* 805940FC  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80594100  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80594104  EC 01 00 B2 */	fmuls f0, f1, f2
/* 80594108  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8059410C  38 7E 05 50 */	addi r3, r30, 0x550
/* 80594110  38 81 00 08 */	addi r4, r1, 8
/* 80594114  7C 65 1B 78 */	mr r5, r3
/* 80594118  4B DB 2F 79 */	bl PSVECAdd
/* 8059411C  C0 3E 05 3C */	lfs f1, 0x53c(r30)
/* 80594120  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80594124  EC 01 00 28 */	fsubs f0, f1, f0
/* 80594128  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 8059412C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80594130  B0 1E 07 76 */	sth r0, 0x776(r30)
/* 80594134  7F C3 F3 78 */	mr r3, r30
/* 80594138  48 00 00 25 */	bl initBaseMtx__16daObjNameplate_cFv
/* 8059413C  7F C3 F3 78 */	mr r3, r30
/* 80594140  48 00 01 09 */	bl initCcSphere__16daObjNameplate_cFv
/* 80594144  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80594148  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8059414C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80594150  7C 08 03 A6 */	mtlr r0
/* 80594154  38 21 00 20 */	addi r1, r1, 0x20
/* 80594158  4E 80 00 20 */	blr 

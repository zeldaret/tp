lbl_8015605C:
/* 8015605C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80156060  7C 08 02 A6 */	mflr r0
/* 80156064  90 01 00 44 */	stw r0, 0x44(r1)
/* 80156068  39 61 00 40 */	addi r11, r1, 0x40
/* 8015606C  48 20 C1 71 */	bl _savegpr_29
/* 80156070  7C 7D 1B 78 */	mr r29, r3
/* 80156074  7C 9E 23 78 */	mr r30, r4
/* 80156078  48 00 14 AD */	bl getNpcMdlDataP__9daNpcCd_cFi
/* 8015607C  7C 7F 1B 78 */	mr r31, r3
/* 80156080  38 60 00 58 */	li r3, 0x58
/* 80156084  48 17 8B C9 */	bl __nw__FUl
/* 80156088  7C 60 1B 79 */	or. r0, r3, r3
/* 8015608C  41 82 00 48 */	beq lbl_801560D4
/* 80156090  38 1D 05 90 */	addi r0, r29, 0x590
/* 80156094  90 01 00 08 */	stw r0, 8(r1)
/* 80156098  3C 00 00 08 */	lis r0, 8
/* 8015609C  90 01 00 0C */	stw r0, 0xc(r1)
/* 801560A0  3C 80 11 00 */	lis r4, 0x1100 /* 0x11000084@ha */
/* 801560A4  38 04 00 84 */	addi r0, r4, 0x0084 /* 0x11000084@l */
/* 801560A8  90 01 00 10 */	stw r0, 0x10(r1)
/* 801560AC  7F E4 FB 78 */	mr r4, r31
/* 801560B0  38 A0 00 00 */	li r5, 0
/* 801560B4  38 C0 00 00 */	li r6, 0
/* 801560B8  38 E0 00 00 */	li r7, 0
/* 801560BC  39 00 FF FF */	li r8, -1
/* 801560C0  C0 22 9A B8 */	lfs f1, lit_4021(r2)
/* 801560C4  39 20 00 00 */	li r9, 0
/* 801560C8  39 40 FF FF */	li r10, -1
/* 801560CC  4B EB A7 05 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 801560D0  7C 60 1B 78 */	mr r0, r3
lbl_801560D4:
/* 801560D4  90 1D 05 8C */	stw r0, 0x58c(r29)
/* 801560D8  80 7D 05 8C */	lwz r3, 0x58c(r29)
/* 801560DC  28 03 00 00 */	cmplwi r3, 0
/* 801560E0  41 82 00 1C */	beq lbl_801560FC
/* 801560E4  80 03 00 04 */	lwz r0, 4(r3)
/* 801560E8  28 00 00 00 */	cmplwi r0, 0
/* 801560EC  40 82 00 10 */	bne lbl_801560FC
/* 801560F0  4B EB B2 21 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
/* 801560F4  38 00 00 00 */	li r0, 0
/* 801560F8  90 1D 05 8C */	stw r0, 0x58c(r29)
lbl_801560FC:
/* 801560FC  80 1D 05 8C */	lwz r0, 0x58c(r29)
/* 80156100  28 00 00 00 */	cmplwi r0, 0
/* 80156104  40 82 00 0C */	bne lbl_80156110
/* 80156108  38 60 00 00 */	li r3, 0
/* 8015610C  48 00 00 C4 */	b lbl_801561D0
lbl_80156110:
/* 80156110  38 7D 05 90 */	addi r3, r29, 0x590
/* 80156114  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80156118  38 BD 05 38 */	addi r5, r29, 0x538
/* 8015611C  38 C0 00 03 */	li r6, 3
/* 80156120  38 E0 00 01 */	li r7, 1
/* 80156124  48 16 AB C1 */	bl init__17Z2CreatureCitizenFP3VecP3VecUcUc
/* 80156128  38 7D 05 90 */	addi r3, r29, 0x590
/* 8015612C  7F C4 07 74 */	extsb r4, r30
/* 80156130  38 A0 00 01 */	li r5, 1
/* 80156134  88 DD 09 E8 */	lbz r6, 0x9e8(r29)
/* 80156138  30 06 FF FF */	addic r0, r6, -1
/* 8015613C  7C 00 31 10 */	subfe r0, r0, r6
/* 80156140  54 06 06 3E */	clrlwi r6, r0, 0x18
/* 80156144  48 16 AC 05 */	bl setMdlType__17Z2CreatureCitizenFScbb
/* 80156148  1C 1E 00 0C */	mulli r0, r30, 0xc
/* 8015614C  3C 60 80 39 */	lis r3, a_transScaleTbl@ha /* 0x80392E5C@ha */
/* 80156150  38 63 2E 5C */	addi r3, r3, a_transScaleTbl@l /* 0x80392E5C@l */
/* 80156154  7C 43 04 2E */	lfsx f2, r3, r0
/* 80156158  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8015615C  7C 63 02 14 */	add r3, r3, r0
/* 80156160  C0 23 00 04 */	lfs f1, 4(r3)
/* 80156164  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80156168  C0 03 00 08 */	lfs f0, 8(r3)
/* 8015616C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80156170  38 00 00 01 */	li r0, 1
/* 80156174  80 7D 05 8C */	lwz r3, 0x58c(r29)
/* 80156178  98 03 00 54 */	stb r0, 0x54(r3)
/* 8015617C  80 7D 05 8C */	lwz r3, 0x58c(r29)
/* 80156180  D0 43 00 40 */	stfs f2, 0x40(r3)
/* 80156184  D0 23 00 44 */	stfs f1, 0x44(r3)
/* 80156188  D0 03 00 48 */	stfs f0, 0x48(r3)
/* 8015618C  38 A0 00 00 */	li r5, 0
/* 80156190  3C 60 80 15 */	lis r3, jntNodeCallBack__FP8J3DJointi@ha /* 0x80156010@ha */
/* 80156194  38 83 60 10 */	addi r4, r3, jntNodeCallBack__FP8J3DJointi@l /* 0x80156010@l */
/* 80156198  48 00 00 18 */	b lbl_801561B0
lbl_8015619C:
/* 8015619C  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 801561A0  54 A0 13 BA */	rlwinm r0, r5, 2, 0xe, 0x1d
/* 801561A4  7C 63 00 2E */	lwzx r3, r3, r0
/* 801561A8  90 83 00 04 */	stw r4, 4(r3)
/* 801561AC  38 A5 00 01 */	addi r5, r5, 1
lbl_801561B0:
/* 801561B0  54 A3 04 3E */	clrlwi r3, r5, 0x10
/* 801561B4  A0 1F 00 2C */	lhz r0, 0x2c(r31)
/* 801561B8  7C 03 00 40 */	cmplw r3, r0
/* 801561BC  41 80 FF E0 */	blt lbl_8015619C
/* 801561C0  80 7D 05 8C */	lwz r3, 0x58c(r29)
/* 801561C4  80 63 00 04 */	lwz r3, 4(r3)
/* 801561C8  93 A3 00 14 */	stw r29, 0x14(r3)
/* 801561CC  38 60 00 01 */	li r3, 1
lbl_801561D0:
/* 801561D0  39 61 00 40 */	addi r11, r1, 0x40
/* 801561D4  48 20 C0 55 */	bl _restgpr_29
/* 801561D8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801561DC  7C 08 03 A6 */	mtlr r0
/* 801561E0  38 21 00 40 */	addi r1, r1, 0x40
/* 801561E4  4E 80 00 20 */	blr 

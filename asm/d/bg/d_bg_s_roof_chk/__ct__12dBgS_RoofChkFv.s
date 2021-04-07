lbl_80078FF4:
/* 80078FF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80078FF8  7C 08 02 A6 */	mflr r0
/* 80078FFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80079000  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80079004  7C 7F 1B 78 */	mr r31, r3
/* 80079008  48 1E F0 6D */	bl __ct__13cBgS_PolyInfoFv
/* 8007900C  38 7F 00 10 */	addi r3, r31, 0x10
/* 80079010  48 1E EB 3D */	bl __ct__8cBgS_ChkFv
/* 80079014  38 7F 00 24 */	addi r3, r31, 0x24
/* 80079018  4B FF E4 85 */	bl __ct__8dBgS_ChkFv
/* 8007901C  3C 60 80 3B */	lis r3, __vt__12dBgS_RoofChk@ha /* 0x803ABA50@ha */
/* 80079020  38 63 BA 50 */	addi r3, r3, __vt__12dBgS_RoofChk@l /* 0x803ABA50@l */
/* 80079024  90 7F 00 0C */	stw r3, 0xc(r31)
/* 80079028  38 03 00 0C */	addi r0, r3, 0xc
/* 8007902C  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80079030  38 03 00 18 */	addi r0, r3, 0x18
/* 80079034  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80079038  38 03 00 24 */	addi r0, r3, 0x24
/* 8007903C  90 1F 00 34 */	stw r0, 0x34(r31)
/* 80079040  38 7F 00 24 */	addi r3, r31, 0x24
/* 80079044  4B FF E5 1D */	bl GetPolyPassChkInfo__8dBgS_ChkFv
/* 80079048  90 7F 00 10 */	stw r3, 0x10(r31)
/* 8007904C  38 7F 00 24 */	addi r3, r31, 0x24
/* 80079050  4B FF E5 15 */	bl GetGrpPassChkInfo__8dBgS_ChkFv
/* 80079054  90 7F 00 14 */	stw r3, 0x14(r31)
/* 80079058  C0 02 8C F0 */	lfs f0, lit_316(r2)
/* 8007905C  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 80079060  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 80079064  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 80079068  38 00 FF FF */	li r0, -1
/* 8007906C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80079070  38 00 00 00 */	li r0, 0
/* 80079074  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80079078  7F E3 FB 78 */	mr r3, r31
/* 8007907C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80079080  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80079084  7C 08 03 A6 */	mtlr r0
/* 80079088  38 21 00 10 */	addi r1, r1, 0x10
/* 8007908C  4E 80 00 20 */	blr 

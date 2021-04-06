lbl_80BB3708:
/* 80BB3708  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB370C  7C 08 02 A6 */	mflr r0
/* 80BB3710  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB3714  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB3718  7C 7F 1B 78 */	mr r31, r3
/* 80BB371C  4B 4C 3E 61 */	bl __ct__11dBgS_GndChkFv
/* 80BB3720  3C 60 80 BB */	lis r3, __vt__14dBgS_ObjGndChk@ha /* 0x80BB3E80@ha */
/* 80BB3724  38 63 3E 80 */	addi r3, r3, __vt__14dBgS_ObjGndChk@l /* 0x80BB3E80@l */
/* 80BB3728  90 7F 00 10 */	stw r3, 0x10(r31)
/* 80BB372C  38 03 00 0C */	addi r0, r3, 0xc
/* 80BB3730  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80BB3734  38 03 00 18 */	addi r0, r3, 0x18
/* 80BB3738  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 80BB373C  38 03 00 24 */	addi r0, r3, 0x24
/* 80BB3740  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80BB3744  38 7F 00 3C */	addi r3, r31, 0x3c
/* 80BB3748  4B 4C 57 21 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80BB374C  7F E3 FB 78 */	mr r3, r31
/* 80BB3750  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB3754  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB3758  7C 08 03 A6 */	mtlr r0
/* 80BB375C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB3760  4E 80 00 20 */	blr 

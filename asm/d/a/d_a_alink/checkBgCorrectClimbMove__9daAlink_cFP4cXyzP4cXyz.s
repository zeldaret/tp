lbl_800FEB90:
/* 800FEB90  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800FEB94  7C 08 02 A6 */	mflr r0
/* 800FEB98  90 01 00 34 */	stw r0, 0x34(r1)
/* 800FEB9C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800FEBA0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 800FEBA4  7C 7E 1B 78 */	mr r30, r3
/* 800FEBA8  7C BF 2B 78 */	mr r31, r5
/* 800FEBAC  4B FA 35 ED */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800FEBB0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FEBB4  41 82 00 A0 */	beq lbl_800FEC54
/* 800FEBB8  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800FEBBC  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800FEBC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800FEBC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800FEBC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800FEBCC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800FEBD0  38 9E 1B 5C */	addi r4, r30, 0x1b5c
/* 800FEBD4  38 A1 00 14 */	addi r5, r1, 0x14
/* 800FEBD8  4B F7 5B 6D */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 800FEBDC  38 61 00 14 */	addi r3, r1, 0x14
/* 800FEBE0  48 16 85 49 */	bl atan2sX_Z__4cXyzCFv
/* 800FEBE4  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 800FEBE8  48 17 22 3D */	bl cLib_distanceAngleS__Fss
/* 800FEBEC  2C 03 54 9F */	cmpwi r3, 0x549f
/* 800FEBF0  41 80 00 24 */	blt lbl_800FEC14
/* 800FEBF4  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800FEBF8  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 800FEBFC  41 82 00 4C */	beq lbl_800FEC48
/* 800FEC00  7F C3 F3 78 */	mr r3, r30
/* 800FEC04  38 9E 1B 5C */	addi r4, r30, 0x1b5c
/* 800FEC08  4B FF F4 51 */	bl checkClimbCode__9daAlink_cFR13cBgS_PolyInfo
/* 800FEC0C  2C 03 00 00 */	cmpwi r3, 0
/* 800FEC10  40 82 00 38 */	bne lbl_800FEC48
lbl_800FEC14:
/* 800FEC14  38 61 00 08 */	addi r3, r1, 8
/* 800FEC18  38 9E 1B 78 */	addi r4, r30, 0x1b78
/* 800FEC1C  7F E5 FB 78 */	mr r5, r31
/* 800FEC20  48 16 7F 15 */	bl __mi__4cXyzCFRC3Vec
/* 800FEC24  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 800FEC28  38 81 00 08 */	addi r4, r1, 8
/* 800FEC2C  7C 65 1B 78 */	mr r5, r3
/* 800FEC30  48 24 84 61 */	bl PSVECAdd
/* 800FEC34  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800FEC38  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800FEC3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800FEC40  38 60 00 01 */	li r3, 1
/* 800FEC44  48 00 00 14 */	b lbl_800FEC58
lbl_800FEC48:
/* 800FEC48  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800FEC4C  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800FEC50  90 01 00 24 */	stw r0, 0x24(r1)
lbl_800FEC54:
/* 800FEC54  38 60 00 00 */	li r3, 0
lbl_800FEC58:
/* 800FEC58  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800FEC5C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800FEC60  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800FEC64  7C 08 03 A6 */	mtlr r0
/* 800FEC68  38 21 00 30 */	addi r1, r1, 0x30
/* 800FEC6C  4E 80 00 20 */	blr 

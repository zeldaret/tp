lbl_80A7A040:
/* 80A7A040  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A7A044  7C 08 02 A6 */	mflr r0
/* 80A7A048  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A7A04C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A7A050  7C 7F 1B 78 */	mr r31, r3
/* 80A7A054  4B 60 99 D5 */	bl __ct__12dCcD_GObjInfFv
/* 80A7A058  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80A7A05C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80A7A060  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80A7A064  3C 60 80 A8 */	lis r3, __vt__8cM3dGAab@ha /* 0x80A7BEAC@ha */
/* 80A7A068  38 03 BE AC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80A7BEAC@l */
/* 80A7A06C  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80A7A070  3C 60 80 A8 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80A7BEA0@ha */
/* 80A7A074  38 03 BE A0 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80A7BEA0@l */
/* 80A7A078  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80A7A07C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80A7A080  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80A7A084  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80A7A088  38 03 00 58 */	addi r0, r3, 0x58
/* 80A7A08C  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80A7A090  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80A7A094  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80A7A098  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80A7A09C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80A7A0A0  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80A7A0A4  38 03 00 84 */	addi r0, r3, 0x84
/* 80A7A0A8  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80A7A0AC  7F E3 FB 78 */	mr r3, r31
/* 80A7A0B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A7A0B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A7A0B8  7C 08 03 A6 */	mtlr r0
/* 80A7A0BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A7A0C0  4E 80 00 20 */	blr 

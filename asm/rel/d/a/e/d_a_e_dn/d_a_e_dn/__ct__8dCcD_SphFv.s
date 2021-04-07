lbl_804EE190:
/* 804EE190  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EE194  7C 08 02 A6 */	mflr r0
/* 804EE198  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EE19C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EE1A0  7C 7F 1B 78 */	mr r31, r3
/* 804EE1A4  4B B9 58 85 */	bl __ct__12dCcD_GObjInfFv
/* 804EE1A8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 804EE1AC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 804EE1B0  90 1F 01 20 */	stw r0, 0x120(r31)
/* 804EE1B4  3C 60 80 4F */	lis r3, __vt__8cM3dGAab@ha /* 0x804EEE78@ha */
/* 804EE1B8  38 03 EE 78 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x804EEE78@l */
/* 804EE1BC  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 804EE1C0  3C 60 80 4F */	lis r3, __vt__8cM3dGSph@ha /* 0x804EEE6C@ha */
/* 804EE1C4  38 03 EE 6C */	addi r0, r3, __vt__8cM3dGSph@l /* 0x804EEE6C@l */
/* 804EE1C8  90 1F 01 34 */	stw r0, 0x134(r31)
/* 804EE1CC  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 804EE1D0  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 804EE1D4  90 7F 01 20 */	stw r3, 0x120(r31)
/* 804EE1D8  38 03 00 58 */	addi r0, r3, 0x58
/* 804EE1DC  90 1F 01 34 */	stw r0, 0x134(r31)
/* 804EE1E0  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 804EE1E4  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 804EE1E8  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 804EE1EC  38 03 00 2C */	addi r0, r3, 0x2c
/* 804EE1F0  90 1F 01 20 */	stw r0, 0x120(r31)
/* 804EE1F4  38 03 00 84 */	addi r0, r3, 0x84
/* 804EE1F8  90 1F 01 34 */	stw r0, 0x134(r31)
/* 804EE1FC  7F E3 FB 78 */	mr r3, r31
/* 804EE200  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EE204  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EE208  7C 08 03 A6 */	mtlr r0
/* 804EE20C  38 21 00 10 */	addi r1, r1, 0x10
/* 804EE210  4E 80 00 20 */	blr 

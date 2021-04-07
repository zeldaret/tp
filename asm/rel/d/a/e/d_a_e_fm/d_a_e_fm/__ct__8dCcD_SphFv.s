lbl_804FA1CC:
/* 804FA1CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FA1D0  7C 08 02 A6 */	mflr r0
/* 804FA1D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FA1D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FA1DC  7C 7F 1B 78 */	mr r31, r3
/* 804FA1E0  4B B8 98 49 */	bl __ct__12dCcD_GObjInfFv
/* 804FA1E4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 804FA1E8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 804FA1EC  90 1F 01 20 */	stw r0, 0x120(r31)
/* 804FA1F0  3C 60 80 50 */	lis r3, __vt__8cM3dGAab@ha /* 0x804FAE08@ha */
/* 804FA1F4  38 03 AE 08 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x804FAE08@l */
/* 804FA1F8  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 804FA1FC  3C 60 80 50 */	lis r3, __vt__8cM3dGSph@ha /* 0x804FADFC@ha */
/* 804FA200  38 03 AD FC */	addi r0, r3, __vt__8cM3dGSph@l /* 0x804FADFC@l */
/* 804FA204  90 1F 01 34 */	stw r0, 0x134(r31)
/* 804FA208  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 804FA20C  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 804FA210  90 7F 01 20 */	stw r3, 0x120(r31)
/* 804FA214  38 03 00 58 */	addi r0, r3, 0x58
/* 804FA218  90 1F 01 34 */	stw r0, 0x134(r31)
/* 804FA21C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 804FA220  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 804FA224  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 804FA228  38 03 00 2C */	addi r0, r3, 0x2c
/* 804FA22C  90 1F 01 20 */	stw r0, 0x120(r31)
/* 804FA230  38 03 00 84 */	addi r0, r3, 0x84
/* 804FA234  90 1F 01 34 */	stw r0, 0x134(r31)
/* 804FA238  7F E3 FB 78 */	mr r3, r31
/* 804FA23C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FA240  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FA244  7C 08 03 A6 */	mtlr r0
/* 804FA248  38 21 00 10 */	addi r1, r1, 0x10
/* 804FA24C  4E 80 00 20 */	blr 

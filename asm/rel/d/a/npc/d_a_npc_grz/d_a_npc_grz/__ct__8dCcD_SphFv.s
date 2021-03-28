lbl_809E8764:
/* 809E8764  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E8768  7C 08 02 A6 */	mflr r0
/* 809E876C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E8770  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809E8774  7C 7F 1B 78 */	mr r31, r3
/* 809E8778  4B 69 B2 B0 */	b __ct__12dCcD_GObjInfFv
/* 809E877C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 809E8780  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 809E8784  90 1F 01 20 */	stw r0, 0x120(r31)
/* 809E8788  3C 60 80 9F */	lis r3, __vt__8cM3dGAab@ha
/* 809E878C  38 03 FB C4 */	addi r0, r3, __vt__8cM3dGAab@l
/* 809E8790  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 809E8794  3C 60 80 9F */	lis r3, __vt__8cM3dGSph@ha
/* 809E8798  38 03 FB AC */	addi r0, r3, __vt__8cM3dGSph@l
/* 809E879C  90 1F 01 34 */	stw r0, 0x134(r31)
/* 809E87A0  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 809E87A4  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 809E87A8  90 7F 01 20 */	stw r3, 0x120(r31)
/* 809E87AC  38 03 00 58 */	addi r0, r3, 0x58
/* 809E87B0  90 1F 01 34 */	stw r0, 0x134(r31)
/* 809E87B4  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 809E87B8  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 809E87BC  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 809E87C0  38 03 00 2C */	addi r0, r3, 0x2c
/* 809E87C4  90 1F 01 20 */	stw r0, 0x120(r31)
/* 809E87C8  38 03 00 84 */	addi r0, r3, 0x84
/* 809E87CC  90 1F 01 34 */	stw r0, 0x134(r31)
/* 809E87D0  7F E3 FB 78 */	mr r3, r31
/* 809E87D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809E87D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E87DC  7C 08 03 A6 */	mtlr r0
/* 809E87E0  38 21 00 10 */	addi r1, r1, 0x10
/* 809E87E4  4E 80 00 20 */	blr 

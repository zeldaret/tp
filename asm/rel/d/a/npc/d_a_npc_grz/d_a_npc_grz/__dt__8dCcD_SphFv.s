lbl_809E8698:
/* 809E8698  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E869C  7C 08 02 A6 */	mflr r0
/* 809E86A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E86A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809E86A8  93 C1 00 08 */	stw r30, 8(r1)
/* 809E86AC  7C 7E 1B 79 */	or. r30, r3, r3
/* 809E86B0  7C 9F 23 78 */	mr r31, r4
/* 809E86B4  41 82 00 94 */	beq lbl_809E8748
/* 809E86B8  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 809E86BC  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 809E86C0  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 809E86C4  38 03 00 2C */	addi r0, r3, 0x2c
/* 809E86C8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 809E86CC  38 03 00 84 */	addi r0, r3, 0x84
/* 809E86D0  90 1E 01 34 */	stw r0, 0x134(r30)
/* 809E86D4  34 1E 01 04 */	addic. r0, r30, 0x104
/* 809E86D8  41 82 00 54 */	beq lbl_809E872C
/* 809E86DC  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 809E86E0  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 809E86E4  90 7E 01 20 */	stw r3, 0x120(r30)
/* 809E86E8  38 03 00 58 */	addi r0, r3, 0x58
/* 809E86EC  90 1E 01 34 */	stw r0, 0x134(r30)
/* 809E86F0  34 1E 01 24 */	addic. r0, r30, 0x124
/* 809E86F4  41 82 00 10 */	beq lbl_809E8704
/* 809E86F8  3C 60 80 9F */	lis r3, __vt__8cM3dGSph@ha /* 0x809EFBAC@ha */
/* 809E86FC  38 03 FB AC */	addi r0, r3, __vt__8cM3dGSph@l /* 0x809EFBAC@l */
/* 809E8700  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_809E8704:
/* 809E8704  34 1E 01 04 */	addic. r0, r30, 0x104
/* 809E8708  41 82 00 24 */	beq lbl_809E872C
/* 809E870C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 809E8710  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 809E8714  90 1E 01 20 */	stw r0, 0x120(r30)
/* 809E8718  34 1E 01 04 */	addic. r0, r30, 0x104
/* 809E871C  41 82 00 10 */	beq lbl_809E872C
/* 809E8720  3C 60 80 9F */	lis r3, __vt__8cM3dGAab@ha /* 0x809EFBC4@ha */
/* 809E8724  38 03 FB C4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x809EFBC4@l */
/* 809E8728  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_809E872C:
/* 809E872C  7F C3 F3 78 */	mr r3, r30
/* 809E8730  38 80 00 00 */	li r4, 0
/* 809E8734  4B 69 B9 B1 */	bl __dt__12dCcD_GObjInfFv
/* 809E8738  7F E0 07 35 */	extsh. r0, r31
/* 809E873C  40 81 00 0C */	ble lbl_809E8748
/* 809E8740  7F C3 F3 78 */	mr r3, r30
/* 809E8744  4B 8E 65 F9 */	bl __dl__FPv
lbl_809E8748:
/* 809E8748  7F C3 F3 78 */	mr r3, r30
/* 809E874C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809E8750  83 C1 00 08 */	lwz r30, 8(r1)
/* 809E8754  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E8758  7C 08 03 A6 */	mtlr r0
/* 809E875C  38 21 00 10 */	addi r1, r1, 0x10
/* 809E8760  4E 80 00 20 */	blr 

lbl_80BB869C:
/* 80BB869C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB86A0  7C 08 02 A6 */	mflr r0
/* 80BB86A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB86A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB86AC  93 C1 00 08 */	stw r30, 8(r1)
/* 80BB86B0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BB86B4  7C 9F 23 78 */	mr r31, r4
/* 80BB86B8  41 82 00 94 */	beq lbl_80BB874C
/* 80BB86BC  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80BB86C0  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80BB86C4  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80BB86C8  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BB86CC  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80BB86D0  38 03 00 84 */	addi r0, r3, 0x84
/* 80BB86D4  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80BB86D8  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80BB86DC  41 82 00 54 */	beq lbl_80BB8730
/* 80BB86E0  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80BB86E4  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80BB86E8  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80BB86EC  38 03 00 58 */	addi r0, r3, 0x58
/* 80BB86F0  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80BB86F4  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80BB86F8  41 82 00 10 */	beq lbl_80BB8708
/* 80BB86FC  3C 60 80 BC */	lis r3, __vt__8cM3dGCyl@ha /* 0x80BB992C@ha */
/* 80BB8700  38 03 99 2C */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80BB992C@l */
/* 80BB8704  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_80BB8708:
/* 80BB8708  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80BB870C  41 82 00 24 */	beq lbl_80BB8730
/* 80BB8710  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80BB8714  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80BB8718  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80BB871C  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80BB8720  41 82 00 10 */	beq lbl_80BB8730
/* 80BB8724  3C 60 80 BC */	lis r3, __vt__8cM3dGAab@ha /* 0x80BB9920@ha */
/* 80BB8728  38 03 99 20 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80BB9920@l */
/* 80BB872C  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80BB8730:
/* 80BB8730  7F C3 F3 78 */	mr r3, r30
/* 80BB8734  38 80 00 00 */	li r4, 0
/* 80BB8738  4B 4C B9 AD */	bl __dt__12dCcD_GObjInfFv
/* 80BB873C  7F E0 07 35 */	extsh. r0, r31
/* 80BB8740  40 81 00 0C */	ble lbl_80BB874C
/* 80BB8744  7F C3 F3 78 */	mr r3, r30
/* 80BB8748  4B 71 65 F5 */	bl __dl__FPv
lbl_80BB874C:
/* 80BB874C  7F C3 F3 78 */	mr r3, r30
/* 80BB8750  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB8754  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BB8758  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB875C  7C 08 03 A6 */	mtlr r0
/* 80BB8760  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB8764  4E 80 00 20 */	blr 

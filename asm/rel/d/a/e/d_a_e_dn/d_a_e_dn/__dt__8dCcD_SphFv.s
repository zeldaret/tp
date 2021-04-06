lbl_804EE0C4:
/* 804EE0C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EE0C8  7C 08 02 A6 */	mflr r0
/* 804EE0CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EE0D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EE0D4  93 C1 00 08 */	stw r30, 8(r1)
/* 804EE0D8  7C 7E 1B 79 */	or. r30, r3, r3
/* 804EE0DC  7C 9F 23 78 */	mr r31, r4
/* 804EE0E0  41 82 00 94 */	beq lbl_804EE174
/* 804EE0E4  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 804EE0E8  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 804EE0EC  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 804EE0F0  38 03 00 2C */	addi r0, r3, 0x2c
/* 804EE0F4  90 1E 01 20 */	stw r0, 0x120(r30)
/* 804EE0F8  38 03 00 84 */	addi r0, r3, 0x84
/* 804EE0FC  90 1E 01 34 */	stw r0, 0x134(r30)
/* 804EE100  34 1E 01 04 */	addic. r0, r30, 0x104
/* 804EE104  41 82 00 54 */	beq lbl_804EE158
/* 804EE108  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 804EE10C  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 804EE110  90 7E 01 20 */	stw r3, 0x120(r30)
/* 804EE114  38 03 00 58 */	addi r0, r3, 0x58
/* 804EE118  90 1E 01 34 */	stw r0, 0x134(r30)
/* 804EE11C  34 1E 01 24 */	addic. r0, r30, 0x124
/* 804EE120  41 82 00 10 */	beq lbl_804EE130
/* 804EE124  3C 60 80 4F */	lis r3, __vt__8cM3dGSph@ha /* 0x804EEE6C@ha */
/* 804EE128  38 03 EE 6C */	addi r0, r3, __vt__8cM3dGSph@l /* 0x804EEE6C@l */
/* 804EE12C  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_804EE130:
/* 804EE130  34 1E 01 04 */	addic. r0, r30, 0x104
/* 804EE134  41 82 00 24 */	beq lbl_804EE158
/* 804EE138  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 804EE13C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 804EE140  90 1E 01 20 */	stw r0, 0x120(r30)
/* 804EE144  34 1E 01 04 */	addic. r0, r30, 0x104
/* 804EE148  41 82 00 10 */	beq lbl_804EE158
/* 804EE14C  3C 60 80 4F */	lis r3, __vt__8cM3dGAab@ha /* 0x804EEE78@ha */
/* 804EE150  38 03 EE 78 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x804EEE78@l */
/* 804EE154  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_804EE158:
/* 804EE158  7F C3 F3 78 */	mr r3, r30
/* 804EE15C  38 80 00 00 */	li r4, 0
/* 804EE160  4B B9 5F 85 */	bl __dt__12dCcD_GObjInfFv
/* 804EE164  7F E0 07 35 */	extsh. r0, r31
/* 804EE168  40 81 00 0C */	ble lbl_804EE174
/* 804EE16C  7F C3 F3 78 */	mr r3, r30
/* 804EE170  4B DE 0B CD */	bl __dl__FPv
lbl_804EE174:
/* 804EE174  7F C3 F3 78 */	mr r3, r30
/* 804EE178  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EE17C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804EE180  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EE184  7C 08 03 A6 */	mtlr r0
/* 804EE188  38 21 00 10 */	addi r1, r1, 0x10
/* 804EE18C  4E 80 00 20 */	blr 

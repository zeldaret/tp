lbl_804FA100:
/* 804FA100  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FA104  7C 08 02 A6 */	mflr r0
/* 804FA108  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FA10C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FA110  93 C1 00 08 */	stw r30, 8(r1)
/* 804FA114  7C 7E 1B 79 */	or. r30, r3, r3
/* 804FA118  7C 9F 23 78 */	mr r31, r4
/* 804FA11C  41 82 00 94 */	beq lbl_804FA1B0
/* 804FA120  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 804FA124  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 804FA128  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 804FA12C  38 03 00 2C */	addi r0, r3, 0x2c
/* 804FA130  90 1E 01 20 */	stw r0, 0x120(r30)
/* 804FA134  38 03 00 84 */	addi r0, r3, 0x84
/* 804FA138  90 1E 01 34 */	stw r0, 0x134(r30)
/* 804FA13C  34 1E 01 04 */	addic. r0, r30, 0x104
/* 804FA140  41 82 00 54 */	beq lbl_804FA194
/* 804FA144  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 804FA148  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 804FA14C  90 7E 01 20 */	stw r3, 0x120(r30)
/* 804FA150  38 03 00 58 */	addi r0, r3, 0x58
/* 804FA154  90 1E 01 34 */	stw r0, 0x134(r30)
/* 804FA158  34 1E 01 24 */	addic. r0, r30, 0x124
/* 804FA15C  41 82 00 10 */	beq lbl_804FA16C
/* 804FA160  3C 60 80 50 */	lis r3, __vt__8cM3dGSph@ha /* 0x804FADFC@ha */
/* 804FA164  38 03 AD FC */	addi r0, r3, __vt__8cM3dGSph@l /* 0x804FADFC@l */
/* 804FA168  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_804FA16C:
/* 804FA16C  34 1E 01 04 */	addic. r0, r30, 0x104
/* 804FA170  41 82 00 24 */	beq lbl_804FA194
/* 804FA174  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 804FA178  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 804FA17C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 804FA180  34 1E 01 04 */	addic. r0, r30, 0x104
/* 804FA184  41 82 00 10 */	beq lbl_804FA194
/* 804FA188  3C 60 80 50 */	lis r3, __vt__8cM3dGAab@ha /* 0x804FAE08@ha */
/* 804FA18C  38 03 AE 08 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x804FAE08@l */
/* 804FA190  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_804FA194:
/* 804FA194  7F C3 F3 78 */	mr r3, r30
/* 804FA198  38 80 00 00 */	li r4, 0
/* 804FA19C  4B B8 9F 49 */	bl __dt__12dCcD_GObjInfFv
/* 804FA1A0  7F E0 07 35 */	extsh. r0, r31
/* 804FA1A4  40 81 00 0C */	ble lbl_804FA1B0
/* 804FA1A8  7F C3 F3 78 */	mr r3, r30
/* 804FA1AC  4B DD 4B 91 */	bl __dl__FPv
lbl_804FA1B0:
/* 804FA1B0  7F C3 F3 78 */	mr r3, r30
/* 804FA1B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FA1B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 804FA1BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FA1C0  7C 08 03 A6 */	mtlr r0
/* 804FA1C4  38 21 00 10 */	addi r1, r1, 0x10
/* 804FA1C8  4E 80 00 20 */	blr 

lbl_80184274:
/* 80184274  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80184278  7C 08 02 A6 */	mflr r0
/* 8018427C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80184280  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80184284  7C 7F 1B 79 */	or. r31, r3, r3
/* 80184288  41 82 00 5C */	beq lbl_801842E4
/* 8018428C  3C 60 80 3D */	lis r3, __vt__19J2DAnmTextureSRTKey@ha
/* 80184290  38 03 D7 48 */	addi r0, r3, __vt__19J2DAnmTextureSRTKey@l
/* 80184294  90 1F 00 00 */	stw r0, 0(r31)
/* 80184298  34 1F 00 68 */	addic. r0, r31, 0x68
/* 8018429C  41 82 00 10 */	beq lbl_801842AC
/* 801842A0  3C 60 80 3C */	lis r3, __vt__10JUTNameTab@ha
/* 801842A4  38 03 B3 DC */	addi r0, r3, __vt__10JUTNameTab@l
/* 801842A8  90 1F 00 68 */	stw r0, 0x68(r31)
lbl_801842AC:
/* 801842AC  34 1F 00 34 */	addic. r0, r31, 0x34
/* 801842B0  41 82 00 10 */	beq lbl_801842C0
/* 801842B4  3C 60 80 3C */	lis r3, __vt__10JUTNameTab@ha
/* 801842B8  38 03 B3 DC */	addi r0, r3, __vt__10JUTNameTab@l
/* 801842BC  90 1F 00 34 */	stw r0, 0x34(r31)
lbl_801842C0:
/* 801842C0  28 1F 00 00 */	cmplwi r31, 0
/* 801842C4  41 82 00 10 */	beq lbl_801842D4
/* 801842C8  3C 60 80 3B */	lis r3, __vt__10J2DAnmBase@ha
/* 801842CC  38 03 8E 04 */	addi r0, r3, __vt__10J2DAnmBase@l
/* 801842D0  90 1F 00 00 */	stw r0, 0(r31)
lbl_801842D4:
/* 801842D4  7C 80 07 35 */	extsh. r0, r4
/* 801842D8  40 81 00 0C */	ble lbl_801842E4
/* 801842DC  7F E3 FB 78 */	mr r3, r31
/* 801842E0  48 14 AA 5D */	bl __dl__FPv
lbl_801842E4:
/* 801842E4  7F E3 FB 78 */	mr r3, r31
/* 801842E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801842EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801842F0  7C 08 03 A6 */	mtlr r0
/* 801842F4  38 21 00 10 */	addi r1, r1, 0x10
/* 801842F8  4E 80 00 20 */	blr 

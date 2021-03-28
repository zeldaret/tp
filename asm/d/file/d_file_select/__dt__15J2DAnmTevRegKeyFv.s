lbl_801841EC:
/* 801841EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801841F0  7C 08 02 A6 */	mflr r0
/* 801841F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801841F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801841FC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80184200  41 82 00 5C */	beq lbl_8018425C
/* 80184204  3C 60 80 3D */	lis r3, __vt__15J2DAnmTevRegKey@ha
/* 80184208  38 03 D7 28 */	addi r0, r3, __vt__15J2DAnmTevRegKey@l
/* 8018420C  90 1F 00 00 */	stw r0, 0(r31)
/* 80184210  34 1F 00 3C */	addic. r0, r31, 0x3c
/* 80184214  41 82 00 10 */	beq lbl_80184224
/* 80184218  3C 60 80 3C */	lis r3, __vt__10JUTNameTab@ha
/* 8018421C  38 03 B3 DC */	addi r0, r3, __vt__10JUTNameTab@l
/* 80184220  90 1F 00 3C */	stw r0, 0x3c(r31)
lbl_80184224:
/* 80184224  34 1F 00 28 */	addic. r0, r31, 0x28
/* 80184228  41 82 00 10 */	beq lbl_80184238
/* 8018422C  3C 60 80 3C */	lis r3, __vt__10JUTNameTab@ha
/* 80184230  38 03 B3 DC */	addi r0, r3, __vt__10JUTNameTab@l
/* 80184234  90 1F 00 28 */	stw r0, 0x28(r31)
lbl_80184238:
/* 80184238  28 1F 00 00 */	cmplwi r31, 0
/* 8018423C  41 82 00 10 */	beq lbl_8018424C
/* 80184240  3C 60 80 3B */	lis r3, __vt__10J2DAnmBase@ha
/* 80184244  38 03 8E 04 */	addi r0, r3, __vt__10J2DAnmBase@l
/* 80184248  90 1F 00 00 */	stw r0, 0(r31)
lbl_8018424C:
/* 8018424C  7C 80 07 35 */	extsh. r0, r4
/* 80184250  40 81 00 0C */	ble lbl_8018425C
/* 80184254  7F E3 FB 78 */	mr r3, r31
/* 80184258  48 14 AA E5 */	bl __dl__FPv
lbl_8018425C:
/* 8018425C  7F E3 FB 78 */	mr r3, r31
/* 80184260  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80184264  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80184268  7C 08 03 A6 */	mtlr r0
/* 8018426C  38 21 00 10 */	addi r1, r1, 0x10
/* 80184270  4E 80 00 20 */	blr 

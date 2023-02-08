lbl_806FF0F0:
/* 806FF0F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806FF0F4  7C 08 02 A6 */	mflr r0
/* 806FF0F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806FF0FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806FF100  7C 7F 1B 79 */	or. r31, r3, r3
/* 806FF104  41 82 00 1C */	beq lbl_806FF120
/* 806FF108  3C A0 80 70 */	lis r5, __vt__12daE_KK_HIO_c@ha /* 0x806FF868@ha */
/* 806FF10C  38 05 F8 68 */	addi r0, r5, __vt__12daE_KK_HIO_c@l /* 0x806FF868@l */
/* 806FF110  90 1F 00 00 */	stw r0, 0(r31)
/* 806FF114  7C 80 07 35 */	extsh. r0, r4
/* 806FF118  40 81 00 08 */	ble lbl_806FF120
/* 806FF11C  4B BC FC 21 */	bl __dl__FPv
lbl_806FF120:
/* 806FF120  7F E3 FB 78 */	mr r3, r31
/* 806FF124  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806FF128  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806FF12C  7C 08 03 A6 */	mtlr r0
/* 806FF130  38 21 00 10 */	addi r1, r1, 0x10
/* 806FF134  4E 80 00 20 */	blr 

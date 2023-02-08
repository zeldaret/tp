lbl_8048F0EC:
/* 8048F0EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048F0F0  7C 08 02 A6 */	mflr r0
/* 8048F0F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048F0F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048F0FC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8048F100  41 82 00 1C */	beq lbl_8048F11C
/* 8048F104  3C A0 80 49 */	lis r5, __vt__21daTag_Lantern_Param_c@ha /* 0x8048F1B0@ha */
/* 8048F108  38 05 F1 B0 */	addi r0, r5, __vt__21daTag_Lantern_Param_c@l /* 0x8048F1B0@l */
/* 8048F10C  90 1F 00 00 */	stw r0, 0(r31)
/* 8048F110  7C 80 07 35 */	extsh. r0, r4
/* 8048F114  40 81 00 08 */	ble lbl_8048F11C
/* 8048F118  4B E3 FC 25 */	bl __dl__FPv
lbl_8048F11C:
/* 8048F11C  7F E3 FB 78 */	mr r3, r31
/* 8048F120  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048F124  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048F128  7C 08 03 A6 */	mtlr r0
/* 8048F12C  38 21 00 10 */	addi r1, r1, 0x10
/* 8048F130  4E 80 00 20 */	blr 

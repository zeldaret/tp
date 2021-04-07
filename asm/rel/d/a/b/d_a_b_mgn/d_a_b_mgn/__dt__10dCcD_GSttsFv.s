lbl_8060F728:
/* 8060F728  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8060F72C  7C 08 02 A6 */	mflr r0
/* 8060F730  90 01 00 14 */	stw r0, 0x14(r1)
/* 8060F734  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8060F738  7C 7F 1B 79 */	or. r31, r3, r3
/* 8060F73C  41 82 00 30 */	beq lbl_8060F76C
/* 8060F740  3C 60 80 61 */	lis r3, __vt__10dCcD_GStts@ha /* 0x806103CC@ha */
/* 8060F744  38 03 03 CC */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x806103CC@l */
/* 8060F748  90 1F 00 00 */	stw r0, 0(r31)
/* 8060F74C  41 82 00 10 */	beq lbl_8060F75C
/* 8060F750  3C 60 80 61 */	lis r3, __vt__10cCcD_GStts@ha /* 0x806103C0@ha */
/* 8060F754  38 03 03 C0 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x806103C0@l */
/* 8060F758  90 1F 00 00 */	stw r0, 0(r31)
lbl_8060F75C:
/* 8060F75C  7C 80 07 35 */	extsh. r0, r4
/* 8060F760  40 81 00 0C */	ble lbl_8060F76C
/* 8060F764  7F E3 FB 78 */	mr r3, r31
/* 8060F768  4B CB F5 D5 */	bl __dl__FPv
lbl_8060F76C:
/* 8060F76C  7F E3 FB 78 */	mr r3, r31
/* 8060F770  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8060F774  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8060F778  7C 08 03 A6 */	mtlr r0
/* 8060F77C  38 21 00 10 */	addi r1, r1, 0x10
/* 8060F780  4E 80 00 20 */	blr 

lbl_802EB1F0:
/* 802EB1F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EB1F4  7C 08 02 A6 */	mflr r0
/* 802EB1F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EB1FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EB200  7C 7F 1B 79 */	or. r31, r3, r3
/* 802EB204  41 82 00 30 */	beq lbl_802EB234
/* 802EB208  3C 60 80 3D */	lis r3, __vt__15J2DIndBlockNull@ha /* 0x803CCA08@ha */
/* 802EB20C  38 03 CA 08 */	addi r0, r3, __vt__15J2DIndBlockNull@l /* 0x803CCA08@l */
/* 802EB210  90 1F 00 00 */	stw r0, 0(r31)
/* 802EB214  41 82 00 10 */	beq lbl_802EB224
/* 802EB218  3C 60 80 3D */	lis r3, __vt__11J2DIndBlock@ha /* 0x803CCA40@ha */
/* 802EB21C  38 03 CA 40 */	addi r0, r3, __vt__11J2DIndBlock@l /* 0x803CCA40@l */
/* 802EB220  90 1F 00 00 */	stw r0, 0(r31)
lbl_802EB224:
/* 802EB224  7C 80 07 35 */	extsh. r0, r4
/* 802EB228  40 81 00 0C */	ble lbl_802EB234
/* 802EB22C  7F E3 FB 78 */	mr r3, r31
/* 802EB230  4B FE 3B 0D */	bl __dl__FPv
lbl_802EB234:
/* 802EB234  7F E3 FB 78 */	mr r3, r31
/* 802EB238  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EB23C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EB240  7C 08 03 A6 */	mtlr r0
/* 802EB244  38 21 00 10 */	addi r1, r1, 0x10
/* 802EB248  4E 80 00 20 */	blr 

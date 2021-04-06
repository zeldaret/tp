lbl_802EB13C:
/* 802EB13C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EB140  7C 08 02 A6 */	mflr r0
/* 802EB144  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EB148  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EB14C  7C 7F 1B 79 */	or. r31, r3, r3
/* 802EB150  41 82 00 1C */	beq lbl_802EB16C
/* 802EB154  3C A0 80 3D */	lis r5, __vt__11J2DIndBlock@ha /* 0x803CCA40@ha */
/* 802EB158  38 05 CA 40 */	addi r0, r5, __vt__11J2DIndBlock@l /* 0x803CCA40@l */
/* 802EB15C  90 1F 00 00 */	stw r0, 0(r31)
/* 802EB160  7C 80 07 35 */	extsh. r0, r4
/* 802EB164  40 81 00 08 */	ble lbl_802EB16C
/* 802EB168  4B FE 3B D5 */	bl __dl__FPv
lbl_802EB16C:
/* 802EB16C  7F E3 FB 78 */	mr r3, r31
/* 802EB170  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EB174  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EB178  7C 08 03 A6 */	mtlr r0
/* 802EB17C  38 21 00 10 */	addi r1, r1, 0x10
/* 802EB180  4E 80 00 20 */	blr 

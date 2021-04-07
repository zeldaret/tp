lbl_8071F3D0:
/* 8071F3D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8071F3D4  7C 08 02 A6 */	mflr r0
/* 8071F3D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8071F3DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8071F3E0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8071F3E4  41 82 00 1C */	beq lbl_8071F400
/* 8071F3E8  3C A0 80 72 */	lis r5, __vt__8cM3dGSph@ha /* 0x8071F7D0@ha */
/* 8071F3EC  38 05 F7 D0 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x8071F7D0@l */
/* 8071F3F0  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8071F3F4  7C 80 07 35 */	extsh. r0, r4
/* 8071F3F8  40 81 00 08 */	ble lbl_8071F400
/* 8071F3FC  4B BA F9 41 */	bl __dl__FPv
lbl_8071F400:
/* 8071F400  7F E3 FB 78 */	mr r3, r31
/* 8071F404  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8071F408  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8071F40C  7C 08 03 A6 */	mtlr r0
/* 8071F410  38 21 00 10 */	addi r1, r1, 0x10
/* 8071F414  4E 80 00 20 */	blr 

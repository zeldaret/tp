lbl_80AAC3D0:
/* 80AAC3D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AAC3D4  7C 08 02 A6 */	mflr r0
/* 80AAC3D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AAC3DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AAC3E0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AAC3E4  41 82 00 1C */	beq lbl_80AAC400
/* 80AAC3E8  3C A0 80 AB */	lis r5, __vt__8cM3dGCyl@ha /* 0x80AADAFC@ha */
/* 80AAC3EC  38 05 DA FC */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80AADAFC@l */
/* 80AAC3F0  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80AAC3F4  7C 80 07 35 */	extsh. r0, r4
/* 80AAC3F8  40 81 00 08 */	ble lbl_80AAC400
/* 80AAC3FC  4B 82 29 41 */	bl __dl__FPv
lbl_80AAC400:
/* 80AAC400  7F E3 FB 78 */	mr r3, r31
/* 80AAC404  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AAC408  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AAC40C  7C 08 03 A6 */	mtlr r0
/* 80AAC410  38 21 00 10 */	addi r1, r1, 0x10
/* 80AAC414  4E 80 00 20 */	blr 

lbl_80B9D3C4:
/* 80B9D3C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9D3C8  7C 08 02 A6 */	mflr r0
/* 80B9D3CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9D3D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9D3D4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B9D3D8  41 82 00 1C */	beq lbl_80B9D3F4
/* 80B9D3DC  3C A0 80 BA */	lis r5, __vt__8cM3dGAab@ha /* 0x80B9EAFC@ha */
/* 80B9D3E0  38 05 EA FC */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80B9EAFC@l */
/* 80B9D3E4  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80B9D3E8  7C 80 07 35 */	extsh. r0, r4
/* 80B9D3EC  40 81 00 08 */	ble lbl_80B9D3F4
/* 80B9D3F0  4B 73 19 4D */	bl __dl__FPv
lbl_80B9D3F4:
/* 80B9D3F4  7F E3 FB 78 */	mr r3, r31
/* 80B9D3F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9D3FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9D400  7C 08 03 A6 */	mtlr r0
/* 80B9D404  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9D408  4E 80 00 20 */	blr 
